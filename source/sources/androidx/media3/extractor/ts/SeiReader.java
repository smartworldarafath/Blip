package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import defpackage.p;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SeiReader {
    public final List a;
    public final TrackOutput[] b;
    public final ReorderingBufferQueue c = new ReorderingBufferQueue(new p(16, this));

    public SeiReader(List list) {
        this.a = list;
        this.b = new TrackOutput[list.size()];
    }

    public final void a(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        boolean z;
        int i = 0;
        while (true) {
            TrackOutput[] trackOutputArr = this.b;
            if (i < trackOutputArr.length) {
                trackIdGenerator.a();
                trackIdGenerator.b();
                TrackOutput s = extractorOutput.s(trackIdGenerator.d, 3);
                Format format = (Format) this.a.get(i);
                String str = format.p;
                if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                    z = false;
                } else {
                    z = true;
                }
                Preconditions.g(z, "Invalid closed caption MIME type provided: %s", str);
                String str2 = format.a;
                if (str2 == null) {
                    trackIdGenerator.b();
                    str2 = trackIdGenerator.e;
                }
                Format.Builder builder = new Format.Builder();
                builder.a = str2;
                builder.n = MimeTypes.l("video/mp2t");
                builder.o = MimeTypes.l(str);
                builder.e = format.e;
                builder.d = format.d;
                builder.O = format.P;
                builder.r = format.s;
                s.e(new Format(builder));
                trackOutputArr[i] = s;
                i++;
            } else {
                return;
            }
        }
    }
}
