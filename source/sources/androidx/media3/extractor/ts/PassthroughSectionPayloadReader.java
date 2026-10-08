package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PassthroughSectionPayloadReader implements SectionPayloadReader {
    public Format a;
    public TimestampAdjuster b;
    public TrackOutput c;

    public PassthroughSectionPayloadReader(String str) {
        Format.Builder builder = new Format.Builder();
        builder.n = MimeTypes.l("video/mp2t");
        builder.o = MimeTypes.l(str);
        this.a = new Format(builder);
    }

    @Override // androidx.media3.extractor.ts.SectionPayloadReader
    public final void b(ParsableByteArray parsableByteArray) {
        long d;
        long j;
        long j2;
        this.b.getClass();
        String str = Util.a;
        TimestampAdjuster timestampAdjuster = this.b;
        synchronized (timestampAdjuster) {
            try {
                long j3 = timestampAdjuster.c;
                if (j3 != -9223372036854775807L) {
                    d = j3 + timestampAdjuster.b;
                } else {
                    d = timestampAdjuster.d();
                }
                j = d;
            } finally {
            }
        }
        TimestampAdjuster timestampAdjuster2 = this.b;
        synchronized (timestampAdjuster2) {
            j2 = timestampAdjuster2.b;
        }
        if (j != -9223372036854775807L && j2 != -9223372036854775807L) {
            Format format = this.a;
            if (j2 != format.u) {
                Format.Builder a = format.a();
                a.t = j2;
                Format format2 = new Format(a);
                this.a = format2;
                this.c.e(format2);
            }
            int a2 = parsableByteArray.a();
            this.c.f(a2, parsableByteArray);
            this.c.g(j, 1, a2, 0, null);
        }
    }

    @Override // androidx.media3.extractor.ts.SectionPayloadReader
    public final void c(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.b = timestampAdjuster;
        trackIdGenerator.a();
        trackIdGenerator.b();
        TrackOutput s = extractorOutput.s(trackIdGenerator.d, 5);
        this.c = s;
        s.e(this.a);
    }
}
