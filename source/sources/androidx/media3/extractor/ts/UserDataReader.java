package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.CeaUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UserDataReader {
    public final List a;
    public final TrackOutput[] b;
    public final ReorderingBufferQueue c;

    public UserDataReader(List list) {
        this.a = list;
        this.b = new TrackOutput[list.size()];
        ReorderingBufferQueue reorderingBufferQueue = new ReorderingBufferQueue(new ReorderingBufferQueue.OutputConsumer() { // from class: androidx.media3.extractor.ts.a
            @Override // androidx.media3.container.ReorderingBufferQueue.OutputConsumer
            public final void e(long j, ParsableByteArray parsableByteArray) {
                CeaUtil.b(j, parsableByteArray, UserDataReader.this.b);
            }
        });
        this.c = reorderingBufferQueue;
        reorderingBufferQueue.c(3);
    }

    public final void a(long j, ParsableByteArray parsableByteArray) {
        if (parsableByteArray.a() >= 9) {
            int m = parsableByteArray.m();
            int m2 = parsableByteArray.m();
            int z = parsableByteArray.z();
            if (m == 434 && m2 == 1195456820 && z == 3) {
                this.c.a(j, parsableByteArray);
            }
        }
    }

    public final void b(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
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
                Format.Builder builder = new Format.Builder();
                trackIdGenerator.b();
                builder.a = trackIdGenerator.e;
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
