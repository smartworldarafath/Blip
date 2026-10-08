package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.ParsableNalUnitBitArray;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class H264Reader implements ElementaryStreamReader {
    public final SeiReader a;
    public final boolean b;
    public final boolean c;
    public long g;
    public String i;
    public TrackOutput j;
    public SampleReader k;
    public boolean l;
    public boolean n;
    public final boolean[] h = new boolean[3];
    public final NalUnitTargetBuffer d = new NalUnitTargetBuffer(7);
    public final NalUnitTargetBuffer e = new NalUnitTargetBuffer(8);
    public final NalUnitTargetBuffer f = new NalUnitTargetBuffer(6);
    public long m = -9223372036854775807L;
    public final ParsableByteArray o = new ParsableByteArray();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SampleReader {
        public final TrackOutput a;
        public final boolean b;
        public final boolean c;
        public final ParsableNalUnitBitArray f;
        public byte[] g;
        public int h;
        public int i;
        public long j;
        public long l;
        public long p;
        public long q;
        public boolean r;
        public boolean s;
        public final SparseArray d = new SparseArray();
        public final SparseArray e = new SparseArray();
        public SliceHeaderData m = new Object();
        public SliceHeaderData n = new Object();
        public boolean k = false;
        public boolean o = false;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class SliceHeaderData {
            public boolean a;
            public boolean b;
            public NalUnitUtil.SpsData c;
            public int d;
            public int e;
            public int f;
            public int g;
            public boolean h;
            public boolean i;
            public boolean j;
            public boolean k;
            public int l;
            public int m;
            public int n;
            public int o;
            public int p;
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [androidx.media3.extractor.ts.H264Reader$SampleReader$SliceHeaderData, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v4, types: [androidx.media3.extractor.ts.H264Reader$SampleReader$SliceHeaderData, java.lang.Object] */
        public SampleReader(TrackOutput trackOutput, boolean z, boolean z2) {
            this.a = trackOutput;
            this.b = z;
            this.c = z2;
            byte[] bArr = new byte[128];
            this.g = bArr;
            this.f = new ParsableNalUnitBitArray(bArr, 0, 0);
            SliceHeaderData sliceHeaderData = this.n;
            sliceHeaderData.b = false;
            sliceHeaderData.a = false;
        }
    }

    public H264Reader(SeiReader seiReader, boolean z, boolean z2) {
        this.a = seiReader;
        this.b = z;
        this.c = z2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        this.g = 0L;
        this.n = false;
        this.m = -9223372036854775807L;
        NalUnitUtil.a(this.h);
        this.d.c();
        this.e.c();
        this.f.c();
        this.a.c.b(0);
        SampleReader sampleReader = this.k;
        if (sampleReader != null) {
            sampleReader.k = false;
            sampleReader.o = false;
            SampleReader.SliceHeaderData sliceHeaderData = sampleReader.n;
            sliceHeaderData.b = false;
            sliceHeaderData.a = false;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void b(ParsableByteArray parsableByteArray) {
        int i;
        int i2;
        this.j.getClass();
        String str = Util.a;
        int i3 = parsableByteArray.b;
        int i4 = parsableByteArray.c;
        byte[] bArr = parsableByteArray.a;
        this.g += parsableByteArray.a();
        this.j.f(parsableByteArray.a(), parsableByteArray);
        while (true) {
            int b = NalUnitUtil.b(bArr, i3, i4, this.h);
            if (b == i4) {
                this.h(bArr, i3, i4);
                return;
            }
            int i5 = bArr[b + 3] & 31;
            if (b > 0 && bArr[b - 1] == 0) {
                b--;
                i = 4;
            } else {
                i = 3;
            }
            int i6 = b - i3;
            if (i6 > 0) {
                this.h(bArr, i3, b);
            }
            int i7 = i4 - b;
            long j = this.g - i7;
            if (i6 < 0) {
                i2 = -i6;
            } else {
                i2 = 0;
            }
            H264Reader h264Reader = this;
            h264Reader.g(i7, i2, j, this.m);
            h264Reader.i(i5, j, h264Reader.m);
            i3 = b + i;
            this = h264Reader;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d() {
        this.j.getClass();
        String str = Util.a;
        this.a.c.b(0);
        g(0, 0, this.g, this.m);
        i(9, this.g, this.m);
        g(0, 0, this.g, this.m);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        boolean z;
        this.m = j;
        boolean z2 = this.n;
        if ((i & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        this.n = z | z2;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.i = trackIdGenerator.e;
        trackIdGenerator.b();
        TrackOutput s = extractorOutput.s(trackIdGenerator.d, 2);
        this.j = s;
        this.k = new SampleReader(s, this.b, this.c);
        this.a.a(extractorOutput, trackIdGenerator);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x01ad, code lost:
    
        if (r3.j == r4.j) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x01b7, code lost:
    
        if (r10 != 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01c9, code lost:
    
        if (r3.n == r4.n) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x01d9, code lost:
    
        if (r3.p == r4.p) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01e7, code lost:
    
        if (r3.l == r4.l) goto L74;
     */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0235  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(int i, int i2, long j, long j2) {
        boolean z;
        int i3;
        boolean z2;
        int i4;
        ReorderingBufferQueue reorderingBufferQueue = this.a.c;
        boolean z3 = true;
        if (!this.l || this.k.c) {
            NalUnitTargetBuffer nalUnitTargetBuffer = this.d;
            nalUnitTargetBuffer.b(i2);
            NalUnitTargetBuffer nalUnitTargetBuffer2 = this.e;
            nalUnitTargetBuffer2.b(i2);
            boolean z4 = this.l;
            boolean z5 = nalUnitTargetBuffer.c;
            if (!z4) {
                if (z5 && nalUnitTargetBuffer2.c) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Arrays.copyOf(nalUnitTargetBuffer.d, nalUnitTargetBuffer.e));
                    arrayList.add(Arrays.copyOf(nalUnitTargetBuffer2.d, nalUnitTargetBuffer2.e));
                    NalUnitUtil.SpsData k = NalUnitUtil.k(nalUnitTargetBuffer.d, 3, nalUnitTargetBuffer.e);
                    int i5 = k.s;
                    ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(nalUnitTargetBuffer2.d, 4, nalUnitTargetBuffer2.e);
                    int f = parsableNalUnitBitArray.f();
                    int f2 = parsableNalUnitBitArray.f();
                    parsableNalUnitBitArray.i();
                    NalUnitUtil.PpsData ppsData = new NalUnitUtil.PpsData(f, f2, parsableNalUnitBitArray.d());
                    int i6 = k.a;
                    int i7 = k.b;
                    int i8 = k.c;
                    byte[] bArr = CodecSpecificDataUtil.a;
                    String format = String.format("avc1.%02X%02X%02X", Integer.valueOf(i6), Integer.valueOf(i7), Integer.valueOf(i8));
                    TrackOutput trackOutput = this.j;
                    Format.Builder builder = new Format.Builder();
                    builder.a = this.i;
                    builder.n = MimeTypes.l("video/mp2t");
                    builder.o = MimeTypes.l("video/avc");
                    builder.k = format;
                    builder.v = k.e;
                    builder.w = k.f;
                    ColorInfo.Builder builder2 = new ColorInfo.Builder();
                    builder2.a = k.p;
                    builder2.b = k.q;
                    builder2.c = k.r;
                    builder2.e = k.h + 8;
                    builder2.f = k.i + 8;
                    builder.G = builder2.a();
                    builder.D = k.g;
                    builder.r = arrayList;
                    builder.q = i5;
                    trackOutput.e(new Format(builder));
                    this.l = true;
                    reorderingBufferQueue.c(i5);
                    this.k.d.append(k.d, k);
                    this.k.e.append(f, ppsData);
                    nalUnitTargetBuffer.c();
                    nalUnitTargetBuffer2.c();
                }
            } else if (z5) {
                NalUnitUtil.SpsData k2 = NalUnitUtil.k(nalUnitTargetBuffer.d, 3, nalUnitTargetBuffer.e);
                reorderingBufferQueue.c(k2.s);
                this.k.d.append(k2.d, k2);
                nalUnitTargetBuffer.c();
            } else if (nalUnitTargetBuffer2.c) {
                ParsableNalUnitBitArray parsableNalUnitBitArray2 = new ParsableNalUnitBitArray(nalUnitTargetBuffer2.d, 4, nalUnitTargetBuffer2.e);
                int f3 = parsableNalUnitBitArray2.f();
                int f4 = parsableNalUnitBitArray2.f();
                parsableNalUnitBitArray2.i();
                this.k.e.append(f3, new NalUnitUtil.PpsData(f3, f4, parsableNalUnitBitArray2.d()));
                nalUnitTargetBuffer2.c();
            }
        }
        NalUnitTargetBuffer nalUnitTargetBuffer3 = this.f;
        if (nalUnitTargetBuffer3.b(i2)) {
            int m = NalUnitUtil.m(nalUnitTargetBuffer3.e, nalUnitTargetBuffer3.d);
            byte[] bArr2 = nalUnitTargetBuffer3.d;
            ParsableByteArray parsableByteArray = this.o;
            parsableByteArray.K(m, bArr2);
            parsableByteArray.M(4);
            reorderingBufferQueue.a(j2, parsableByteArray);
        }
        SampleReader sampleReader = this.k;
        boolean z6 = this.l;
        if (sampleReader.i != 9) {
            if (sampleReader.c) {
                SampleReader.SliceHeaderData sliceHeaderData = sampleReader.n;
                SampleReader.SliceHeaderData sliceHeaderData2 = sampleReader.m;
                if (sliceHeaderData.a) {
                    if (sliceHeaderData2.a) {
                        NalUnitUtil.SpsData spsData = sliceHeaderData.c;
                        spsData.getClass();
                        NalUnitUtil.SpsData spsData2 = sliceHeaderData2.c;
                        spsData2.getClass();
                        int i9 = spsData2.m;
                        if (sliceHeaderData.f == sliceHeaderData2.f) {
                            if (sliceHeaderData.g == sliceHeaderData2.g) {
                                if (sliceHeaderData.h == sliceHeaderData2.h) {
                                    if (sliceHeaderData.i) {
                                        if (sliceHeaderData2.i) {
                                        }
                                    }
                                    int i10 = sliceHeaderData.d;
                                    int i11 = sliceHeaderData2.d;
                                    if (i10 != i11) {
                                        if (i10 != 0) {
                                        }
                                    }
                                    int i12 = spsData.m;
                                    if (i12 == 0) {
                                        if (i9 == 0) {
                                            if (sliceHeaderData.m == sliceHeaderData2.m) {
                                            }
                                        }
                                    }
                                    if (i12 == 1) {
                                        if (i9 == 1) {
                                            if (sliceHeaderData.o == sliceHeaderData2.o) {
                                            }
                                        }
                                    }
                                    boolean z7 = sliceHeaderData.k;
                                    if (z7 == sliceHeaderData2.k) {
                                        if (z7) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (!sampleReader.b) {
                SampleReader.SliceHeaderData sliceHeaderData3 = sampleReader.n;
                if (sliceHeaderData3.b && ((i4 = sliceHeaderData3.e) == 7 || i4 == 2)) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = sampleReader.s;
            }
            boolean z8 = sampleReader.r;
            i3 = sampleReader.i;
            if (i3 != 5 && (!z || i3 != 1)) {
                z3 = false;
            }
            z2 = z8 | z3;
            sampleReader.r = z2;
            sampleReader.i = 24;
            if (!z2) {
                this.n = false;
                return;
            }
            return;
        }
        if (z6 && sampleReader.o) {
            long j3 = sampleReader.j;
            int i13 = i + ((int) (j - j3));
            long j4 = sampleReader.q;
            if (j4 != -9223372036854775807L) {
                long j5 = sampleReader.p;
                if (j3 != j5) {
                    sampleReader.a.g(j4, sampleReader.r ? 1 : 0, (int) (j3 - j5), i13, null);
                }
            }
        }
        sampleReader.p = sampleReader.j;
        sampleReader.q = sampleReader.l;
        sampleReader.r = false;
        sampleReader.o = true;
        if (!sampleReader.b) {
        }
        boolean z82 = sampleReader.r;
        i3 = sampleReader.i;
        if (i3 != 5) {
            z3 = false;
        }
        z2 = z82 | z3;
        sampleReader.r = z2;
        sampleReader.i = 24;
        if (!z2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(byte[] bArr, int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i3;
        int i4;
        int i5;
        int i6;
        int g;
        int i7;
        if (!this.l || this.k.c) {
            this.d.a(bArr, i, i2);
            this.e.a(bArr, i, i2);
        }
        this.f.a(bArr, i, i2);
        SampleReader sampleReader = this.k;
        SparseArray sparseArray = sampleReader.e;
        ParsableNalUnitBitArray parsableNalUnitBitArray = sampleReader.f;
        if (sampleReader.k) {
            int i8 = i2 - i;
            byte[] bArr2 = sampleReader.g;
            int length = bArr2.length;
            int i9 = sampleReader.h + i8;
            if (length < i9) {
                sampleReader.g = Arrays.copyOf(bArr2, i9 * 2);
            }
            System.arraycopy(bArr, i, sampleReader.g, sampleReader.h, i8);
            int i10 = sampleReader.h + i8;
            sampleReader.h = i10;
            parsableNalUnitBitArray.a = sampleReader.g;
            parsableNalUnitBitArray.c = 0;
            parsableNalUnitBitArray.d = 0;
            parsableNalUnitBitArray.b = i10;
            parsableNalUnitBitArray.e = 0;
            parsableNalUnitBitArray.a();
            if (parsableNalUnitBitArray.b(8)) {
                parsableNalUnitBitArray.i();
                int e = parsableNalUnitBitArray.e(2);
                parsableNalUnitBitArray.j(5);
                if (parsableNalUnitBitArray.c()) {
                    parsableNalUnitBitArray.f();
                    if (parsableNalUnitBitArray.c()) {
                        int f = parsableNalUnitBitArray.f();
                        if (!sampleReader.c) {
                            sampleReader.k = false;
                            SampleReader.SliceHeaderData sliceHeaderData = sampleReader.n;
                            sliceHeaderData.e = f;
                            sliceHeaderData.b = true;
                            return;
                        }
                        if (parsableNalUnitBitArray.c()) {
                            int f2 = parsableNalUnitBitArray.f();
                            if (sparseArray.indexOfKey(f2) < 0) {
                                sampleReader.k = false;
                                return;
                            }
                            NalUnitUtil.PpsData ppsData = (NalUnitUtil.PpsData) sparseArray.get(f2);
                            SparseArray sparseArray2 = sampleReader.d;
                            int i11 = ppsData.a;
                            boolean z5 = ppsData.b;
                            NalUnitUtil.SpsData spsData = (NalUnitUtil.SpsData) sparseArray2.get(i11);
                            boolean z6 = spsData.j;
                            int i12 = spsData.n;
                            int i13 = spsData.l;
                            if (z6) {
                                if (parsableNalUnitBitArray.b(2)) {
                                    parsableNalUnitBitArray.j(2);
                                } else {
                                    return;
                                }
                            }
                            if (parsableNalUnitBitArray.b(i13)) {
                                int e2 = parsableNalUnitBitArray.e(i13);
                                if (!spsData.k) {
                                    if (parsableNalUnitBitArray.b(1)) {
                                        z = parsableNalUnitBitArray.d();
                                        if (z) {
                                            if (parsableNalUnitBitArray.b(1)) {
                                                z2 = parsableNalUnitBitArray.d();
                                                z3 = true;
                                                if (sampleReader.i != 5) {
                                                    z4 = true;
                                                } else {
                                                    z4 = false;
                                                }
                                                if (!z4) {
                                                    if (parsableNalUnitBitArray.c()) {
                                                        i3 = parsableNalUnitBitArray.f();
                                                    } else {
                                                        return;
                                                    }
                                                } else {
                                                    i3 = 0;
                                                }
                                                i4 = spsData.m;
                                                if (i4 != 0) {
                                                    if (parsableNalUnitBitArray.b(i12)) {
                                                        i5 = parsableNalUnitBitArray.e(i12);
                                                        if (z5 && !z) {
                                                            if (parsableNalUnitBitArray.c()) {
                                                                i7 = parsableNalUnitBitArray.g();
                                                                i6 = 0;
                                                                g = 0;
                                                                SampleReader.SliceHeaderData sliceHeaderData2 = sampleReader.n;
                                                                sliceHeaderData2.c = spsData;
                                                                sliceHeaderData2.d = e;
                                                                sliceHeaderData2.e = f;
                                                                sliceHeaderData2.f = e2;
                                                                sliceHeaderData2.g = f2;
                                                                sliceHeaderData2.h = z;
                                                                sliceHeaderData2.i = z3;
                                                                sliceHeaderData2.j = z2;
                                                                sliceHeaderData2.k = z4;
                                                                sliceHeaderData2.l = i3;
                                                                sliceHeaderData2.m = i5;
                                                                sliceHeaderData2.n = i7;
                                                                sliceHeaderData2.o = i6;
                                                                sliceHeaderData2.p = g;
                                                                sliceHeaderData2.a = true;
                                                                sliceHeaderData2.b = true;
                                                                sampleReader.k = false;
                                                            }
                                                            return;
                                                        }
                                                    } else {
                                                        return;
                                                    }
                                                } else {
                                                    if (i4 == 1 && !spsData.o) {
                                                        if (parsableNalUnitBitArray.c()) {
                                                            int g2 = parsableNalUnitBitArray.g();
                                                            if (z5 && !z) {
                                                                if (!parsableNalUnitBitArray.c()) {
                                                                    return;
                                                                }
                                                                g = parsableNalUnitBitArray.g();
                                                                i7 = 0;
                                                                i6 = g2;
                                                                i5 = 0;
                                                                SampleReader.SliceHeaderData sliceHeaderData22 = sampleReader.n;
                                                                sliceHeaderData22.c = spsData;
                                                                sliceHeaderData22.d = e;
                                                                sliceHeaderData22.e = f;
                                                                sliceHeaderData22.f = e2;
                                                                sliceHeaderData22.g = f2;
                                                                sliceHeaderData22.h = z;
                                                                sliceHeaderData22.i = z3;
                                                                sliceHeaderData22.j = z2;
                                                                sliceHeaderData22.k = z4;
                                                                sliceHeaderData22.l = i3;
                                                                sliceHeaderData22.m = i5;
                                                                sliceHeaderData22.n = i7;
                                                                sliceHeaderData22.o = i6;
                                                                sliceHeaderData22.p = g;
                                                                sliceHeaderData22.a = true;
                                                                sliceHeaderData22.b = true;
                                                                sampleReader.k = false;
                                                            }
                                                            i6 = g2;
                                                            i5 = 0;
                                                            i7 = 0;
                                                            g = 0;
                                                            SampleReader.SliceHeaderData sliceHeaderData222 = sampleReader.n;
                                                            sliceHeaderData222.c = spsData;
                                                            sliceHeaderData222.d = e;
                                                            sliceHeaderData222.e = f;
                                                            sliceHeaderData222.f = e2;
                                                            sliceHeaderData222.g = f2;
                                                            sliceHeaderData222.h = z;
                                                            sliceHeaderData222.i = z3;
                                                            sliceHeaderData222.j = z2;
                                                            sliceHeaderData222.k = z4;
                                                            sliceHeaderData222.l = i3;
                                                            sliceHeaderData222.m = i5;
                                                            sliceHeaderData222.n = i7;
                                                            sliceHeaderData222.o = i6;
                                                            sliceHeaderData222.p = g;
                                                            sliceHeaderData222.a = true;
                                                            sliceHeaderData222.b = true;
                                                            sampleReader.k = false;
                                                        }
                                                        return;
                                                    }
                                                    i5 = 0;
                                                }
                                                i6 = 0;
                                                i7 = 0;
                                                g = 0;
                                                SampleReader.SliceHeaderData sliceHeaderData2222 = sampleReader.n;
                                                sliceHeaderData2222.c = spsData;
                                                sliceHeaderData2222.d = e;
                                                sliceHeaderData2222.e = f;
                                                sliceHeaderData2222.f = e2;
                                                sliceHeaderData2222.g = f2;
                                                sliceHeaderData2222.h = z;
                                                sliceHeaderData2222.i = z3;
                                                sliceHeaderData2222.j = z2;
                                                sliceHeaderData2222.k = z4;
                                                sliceHeaderData2222.l = i3;
                                                sliceHeaderData2222.m = i5;
                                                sliceHeaderData2222.n = i7;
                                                sliceHeaderData2222.o = i6;
                                                sliceHeaderData2222.p = g;
                                                sliceHeaderData2222.a = true;
                                                sliceHeaderData2222.b = true;
                                                sampleReader.k = false;
                                            }
                                            return;
                                        }
                                        z2 = false;
                                    } else {
                                        return;
                                    }
                                } else {
                                    z = false;
                                    z2 = false;
                                }
                                z3 = z2;
                                if (sampleReader.i != 5) {
                                }
                                if (!z4) {
                                }
                                i4 = spsData.m;
                                if (i4 != 0) {
                                }
                                i6 = 0;
                                i7 = 0;
                                g = 0;
                                SampleReader.SliceHeaderData sliceHeaderData22222 = sampleReader.n;
                                sliceHeaderData22222.c = spsData;
                                sliceHeaderData22222.d = e;
                                sliceHeaderData22222.e = f;
                                sliceHeaderData22222.f = e2;
                                sliceHeaderData22222.g = f2;
                                sliceHeaderData22222.h = z;
                                sliceHeaderData22222.i = z3;
                                sliceHeaderData22222.j = z2;
                                sliceHeaderData22222.k = z4;
                                sliceHeaderData22222.l = i3;
                                sliceHeaderData22222.m = i5;
                                sliceHeaderData22222.n = i7;
                                sliceHeaderData22222.o = i6;
                                sliceHeaderData22222.p = g;
                                sliceHeaderData22222.a = true;
                                sliceHeaderData22222.b = true;
                                sampleReader.k = false;
                            }
                        }
                    }
                }
            }
        }
    }

    public final void i(int i, long j, long j2) {
        if (!this.l || this.k.c) {
            this.d.d(i);
            this.e.d(i);
        }
        this.f.d(i);
        SampleReader sampleReader = this.k;
        boolean z = this.n;
        sampleReader.i = i;
        sampleReader.l = j2;
        sampleReader.j = j;
        sampleReader.s = z;
        if (!sampleReader.b || i != 1) {
            if (sampleReader.c) {
                if (i != 5 && i != 1 && i != 2) {
                    return;
                }
            } else {
                return;
            }
        }
        SampleReader.SliceHeaderData sliceHeaderData = sampleReader.m;
        sampleReader.m = sampleReader.n;
        sampleReader.n = sliceHeaderData;
        sliceHeaderData.b = false;
        sliceHeaderData.a = false;
        sampleReader.h = 0;
        sampleReader.k = true;
    }
}
