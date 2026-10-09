package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.VorbisBitArray;
import androidx.media3.container.VorbisUtil;
import androidx.media3.extractor.ogg.StreamReader;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class VorbisReader extends StreamReader {
    public VorbisSetup n;
    public int o;
    public boolean p;
    public VorbisUtil.VorbisIdHeader q;
    public VorbisUtil.CommentHeader r;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VorbisSetup {
        public final VorbisUtil.VorbisIdHeader a;
        public final VorbisUtil.CommentHeader b;
        public final byte[] c;
        public final VorbisUtil.Mode[] d;

        public VorbisSetup(VorbisUtil.VorbisIdHeader vorbisIdHeader, VorbisUtil.CommentHeader commentHeader, byte[] bArr, VorbisUtil.Mode[] modeArr) {
            this.a = vorbisIdHeader;
            this.b = commentHeader;
            this.c = bArr;
            this.d = modeArr;
        }
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final void a(long j) {
        boolean z;
        this.g = j;
        int i = 0;
        if (j != 0) {
            z = true;
        } else {
            z = false;
        }
        this.p = z;
        VorbisUtil.VorbisIdHeader vorbisIdHeader = this.q;
        if (vorbisIdHeader != null) {
            i = vorbisIdHeader.e;
        }
        this.o = i;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final long b(ParsableByteArray parsableByteArray) {
        int i;
        int i2 = 0;
        if ((parsableByteArray.a[0] & 1) == 1) {
            return -1L;
        }
        VorbisSetup vorbisSetup = this.n;
        vorbisSetup.getClass();
        byte b = parsableByteArray.a[0];
        VorbisUtil.VorbisIdHeader vorbisIdHeader = vorbisSetup.a;
        VorbisUtil.Mode[] modeArr = vorbisSetup.d;
        if (modeArr[(b >> 1) & (255 >>> (8 - VorbisUtil.a(modeArr.length - 1)))].a) {
            i = vorbisIdHeader.f;
        } else {
            i = vorbisIdHeader.e;
        }
        int i3 = this.o;
        if (this.p) {
            i2 = (i3 + i) / 4;
        }
        long j = i2;
        byte[] bArr = parsableByteArray.a;
        int length = bArr.length;
        int i4 = parsableByteArray.c + 4;
        if (length < i4) {
            byte[] copyOf = Arrays.copyOf(bArr, i4);
            parsableByteArray.K(copyOf.length, copyOf);
        } else {
            parsableByteArray.L(i4);
        }
        byte[] bArr2 = parsableByteArray.a;
        int i5 = parsableByteArray.c;
        bArr2[i5 - 4] = (byte) (j & 255);
        bArr2[i5 - 3] = (byte) ((j >>> 8) & 255);
        bArr2[i5 - 2] = (byte) ((j >>> 16) & 255);
        bArr2[i5 - 1] = (byte) ((j >>> 24) & 255);
        this.p = true;
        this.o = i;
        return j;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final boolean c(ParsableByteArray parsableByteArray, long j, StreamReader.SetupData setupData) {
        VorbisSetup vorbisSetup;
        int i;
        int i2;
        long j2;
        int i3;
        int i4;
        if (this.n != null) {
            setupData.a.getClass();
            return false;
        }
        VorbisUtil.VorbisIdHeader vorbisIdHeader = this.q;
        int i5 = 4;
        if (vorbisIdHeader == null) {
            VorbisUtil.c(1, parsableByteArray, false);
            parsableByteArray.r();
            int z = parsableByteArray.z();
            int r = parsableByteArray.r();
            int o = parsableByteArray.o();
            if (o <= 0) {
                i3 = -1;
            } else {
                i3 = o;
            }
            int o2 = parsableByteArray.o();
            if (o2 <= 0) {
                i4 = -1;
            } else {
                i4 = o2;
            }
            parsableByteArray.o();
            int z2 = parsableByteArray.z();
            int pow = (int) Math.pow(2.0d, z2 & 15);
            int pow2 = (int) Math.pow(2.0d, (z2 & 240) >> 4);
            parsableByteArray.z();
            this.q = new VorbisUtil.VorbisIdHeader(z, r, i3, i4, pow, pow2, Arrays.copyOf(parsableByteArray.a, parsableByteArray.c));
        } else {
            VorbisUtil.CommentHeader commentHeader = this.r;
            if (commentHeader == null) {
                this.r = VorbisUtil.b(parsableByteArray, true, true);
            } else {
                int i6 = parsableByteArray.c;
                byte[] bArr = new byte[i6];
                System.arraycopy(parsableByteArray.a, 0, bArr, 0, i6);
                int i7 = vorbisIdHeader.a;
                int i8 = 5;
                VorbisUtil.c(5, parsableByteArray, false);
                int z3 = parsableByteArray.z() + 1;
                VorbisBitArray vorbisBitArray = new VorbisBitArray(parsableByteArray.a);
                int i9 = 8;
                vorbisBitArray.c(parsableByteArray.b * 8);
                int i10 = 0;
                while (true) {
                    int i11 = 16;
                    if (i10 < z3) {
                        int i12 = i9;
                        if (vorbisBitArray.b(24) == 5653314) {
                            int b = vorbisBitArray.b(16);
                            int b2 = vorbisBitArray.b(24);
                            if (!vorbisBitArray.a()) {
                                boolean a = vorbisBitArray.a();
                                for (int i13 = 0; i13 < b2; i13++) {
                                    if (a) {
                                        if (vorbisBitArray.a()) {
                                            vorbisBitArray.c(5);
                                        }
                                    } else {
                                        vorbisBitArray.c(5);
                                    }
                                }
                            } else {
                                vorbisBitArray.c(5);
                                for (int i14 = 0; i14 < b2; i14 += vorbisBitArray.b(VorbisUtil.a(b2 - i14))) {
                                }
                            }
                            int b3 = vorbisBitArray.b(i5);
                            if (b3 <= 2) {
                                if (b3 == 1 || b3 == 2) {
                                    vorbisBitArray.c(32);
                                    vorbisBitArray.c(32);
                                    int b4 = vorbisBitArray.b(i5) + 1;
                                    vorbisBitArray.c(1);
                                    if (b3 == 1) {
                                        if (b != 0) {
                                            j2 = (long) Math.floor(Math.pow(b2, 1.0d / b));
                                        } else {
                                            j2 = 0;
                                        }
                                    } else {
                                        j2 = b2 * b;
                                    }
                                    vorbisBitArray.c((int) (j2 * b4));
                                }
                                i10++;
                                i9 = i12;
                                i5 = 4;
                            } else {
                                throw ParserException.a(null, "lookup type greater than 2 not decodable: " + b3);
                            }
                        } else {
                            throw ParserException.a(null, "expected code book to start with [0x56, 0x43, 0x42] at " + ((vorbisBitArray.c * 8) + vorbisBitArray.d));
                        }
                    } else {
                        int i15 = i9;
                        int i16 = 6;
                        int b5 = vorbisBitArray.b(6) + 1;
                        for (int i17 = 0; i17 < b5; i17++) {
                            if (vorbisBitArray.b(16) != 0) {
                                throw ParserException.a(null, "placeholder of time domain transforms not zeroed out");
                            }
                        }
                        int i18 = 1;
                        int b6 = vorbisBitArray.b(6) + 1;
                        int i19 = 0;
                        while (true) {
                            int i20 = 3;
                            if (i19 < b6) {
                                int b7 = vorbisBitArray.b(i11);
                                if (b7 != 0) {
                                    if (b7 == i18) {
                                        int b8 = vorbisBitArray.b(i8);
                                        int[] iArr = new int[b8];
                                        int i21 = -1;
                                        for (int i22 = 0; i22 < b8; i22++) {
                                            int b9 = vorbisBitArray.b(4);
                                            iArr[i22] = b9;
                                            if (b9 > i21) {
                                                i21 = b9;
                                            }
                                        }
                                        int i23 = i21 + 1;
                                        int[] iArr2 = new int[i23];
                                        int i24 = 0;
                                        while (i24 < i23) {
                                            iArr2[i24] = vorbisBitArray.b(i20) + 1;
                                            int b10 = vorbisBitArray.b(2);
                                            int i25 = i15;
                                            if (b10 > 0) {
                                                vorbisBitArray.c(i25);
                                            }
                                            int i26 = i23;
                                            int i27 = 0;
                                            for (int i28 = 1; i27 < (i28 << b10); i28 = 1) {
                                                vorbisBitArray.c(i25);
                                                i27++;
                                                i25 = 8;
                                            }
                                            i24++;
                                            i23 = i26;
                                            i15 = 8;
                                            i20 = 3;
                                        }
                                        vorbisBitArray.c(2);
                                        int b11 = vorbisBitArray.b(4);
                                        int i29 = 0;
                                        int i30 = 0;
                                        for (int i31 = 0; i31 < b8; i31++) {
                                            i29 += iArr2[iArr[i31]];
                                            while (i30 < i29) {
                                                vorbisBitArray.c(b11);
                                                i30++;
                                            }
                                        }
                                    } else {
                                        throw ParserException.a(null, "floor type greater than 1 not decodable: " + b7);
                                    }
                                } else {
                                    int i32 = i15;
                                    vorbisBitArray.c(i32);
                                    vorbisBitArray.c(16);
                                    vorbisBitArray.c(16);
                                    vorbisBitArray.c(6);
                                    vorbisBitArray.c(i32);
                                    int b12 = vorbisBitArray.b(4) + 1;
                                    int i33 = 0;
                                    while (i33 < b12) {
                                        vorbisBitArray.c(i32);
                                        i33++;
                                        i32 = 8;
                                    }
                                }
                                i19++;
                                i15 = 8;
                                i16 = 6;
                                i18 = 1;
                                i11 = 16;
                                i8 = 5;
                            } else {
                                int b13 = vorbisBitArray.b(i16) + 1;
                                int i34 = 0;
                                while (i34 < b13) {
                                    if (vorbisBitArray.b(16) <= 2) {
                                        vorbisBitArray.c(24);
                                        vorbisBitArray.c(24);
                                        vorbisBitArray.c(24);
                                        int b14 = vorbisBitArray.b(i16) + 1;
                                        int i35 = 8;
                                        vorbisBitArray.c(8);
                                        int[] iArr3 = new int[b14];
                                        for (int i36 = 0; i36 < b14; i36++) {
                                            int b15 = vorbisBitArray.b(3);
                                            if (vorbisBitArray.a()) {
                                                i2 = vorbisBitArray.b(5);
                                            } else {
                                                i2 = 0;
                                            }
                                            iArr3[i36] = (i2 * 8) + b15;
                                        }
                                        int i37 = 0;
                                        while (i37 < b14) {
                                            int i38 = 0;
                                            while (i38 < i35) {
                                                if ((iArr3[i37] & (1 << i38)) != 0) {
                                                    vorbisBitArray.c(i35);
                                                }
                                                i38++;
                                                i35 = 8;
                                            }
                                            i37++;
                                            i35 = 8;
                                        }
                                        i34++;
                                        i16 = 6;
                                    } else {
                                        throw ParserException.a(null, "residueType greater than 2 is not decodable");
                                    }
                                }
                                int b16 = vorbisBitArray.b(i16) + 1;
                                for (int i39 = 0; i39 < b16; i39++) {
                                    int b17 = vorbisBitArray.b(16);
                                    if (b17 != 0) {
                                        Log.c("VorbisUtil", "mapping type other than 0 not supported: " + b17);
                                    } else {
                                        if (vorbisBitArray.a()) {
                                            i = vorbisBitArray.b(4) + 1;
                                        } else {
                                            i = 1;
                                        }
                                        if (vorbisBitArray.a()) {
                                            int b18 = vorbisBitArray.b(8) + 1;
                                            for (int i40 = 0; i40 < b18; i40++) {
                                                int i41 = i7 - 1;
                                                vorbisBitArray.c(VorbisUtil.a(i41));
                                                vorbisBitArray.c(VorbisUtil.a(i41));
                                            }
                                        }
                                        if (vorbisBitArray.b(2) == 0) {
                                            if (i > 1) {
                                                for (int i42 = 0; i42 < i7; i42++) {
                                                    vorbisBitArray.c(4);
                                                }
                                            }
                                            for (int i43 = 0; i43 < i; i43++) {
                                                vorbisBitArray.c(8);
                                                vorbisBitArray.c(8);
                                                vorbisBitArray.c(8);
                                            }
                                        } else {
                                            throw ParserException.a(null, "to reserved bits must be zero after mapping coupling steps");
                                        }
                                    }
                                }
                                int b19 = vorbisBitArray.b(6) + 1;
                                VorbisUtil.Mode[] modeArr = new VorbisUtil.Mode[b19];
                                for (int i44 = 0; i44 < b19; i44++) {
                                    boolean a2 = vorbisBitArray.a();
                                    vorbisBitArray.b(16);
                                    vorbisBitArray.b(16);
                                    vorbisBitArray.b(8);
                                    modeArr[i44] = new VorbisUtil.Mode(a2);
                                }
                                if (vorbisBitArray.a()) {
                                    vorbisSetup = new VorbisSetup(vorbisIdHeader, commentHeader, bArr, modeArr);
                                } else {
                                    throw ParserException.a(null, "framing bit after modes not set as expected");
                                }
                            }
                        }
                    }
                }
            }
        }
        vorbisSetup = null;
        this.n = vorbisSetup;
        if (vorbisSetup == null) {
            return true;
        }
        VorbisUtil.VorbisIdHeader vorbisIdHeader2 = vorbisSetup.a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(vorbisIdHeader2.g);
        arrayList.add(vorbisSetup.c);
        Metadata a3 = androidx.media3.extractor.VorbisUtil.a(ImmutableList.o(vorbisSetup.b.a));
        Format.Builder builder = new Format.Builder();
        builder.n = MimeTypes.l("audio/ogg");
        builder.o = MimeTypes.l("audio/vorbis");
        builder.i = vorbisIdHeader2.d;
        builder.j = vorbisIdHeader2.c;
        builder.I = vorbisIdHeader2.a;
        builder.K = vorbisIdHeader2.b;
        builder.r = arrayList;
        builder.l = a3;
        setupData.a = new Format(builder);
        return true;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final void d(boolean z) {
        super.d(z);
        if (z) {
            this.n = null;
            this.q = null;
            this.r = null;
        }
        this.o = 0;
        this.p = false;
    }
}
