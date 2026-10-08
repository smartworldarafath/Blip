package androidx.media3.extractor.ts;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
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
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import androidx.media3.extractor.ts.TsBinarySearchSeeker;
import androidx.media3.extractor.ts.TsPayloadReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TsExtractor implements Extractor {
    public final int a;
    public final List b;
    public final ParsableByteArray c = new ParsableByteArray(0, new byte[9400]);
    public final SparseIntArray d;
    public final DefaultTsPayloadReaderFactory e;
    public final SubtitleParser.Factory f;
    public final SparseArray g;
    public final SparseBooleanArray h;
    public final SparseBooleanArray i;
    public final TsDurationReader j;
    public TsBinarySearchSeeker k;
    public ExtractorOutput l;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public int q;

    public TsExtractor(int i, SubtitleParser.Factory factory, TimestampAdjuster timestampAdjuster, DefaultTsPayloadReaderFactory defaultTsPayloadReaderFactory) {
        this.e = defaultTsPayloadReaderFactory;
        this.a = i;
        this.f = factory;
        this.b = Collections.singletonList(timestampAdjuster);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.h = sparseBooleanArray;
        this.i = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.g = sparseArray;
        this.d = new SparseIntArray();
        this.j = new TsDurationReader();
        this.l = ExtractorOutput.f;
        this.q = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i2 = 0; i2 < size; i2++) {
            sparseArray.put(sparseArray2.keyAt(i2), (TsPayloadReader) sparseArray2.valueAt(i2));
        }
        sparseArray.put(0, new SectionReader(new PatReader()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001e, code lost:
    
        r1 = r1 + 1;
     */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(ExtractorInput extractorInput) {
        byte[] bArr = this.c.a;
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        defaultExtractorInput.d(bArr, 0, 940, false);
        int i = 0;
        while (i < 188) {
            for (int i2 = 0; i2 < 5; i2++) {
                if (bArr[(i2 * 188) + i] != 71) {
                    break;
                }
            }
            defaultExtractorInput.c(i, false);
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        TsBinarySearchSeeker tsBinarySearchSeeker;
        long j3;
        boolean z;
        SparseArray sparseArray = this.g;
        List list = this.b;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            TimestampAdjuster timestampAdjuster = (TimestampAdjuster) list.get(i);
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
        }
        if (j2 != 0 && (tsBinarySearchSeeker = this.k) != null) {
            tsBinarySearchSeeker.c(j2);
        }
        this.c.J(0);
        this.d.clear();
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            ((TsPayloadReader) sparseArray.valueAt(i2)).a();
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        if ((this.a & 1) == 0) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.f);
        }
        this.l = extractorOutput;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v13, types: [androidx.media3.extractor.ts.TsBinarySearchSeeker, androidx.media3.extractor.BinarySearchSeeker] */
    /* JADX WARN: Type inference failed for: r4v12, types: [androidx.media3.extractor.BinarySearchSeeker$SeekTimestampConverter, java.lang.Object] */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        ExtractorInput extractorInput2;
        int i;
        ?? r1;
        int i2;
        boolean z;
        TsPayloadReader tsPayloadReader;
        int i3;
        int i4;
        boolean z2;
        long j;
        long g = extractorInput.g();
        if (this.n) {
            long j2 = -9223372036854775807L;
            TsDurationReader tsDurationReader = this.j;
            if (g != -1 && !tsDurationReader.c) {
                int i5 = this.q;
                TimestampAdjuster timestampAdjuster = tsDurationReader.a;
                ParsableByteArray parsableByteArray = tsDurationReader.b;
                if (i5 <= 0) {
                    tsDurationReader.a(extractorInput);
                    return 0;
                }
                if (!tsDurationReader.e) {
                    long g2 = extractorInput.g();
                    int min = (int) Math.min(112800L, g2);
                    long j3 = g2 - min;
                    if (extractorInput.getPosition() != j3) {
                        positionHolder.a = j3;
                        return 1;
                    }
                    parsableByteArray.J(min);
                    extractorInput.j();
                    extractorInput.n(parsableByteArray.a, 0, min);
                    int i6 = parsableByteArray.b;
                    int i7 = parsableByteArray.c;
                    int i8 = i7 - 188;
                    while (true) {
                        if (i8 < i6) {
                            break;
                        }
                        byte[] bArr = parsableByteArray.a;
                        int i9 = -4;
                        int i10 = 0;
                        while (true) {
                            if (i9 > 4) {
                                break;
                            }
                            int i11 = (i9 * 188) + i8;
                            if (i11 >= i6 && i11 < i7 && bArr[i11] == 71) {
                                i10++;
                                if (i10 == 5) {
                                    long a = TsUtil.a(parsableByteArray, i8, i5);
                                    if (a != -9223372036854775807L) {
                                        j2 = a;
                                        break;
                                    }
                                }
                            } else {
                                i10 = 0;
                            }
                            i9++;
                        }
                        i8--;
                    }
                    tsDurationReader.g = j2;
                    tsDurationReader.e = true;
                    return 0;
                }
                if (tsDurationReader.g == -9223372036854775807L) {
                    tsDurationReader.a(extractorInput);
                    return 0;
                }
                if (!tsDurationReader.d) {
                    int min2 = (int) Math.min(112800L, extractorInput.g());
                    if (extractorInput.getPosition() != 0) {
                        positionHolder.a = 0L;
                        return 1;
                    }
                    parsableByteArray.J(min2);
                    extractorInput.j();
                    extractorInput.n(parsableByteArray.a, 0, min2);
                    int i12 = parsableByteArray.b;
                    int i13 = parsableByteArray.c;
                    while (true) {
                        if (i12 < i13) {
                            if (parsableByteArray.a[i12] == 71) {
                                j = TsUtil.a(parsableByteArray, i12, i5);
                                if (j != -9223372036854775807L) {
                                    break;
                                }
                            }
                            i12++;
                        } else {
                            j = -9223372036854775807L;
                            break;
                        }
                    }
                    tsDurationReader.f = j;
                    tsDurationReader.d = true;
                    return 0;
                }
                long j4 = tsDurationReader.f;
                if (j4 == -9223372036854775807L) {
                    tsDurationReader.a(extractorInput);
                    return 0;
                }
                tsDurationReader.h = timestampAdjuster.c(tsDurationReader.g) - timestampAdjuster.b(j4);
                tsDurationReader.a(extractorInput);
                return 0;
            }
            if (!this.o) {
                this.o = true;
                long j5 = tsDurationReader.h;
                if (j5 != -9223372036854775807L) {
                    i = 1;
                    z2 = false;
                    ?? binarySearchSeeker = new BinarySearchSeeker(new Object(), new TsBinarySearchSeeker.TsPcrSeeker(this.q, tsDurationReader.a), j5, j5 + 1, 0L, g, 188L, 940);
                    this.k = binarySearchSeeker;
                    this.l.f(binarySearchSeeker.a);
                } else {
                    z2 = false;
                    i = 1;
                    this.l.f(new SeekMap.Unseekable(j5));
                }
            } else {
                i = 1;
                z2 = false;
            }
            if (this.p) {
                this.p = z2;
                c(0L, 0L);
                if (extractorInput.getPosition() != 0) {
                    positionHolder.a = 0L;
                    return i;
                }
            }
            TsBinarySearchSeeker tsBinarySearchSeeker = this.k;
            if (tsBinarySearchSeeker != null && tsBinarySearchSeeker.c != null) {
                return tsBinarySearchSeeker.a(extractorInput, positionHolder);
            }
            extractorInput2 = extractorInput;
            r1 = z2;
        } else {
            extractorInput2 = extractorInput;
            i = 1;
            r1 = 0;
        }
        ParsableByteArray parsableByteArray2 = this.c;
        byte[] bArr2 = parsableByteArray2.a;
        if (9400 - parsableByteArray2.b < 188) {
            int a2 = parsableByteArray2.a();
            if (a2 > 0) {
                System.arraycopy(bArr2, parsableByteArray2.b, bArr2, r1, a2);
            }
            parsableByteArray2.K(a2, bArr2);
        }
        while (true) {
            int a3 = parsableByteArray2.a();
            SparseArray sparseArray = this.g;
            if (a3 < 188) {
                int i14 = parsableByteArray2.c;
                int read = extractorInput2.read(bArr2, i14, 9400 - i14);
                if (read == -1) {
                    int i15 = r1;
                    while (i15 < sparseArray.size()) {
                        TsPayloadReader tsPayloadReader2 = (TsPayloadReader) sparseArray.valueAt(i15);
                        if (tsPayloadReader2 instanceof PesReader) {
                            PesReader pesReader = (PesReader) tsPayloadReader2;
                            int i16 = pesReader.c;
                            if (i16 != 3 || pesReader.j != -1) {
                                i4 = i;
                                if (i16 != i4) {
                                }
                            } else {
                                i4 = i;
                            }
                            pesReader.b(i4, new ParsableByteArray());
                        }
                        i15++;
                        i = 1;
                    }
                    return -1;
                }
                parsableByteArray2.L(i14 + read);
                i = 1;
            } else {
                int i17 = parsableByteArray2.b;
                int i18 = parsableByteArray2.c;
                byte[] bArr3 = parsableByteArray2.a;
                while (i17 < i18 && bArr3[i17] != 71) {
                    i17++;
                }
                parsableByteArray2.M(i17);
                int i19 = i17 + 188;
                int i20 = parsableByteArray2.c;
                if (i19 > i20) {
                    return r1;
                }
                int m = parsableByteArray2.m();
                if ((8388608 & m) != 0) {
                    parsableByteArray2.M(i19);
                    return r1;
                }
                if ((4194304 & m) != 0) {
                    i2 = 1;
                } else {
                    i2 = r1;
                }
                int i21 = (2096896 & m) >> 8;
                if ((m & 32) != 0) {
                    z = true;
                } else {
                    z = r1;
                }
                if ((m & 16) != 0) {
                    tsPayloadReader = (TsPayloadReader) sparseArray.get(i21);
                } else {
                    tsPayloadReader = null;
                }
                if (tsPayloadReader == null) {
                    parsableByteArray2.M(i19);
                    return r1;
                }
                int i22 = m & 15;
                SparseIntArray sparseIntArray = this.d;
                int i23 = sparseIntArray.get(i21, i22 - 1);
                sparseIntArray.put(i21, i22);
                if (i23 == i22) {
                    parsableByteArray2.M(i19);
                    return r1;
                }
                if (i22 != ((i23 + 1) & 15)) {
                    tsPayloadReader.a();
                }
                if (z) {
                    int z3 = parsableByteArray2.z();
                    if ((parsableByteArray2.z() & 64) != 0) {
                        i3 = 2;
                    } else {
                        i3 = r1;
                    }
                    i2 |= i3;
                    parsableByteArray2.N(z3 - 1);
                }
                boolean z4 = this.n;
                if (z4 || !this.i.get(i21, r1)) {
                    parsableByteArray2.L(i19);
                    tsPayloadReader.b(i2, parsableByteArray2);
                    parsableByteArray2.L(i20);
                }
                if (!z4 && this.n && g != -1) {
                    this.p = true;
                }
                parsableByteArray2.M(i19);
                return r1;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class PatReader implements SectionPayloadReader {
        public final ParsableBitArray a = new ParsableBitArray(4, new byte[4]);

        public PatReader() {
        }

        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public final void b(ParsableByteArray parsableByteArray) {
            TsExtractor tsExtractor = TsExtractor.this;
            SparseArray sparseArray = tsExtractor.g;
            if (parsableByteArray.z() != 0 || (parsableByteArray.z() & 128) == 0) {
                return;
            }
            parsableByteArray.N(6);
            int a = parsableByteArray.a() / 4;
            for (int i = 0; i < a; i++) {
                ParsableBitArray parsableBitArray = this.a;
                parsableByteArray.k(parsableBitArray.a, 0, 4);
                parsableBitArray.m(0);
                int g = parsableBitArray.g(16);
                parsableBitArray.o(3);
                if (g == 0) {
                    parsableBitArray.o(13);
                } else {
                    int g2 = parsableBitArray.g(13);
                    if (sparseArray.get(g2) == null) {
                        sparseArray.put(g2, new SectionReader(new PmtReader(g2)));
                        tsExtractor.m++;
                    }
                }
            }
            sparseArray.remove(0);
        }

        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public final void c(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class PmtReader implements SectionPayloadReader {
        public final ParsableBitArray a = new ParsableBitArray(5, new byte[5]);
        public final SparseArray b = new SparseArray();
        public final SparseIntArray c = new SparseIntArray();
        public final int d;

        public PmtReader(int i) {
            this.d = i;
        }

        /* JADX WARN: Failed to find 'out' block for switch in B:104:0x01ef. Please report as an issue. */
        /* JADX WARN: Failed to find 'out' block for switch in B:105:0x01f2. Please report as an issue. */
        /* JADX WARN: Removed duplicated region for block: B:110:0x01f8  */
        /* JADX WARN: Removed duplicated region for block: B:111:0x020a  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x01ba  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x01be  */
        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void b(ParsableByteArray parsableByteArray) {
            SparseArray sparseArray;
            int i;
            TsPayloadReader pesReader;
            TsPayloadReader pesReader2;
            SparseArray sparseArray2;
            int i2;
            TsExtractor tsExtractor = TsExtractor.this;
            SparseArray sparseArray3 = tsExtractor.g;
            SparseBooleanArray sparseBooleanArray = tsExtractor.h;
            if (parsableByteArray.z() == 2) {
                int i3 = 0;
                TimestampAdjuster timestampAdjuster = (TimestampAdjuster) tsExtractor.b.get(0);
                if ((parsableByteArray.z() & 128) == 0) {
                    return;
                }
                parsableByteArray.N(1);
                int G = parsableByteArray.G();
                int i4 = 3;
                parsableByteArray.N(3);
                ParsableBitArray parsableBitArray = this.a;
                parsableByteArray.k(parsableBitArray.a, 0, 2);
                parsableBitArray.m(0);
                parsableBitArray.o(3);
                int i5 = 13;
                tsExtractor.q = parsableBitArray.g(13);
                parsableByteArray.k(parsableBitArray.a, 0, 2);
                parsableBitArray.m(0);
                int i6 = 4;
                parsableBitArray.o(4);
                parsableByteArray.N(parsableBitArray.g(12));
                SparseArray sparseArray4 = this.b;
                sparseArray4.clear();
                SparseIntArray sparseIntArray = this.c;
                sparseIntArray.clear();
                int a = parsableByteArray.a();
                while (a > 0) {
                    parsableByteArray.k(parsableBitArray.a, i3, 5);
                    parsableBitArray.m(i3);
                    int g = parsableBitArray.g(8);
                    parsableBitArray.o(i4);
                    int g2 = parsableBitArray.g(i5);
                    parsableBitArray.o(i6);
                    int g3 = parsableBitArray.g(12);
                    int i7 = parsableByteArray.b;
                    int i8 = i7 + g3;
                    String str = null;
                    ArrayList arrayList = null;
                    int i9 = -1;
                    int i10 = 0;
                    while (parsableByteArray.b < i8) {
                        int z = parsableByteArray.z();
                        int z2 = parsableByteArray.b + parsableByteArray.z();
                        if (z2 > i8) {
                            SparseArray sparseArray5 = sparseArray3;
                            ParsableBitArray parsableBitArray2 = parsableBitArray;
                            parsableByteArray.M(i8);
                            TsPayloadReader.EsInfo esInfo = new TsPayloadReader.EsInfo(i9, str, i10, arrayList, Arrays.copyOfRange(parsableByteArray.a, i7, i8));
                            String str2 = str;
                            if (g != 6 || g == 5) {
                                g = i9;
                            }
                            a -= g3 + 5;
                            if (!sparseBooleanArray.get(g2)) {
                                i6 = 4;
                                i = 3;
                            } else {
                                DefaultTsPayloadReaderFactory defaultTsPayloadReaderFactory = tsExtractor.e;
                                if (g != 2) {
                                    i = 3;
                                    i6 = 4;
                                    if (g != 3 && g != 4) {
                                        if (g != 21) {
                                            if (g != 27) {
                                                if (g != 36) {
                                                    if (g != 45) {
                                                        if (g != 89) {
                                                            if (g != 172) {
                                                                if (g != 257) {
                                                                    if (g != 138) {
                                                                        if (g != 139) {
                                                                            switch (g) {
                                                                                case 15:
                                                                                    pesReader2 = new PesReader(new AdtsReader(esInfo.a(), str2, "video/mp2t", false));
                                                                                    break;
                                                                                case 16:
                                                                                    pesReader = new PesReader(new H263Reader(new UserDataReader(defaultTsPayloadReaderFactory.a(esInfo))));
                                                                                    break;
                                                                                case 17:
                                                                                    pesReader2 = new PesReader(new LatmReader(str2, esInfo.a()));
                                                                                    break;
                                                                                default:
                                                                                    switch (g) {
                                                                                        case 128:
                                                                                            break;
                                                                                        case 129:
                                                                                            pesReader2 = new PesReader(new Ac3Reader(str2, esInfo.a(), "video/mp2t"));
                                                                                            break;
                                                                                        case 130:
                                                                                            pesReader = null;
                                                                                            break;
                                                                                        default:
                                                                                            switch (g) {
                                                                                                case 134:
                                                                                                    pesReader = new SectionReader(new PassthroughSectionPayloadReader("application/x-scte35"));
                                                                                                    break;
                                                                                            }
                                                                                    }
                                                                            }
                                                                        } else {
                                                                            pesReader2 = new PesReader(new DtsReader(str2, esInfo.a(), 5408));
                                                                        }
                                                                    }
                                                                    pesReader2 = new PesReader(new DtsReader(str2, esInfo.a(), 4096));
                                                                } else {
                                                                    pesReader = new SectionReader(new PassthroughSectionPayloadReader("application/vnd.dvb.ait"));
                                                                }
                                                            } else {
                                                                pesReader2 = new PesReader(new Ac4Reader(str2, esInfo.a(), "video/mp2t"));
                                                            }
                                                        } else {
                                                            pesReader = new PesReader(new DvbSubtitleReader(esInfo.b));
                                                        }
                                                    } else {
                                                        pesReader = new PesReader(new MpeghReader());
                                                    }
                                                } else {
                                                    pesReader = new PesReader(new H265Reader(new SeiReader(defaultTsPayloadReaderFactory.a(esInfo))));
                                                }
                                            } else {
                                                pesReader = new PesReader(new H264Reader(new SeiReader(defaultTsPayloadReaderFactory.a(esInfo)), false, false));
                                            }
                                        } else {
                                            pesReader = new PesReader(new Id3Reader());
                                        }
                                        sparseIntArray.put(g2, g2);
                                        sparseArray4.put(g2, pesReader);
                                    } else {
                                        pesReader2 = new PesReader(new MpegAudioReader(str2, esInfo.a(), "video/mp2t"));
                                    }
                                    pesReader = pesReader2;
                                    sparseIntArray.put(g2, g2);
                                    sparseArray4.put(g2, pesReader);
                                } else {
                                    i6 = 4;
                                    i = 3;
                                }
                                pesReader = new PesReader(new H262Reader(new UserDataReader(defaultTsPayloadReaderFactory.a(esInfo)), "video/mp2t"));
                                sparseIntArray.put(g2, g2);
                                sparseArray4.put(g2, pesReader);
                            }
                            i4 = i;
                            parsableBitArray = parsableBitArray2;
                            sparseArray3 = sparseArray5;
                            i3 = 0;
                            i5 = 13;
                        } else {
                            ParsableBitArray parsableBitArray3 = parsableBitArray;
                            if (z == 5) {
                                long B = parsableByteArray.B();
                                if (B == 1094921523) {
                                    i9 = 129;
                                } else if (B == 1161904947) {
                                    i9 = 135;
                                } else {
                                    if (B != 1094921524) {
                                        if (B == 1212503619) {
                                            i9 = 36;
                                        }
                                    }
                                    i9 = 172;
                                }
                                sparseArray2 = sparseArray3;
                                i2 = z2;
                            } else if (z == 106) {
                                sparseArray2 = sparseArray3;
                                i2 = z2;
                                i9 = 129;
                            } else {
                                if (z == 122) {
                                    sparseArray2 = sparseArray3;
                                    i9 = 135;
                                } else if (z == 127) {
                                    int z3 = parsableByteArray.z();
                                    if (z3 != 21) {
                                        if (z3 == 14) {
                                            i9 = 136;
                                        } else if (z3 == 33) {
                                            i9 = 139;
                                        }
                                        sparseArray2 = sparseArray3;
                                    }
                                    i9 = 172;
                                    sparseArray2 = sparseArray3;
                                } else if (z == 123) {
                                    sparseArray2 = sparseArray3;
                                    i2 = z2;
                                    i9 = 138;
                                } else if (z == 10) {
                                    str = parsableByteArray.x(3, StandardCharsets.UTF_8).trim();
                                    sparseArray2 = sparseArray3;
                                    i10 = parsableByteArray.z();
                                } else if (z == 89) {
                                    ArrayList arrayList2 = new ArrayList();
                                    while (parsableByteArray.b < z2) {
                                        String trim = parsableByteArray.x(3, StandardCharsets.UTF_8).trim();
                                        parsableByteArray.z();
                                        byte[] bArr = new byte[4];
                                        parsableByteArray.k(bArr, 0, 4);
                                        arrayList2.add(new TsPayloadReader.DvbSubtitleInfo(trim, bArr));
                                        z2 = z2;
                                        sparseArray3 = sparseArray3;
                                    }
                                    sparseArray2 = sparseArray3;
                                    i2 = z2;
                                    arrayList = arrayList2;
                                    i9 = 89;
                                } else {
                                    sparseArray2 = sparseArray3;
                                    i2 = z2;
                                    if (z == 111) {
                                        i9 = 257;
                                    }
                                }
                                i2 = z2;
                            }
                            parsableByteArray.N(i2 - parsableByteArray.b);
                            parsableBitArray = parsableBitArray3;
                            sparseArray3 = sparseArray2;
                        }
                    }
                    SparseArray sparseArray52 = sparseArray3;
                    ParsableBitArray parsableBitArray22 = parsableBitArray;
                    parsableByteArray.M(i8);
                    TsPayloadReader.EsInfo esInfo2 = new TsPayloadReader.EsInfo(i9, str, i10, arrayList, Arrays.copyOfRange(parsableByteArray.a, i7, i8));
                    String str22 = str;
                    if (g != 6) {
                    }
                    g = i9;
                    a -= g3 + 5;
                    if (!sparseBooleanArray.get(g2)) {
                    }
                    i4 = i;
                    parsableBitArray = parsableBitArray22;
                    sparseArray3 = sparseArray52;
                    i3 = 0;
                    i5 = 13;
                }
                SparseArray sparseArray6 = sparseArray3;
                int size = sparseIntArray.size();
                int i11 = 0;
                while (i11 < size) {
                    int keyAt = sparseIntArray.keyAt(i11);
                    int valueAt = sparseIntArray.valueAt(i11);
                    sparseBooleanArray.put(keyAt, true);
                    tsExtractor.i.put(valueAt, true);
                    TsPayloadReader tsPayloadReader = (TsPayloadReader) sparseArray4.valueAt(i11);
                    if (tsPayloadReader != null) {
                        tsPayloadReader.c(timestampAdjuster, tsExtractor.l, new TsPayloadReader.TrackIdGenerator(G, keyAt, 8192));
                        sparseArray = sparseArray6;
                        sparseArray.put(valueAt, tsPayloadReader);
                    } else {
                        sparseArray = sparseArray6;
                    }
                    i11++;
                    sparseArray6 = sparseArray;
                }
                sparseArray6.remove(this.d);
                tsExtractor.m = 0;
                tsExtractor.l.n();
                tsExtractor.n = true;
            }
        }

        @Override // androidx.media3.extractor.ts.SectionPayloadReader
        public final void c(TimestampAdjuster timestampAdjuster, ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        }
    }
}
