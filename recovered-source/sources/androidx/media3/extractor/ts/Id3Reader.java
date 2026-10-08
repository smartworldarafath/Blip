package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Id3Reader implements ElementaryStreamReader {
    public TrackOutput b;
    public boolean c;
    public int e;
    public int f;
    public final ParsableByteArray a = new ParsableByteArray(10);
    public long d = -9223372036854775807L;

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        this.c = false;
        this.d = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void b(ParsableByteArray parsableByteArray) {
        this.b.getClass();
        if (!this.c) {
            return;
        }
        int a = parsableByteArray.a();
        int i = this.f;
        if (i < 10) {
            int min = Math.min(a, 10 - i);
            byte[] bArr = parsableByteArray.a;
            int i2 = parsableByteArray.b;
            ParsableByteArray parsableByteArray2 = this.a;
            System.arraycopy(bArr, i2, parsableByteArray2.a, this.f, min);
            if (this.f + min == 10) {
                parsableByteArray2.M(0);
                if (73 == parsableByteArray2.z() && 68 == parsableByteArray2.z() && 51 == parsableByteArray2.z()) {
                    parsableByteArray2.N(3);
                    this.e = parsableByteArray2.y() + 10;
                } else {
                    Log.f("Id3Reader", "Discarding invalid ID3 tag");
                    this.c = false;
                    return;
                }
            }
        }
        int min2 = Math.min(a, this.e - this.f);
        this.b.f(min2, parsableByteArray);
        this.f += min2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        int i;
        boolean z;
        this.b.getClass();
        if (this.c && (i = this.e) != 0 && this.f == i) {
            if (this.d != -9223372036854775807L) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            this.b.g(this.d, 1, this.e, 0, null);
            this.c = false;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        if ((i & 4) == 0) {
            return;
        }
        this.c = true;
        this.d = j;
        this.e = 0;
        this.f = 0;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        TrackOutput s = extractorOutput.s(trackIdGenerator.d, 5);
        this.b = s;
        Format.Builder builder = new Format.Builder();
        trackIdGenerator.b();
        builder.a = trackIdGenerator.e;
        builder.n = MimeTypes.l("video/mp2t");
        builder.o = MimeTypes.l("application/id3");
        s.e(new Format(builder));
    }
}
