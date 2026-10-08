package androidx.media3.extractor.ts;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import com.google.common.base.Preconditions;
import io.sentry.d;
import java.util.Arrays;
import java.util.Collections;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class H263Reader implements ElementaryStreamReader {
    public static final float[] l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    public final UserDataReader a;
    public final ParsableByteArray b;
    public final boolean[] c = new boolean[4];
    public final CsdBuffer d;
    public final NalUnitTargetBuffer e;
    public SampleReader f;
    public long g;
    public String h;
    public TrackOutput i;
    public boolean j;
    public long k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CsdBuffer {
        public static final byte[] f = {0, 0, 1};
        public boolean a;
        public int b;
        public int c;
        public int d;
        public byte[] e;

        public final void a(byte[] bArr, int i, int i2) {
            if (!this.a) {
                return;
            }
            int i3 = i2 - i;
            byte[] bArr2 = this.e;
            int length = bArr2.length;
            int i4 = this.c + i3;
            if (length < i4) {
                this.e = Arrays.copyOf(bArr2, i4 * 2);
            }
            System.arraycopy(bArr, i, this.e, this.c, i3);
            this.c += i3;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SampleReader {
        public final TrackOutput a;
        public boolean b;
        public boolean c;
        public boolean d;
        public int e;
        public int f;
        public long g;
        public long h;

        public SampleReader(TrackOutput trackOutput) {
            this.a = trackOutput;
        }

        public final void a(byte[] bArr, int i, int i2) {
            boolean z;
            if (this.c) {
                int i3 = this.f;
                int i4 = (i + 1) - i3;
                if (i4 < i2) {
                    if (((bArr[i4] & 192) >> 6) == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.d = z;
                    this.c = false;
                    return;
                }
                this.f = (i2 - i) + i3;
            }
        }

        public final void b(int i, long j, boolean z) {
            boolean z2;
            if (this.h != -9223372036854775807L) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.n(z2);
            if (this.e == 182 && z && this.b) {
                int i2 = (int) (j - this.g);
                boolean z3 = this.d;
                this.a.g(this.h, z3 ? 1 : 0, i2, i, null);
            }
            if (this.e != 179) {
                this.g = j;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object, androidx.media3.extractor.ts.H263Reader$CsdBuffer] */
    public H263Reader(UserDataReader userDataReader) {
        this.a = userDataReader;
        ?? obj = new Object();
        obj.e = new byte[128];
        this.d = obj;
        this.k = -9223372036854775807L;
        this.e = new NalUnitTargetBuffer(178);
        this.b = new ParsableByteArray();
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        NalUnitUtil.a(this.c);
        CsdBuffer csdBuffer = this.d;
        csdBuffer.a = false;
        csdBuffer.c = 0;
        csdBuffer.b = 0;
        SampleReader sampleReader = this.f;
        if (sampleReader != null) {
            sampleReader.b = false;
            sampleReader.c = false;
            sampleReader.d = false;
            sampleReader.e = -1;
        }
        NalUnitTargetBuffer nalUnitTargetBuffer = this.e;
        if (nalUnitTargetBuffer != null) {
            nalUnitTargetBuffer.c();
        }
        this.g = 0L;
        this.k = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x025e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x013d  */
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(ParsableByteArray parsableByteArray) {
        int i;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        int i5;
        float f;
        this.f.getClass();
        this.i.getClass();
        int i6 = parsableByteArray.b;
        int i7 = parsableByteArray.c;
        byte[] bArr = parsableByteArray.a;
        this.g += parsableByteArray.a();
        this.i.f(parsableByteArray.a(), parsableByteArray);
        while (true) {
            int b = NalUnitUtil.b(bArr, i6, i7, this.c);
            CsdBuffer csdBuffer = this.d;
            NalUnitTargetBuffer nalUnitTargetBuffer = this.e;
            if (b == i7) {
                if (!this.j) {
                    csdBuffer.a(bArr, i6, i7);
                }
                this.f.a(bArr, i6, i7);
                if (nalUnitTargetBuffer != null) {
                    nalUnitTargetBuffer.a(bArr, i6, i7);
                    return;
                }
                return;
            }
            int i8 = b + 3;
            byte b2 = parsableByteArray.a[i8];
            int i9 = b2 & 255;
            int i10 = b - i6;
            if (!this.j) {
                if (i10 > 0) {
                    csdBuffer.a(bArr, i6, b);
                }
                if (i10 < 0) {
                    i4 = -i10;
                } else {
                    i4 = 0;
                }
                int i11 = csdBuffer.b;
                if (i11 != 0) {
                    i = i7;
                    if (i11 != 1) {
                        if (i11 != 2) {
                            i2 = i8;
                            if (i11 != 3) {
                                if (i11 == 4) {
                                    if (i9 != 179 && i9 != 181) {
                                        i5 = 0;
                                    } else {
                                        csdBuffer.c -= i4;
                                        csdBuffer.a = false;
                                        TrackOutput trackOutput = this.i;
                                        int i12 = csdBuffer.d;
                                        String str = this.h;
                                        str.getClass();
                                        byte[] copyOf = Arrays.copyOf(csdBuffer.e, csdBuffer.c);
                                        ParsableBitArray parsableBitArray = new ParsableBitArray(copyOf.length, copyOf);
                                        parsableBitArray.p(i12);
                                        parsableBitArray.p(4);
                                        parsableBitArray.n();
                                        parsableBitArray.o(8);
                                        if (parsableBitArray.f()) {
                                            parsableBitArray.o(4);
                                            parsableBitArray.o(3);
                                        }
                                        int g = parsableBitArray.g(4);
                                        if (g == 15) {
                                            int g2 = parsableBitArray.g(8);
                                            int g3 = parsableBitArray.g(8);
                                            if (g3 == 0) {
                                                Log.f("H263Reader", "Invalid aspect ratio");
                                                f = 1.0f;
                                                if (parsableBitArray.f()) {
                                                    parsableBitArray.o(2);
                                                    parsableBitArray.o(1);
                                                    if (parsableBitArray.f()) {
                                                        parsableBitArray.o(15);
                                                        parsableBitArray.n();
                                                        parsableBitArray.o(15);
                                                        parsableBitArray.n();
                                                        parsableBitArray.o(15);
                                                        parsableBitArray.n();
                                                        parsableBitArray.o(3);
                                                        parsableBitArray.o(11);
                                                        parsableBitArray.n();
                                                        parsableBitArray.o(15);
                                                        parsableBitArray.n();
                                                    }
                                                }
                                                if (parsableBitArray.g(2) != 0) {
                                                    Log.f("H263Reader", "Unhandled video object layer shape");
                                                }
                                                parsableBitArray.n();
                                                int g4 = parsableBitArray.g(16);
                                                parsableBitArray.n();
                                                if (parsableBitArray.f()) {
                                                    if (g4 == 0) {
                                                        Log.f("H263Reader", "Invalid vop_increment_time_resolution");
                                                    } else {
                                                        int i13 = 0;
                                                        for (int i14 = g4 - 1; i14 > 0; i14 >>= 1) {
                                                            i13++;
                                                        }
                                                        parsableBitArray.o(i13);
                                                    }
                                                }
                                                parsableBitArray.n();
                                                int g5 = parsableBitArray.g(13);
                                                parsableBitArray.n();
                                                int g6 = parsableBitArray.g(13);
                                                parsableBitArray.n();
                                                parsableBitArray.n();
                                                Format.Builder builder = new Format.Builder();
                                                builder.a = str;
                                                builder.n = MimeTypes.l("video/mp2t");
                                                builder.o = MimeTypes.l("video/mp4v-es");
                                                builder.v = g5;
                                                builder.w = g6;
                                                builder.D = f;
                                                builder.r = Collections.singletonList(copyOf);
                                                trackOutput.e(new Format(builder));
                                                this.j = true;
                                            } else {
                                                f = g2 / g3;
                                                if (parsableBitArray.f()) {
                                                }
                                                if (parsableBitArray.g(2) != 0) {
                                                }
                                                parsableBitArray.n();
                                                int g42 = parsableBitArray.g(16);
                                                parsableBitArray.n();
                                                if (parsableBitArray.f()) {
                                                }
                                                parsableBitArray.n();
                                                int g52 = parsableBitArray.g(13);
                                                parsableBitArray.n();
                                                int g62 = parsableBitArray.g(13);
                                                parsableBitArray.n();
                                                parsableBitArray.n();
                                                Format.Builder builder2 = new Format.Builder();
                                                builder2.a = str;
                                                builder2.n = MimeTypes.l("video/mp2t");
                                                builder2.o = MimeTypes.l("video/mp4v-es");
                                                builder2.v = g52;
                                                builder2.w = g62;
                                                builder2.D = f;
                                                builder2.r = Collections.singletonList(copyOf);
                                                trackOutput.e(new Format(builder2));
                                                this.j = true;
                                            }
                                        } else if (g < 7) {
                                            f = l[g];
                                            if (parsableBitArray.f()) {
                                            }
                                            if (parsableBitArray.g(2) != 0) {
                                            }
                                            parsableBitArray.n();
                                            int g422 = parsableBitArray.g(16);
                                            parsableBitArray.n();
                                            if (parsableBitArray.f()) {
                                            }
                                            parsableBitArray.n();
                                            int g522 = parsableBitArray.g(13);
                                            parsableBitArray.n();
                                            int g622 = parsableBitArray.g(13);
                                            parsableBitArray.n();
                                            parsableBitArray.n();
                                            Format.Builder builder22 = new Format.Builder();
                                            builder22.a = str;
                                            builder22.n = MimeTypes.l("video/mp2t");
                                            builder22.o = MimeTypes.l("video/mp4v-es");
                                            builder22.v = g522;
                                            builder22.w = g622;
                                            builder22.D = f;
                                            builder22.r = Collections.singletonList(copyOf);
                                            trackOutput.e(new Format(builder22));
                                            this.j = true;
                                        } else {
                                            Log.f("H263Reader", "Invalid aspect ratio");
                                            f = 1.0f;
                                            if (parsableBitArray.f()) {
                                            }
                                            if (parsableBitArray.g(2) != 0) {
                                            }
                                            parsableBitArray.n();
                                            int g4222 = parsableBitArray.g(16);
                                            parsableBitArray.n();
                                            if (parsableBitArray.f()) {
                                            }
                                            parsableBitArray.n();
                                            int g5222 = parsableBitArray.g(13);
                                            parsableBitArray.n();
                                            int g6222 = parsableBitArray.g(13);
                                            parsableBitArray.n();
                                            parsableBitArray.n();
                                            Format.Builder builder222 = new Format.Builder();
                                            builder222.a = str;
                                            builder222.n = MimeTypes.l("video/mp2t");
                                            builder222.o = MimeTypes.l("video/mp4v-es");
                                            builder222.v = g5222;
                                            builder222.w = g6222;
                                            builder222.D = f;
                                            builder222.r = Collections.singletonList(copyOf);
                                            trackOutput.e(new Format(builder222));
                                            this.j = true;
                                        }
                                    }
                                } else {
                                    d.d();
                                    return;
                                }
                            } else if ((b2 & 240) != 32) {
                                Log.f("H263Reader", "Unexpected start code value");
                                i5 = 0;
                                csdBuffer.a = false;
                                csdBuffer.c = 0;
                                csdBuffer.b = 0;
                            } else {
                                i5 = 0;
                                csdBuffer.d = csdBuffer.c;
                                csdBuffer.b = 4;
                            }
                        } else {
                            i2 = i8;
                            i5 = 0;
                            if (i9 > 31) {
                                Log.f("H263Reader", "Unexpected start code value");
                                csdBuffer.a = false;
                                csdBuffer.c = 0;
                                csdBuffer.b = 0;
                            } else {
                                csdBuffer.b = 3;
                            }
                        }
                    } else {
                        i2 = i8;
                        i5 = 0;
                        if (i9 != 181) {
                            Log.f("H263Reader", "Unexpected start code value");
                            csdBuffer.a = false;
                            csdBuffer.c = 0;
                            csdBuffer.b = 0;
                        } else {
                            csdBuffer.b = 2;
                        }
                    }
                } else {
                    i = i7;
                    i2 = i8;
                    i5 = 0;
                    if (i9 == 176) {
                        csdBuffer.b = 1;
                        csdBuffer.a = true;
                    }
                }
                csdBuffer.a(CsdBuffer.f, i5, 3);
            } else {
                i = i7;
                i2 = i8;
            }
            this.f.a(bArr, i6, b);
            if (nalUnitTargetBuffer != null) {
                if (i10 > 0) {
                    nalUnitTargetBuffer.a(bArr, i6, b);
                    i3 = 0;
                } else {
                    i3 = -i10;
                }
                if (nalUnitTargetBuffer.b(i3)) {
                    int m = NalUnitUtil.m(nalUnitTargetBuffer.e, nalUnitTargetBuffer.d);
                    String str2 = Util.a;
                    byte[] bArr2 = nalUnitTargetBuffer.d;
                    ParsableByteArray parsableByteArray2 = this.b;
                    parsableByteArray2.K(m, bArr2);
                    this.a.a(this.k, parsableByteArray2);
                }
                if (i9 == 178) {
                    z = true;
                    if (parsableByteArray.a[b + 2] == 1) {
                        nalUnitTargetBuffer.d(i9);
                    }
                    int i15 = i - b;
                    this.f.b(i15, this.g - i15, this.j);
                    SampleReader sampleReader = this.f;
                    long j = this.k;
                    sampleReader.e = i9;
                    sampleReader.d = false;
                    if (i9 == 182 && i9 != 179) {
                        z2 = false;
                    } else {
                        z2 = z;
                    }
                    sampleReader.b = z2;
                    if (i9 != 182) {
                        z3 = z;
                    } else {
                        z3 = false;
                    }
                    sampleReader.c = z3;
                    sampleReader.f = 0;
                    sampleReader.h = j;
                    i7 = i;
                    i6 = i2;
                }
            }
            z = true;
            int i152 = i - b;
            this.f.b(i152, this.g - i152, this.j);
            SampleReader sampleReader2 = this.f;
            long j2 = this.k;
            sampleReader2.e = i9;
            sampleReader2.d = false;
            if (i9 == 182) {
            }
            z2 = z;
            sampleReader2.b = z2;
            if (i9 != 182) {
            }
            sampleReader2.c = z3;
            sampleReader2.f = 0;
            sampleReader2.h = j2;
            i7 = i;
            i6 = i2;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d() {
        this.f.getClass();
        this.f.b(0, this.g, this.j);
        SampleReader sampleReader = this.f;
        sampleReader.b = false;
        sampleReader.c = false;
        sampleReader.d = false;
        sampleReader.e = -1;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        this.k = j;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.h = trackIdGenerator.e;
        trackIdGenerator.b();
        TrackOutput s = extractorOutput.s(trackIdGenerator.d, 2);
        this.i = s;
        this.f = new SampleReader(s);
        this.a.b(extractorOutput, trackIdGenerator);
    }
}
