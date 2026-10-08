package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.ts.PsBinarySearchSeeker;
import androidx.media3.extractor.ts.TsPayloadReader;
import io.sentry.SentryOptions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PsExtractor implements Extractor {
    public boolean e;
    public boolean f;
    public boolean g;
    public long h;
    public PsBinarySearchSeeker i;
    public ExtractorOutput j;
    public boolean k;
    public final TimestampAdjuster a = new TimestampAdjuster(0);
    public final ParsableByteArray c = new ParsableByteArray(4096);
    public final SparseArray b = new SparseArray();
    public final PsDurationReader d = new PsDurationReader();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PesReader {
        public final ElementaryStreamReader a;
        public final TimestampAdjuster b;
        public final ParsableBitArray c = new ParsableBitArray(64, new byte[64]);
        public boolean d;
        public boolean e;
        public boolean f;
        public long g;

        public PesReader(ElementaryStreamReader elementaryStreamReader, TimestampAdjuster timestampAdjuster) {
            this.a = elementaryStreamReader;
            this.b = timestampAdjuster;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        byte[] bArr = new byte[14];
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        defaultExtractorInput.d(bArr, 0, 14, false);
        if (442 == (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) && (bArr[4] & 196) == 68 && (bArr[6] & 4) == 4 && (bArr[8] & 4) == 4 && (bArr[9] & 1) == 1 && (bArr[12] & 3) == 3) {
            defaultExtractorInput.p(bArr[13] & 7, false);
            defaultExtractorInput.d(bArr, 0, 3, false);
            if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        long j3;
        boolean z;
        SparseArray sparseArray = this.b;
        TimestampAdjuster timestampAdjuster = this.a;
        synchronized (timestampAdjuster) {
            j3 = timestampAdjuster.b;
        }
        boolean z2 = true;
        if (j3 == -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            long d = timestampAdjuster.d();
            if (d == -9223372036854775807L || d == 0 || d == j2) {
                z2 = false;
            }
            z = z2;
        }
        if (z) {
            timestampAdjuster.e(j2);
        }
        PsBinarySearchSeeker psBinarySearchSeeker = this.i;
        if (psBinarySearchSeeker != null) {
            psBinarySearchSeeker.c(j2);
        }
        for (int i = 0; i < sparseArray.size(); i++) {
            PesReader pesReader = (PesReader) sparseArray.valueAt(i);
            pesReader.f = false;
            pesReader.a.a();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.j = extractorOutput;
    }

    /* JADX WARN: Type inference failed for: r4v21, types: [androidx.media3.extractor.ts.PsBinarySearchSeeker, androidx.media3.extractor.BinarySearchSeeker] */
    /* JADX WARN: Type inference failed for: r5v14, types: [androidx.media3.extractor.BinarySearchSeeker$SeekTimestampConverter, java.lang.Object] */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        char c;
        int i;
        int i2;
        long j;
        long j2;
        ElementaryStreamReader elementaryStreamReader;
        long j3;
        this.j.getClass();
        long g = extractorInput.g();
        int i3 = (g > (-1L) ? 1 : (g == (-1L) ? 0 : -1));
        long j4 = -9223372036854775807L;
        PsDurationReader psDurationReader = this.d;
        if (i3 != 0) {
            c = 3;
            if (!psDurationReader.c) {
                TimestampAdjuster timestampAdjuster = psDurationReader.a;
                ParsableByteArray parsableByteArray = psDurationReader.b;
                if (!psDurationReader.e) {
                    long g2 = extractorInput.g();
                    int min = (int) Math.min(20000L, g2);
                    long j5 = g2 - min;
                    if (extractorInput.getPosition() != j5) {
                        positionHolder.a = j5;
                        return 1;
                    }
                    parsableByteArray.J(min);
                    extractorInput.j();
                    extractorInput.n(parsableByteArray.a, 0, min);
                    int i4 = parsableByteArray.b;
                    int i5 = parsableByteArray.c - 4;
                    while (true) {
                        if (i5 < i4) {
                            break;
                        }
                        if (PsDurationReader.b(i5, parsableByteArray.a) == 442) {
                            parsableByteArray.M(i5 + 4);
                            long c2 = PsDurationReader.c(parsableByteArray);
                            if (c2 != -9223372036854775807L) {
                                j4 = c2;
                                break;
                            }
                        }
                        i5--;
                    }
                    psDurationReader.g = j4;
                    psDurationReader.e = true;
                    return 0;
                }
                if (psDurationReader.g == -9223372036854775807L) {
                    psDurationReader.a(extractorInput);
                    return 0;
                }
                if (!psDurationReader.d) {
                    int min2 = (int) Math.min(20000L, extractorInput.g());
                    if (extractorInput.getPosition() != 0) {
                        positionHolder.a = 0L;
                        return 1;
                    }
                    parsableByteArray.J(min2);
                    extractorInput.j();
                    extractorInput.n(parsableByteArray.a, 0, min2);
                    int i6 = parsableByteArray.b;
                    int i7 = parsableByteArray.c;
                    while (true) {
                        if (i6 < i7 - 3) {
                            if (PsDurationReader.b(i6, parsableByteArray.a) == 442) {
                                parsableByteArray.M(i6 + 4);
                                long c3 = PsDurationReader.c(parsableByteArray);
                                if (c3 != -9223372036854775807L) {
                                    j3 = c3;
                                    break;
                                }
                            }
                            i6++;
                        } else {
                            j3 = -9223372036854775807L;
                            break;
                        }
                    }
                    psDurationReader.f = j3;
                    psDurationReader.d = true;
                    return 0;
                }
                long j6 = psDurationReader.f;
                if (j6 == -9223372036854775807L) {
                    psDurationReader.a(extractorInput);
                    return 0;
                }
                psDurationReader.h = timestampAdjuster.c(psDurationReader.g) - timestampAdjuster.b(j6);
                psDurationReader.a(extractorInput);
                return 0;
            }
        } else {
            c = 3;
        }
        if (!this.k) {
            this.k = true;
            long j7 = psDurationReader.h;
            if (j7 != -9223372036854775807L) {
                i = i3;
                i2 = 4;
                ?? binarySearchSeeker = new BinarySearchSeeker(new Object(), new PsBinarySearchSeeker.PsScrSeeker(psDurationReader.a), j7, j7 + 1, 0L, g, 188L, 1000);
                this.i = binarySearchSeeker;
                this.j.f(binarySearchSeeker.a);
            } else {
                i = i3;
                i2 = 4;
                this.j.f(new SeekMap.Unseekable(j7));
            }
        } else {
            i = i3;
            i2 = 4;
        }
        PsBinarySearchSeeker psBinarySearchSeeker = this.i;
        if (psBinarySearchSeeker != null && psBinarySearchSeeker.c != null) {
            return psBinarySearchSeeker.a(extractorInput, positionHolder);
        }
        extractorInput.j();
        if (i != 0) {
            j = g - extractorInput.e();
        } else {
            j = -1;
        }
        if (j != -1 && j < 4) {
            g();
            return -1;
        }
        ParsableByteArray parsableByteArray2 = this.c;
        if (!extractorInput.d(parsableByteArray2.a, 0, i2, true)) {
            g();
            return -1;
        }
        parsableByteArray2.M(0);
        int m = parsableByteArray2.m();
        if (m == 441) {
            g();
            return -1;
        }
        if (m == 442) {
            extractorInput.n(parsableByteArray2.a, 0, 10);
            parsableByteArray2.M(9);
            extractorInput.k((parsableByteArray2.z() & 7) + 14);
            return 0;
        }
        if (m == 443) {
            extractorInput.n(parsableByteArray2.a, 0, 2);
            parsableByteArray2.M(0);
            extractorInput.k(parsableByteArray2.G() + 6);
            return 0;
        }
        if (((m & (-256)) >> 8) != 1) {
            extractorInput.k(1);
            return 0;
        }
        int i8 = m & 255;
        SparseArray sparseArray = this.b;
        PesReader pesReader = (PesReader) sparseArray.get(i8);
        if (!this.e) {
            if (pesReader == null) {
                if (i8 == 189) {
                    elementaryStreamReader = new Ac3Reader("video/mp2p");
                    this.f = true;
                    this.h = extractorInput.getPosition();
                } else if ((m & 224) == 192) {
                    elementaryStreamReader = new MpegAudioReader(null, 0, "video/mp2p");
                    this.f = true;
                    this.h = extractorInput.getPosition();
                } else if ((m & 240) == 224) {
                    elementaryStreamReader = new H262Reader(null, "video/mp2p");
                    this.g = true;
                    this.h = extractorInput.getPosition();
                } else {
                    elementaryStreamReader = null;
                }
                if (elementaryStreamReader != null) {
                    elementaryStreamReader.f(this.j, new TsPayloadReader.TrackIdGenerator(i8, 256));
                    pesReader = new PesReader(elementaryStreamReader, this.a);
                    sparseArray.put(i8, pesReader);
                }
            }
            if (this.f && this.g) {
                j2 = this.h + 8192;
            } else {
                j2 = SentryOptions.MAX_EVENT_SIZE_BYTES;
            }
            if (extractorInput.getPosition() > j2) {
                this.e = true;
                this.j.n();
            }
        }
        extractorInput.n(parsableByteArray2.a, 0, 2);
        parsableByteArray2.M(0);
        int G = parsableByteArray2.G() + 6;
        if (pesReader == null) {
            extractorInput.k(G);
            return 0;
        }
        parsableByteArray2.J(G);
        extractorInput.readFully(parsableByteArray2.a, 0, G);
        parsableByteArray2.M(6);
        ElementaryStreamReader elementaryStreamReader2 = pesReader.a;
        ParsableBitArray parsableBitArray = pesReader.c;
        parsableByteArray2.k(parsableBitArray.a, 0, 3);
        parsableBitArray.m(0);
        parsableBitArray.o(8);
        pesReader.d = parsableBitArray.f();
        pesReader.e = parsableBitArray.f();
        parsableBitArray.o(6);
        parsableByteArray2.k(parsableBitArray.a, 0, parsableBitArray.g(8));
        parsableBitArray.m(0);
        TimestampAdjuster timestampAdjuster2 = pesReader.b;
        pesReader.g = 0L;
        if (pesReader.d) {
            parsableBitArray.o(4);
            parsableBitArray.o(1);
            parsableBitArray.o(1);
            long g3 = (parsableBitArray.g(3) << 30) | (parsableBitArray.g(15) << 15) | parsableBitArray.g(15);
            parsableBitArray.o(1);
            if (!pesReader.f && pesReader.e) {
                parsableBitArray.o(4);
                parsableBitArray.o(1);
                parsableBitArray.o(1);
                parsableBitArray.o(1);
                timestampAdjuster2.b(parsableBitArray.g(15) | (parsableBitArray.g(3) << 30) | (parsableBitArray.g(15) << 15));
                pesReader.f = true;
            }
            pesReader.g = timestampAdjuster2.b(g3);
        }
        elementaryStreamReader2.e(4, pesReader.g);
        elementaryStreamReader2.b(parsableByteArray2);
        elementaryStreamReader2.c();
        parsableByteArray2.L(parsableByteArray2.a.length);
        return 0;
    }

    public final void g() {
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.b;
            if (i < sparseArray.size()) {
                ((PesReader) sparseArray.valueAt(i)).a.d();
                i++;
            } else {
                return;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
