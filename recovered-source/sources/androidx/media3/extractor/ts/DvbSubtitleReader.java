package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DvbSubtitleReader implements ElementaryStreamReader {
    public final List a;
    public final TrackOutput[] b;
    public boolean c;
    public int d;
    public int e;
    public long f = -9223372036854775807L;

    public DvbSubtitleReader(List list) {
        this.a = list;
        this.b = new TrackOutput[list.size()];
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        this.c = false;
        this.f = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void b(ParsableByteArray parsableByteArray) {
        boolean z;
        boolean z2;
        if (this.c) {
            if (this.d == 2) {
                if (parsableByteArray.a() == 0) {
                    z2 = false;
                } else {
                    if (parsableByteArray.z() != 32) {
                        this.c = false;
                    }
                    this.d--;
                    z2 = this.c;
                }
                if (!z2) {
                    return;
                }
            }
            if (this.d == 1) {
                if (parsableByteArray.a() == 0) {
                    z = false;
                } else {
                    if (parsableByteArray.z() != 0) {
                        this.c = false;
                    }
                    this.d--;
                    z = this.c;
                }
                if (!z) {
                    return;
                }
            }
            int i = parsableByteArray.b;
            int a = parsableByteArray.a();
            for (TrackOutput trackOutput : this.b) {
                parsableByteArray.M(i);
                trackOutput.f(a, parsableByteArray);
            }
            this.e += a;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void c() {
        boolean z;
        if (this.c) {
            if (this.f != -9223372036854775807L) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            for (TrackOutput trackOutput : this.b) {
                trackOutput.g(this.f, 1, this.e, 0, null);
            }
            this.c = false;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        if ((i & 4) == 0) {
            return;
        }
        this.c = true;
        this.f = j;
        this.e = 0;
        this.d = 2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        int i = 0;
        while (true) {
            TrackOutput[] trackOutputArr = this.b;
            if (i < trackOutputArr.length) {
                TsPayloadReader.DvbSubtitleInfo dvbSubtitleInfo = (TsPayloadReader.DvbSubtitleInfo) this.a.get(i);
                trackIdGenerator.a();
                trackIdGenerator.b();
                TrackOutput s = extractorOutput.s(trackIdGenerator.d, 3);
                Format.Builder builder = new Format.Builder();
                trackIdGenerator.b();
                builder.a = trackIdGenerator.e;
                builder.n = MimeTypes.l("video/mp2t");
                builder.o = MimeTypes.l("application/dvbsubs");
                builder.r = Collections.singletonList(dvbSubtitleInfo.b);
                builder.d = dvbSubtitleInfo.a;
                s.e(new Format(builder));
                trackOutputArr[i] = s;
                i++;
            } else {
                return;
            }
        }
    }
}
