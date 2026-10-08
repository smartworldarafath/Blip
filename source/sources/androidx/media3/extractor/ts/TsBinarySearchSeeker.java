package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.ExtractorInput;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TsBinarySearchSeeker extends BinarySearchSeeker {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TsPcrSeeker implements BinarySearchSeeker.TimestampSeeker {
        public final TimestampAdjuster a;
        public final ParsableByteArray b = new ParsableByteArray();
        public final int c;

        public TsPcrSeeker(int i, TimestampAdjuster timestampAdjuster) {
            this.c = i;
            this.a = timestampAdjuster;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public final BinarySearchSeeker.TimestampSearchResult a(ExtractorInput extractorInput, long j) {
            long j2;
            long position = extractorInput.getPosition();
            int min = (int) Math.min(112800L, extractorInput.g() - position);
            ParsableByteArray parsableByteArray = this.b;
            parsableByteArray.J(min);
            extractorInput.n(parsableByteArray.a, 0, min);
            int i = parsableByteArray.c;
            long j3 = -1;
            long j4 = -1;
            long j5 = -9223372036854775807L;
            while (true) {
                if (parsableByteArray.a() >= 188) {
                    byte[] bArr = parsableByteArray.a;
                    int i2 = parsableByteArray.b;
                    while (true) {
                        if (i2 < i) {
                            j2 = -9223372036854775807L;
                            if (bArr[i2] == 71) {
                                break;
                            }
                            i2++;
                        } else {
                            j2 = -9223372036854775807L;
                            break;
                        }
                    }
                    int i3 = i2 + 188;
                    if (i3 > i) {
                        break;
                    }
                    long a = TsUtil.a(parsableByteArray, i2, this.c);
                    if (a != j2) {
                        long b = this.a.b(a);
                        if (b > j) {
                            if (j5 == j2) {
                                return new BinarySearchSeeker.TimestampSearchResult(-1, b, position);
                            }
                            return new BinarySearchSeeker.TimestampSearchResult(0, -9223372036854775807L, position + j4);
                        }
                        j5 = b;
                        if (100000 + j5 > j) {
                            return new BinarySearchSeeker.TimestampSearchResult(0, -9223372036854775807L, position + i2);
                        }
                        j4 = i2;
                    }
                    parsableByteArray.M(i3);
                    j3 = i3;
                } else {
                    j2 = -9223372036854775807L;
                    break;
                }
            }
            if (j5 != j2) {
                return new BinarySearchSeeker.TimestampSearchResult(-2, j5, position + j3);
            }
            return BinarySearchSeeker.TimestampSearchResult.d;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public final void b() {
            byte[] bArr = Util.b;
            ParsableByteArray parsableByteArray = this.b;
            parsableByteArray.getClass();
            parsableByteArray.K(bArr.length, bArr);
        }
    }
}
