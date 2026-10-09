package androidx.media3.extractor.ts;

import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ts.TsPayloadReader;
import java.util.Arrays;
import java.util.Collections;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class H262Reader implements ElementaryStreamReader {
    public static final double[] r = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    public String a;
    public TrackOutput b;
    public final UserDataReader c;
    public final String d;
    public final ParsableByteArray e;
    public final NalUnitTargetBuffer f;
    public final boolean[] g = new boolean[4];
    public final CsdBuffer h;
    public long i;
    public boolean j;
    public boolean k;
    public long l;
    public long m;
    public long n;
    public long o;
    public boolean p;
    public boolean q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CsdBuffer {
        public static final byte[] e = {0, 0, 1};
        public boolean a;
        public int b;
        public int c;
        public byte[] d;

        public final void a(byte[] bArr, int i, int i2) {
            if (!this.a) {
                return;
            }
            int i3 = i2 - i;
            byte[] bArr2 = this.d;
            int length = bArr2.length;
            int i4 = this.b + i3;
            if (length < i4) {
                this.d = Arrays.copyOf(bArr2, i4 * 2);
            }
            System.arraycopy(bArr, i, this.d, this.b, i3);
            this.b += i3;
        }
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.media3.extractor.ts.H262Reader$CsdBuffer, java.lang.Object] */
    public H262Reader(UserDataReader userDataReader, String str) {
        this.c = userDataReader;
        this.d = str;
        ?? obj = new Object();
        obj.d = new byte[128];
        this.h = obj;
        if (userDataReader != null) {
            this.f = new NalUnitTargetBuffer(178);
            this.e = new ParsableByteArray();
        } else {
            this.f = null;
            this.e = null;
        }
        this.m = -9223372036854775807L;
        this.o = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void a() {
        NalUnitUtil.a(this.g);
        CsdBuffer csdBuffer = this.h;
        csdBuffer.a = false;
        csdBuffer.b = 0;
        csdBuffer.c = 0;
        NalUnitTargetBuffer nalUnitTargetBuffer = this.f;
        if (nalUnitTargetBuffer != null) {
            nalUnitTargetBuffer.c();
        }
        this.i = 0L;
        this.j = false;
        this.m = -9223372036854775807L;
        this.o = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0201  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01e5  */
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(ParsableByteArray parsableByteArray) {
        CsdBuffer csdBuffer;
        NalUnitTargetBuffer nalUnitTargetBuffer;
        int i;
        boolean z;
        long j;
        long j2;
        boolean z2;
        boolean z3;
        boolean z4;
        long j3;
        int i2;
        int i3;
        float f;
        int i4;
        float f2;
        int i5;
        long j4;
        this.b.getClass();
        int i6 = parsableByteArray.b;
        int i7 = parsableByteArray.c;
        byte[] bArr = parsableByteArray.a;
        this.i += parsableByteArray.a();
        this.b.f(parsableByteArray.a(), parsableByteArray);
        while (true) {
            int b = NalUnitUtil.b(bArr, i6, i7, this.g);
            csdBuffer = this.h;
            nalUnitTargetBuffer = this.f;
            if (b == i7) {
                break;
            }
            int i8 = b + 3;
            int i9 = parsableByteArray.a[i8] & 255;
            int i10 = b - i6;
            if (!this.k) {
                if (i10 > 0) {
                    csdBuffer.a(bArr, i6, b);
                }
                if (i10 < 0) {
                    i3 = -i10;
                } else {
                    i3 = 0;
                }
                if (csdBuffer.a) {
                    int i11 = csdBuffer.b - i3;
                    csdBuffer.b = i11;
                    if (csdBuffer.c == 0 && i9 == 181) {
                        csdBuffer.c = i11;
                        i = i7;
                    } else {
                        csdBuffer.a = false;
                        String str = this.a;
                        str.getClass();
                        byte[] copyOf = Arrays.copyOf(csdBuffer.d, csdBuffer.b);
                        int i12 = copyOf[4] & 255;
                        byte b2 = copyOf[5];
                        i = i7;
                        int i13 = ((b2 & 255) >> 4) | (i12 << 4);
                        int i14 = (copyOf[6] & 255) | ((b2 & 15) << 8);
                        int i15 = (copyOf[7] & 240) >> 4;
                        if (i15 != 2) {
                            if (i15 != 3) {
                                if (i15 != 4) {
                                    f2 = 1.0f;
                                    Format.Builder builder = new Format.Builder();
                                    builder.a = str;
                                    builder.n = MimeTypes.l(this.d);
                                    builder.o = MimeTypes.l("video/mpeg2");
                                    builder.v = i13;
                                    builder.w = i14;
                                    builder.D = f2;
                                    builder.r = Collections.singletonList(copyOf);
                                    Format format = new Format(builder);
                                    i5 = (copyOf[7] & 15) - 1;
                                    if (i5 < 0 && i5 < 8) {
                                        double d = r[i5];
                                        byte b3 = copyOf[csdBuffer.c + 9];
                                        int i16 = (b3 & 96) >> 5;
                                        if (i16 != (b3 & 31)) {
                                            d = ((i16 + 1.0d) / (r6 + 1)) * d;
                                        }
                                        j4 = (long) (1000000.0d / d);
                                    } else {
                                        j4 = 0;
                                    }
                                    Pair create = Pair.create(format, Long.valueOf(j4));
                                    this.b.e((Format) create.first);
                                    this.l = ((Long) create.second).longValue();
                                    this.k = true;
                                } else {
                                    f = i14 * 121;
                                    i4 = i13 * 100;
                                }
                            } else {
                                f = i14 * 16;
                                i4 = i13 * 9;
                            }
                        } else {
                            f = i14 * 4;
                            i4 = i13 * 3;
                        }
                        f2 = f / i4;
                        Format.Builder builder2 = new Format.Builder();
                        builder2.a = str;
                        builder2.n = MimeTypes.l(this.d);
                        builder2.o = MimeTypes.l("video/mpeg2");
                        builder2.v = i13;
                        builder2.w = i14;
                        builder2.D = f2;
                        builder2.r = Collections.singletonList(copyOf);
                        Format format2 = new Format(builder2);
                        i5 = (copyOf[7] & 15) - 1;
                        if (i5 < 0) {
                        }
                        j4 = 0;
                        Pair create2 = Pair.create(format2, Long.valueOf(j4));
                        this.b.e((Format) create2.first);
                        this.l = ((Long) create2.second).longValue();
                        this.k = true;
                    }
                } else {
                    i = i7;
                    if (i9 == 179) {
                        csdBuffer.a = true;
                    }
                }
                csdBuffer.a(CsdBuffer.e, 0, 3);
            } else {
                i = i7;
            }
            if (nalUnitTargetBuffer != null) {
                if (i10 > 0) {
                    nalUnitTargetBuffer.a(bArr, i6, b);
                    i2 = 0;
                } else {
                    i2 = -i10;
                }
                if (nalUnitTargetBuffer.b(i2)) {
                    int m = NalUnitUtil.m(nalUnitTargetBuffer.e, nalUnitTargetBuffer.d);
                    String str2 = Util.a;
                    byte[] bArr2 = nalUnitTargetBuffer.d;
                    ParsableByteArray parsableByteArray2 = this.e;
                    parsableByteArray2.K(m, bArr2);
                    this.c.a(this.o, parsableByteArray2);
                }
                if (i9 == 178) {
                    z = true;
                    if (parsableByteArray.a[b + 2] == 1) {
                        nalUnitTargetBuffer.d(i9);
                    }
                    if (i9 == 0 && i9 != 179) {
                        if (i9 == 184) {
                            this.p = z;
                        }
                    } else {
                        int i17 = i - b;
                        if (this.q && this.k) {
                            j3 = this.o;
                            if (j3 != -9223372036854775807L) {
                                j = -9223372036854775807L;
                                this.b.g(j3, this.p ? 1 : 0, ((int) (this.i - this.n)) - i17, i17, null);
                                if (!this.j && !this.q) {
                                    z3 = true;
                                    z2 = false;
                                } else {
                                    this.n = this.i - i17;
                                    j2 = this.m;
                                    if (j2 == j) {
                                        long j5 = this.o;
                                        if (j5 != j) {
                                            j2 = j5 + this.l;
                                        } else {
                                            j2 = j;
                                        }
                                    }
                                    this.o = j2;
                                    z2 = false;
                                    this.p = false;
                                    this.m = j;
                                    z3 = true;
                                    this.j = true;
                                }
                                if (i9 == 0) {
                                    z4 = z3;
                                } else {
                                    z4 = z2;
                                }
                                this.q = z4;
                            }
                        }
                        j = -9223372036854775807L;
                        if (!this.j) {
                        }
                        this.n = this.i - i17;
                        j2 = this.m;
                        if (j2 == j) {
                        }
                        this.o = j2;
                        z2 = false;
                        this.p = false;
                        this.m = j;
                        z3 = true;
                        this.j = true;
                        if (i9 == 0) {
                        }
                        this.q = z4;
                    }
                    i6 = i8;
                    i7 = i;
                }
            }
            z = true;
            if (i9 == 0) {
            }
            int i172 = i - b;
            if (this.q) {
                j3 = this.o;
                if (j3 != -9223372036854775807L) {
                }
            }
            j = -9223372036854775807L;
            if (!this.j) {
            }
            this.n = this.i - i172;
            j2 = this.m;
            if (j2 == j) {
            }
            this.o = j2;
            z2 = false;
            this.p = false;
            this.m = j;
            z3 = true;
            this.j = true;
            if (i9 == 0) {
            }
            this.q = z4;
            i6 = i8;
            i7 = i;
        }
        if (!this.k) {
            csdBuffer.a(bArr, i6, i7);
        }
        if (nalUnitTargetBuffer != null) {
            nalUnitTargetBuffer.a(bArr, i6, i7);
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void d() {
        this.b.getClass();
        long j = this.o;
        if (j != -9223372036854775807L) {
            boolean z = this.p;
            this.b.g(j, z ? 1 : 0, (int) (this.i - this.n), 0, null);
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void e(int i, long j) {
        this.m = j;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public final void f(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        trackIdGenerator.b();
        this.a = trackIdGenerator.e;
        trackIdGenerator.b();
        this.b = extractorOutput.s(trackIdGenerator.d, 2);
        UserDataReader userDataReader = this.c;
        if (userDataReader != null) {
            userDataReader.b(extractorOutput, trackIdGenerator);
        }
    }
}
