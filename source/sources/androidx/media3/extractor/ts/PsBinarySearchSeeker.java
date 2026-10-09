package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.ExtractorInput;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class PsBinarySearchSeeker extends BinarySearchSeeker {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PsScrSeeker implements BinarySearchSeeker.TimestampSeeker {
        public final TimestampAdjuster a;
        public final ParsableByteArray b = new ParsableByteArray();

        public PsScrSeeker(TimestampAdjuster timestampAdjuster) {
            this.a = timestampAdjuster;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public final BinarySearchSeeker.TimestampSearchResult a(ExtractorInput extractorInput, long j) {
            long position = extractorInput.getPosition();
            int min = (int) Math.min(20000L, extractorInput.g() - position);
            ParsableByteArray parsableByteArray = this.b;
            parsableByteArray.J(min);
            extractorInput.n(parsableByteArray.a, 0, min);
            int i = -1;
            int i2 = -1;
            long j2 = -9223372036854775807L;
            while (parsableByteArray.a() >= 4) {
                if (PsBinarySearchSeeker.d(parsableByteArray.b, parsableByteArray.a) != 442) {
                    parsableByteArray.N(1);
                } else {
                    parsableByteArray.N(4);
                    long c = PsDurationReader.c(parsableByteArray);
                    if (c != -9223372036854775807L) {
                        long b = this.a.b(c);
                        if (b > j) {
                            if (j2 == -9223372036854775807L) {
                                return new BinarySearchSeeker.TimestampSearchResult(-1, b, position);
                            }
                            return new BinarySearchSeeker.TimestampSearchResult(0, -9223372036854775807L, position + i2);
                        }
                        j2 = b;
                        long j3 = 100000 + j2;
                        i2 = parsableByteArray.b;
                        if (j3 > j) {
                            return new BinarySearchSeeker.TimestampSearchResult(0, -9223372036854775807L, position + i2);
                        }
                    }
                    int i3 = parsableByteArray.c;
                    if (parsableByteArray.a() < 10) {
                        parsableByteArray.M(i3);
                    } else {
                        parsableByteArray.N(9);
                        int z = parsableByteArray.z() & 7;
                        if (parsableByteArray.a() < z) {
                            parsableByteArray.M(i3);
                        } else {
                            parsableByteArray.N(z);
                            if (parsableByteArray.a() < 4) {
                                parsableByteArray.M(i3);
                            } else {
                                if (PsBinarySearchSeeker.d(parsableByteArray.b, parsableByteArray.a) == 443) {
                                    parsableByteArray.N(4);
                                    int G = parsableByteArray.G();
                                    if (parsableByteArray.a() < G) {
                                        parsableByteArray.M(i3);
                                    } else {
                                        parsableByteArray.N(G);
                                    }
                                }
                                while (true) {
                                    if (parsableByteArray.a() < 4) {
                                        break;
                                    }
                                    int d = PsBinarySearchSeeker.d(parsableByteArray.b, parsableByteArray.a);
                                    if (d == 442 || d == 441 || (d >>> 8) != 1) {
                                        break;
                                    }
                                    parsableByteArray.N(4);
                                    if (parsableByteArray.a() < 2) {
                                        parsableByteArray.M(i3);
                                        break;
                                    }
                                    parsableByteArray.M(Math.min(parsableByteArray.c, parsableByteArray.b + parsableByteArray.G()));
                                }
                            }
                        }
                    }
                    i = parsableByteArray.b;
                }
            }
            if (j2 != -9223372036854775807L) {
                return new BinarySearchSeeker.TimestampSearchResult(-2, j2, position + i);
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

    public static int d(int i, byte[] bArr) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
