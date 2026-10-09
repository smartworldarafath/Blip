package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ts.TsPayloadReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SectionReader implements TsPayloadReader {
    public final SectionPayloadReader a;
    public final ParsableByteArray b = new ParsableByteArray(32);
    public int c;
    public int d;
    public boolean e;
    public boolean f;

    public SectionReader(SectionPayloadReader sectionPayloadReader) {
        this.a = sectionPayloadReader;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void a() {
        this.f = true;
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void b(int i, ParsableByteArray parsableByteArray) {
        boolean z;
        int i2;
        boolean z2;
        if ((i & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i2 = parsableByteArray.b + parsableByteArray.z();
        } else {
            i2 = -1;
        }
        if (this.f) {
            if (z) {
                this.f = false;
                parsableByteArray.M(i2);
                this.d = 0;
            } else {
                return;
            }
        }
        while (parsableByteArray.a() > 0) {
            int i3 = this.d;
            ParsableByteArray parsableByteArray2 = this.b;
            if (i3 < 3) {
                if (i3 == 0) {
                    int z3 = parsableByteArray.z();
                    parsableByteArray.M(parsableByteArray.b - 1);
                    if (z3 == 255) {
                        this.f = true;
                        return;
                    }
                }
                int min = Math.min(parsableByteArray.a(), 3 - this.d);
                parsableByteArray.k(parsableByteArray2.a, this.d, min);
                int i4 = this.d + min;
                this.d = i4;
                if (i4 == 3) {
                    parsableByteArray2.M(0);
                    parsableByteArray2.L(3);
                    parsableByteArray2.N(1);
                    int z4 = parsableByteArray2.z();
                    int z5 = parsableByteArray2.z();
                    if ((z4 & 128) != 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    this.e = z2;
                    int i5 = (((z4 & 15) << 8) | z5) + 3;
                    this.c = i5;
                    byte[] bArr = parsableByteArray2.a;
                    if (bArr.length < i5) {
                        parsableByteArray2.c(Math.min(4098, Math.max(i5, bArr.length * 2)));
                    }
                }
            } else {
                int min2 = Math.min(parsableByteArray.a(), this.c - this.d);
                parsableByteArray.k(parsableByteArray2.a, this.d, min2);
                int i6 = this.d + min2;
                this.d = i6;
                int i7 = this.c;
                if (i6 != i7) {
                    continue;
                } else {
                    if (this.e) {
                        if (Util.j(0, i7, -1, parsableByteArray2.a) != 0) {
                            this.f = true;
                            return;
                        }
                        parsableByteArray2.L(this.c - 4);
                    } else {
                        parsableByteArray2.L(i7);
                    }
                    parsableByteArray2.M(0);
                    this.a.b(parsableByteArray2);
                    this.d = 0;
                }
            }
        }
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader
    public final void c(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.a.c(timestampAdjuster, extractorOutput, trackIdGenerator);
        this.f = true;
    }
}
