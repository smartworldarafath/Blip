package androidx.media3.container;

import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.math.DoubleMath;
import defpackage.q;
import java.lang.reflect.Array;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NalUnitUtil {
    public static final byte[] a = {0, 0, 0, 1};
    public static final float[] b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};
    public static final Object c = new Object();
    public static int[] d = new int[10];

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265LayerInfo {
        public final int a;
        public final int b;

        public H265LayerInfo(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265NalHeader {
        public final int a;
        public final int b;
        public final int c;

        public H265NalHeader(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265ProfileTierLevel {
        public final int a;
        public final boolean b;
        public final int c;
        public final int d;
        public final int[] e;
        public final int f;

        public H265ProfileTierLevel(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
            this.a = i;
            this.b = z;
            this.c = i2;
            this.d = i3;
            this.e = iArr;
            this.f = i4;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265ProfileTierLevelsAndIndices {
        public final ImmutableList a;
        public final int[] b;

        public H265ProfileTierLevelsAndIndices(List list, int[] iArr) {
            this.a = ImmutableList.m(list);
            this.b = iArr;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265RepFormat {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;

        public H265RepFormat(int i, int i2, int i3, int i4, int i5) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265RepFormatsAndIndices {
        public final ImmutableList a;
        public final int[] b;

        public H265RepFormatsAndIndices(List list, int[] iArr) {
            this.a = ImmutableList.m(list);
            this.b = iArr;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265Sei3dRefDisplayInfoData {
        public final int a;

        public H265Sei3dRefDisplayInfoData(int i) {
            this.a = i;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265SpsData {
        public final int a;
        public final H265ProfileTierLevel b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final int g;
        public final int h;
        public final float i;
        public final int j;
        public final int k;
        public final int l;
        public final int m;

        public H265SpsData(int i, H265ProfileTierLevel h265ProfileTierLevel, int i2, int i3, int i4, int i5, int i6, int i7, float f, int i8, int i9, int i10, int i11) {
            this.a = i;
            this.b = h265ProfileTierLevel;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = i5;
            this.i = f;
            this.j = i8;
            this.k = i9;
            this.l = i10;
            this.m = i11;
            this.g = i6;
            this.h = i7;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265VideoSignalInfo {
        public final int a;
        public final int b;
        public final int c;

        public H265VideoSignalInfo(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            this.c = i3;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265VideoSignalInfosAndIndices {
        public final ImmutableList a;
        public final int[] b;

        public H265VideoSignalInfosAndIndices(List list, int[] iArr) {
            this.a = ImmutableList.m(list);
            this.b = iArr;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class H265VpsData {
        public final ImmutableList a;
        public final H265ProfileTierLevelsAndIndices b;
        public final H265RepFormatsAndIndices c;
        public final H265VideoSignalInfosAndIndices d;

        public H265VpsData(List list, H265ProfileTierLevelsAndIndices h265ProfileTierLevelsAndIndices, H265RepFormatsAndIndices h265RepFormatsAndIndices, H265VideoSignalInfosAndIndices h265VideoSignalInfosAndIndices) {
            ImmutableList r;
            if (list != null) {
                r = ImmutableList.m(list);
            } else {
                r = ImmutableList.r();
            }
            this.a = r;
            this.b = h265ProfileTierLevelsAndIndices;
            this.c = h265RepFormatsAndIndices;
            this.d = h265VideoSignalInfosAndIndices;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PpsData {
        public final int a;
        public final boolean b;

        public PpsData(int i, int i2, boolean z) {
            this.a = i2;
            this.b = z;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SpsData {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final float g;
        public final int h;
        public final int i;
        public final boolean j;
        public final boolean k;
        public final int l;
        public final int m;
        public final int n;
        public final boolean o;
        public final int p;
        public final int q;
        public final int r;
        public final int s;

        public SpsData(int i, int i2, int i3, int i4, int i5, int i6, float f, int i7, int i8, boolean z, boolean z2, int i9, int i10, int i11, boolean z3, int i12, int i13, int i14, int i15) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
            this.g = f;
            this.h = i7;
            this.i = i8;
            this.j = z;
            this.k = z2;
            this.l = i9;
            this.m = i10;
            this.n = i11;
            this.o = z3;
            this.p = i12;
            this.q = i13;
            this.r = i14;
            this.s = i15;
        }
    }

    public static void a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    public static int b(byte[] bArr, int i, int i2, boolean[] zArr) {
        boolean z;
        boolean z2;
        boolean z3;
        int i3 = i2 - i;
        boolean z4 = false;
        if (i3 >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            a(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            a(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            a(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            byte b2 = bArr[i5];
            if ((b2 & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b2 == 1) {
                    a(zArr);
                    return i6;
                }
                i5 -= 2;
            }
            i5 += 3;
        }
        if (i3 <= 2 ? !(i3 != 2 ? !zArr[1] || bArr[i4] != 1 : !zArr[2] || bArr[i2 - 2] != 0 || bArr[i4] != 1) : !(bArr[i2 - 3] != 0 || bArr[i2 - 2] != 0 || bArr[i4] != 1)) {
            z2 = true;
        } else {
            z2 = false;
        }
        zArr[0] = z2;
        if (i3 <= 1 ? !(!zArr[2] || bArr[i4] != 0) : !(bArr[i2 - 2] != 0 || bArr[i4] != 0)) {
            z3 = true;
        } else {
            z3 = false;
        }
        zArr[1] = z3;
        if (bArr[i4] == 0) {
            z4 = true;
        }
        zArr[2] = z4;
        return i2;
    }

    public static String c(Format format) {
        String str = format.p;
        String str2 = format.l;
        if (Objects.equals(str, "video/dolby-vision") && str2 != null) {
            if (!str2.startsWith("dva1") && !str2.startsWith("dvav")) {
                if (str2.startsWith("dvh1") || str2.startsWith("dvhe")) {
                    return "video/hevc";
                }
            } else {
                return "video/avc";
            }
        }
        return format.p;
    }

    public static boolean d(byte[] bArr, int i, Format format) {
        int i2;
        if (Objects.equals(format.p, "video/avc")) {
            byte b2 = bArr[4];
            if (((b2 & 96) >> 5) == 0 && ((i2 = b2 & 31) == 1 || i2 == 9 || i2 == 14)) {
                return false;
            }
        } else if (Objects.equals(format.p, "video/hevc")) {
            H265NalHeader f = f(new ParsableNalUnitBitArray(bArr, 4, i + 4));
            int i3 = f.a;
            if (i3 != 35) {
                if (i3 <= 14 && i3 % 2 == 0 && f.c == format.I - 1) {
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    public static int e(Format format) {
        String c2 = c(format);
        if (Objects.equals(c2, "video/avc")) {
            return 1;
        }
        if (!Objects.equals(c2, "video/hevc") && !Objects.equals(c2, "video/vvc")) {
            return 0;
        }
        return 2;
    }

    public static H265NalHeader f(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        parsableNalUnitBitArray.i();
        return new H265NalHeader(parsableNalUnitBitArray.e(6), parsableNalUnitBitArray.e(6), parsableNalUnitBitArray.e(3) - 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static H265ProfileTierLevel g(ParsableNalUnitBitArray parsableNalUnitBitArray, boolean z, int i, H265ProfileTierLevel h265ProfileTierLevel) {
        int[] iArr;
        int i2;
        boolean z2;
        int i3;
        int i4;
        boolean z3;
        int i5;
        int i6;
        int[] iArr2 = new int[6];
        if (z) {
            int e = parsableNalUnitBitArray.e(2);
            z3 = parsableNalUnitBitArray.d();
            i5 = parsableNalUnitBitArray.e(5);
            i6 = 0;
            for (int i7 = 0; i7 < 32; i7++) {
                if (parsableNalUnitBitArray.d()) {
                    i6 |= 1 << i7;
                }
            }
            for (int i8 = 0; i8 < 6; i8++) {
                iArr2[i8] = parsableNalUnitBitArray.e(8);
            }
            i2 = e;
        } else if (h265ProfileTierLevel != null) {
            int i9 = h265ProfileTierLevel.a;
            z3 = h265ProfileTierLevel.b;
            i5 = h265ProfileTierLevel.c;
            i6 = h265ProfileTierLevel.d;
            iArr2 = h265ProfileTierLevel.e;
            i2 = i9;
        } else {
            iArr = iArr2;
            i2 = 0;
            z2 = false;
            i3 = 0;
            i4 = 0;
            int e2 = parsableNalUnitBitArray.e(8);
            int i10 = 0;
            for (int i11 = 0; i11 < i; i11++) {
                if (parsableNalUnitBitArray.d()) {
                    i10 += 88;
                }
                if (parsableNalUnitBitArray.d()) {
                    i10 += 8;
                }
            }
            parsableNalUnitBitArray.j(i10);
            if (i > 0) {
                parsableNalUnitBitArray.j((8 - i) * 2);
            }
            return new H265ProfileTierLevel(i2, z2, i3, i4, iArr, e2);
        }
        iArr = iArr2;
        z2 = z3;
        i3 = i5;
        i4 = i6;
        int e22 = parsableNalUnitBitArray.e(8);
        int i102 = 0;
        while (i11 < i) {
        }
        parsableNalUnitBitArray.j(i102);
        if (i > 0) {
        }
        return new H265ProfileTierLevel(i2, z2, i3, i4, iArr, e22);
    }

    public static H265Sei3dRefDisplayInfoData h(byte[] bArr, int i, int i2) {
        byte b2;
        int i3;
        int max;
        int max2;
        int i4 = i + 2;
        do {
            i2--;
            b2 = bArr[i2];
            if (b2 != 0) {
                break;
            }
        } while (i2 > i4);
        if (b2 != 0 && i2 > i4) {
            ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i4, i2 + 1);
            while (parsableNalUnitBitArray.b(16)) {
                int e = parsableNalUnitBitArray.e(8);
                int i5 = 0;
                while (e == 255) {
                    i5 += 255;
                    e = parsableNalUnitBitArray.e(8);
                }
                int i6 = i5 + e;
                int e2 = parsableNalUnitBitArray.e(8);
                int i7 = 0;
                while (e2 == 255) {
                    i7 += 255;
                    e2 = parsableNalUnitBitArray.e(8);
                }
                int i8 = i7 + e2;
                if (i8 != 0 && parsableNalUnitBitArray.b(i8)) {
                    if (i6 == 176) {
                        int f = parsableNalUnitBitArray.f();
                        boolean d2 = parsableNalUnitBitArray.d();
                        if (d2) {
                            i3 = parsableNalUnitBitArray.f();
                        } else {
                            i3 = 0;
                        }
                        int f2 = parsableNalUnitBitArray.f();
                        int i9 = -1;
                        for (int i10 = 0; i10 <= f2; i10++) {
                            i9 = parsableNalUnitBitArray.f();
                            parsableNalUnitBitArray.f();
                            int e3 = parsableNalUnitBitArray.e(6);
                            if (e3 != 63) {
                                if (e3 == 0) {
                                    max = Math.max(0, f - 30);
                                } else {
                                    max = Math.max(0, (e3 + f) - 31);
                                }
                                parsableNalUnitBitArray.e(max);
                                if (d2) {
                                    int e4 = parsableNalUnitBitArray.e(6);
                                    if (e4 != 63) {
                                        if (e4 == 0) {
                                            max2 = Math.max(0, i3 - 30);
                                        } else {
                                            max2 = Math.max(0, (e4 + i3) - 31);
                                        }
                                        parsableNalUnitBitArray.e(max2);
                                    } else {
                                        return null;
                                    }
                                }
                                if (parsableNalUnitBitArray.d()) {
                                    parsableNalUnitBitArray.j(10);
                                }
                            } else {
                                return null;
                            }
                        }
                        return new H265Sei3dRefDisplayInfoData(i9);
                    }
                    parsableNalUnitBitArray.j(i8 * 8);
                } else {
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static H265SpsData i(byte[] bArr, int i, int i2, H265VpsData h265VpsData) {
        boolean z;
        int i3;
        int i4;
        int i5;
        int i6;
        int f;
        int i7;
        int f2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int f3;
        int i13;
        H265ProfileTierLevel h265ProfileTierLevel;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        H265VideoSignalInfosAndIndices h265VideoSignalInfosAndIndices;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        boolean z2;
        int i29;
        int i30;
        int i31;
        H265RepFormatsAndIndices h265RepFormatsAndIndices;
        H265NalHeader f4 = f(new ParsableNalUnitBitArray(bArr, i, i2));
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i + 2, i2);
        int i32 = 4;
        parsableNalUnitBitArray.j(4);
        int e = parsableNalUnitBitArray.e(3);
        int i33 = f4.b;
        if (i33 != 0 && e == 7) {
            z = true;
        } else {
            z = false;
        }
        if (h265VpsData != null) {
            ImmutableList immutableList = h265VpsData.a;
            if (!immutableList.isEmpty()) {
                i3 = ((H265LayerInfo) immutableList.get(Math.min(i33, immutableList.size() - 1))).a;
                H265ProfileTierLevel h265ProfileTierLevel2 = null;
                if (z) {
                    parsableNalUnitBitArray.i();
                    h265ProfileTierLevel2 = g(parsableNalUnitBitArray, true, e, null);
                } else if (h265VpsData != null) {
                    H265ProfileTierLevelsAndIndices h265ProfileTierLevelsAndIndices = h265VpsData.b;
                    int[] iArr = h265ProfileTierLevelsAndIndices.b;
                    ImmutableList immutableList2 = h265ProfileTierLevelsAndIndices.a;
                    int i34 = iArr[i3];
                    if (immutableList2.size() > i34) {
                        h265ProfileTierLevel2 = (H265ProfileTierLevel) immutableList2.get(i34);
                    }
                }
                parsableNalUnitBitArray.f();
                if (!z) {
                    if (parsableNalUnitBitArray.d()) {
                        i31 = parsableNalUnitBitArray.e(8);
                    } else {
                        i31 = -1;
                    }
                    if (h265VpsData != null && (h265RepFormatsAndIndices = h265VpsData.c) != null) {
                        ImmutableList immutableList3 = h265RepFormatsAndIndices.a;
                        if (i31 == -1) {
                            i31 = h265RepFormatsAndIndices.b[i3];
                        }
                        if (i31 != -1 && immutableList3.size() > i31) {
                            H265RepFormat h265RepFormat = (H265RepFormat) immutableList3.get(i31);
                            int i35 = h265RepFormat.a;
                            i7 = h265RepFormat.d;
                            int i36 = h265RepFormat.e;
                            f = h265RepFormat.b;
                            f2 = h265RepFormat.c;
                            i6 = i36;
                            i8 = i6;
                            i9 = i7;
                        }
                    }
                    f = 0;
                    f2 = 0;
                    i7 = 0;
                    i9 = 0;
                    i6 = 0;
                    i8 = 0;
                } else {
                    int f5 = parsableNalUnitBitArray.f();
                    if (f5 == 3) {
                        parsableNalUnitBitArray.i();
                    }
                    int f6 = parsableNalUnitBitArray.f();
                    int f7 = parsableNalUnitBitArray.f();
                    if (parsableNalUnitBitArray.d()) {
                        int f8 = parsableNalUnitBitArray.f();
                        int f9 = parsableNalUnitBitArray.f();
                        int f10 = parsableNalUnitBitArray.f();
                        int f11 = parsableNalUnitBitArray.f();
                        if (f5 != 1 && f5 != 2) {
                            i10 = 1;
                        } else {
                            i10 = 2;
                        }
                        i4 = f6 - ((f8 + f9) * i10);
                        if (f5 == 1) {
                            i11 = 2;
                        } else {
                            i11 = 1;
                        }
                        i5 = f7 - ((f10 + f11) * i11);
                    } else {
                        i4 = f6;
                        i5 = f7;
                    }
                    i6 = i5;
                    f = parsableNalUnitBitArray.f();
                    i7 = i4;
                    f2 = parsableNalUnitBitArray.f();
                    i8 = f7;
                    i9 = f6;
                }
                int f12 = parsableNalUnitBitArray.f();
                if (z) {
                    if (parsableNalUnitBitArray.d()) {
                        i30 = 0;
                    } else {
                        i30 = e;
                    }
                    i12 = -1;
                    for (int i37 = i30; i37 <= e; i37++) {
                        parsableNalUnitBitArray.f();
                        i12 = Math.max(parsableNalUnitBitArray.f(), i12);
                        parsableNalUnitBitArray.f();
                    }
                } else {
                    i12 = -1;
                }
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.f();
                if (parsableNalUnitBitArray.d()) {
                    if (z) {
                        z2 = parsableNalUnitBitArray.d();
                    } else {
                        z2 = false;
                    }
                    int i38 = 6;
                    if (z2) {
                        parsableNalUnitBitArray.j(6);
                    } else if (parsableNalUnitBitArray.d()) {
                        int i39 = 0;
                        while (i39 < i32) {
                            int i40 = 0;
                            while (i40 < i38) {
                                if (!parsableNalUnitBitArray.d()) {
                                    parsableNalUnitBitArray.f();
                                } else {
                                    int min = Math.min(64, 1 << ((i39 << 1) + 4));
                                    if (i39 > 1) {
                                        parsableNalUnitBitArray.g();
                                    }
                                    for (int i41 = 0; i41 < min; i41++) {
                                        parsableNalUnitBitArray.g();
                                    }
                                }
                                if (i39 == 3) {
                                    i29 = 3;
                                } else {
                                    i29 = 1;
                                }
                                i40 += i29;
                                i38 = 6;
                            }
                            i39++;
                            i32 = 4;
                            i38 = 6;
                        }
                    }
                }
                parsableNalUnitBitArray.j(2);
                if (parsableNalUnitBitArray.d()) {
                    parsableNalUnitBitArray.j(8);
                    parsableNalUnitBitArray.f();
                    parsableNalUnitBitArray.f();
                    parsableNalUnitBitArray.i();
                }
                f3 = parsableNalUnitBitArray.f();
                int[] iArr2 = new int[0];
                int[] iArr3 = new int[0];
                i13 = 0;
                int i42 = -1;
                int i43 = -1;
                while (i13 < f3) {
                    if (i13 != 0 && parsableNalUnitBitArray.d()) {
                        i24 = f3;
                        int i44 = i43 + i42;
                        int f13 = (1 - ((parsableNalUnitBitArray.d() ? 1 : 0) * 2)) * (parsableNalUnitBitArray.f() + 1);
                        i25 = i3;
                        int i45 = i44 + 1;
                        i26 = i13;
                        boolean[] zArr = new boolean[i45];
                        for (int i46 = 0; i46 <= i44; i46++) {
                            if (!parsableNalUnitBitArray.d()) {
                                zArr[i46] = parsableNalUnitBitArray.d();
                            } else {
                                zArr[i46] = true;
                            }
                        }
                        int[] iArr4 = new int[i45];
                        int[] iArr5 = new int[i45];
                        int i47 = 0;
                        for (int i48 = i42 - 1; i48 >= 0; i48--) {
                            int i49 = iArr3[i48] + f13;
                            if (i49 < 0 && zArr[i43 + i48]) {
                                iArr4[i47] = i49;
                                i47++;
                            }
                        }
                        if (f13 < 0 && zArr[i44]) {
                            iArr4[i47] = f13;
                            i47++;
                        }
                        int i50 = i47;
                        int[] iArr6 = iArr2;
                        for (int i51 = 0; i51 < i43; i51++) {
                            int i52 = iArr6[i51] + f13;
                            if (i52 < 0 && zArr[i51]) {
                                iArr4[i50] = i52;
                                i50++;
                            }
                        }
                        int[] copyOf = Arrays.copyOf(iArr4, i50);
                        int i53 = 0;
                        for (int i54 = i43 - 1; i54 >= 0; i54--) {
                            int i55 = iArr6[i54] + f13;
                            if (i55 > 0 && zArr[i54]) {
                                iArr5[i53] = i55;
                                i53++;
                            }
                        }
                        if (f13 > 0 && zArr[i44]) {
                            iArr5[i53] = f13;
                            i53++;
                        }
                        int i56 = i50;
                        int i57 = i53;
                        for (int i58 = 0; i58 < i42; i58++) {
                            int i59 = iArr3[i58] + f13;
                            if (i59 > 0 && zArr[i43 + i58]) {
                                iArr5[i57] = i59;
                                i57++;
                            }
                        }
                        iArr3 = Arrays.copyOf(iArr5, i57);
                        i42 = i57;
                        i43 = i56;
                        iArr2 = copyOf;
                    } else {
                        i24 = f3;
                        i25 = i3;
                        i26 = i13;
                        int f14 = parsableNalUnitBitArray.f();
                        i42 = parsableNalUnitBitArray.f();
                        int[] iArr7 = new int[f14];
                        for (int i60 = 0; i60 < f14; i60++) {
                            if (i60 > 0) {
                                i28 = iArr7[i60 - 1];
                            } else {
                                i28 = 0;
                            }
                            iArr7[i60] = i28 - (parsableNalUnitBitArray.f() + 1);
                            parsableNalUnitBitArray.i();
                        }
                        int[] iArr8 = new int[i42];
                        for (int i61 = 0; i61 < i42; i61++) {
                            if (i61 > 0) {
                                i27 = iArr8[i61 - 1];
                            } else {
                                i27 = 0;
                            }
                            iArr8[i61] = parsableNalUnitBitArray.f() + 1 + i27;
                            parsableNalUnitBitArray.i();
                        }
                        i43 = f14;
                        iArr2 = iArr7;
                        iArr3 = iArr8;
                    }
                    i13 = i26 + 1;
                    f3 = i24;
                    i3 = i25;
                }
                int i62 = i3;
                if (parsableNalUnitBitArray.d()) {
                    int f15 = parsableNalUnitBitArray.f();
                    for (int i63 = 0; i63 < f15; i63++) {
                        parsableNalUnitBitArray.j(f12 + 5);
                    }
                }
                parsableNalUnitBitArray.j(2);
                float f16 = 1.0f;
                if (!parsableNalUnitBitArray.d()) {
                    if (parsableNalUnitBitArray.d()) {
                        int e2 = parsableNalUnitBitArray.e(8);
                        if (e2 == 255) {
                            int e3 = parsableNalUnitBitArray.e(16);
                            int e4 = parsableNalUnitBitArray.e(16);
                            if (e3 != 0 && e4 != 0) {
                                f16 = e3 / e4;
                            }
                        } else if (e2 < 17) {
                            f16 = b[e2];
                        } else {
                            q.x("Unexpected aspect_ratio_idc value: ", e2, "NalUnitUtil");
                        }
                    }
                    if (parsableNalUnitBitArray.d()) {
                        parsableNalUnitBitArray.i();
                    }
                    if (parsableNalUnitBitArray.d()) {
                        parsableNalUnitBitArray.j(3);
                        if (parsableNalUnitBitArray.d()) {
                            i23 = 1;
                        } else {
                            i23 = 2;
                        }
                        if (parsableNalUnitBitArray.d()) {
                            int e5 = parsableNalUnitBitArray.e(8);
                            int e6 = parsableNalUnitBitArray.e(8);
                            parsableNalUnitBitArray.j(8);
                            i21 = ColorInfo.f(e5);
                            i22 = ColorInfo.g(e6);
                        } else {
                            i21 = -1;
                            i22 = -1;
                        }
                    } else {
                        if (h265VpsData != null && (h265VideoSignalInfosAndIndices = h265VpsData.d) != null) {
                            ImmutableList immutableList4 = h265VideoSignalInfosAndIndices.a;
                            int i64 = h265VideoSignalInfosAndIndices.b[i62];
                            if (immutableList4.size() > i64) {
                                H265VideoSignalInfo h265VideoSignalInfo = (H265VideoSignalInfo) immutableList4.get(i64);
                                int i65 = h265VideoSignalInfo.a;
                                int i66 = h265VideoSignalInfo.b;
                                i22 = h265VideoSignalInfo.c;
                                i21 = i65;
                                i23 = i66;
                            }
                        }
                        i21 = -1;
                        i22 = -1;
                        i23 = -1;
                    }
                    if (parsableNalUnitBitArray.d()) {
                        parsableNalUnitBitArray.f();
                        parsableNalUnitBitArray.f();
                    }
                    parsableNalUnitBitArray.i();
                    if (parsableNalUnitBitArray.d()) {
                        i6 *= 2;
                    }
                    i18 = i21;
                    i20 = i22;
                    i19 = i23;
                    h265ProfileTierLevel = h265ProfileTierLevel2;
                    i14 = f;
                    i15 = i7;
                    i16 = i9;
                    i17 = i8;
                } else {
                    h265ProfileTierLevel = h265ProfileTierLevel2;
                    i14 = f;
                    i15 = i7;
                    i16 = i9;
                    i17 = i8;
                    i18 = -1;
                    i19 = -1;
                    i20 = -1;
                }
                return new H265SpsData(e, h265ProfileTierLevel, i14, f2, i15, i6, i16, i17, f16, i12, i18, i19, i20);
            }
        }
        i3 = 0;
        H265ProfileTierLevel h265ProfileTierLevel22 = null;
        if (z) {
        }
        parsableNalUnitBitArray.f();
        if (!z) {
        }
        int f122 = parsableNalUnitBitArray.f();
        if (z) {
        }
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.f();
        if (parsableNalUnitBitArray.d()) {
        }
        parsableNalUnitBitArray.j(2);
        if (parsableNalUnitBitArray.d()) {
        }
        f3 = parsableNalUnitBitArray.f();
        int[] iArr22 = new int[0];
        int[] iArr32 = new int[0];
        i13 = 0;
        int i422 = -1;
        int i432 = -1;
        while (i13 < f3) {
        }
        int i622 = i3;
        if (parsableNalUnitBitArray.d()) {
        }
        parsableNalUnitBitArray.j(2);
        float f162 = 1.0f;
        if (!parsableNalUnitBitArray.d()) {
        }
        return new H265SpsData(e, h265ProfileTierLevel, i14, f2, i15, i6, i16, i17, f162, i12, i18, i19, i20);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static H265VpsData j(byte[] bArr, int i, int i2) {
        int i3;
        boolean z;
        boolean z2;
        boolean z3;
        int[] iArr;
        int[] iArr2;
        H265VideoSignalInfosAndIndices h265VideoSignalInfosAndIndices;
        boolean z4;
        boolean z5;
        boolean z6;
        int i4;
        int i5;
        boolean z7;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        ImmutableList immutableList;
        boolean[][] zArr;
        int i13;
        boolean[][] zArr2;
        int[] iArr3;
        int[] iArr4;
        boolean z8;
        int i14;
        int i15;
        boolean z9;
        int i16;
        boolean d2;
        int i17;
        int i18;
        int i19;
        boolean d3;
        int i20;
        int i21;
        boolean z10;
        boolean z11;
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i, i2);
        f(parsableNalUnitBitArray);
        parsableNalUnitBitArray.j(4);
        boolean d4 = parsableNalUnitBitArray.d();
        boolean d5 = parsableNalUnitBitArray.d();
        int e = parsableNalUnitBitArray.e(6);
        int i22 = e + 1;
        int e2 = parsableNalUnitBitArray.e(3);
        parsableNalUnitBitArray.j(17);
        H265ProfileTierLevel g = g(parsableNalUnitBitArray, true, e2, null);
        if (parsableNalUnitBitArray.d()) {
            i3 = 0;
        } else {
            i3 = e2;
        }
        while (i3 <= e2) {
            parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.f();
            i3++;
        }
        int e3 = parsableNalUnitBitArray.e(6);
        int f = parsableNalUnitBitArray.f() + 1;
        int i23 = 6;
        H265ProfileTierLevelsAndIndices h265ProfileTierLevelsAndIndices = new H265ProfileTierLevelsAndIndices(ImmutableList.t(g), new int[1]);
        if (i22 >= 2 && f >= 2) {
            z = true;
        } else {
            z = false;
        }
        if (d4 && d5) {
            z2 = true;
        } else {
            z2 = false;
        }
        int i24 = e3 + 1;
        if (i24 >= i22) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z && z2 && z3) {
            Class cls = Integer.TYPE;
            int[][] iArr5 = (int[][]) Array.newInstance((Class<?>) cls, f, i24);
            int i25 = 1;
            int[] iArr6 = new int[f];
            int[] iArr7 = new int[f];
            iArr5[0][0] = 0;
            iArr6[0] = 1;
            iArr7[0] = 0;
            for (int i26 = 1; i26 < f; i26++) {
                int i27 = 0;
                for (int i28 = 0; i28 <= e3; i28++) {
                    if (parsableNalUnitBitArray.d()) {
                        iArr5[i26][i27] = i28;
                        iArr7[i26] = i28;
                        i27++;
                    }
                    iArr6[i26] = i27;
                }
            }
            if (parsableNalUnitBitArray.d()) {
                parsableNalUnitBitArray.j(64);
                if (parsableNalUnitBitArray.d()) {
                    parsableNalUnitBitArray.f();
                }
                int f2 = parsableNalUnitBitArray.f();
                int i29 = 0;
                while (i29 < f2) {
                    parsableNalUnitBitArray.f();
                    if (i29 != 0 && !parsableNalUnitBitArray.d()) {
                        z11 = false;
                        z10 = false;
                    } else {
                        boolean d6 = parsableNalUnitBitArray.d();
                        boolean d7 = parsableNalUnitBitArray.d();
                        z11 = d6;
                        z10 = d7;
                        if (d6 || d7) {
                            d2 = parsableNalUnitBitArray.d();
                            if (d2) {
                                parsableNalUnitBitArray.j(19);
                            }
                            parsableNalUnitBitArray.j(8);
                            if (d2) {
                                parsableNalUnitBitArray.j(4);
                            }
                            parsableNalUnitBitArray.j(15);
                            i18 = d6;
                            i17 = d7;
                            i19 = 0;
                            while (i19 <= e2) {
                                boolean d8 = parsableNalUnitBitArray.d();
                                if (!d8) {
                                    d8 = parsableNalUnitBitArray.d();
                                }
                                if (d8) {
                                    parsableNalUnitBitArray.f();
                                    d3 = false;
                                } else {
                                    d3 = parsableNalUnitBitArray.d();
                                }
                                if (!d3) {
                                    i20 = i29;
                                    i21 = parsableNalUnitBitArray.f();
                                } else {
                                    i20 = i29;
                                    i21 = 0;
                                }
                                int[][] iArr8 = iArr5;
                                int i30 = i18 + i17;
                                int[] iArr9 = iArr7;
                                int i31 = 0;
                                while (i31 < i30) {
                                    int i32 = i30;
                                    for (int i33 = 0; i33 <= i21; i33++) {
                                        parsableNalUnitBitArray.f();
                                        parsableNalUnitBitArray.f();
                                        if (d2) {
                                            parsableNalUnitBitArray.f();
                                            parsableNalUnitBitArray.f();
                                        }
                                        parsableNalUnitBitArray.i();
                                    }
                                    i31++;
                                    i30 = i32;
                                }
                                i19++;
                                i29 = i20;
                                iArr5 = iArr8;
                                iArr7 = iArr9;
                            }
                            i29++;
                        }
                    }
                    d2 = false;
                    i18 = z11;
                    i17 = z10;
                    i19 = 0;
                    while (i19 <= e2) {
                    }
                    i29++;
                }
            }
            int[][] iArr10 = iArr5;
            int[] iArr11 = iArr7;
            if (!parsableNalUnitBitArray.d()) {
                return new H265VpsData(null, h265ProfileTierLevelsAndIndices, null, null);
            }
            int i34 = parsableNalUnitBitArray.e;
            if (i34 > 0) {
                parsableNalUnitBitArray.j(8 - i34);
            }
            H265ProfileTierLevel g2 = g(parsableNalUnitBitArray, false, e2, g);
            boolean d9 = parsableNalUnitBitArray.d();
            boolean[] zArr3 = new boolean[16];
            int i35 = 0;
            for (int i36 = 0; i36 < 16; i36++) {
                boolean d10 = parsableNalUnitBitArray.d();
                zArr3[i36] = d10;
                if (d10) {
                    i35++;
                }
            }
            if (i35 != 0 && zArr3[1]) {
                int[] iArr12 = new int[i35];
                for (int i37 = 0; i37 < i35 - (d9 ? 1 : 0); i37++) {
                    iArr12[i37] = parsableNalUnitBitArray.e(3);
                }
                int[] iArr13 = new int[i35 + 1];
                if (d9) {
                    int i38 = 1;
                    while (i38 < i35) {
                        int[] iArr14 = iArr13;
                        for (int i39 = 0; i39 < i38; i39++) {
                            iArr14[i38] = iArr12[i39] + 1 + iArr14[i38];
                        }
                        i38++;
                        iArr13 = iArr14;
                    }
                    iArr = iArr13;
                    iArr[i35] = 6;
                } else {
                    iArr = iArr13;
                }
                int[][] iArr15 = (int[][]) Array.newInstance((Class<?>) cls, i22, i35);
                int[] iArr16 = new int[i22];
                iArr16[0] = 0;
                boolean d11 = parsableNalUnitBitArray.d();
                int i40 = 1;
                while (i40 < i22) {
                    if (d11) {
                        i16 = i40;
                        iArr16[i16] = parsableNalUnitBitArray.e(i23);
                    } else {
                        i16 = i40;
                        iArr16[i16] = i16;
                    }
                    if (!d9) {
                        int i41 = 0;
                        while (i41 < i35) {
                            int i42 = i41;
                            iArr15[i16][i42] = parsableNalUnitBitArray.e(iArr12[i41] + 1);
                            i41 = i42 + 1;
                        }
                    } else {
                        for (int i43 = 0; i43 < i35; i43++) {
                            iArr15[i16][i43] = (iArr16[i16] & ((1 << iArr[r30]) - 1)) >> iArr[i43];
                        }
                    }
                    i40 = i16 + 1;
                    i23 = 6;
                }
                int[] iArr17 = new int[i24];
                int i44 = 1;
                int i45 = 0;
                while (i45 < i22) {
                    iArr17[iArr16[i45]] = -1;
                    int[] iArr18 = iArr17;
                    int i46 = 0;
                    int i47 = 0;
                    while (i46 < 16) {
                        if (zArr3[i46]) {
                            if (i46 == i25) {
                                iArr18[iArr16[i45]] = iArr15[i45][i47];
                            }
                            i47++;
                        }
                        i46++;
                        i25 = 1;
                    }
                    if (i45 > 0) {
                        int i48 = 0;
                        while (true) {
                            if (i48 < i45) {
                                int i49 = i48;
                                if (iArr18[iArr16[i45]] == iArr18[iArr16[i48]]) {
                                    z9 = false;
                                    break;
                                }
                                i48 = i49 + 1;
                            } else {
                                z9 = true;
                                break;
                            }
                        }
                        if (z9) {
                            i44++;
                        }
                    }
                    i45++;
                    iArr17 = iArr18;
                    i25 = 1;
                }
                int[] iArr19 = iArr17;
                int e4 = parsableNalUnitBitArray.e(4);
                if (i44 >= 2 && e4 != 0) {
                    int[] iArr20 = new int[i44];
                    for (int i50 = 0; i50 < i44; i50++) {
                        iArr20[i50] = parsableNalUnitBitArray.e(e4);
                    }
                    int[] iArr21 = new int[i24];
                    for (int i51 = 0; i51 < i22; i51++) {
                        iArr21[Math.min(iArr16[i51], e3)] = i51;
                    }
                    ImmutableList.Builder k = ImmutableList.k();
                    int i52 = 0;
                    while (i52 <= e3) {
                        int[] iArr22 = iArr21;
                        int i53 = i44;
                        int min = Math.min(iArr19[i52], i53 - 1);
                        if (min >= 0) {
                            i15 = iArr20[min];
                        } else {
                            i15 = -1;
                        }
                        k.d(new H265LayerInfo(iArr22[i52], i15));
                        i52++;
                        iArr21 = iArr22;
                        iArr16 = iArr16;
                        i44 = i53;
                    }
                    int[] iArr23 = iArr16;
                    ImmutableList i54 = k.i();
                    if (((H265LayerInfo) i54.get(0)).b == -1) {
                        return new H265VpsData(null, h265ProfileTierLevelsAndIndices, null, null);
                    }
                    int i55 = 1;
                    while (true) {
                        if (i55 <= e3) {
                            if (((H265LayerInfo) i54.get(i55)).b != -1) {
                                break;
                            }
                            i55++;
                        } else {
                            i55 = -1;
                            break;
                        }
                    }
                    if (i55 == -1) {
                        return new H265VpsData(null, h265ProfileTierLevelsAndIndices, null, null);
                    }
                    Class cls2 = Boolean.TYPE;
                    boolean[][] zArr4 = (boolean[][]) Array.newInstance((Class<?>) cls2, i22, i22);
                    boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) cls2, i22, i22);
                    for (int i56 = 1; i56 < i22; i56++) {
                        for (int i57 = 0; i57 < i56; i57++) {
                            boolean[] zArr6 = zArr4[i56];
                            boolean[] zArr7 = zArr5[i56];
                            boolean d12 = parsableNalUnitBitArray.d();
                            zArr7[i57] = d12;
                            zArr6[i57] = d12;
                        }
                    }
                    for (int i58 = 1; i58 < i22; i58++) {
                        int i59 = 0;
                        while (i59 < e) {
                            boolean[][] zArr8 = zArr4;
                            int i60 = 0;
                            while (true) {
                                if (i60 < i58) {
                                    boolean[] zArr9 = zArr5[i58];
                                    if (zArr9[i60] && zArr5[i60][i59]) {
                                        zArr9[i59] = true;
                                        break;
                                    }
                                    i60++;
                                }
                            }
                            i59++;
                            zArr4 = zArr8;
                        }
                    }
                    boolean[][] zArr10 = zArr4;
                    int[] iArr24 = new int[i24];
                    for (int i61 = 0; i61 < i22; i61++) {
                        int i62 = 0;
                        for (int i63 = 0; i63 < i61; i63++) {
                            i62 += zArr10[i61][i63] ? 1 : 0;
                        }
                        iArr24[iArr23[i61]] = i62;
                    }
                    int i64 = 0;
                    for (int i65 = 0; i65 < i22; i65++) {
                        if (iArr24[iArr23[i65]] == 0) {
                            i64++;
                        }
                    }
                    if (i64 > 1) {
                        return new H265VpsData(null, h265ProfileTierLevelsAndIndices, null, null);
                    }
                    int[] iArr25 = new int[i22];
                    int[] iArr26 = new int[f];
                    if (parsableNalUnitBitArray.d()) {
                        iArr2 = iArr24;
                        int i66 = 0;
                        while (i66 < i22) {
                            int i67 = i66;
                            iArr25[i67] = parsableNalUnitBitArray.e(3);
                            i66 = i67 + 1;
                        }
                    } else {
                        iArr2 = iArr24;
                        Arrays.fill(iArr25, 0, i22, e2);
                    }
                    int i68 = 0;
                    while (i68 < f) {
                        int i69 = i68;
                        boolean[][] zArr11 = zArr5;
                        int[] iArr27 = iArr25;
                        int i70 = 0;
                        for (int i71 = 0; i71 < iArr6[i69]; i71++) {
                            i70 = Math.max(i70, iArr27[((H265LayerInfo) i54.get(iArr10[i69][i71])).a]);
                        }
                        iArr26[i69] = i70 + 1;
                        i68 = i69 + 1;
                        zArr5 = zArr11;
                        iArr25 = iArr27;
                    }
                    boolean[][] zArr12 = zArr5;
                    if (parsableNalUnitBitArray.d()) {
                        int i72 = 0;
                        while (i72 < e) {
                            int i73 = i72 + 1;
                            int i74 = i73;
                            while (i74 < i22) {
                                if (zArr10[i74][i72]) {
                                    i14 = e;
                                    parsableNalUnitBitArray.j(3);
                                } else {
                                    i14 = e;
                                }
                                i74++;
                                e = i14;
                            }
                            i72 = i73;
                        }
                    }
                    parsableNalUnitBitArray.i();
                    int f3 = parsableNalUnitBitArray.f() + 1;
                    ImmutableList.Builder k2 = ImmutableList.k();
                    k2.d(g);
                    if (f3 > 1) {
                        k2.d(g2);
                        for (int i75 = 2; i75 < f3; i75++) {
                            g2 = g(parsableNalUnitBitArray, parsableNalUnitBitArray.d(), e2, g2);
                            k2.d(g2);
                        }
                    }
                    ImmutableList i76 = k2.i();
                    int f4 = parsableNalUnitBitArray.f() + f;
                    if (f4 > f) {
                        return new H265VpsData(null, h265ProfileTierLevelsAndIndices, null, null);
                    }
                    int e5 = parsableNalUnitBitArray.e(2);
                    boolean[][] zArr13 = (boolean[][]) Array.newInstance((Class<?>) cls2, f4, i24);
                    int[] iArr28 = new int[f4];
                    int i77 = 0;
                    int[] iArr29 = new int[f4];
                    int i78 = 0;
                    while (i78 < f) {
                        iArr28[i78] = i77;
                        iArr29[i78] = iArr11[i78];
                        if (e5 == 0) {
                            i13 = i78;
                            zArr2 = zArr13;
                            iArr3 = iArr28;
                            iArr4 = iArr26;
                            Arrays.fill(zArr13[i13], i77, iArr6[i13], true);
                            iArr3[i13] = iArr6[i13];
                        } else {
                            i13 = i78;
                            zArr2 = zArr13;
                            iArr3 = iArr28;
                            iArr4 = iArr26;
                            if (e5 == 1) {
                                int i79 = iArr11[i13];
                                for (int i80 = 0; i80 < iArr6[i13]; i80++) {
                                    boolean[] zArr14 = zArr2[i13];
                                    if (iArr10[i13][i80] == i79) {
                                        z8 = true;
                                    } else {
                                        z8 = false;
                                    }
                                    zArr14[i80] = z8;
                                }
                                iArr3[i13] = 1;
                            } else {
                                i77 = 0;
                                zArr2[0][0] = true;
                                iArr3[0] = 1;
                                i78 = i13 + 1;
                                zArr13 = zArr2;
                                iArr28 = iArr3;
                                iArr26 = iArr4;
                            }
                        }
                        i77 = 0;
                        i78 = i13 + 1;
                        zArr13 = zArr2;
                        iArr28 = iArr3;
                        iArr26 = iArr4;
                    }
                    boolean[][] zArr15 = zArr13;
                    int[] iArr30 = iArr28;
                    int[] iArr31 = iArr26;
                    int[] iArr32 = new int[i24];
                    int i81 = 2;
                    int[] iArr33 = new int[2];
                    iArr33[1] = i24;
                    iArr33[i77] = f4;
                    boolean[][] zArr16 = (boolean[][]) Array.newInstance((Class<?>) cls2, iArr33);
                    int i82 = 1;
                    int i83 = 0;
                    while (i82 < f4) {
                        if (e5 == i81) {
                            for (int i84 = 0; i84 < iArr6[i82]; i84++) {
                                zArr15[i82][i84] = parsableNalUnitBitArray.d();
                                int i85 = iArr30[i82];
                                boolean z12 = zArr15[i82][i84];
                                iArr30[i82] = i85 + (z12 ? 1 : 0);
                                if (z12) {
                                    iArr29[i82] = iArr10[i82][i84];
                                }
                            }
                        }
                        if (i83 == 0) {
                            i12 = 0;
                            if (iArr10[i82][0] == 0 && zArr15[i82][0]) {
                                for (int i86 = 1; i86 < iArr6[i82]; i86++) {
                                    if (iArr10[i82][i86] == i55 && zArr15[i82][i55]) {
                                        i83 = i82;
                                    }
                                }
                            }
                        } else {
                            i12 = 0;
                        }
                        int i87 = i12;
                        while (i87 < iArr6[i82]) {
                            if (f3 > 1) {
                                zArr16[i82][i87] = zArr15[i82][i87];
                                immutableList = i76;
                                zArr = zArr16;
                                RoundingMode roundingMode = RoundingMode.CEILING;
                                int c2 = DoubleMath.c(f3);
                                if (!zArr[i82][i87]) {
                                    int i88 = ((H265LayerInfo) i54.get(iArr10[i82][i87])).a;
                                    int i89 = i12;
                                    while (true) {
                                        if (i89 >= i87) {
                                            break;
                                        }
                                        int i90 = i89;
                                        if (zArr12[i88][((H265LayerInfo) i54.get(iArr10[i82][i90])).a]) {
                                            zArr[i82][i87] = true;
                                            break;
                                        }
                                        i89 = i90 + 1;
                                    }
                                }
                                if (zArr[i82][i87]) {
                                    if (i83 > 0 && i82 == i83) {
                                        iArr32[i87] = parsableNalUnitBitArray.e(c2);
                                    } else {
                                        parsableNalUnitBitArray.j(c2);
                                    }
                                }
                            } else {
                                immutableList = i76;
                                zArr = zArr16;
                            }
                            i87++;
                            i76 = immutableList;
                            zArr16 = zArr;
                        }
                        ImmutableList immutableList2 = i76;
                        boolean[][] zArr17 = zArr16;
                        if (iArr30[i82] == 1 && iArr2[iArr29[i82]] > 0) {
                            parsableNalUnitBitArray.i();
                        }
                        i82++;
                        i76 = immutableList2;
                        zArr16 = zArr17;
                        i81 = 2;
                    }
                    ImmutableList immutableList3 = i76;
                    boolean[][] zArr18 = zArr16;
                    if (i83 == 0) {
                        return new H265VpsData(null, h265ProfileTierLevelsAndIndices, null, null);
                    }
                    int f5 = parsableNalUnitBitArray.f();
                    int i91 = f5 + 1;
                    ImmutableList.Builder l = ImmutableList.l(i91);
                    int[] iArr34 = new int[i22];
                    for (int i92 = 0; i92 < i91; i92 = i9 + 1) {
                        int e6 = parsableNalUnitBitArray.e(16);
                        int e7 = parsableNalUnitBitArray.e(16);
                        if (parsableNalUnitBitArray.d()) {
                            i6 = parsableNalUnitBitArray.e(2);
                            if (i6 == 3) {
                                parsableNalUnitBitArray.i();
                            }
                            i7 = parsableNalUnitBitArray.e(4);
                            i8 = parsableNalUnitBitArray.e(4);
                        } else {
                            i6 = 0;
                            i7 = 0;
                            i8 = 0;
                        }
                        if (parsableNalUnitBitArray.d()) {
                            int f6 = parsableNalUnitBitArray.f();
                            int f7 = parsableNalUnitBitArray.f();
                            int f8 = parsableNalUnitBitArray.f();
                            int f9 = parsableNalUnitBitArray.f();
                            i9 = i92;
                            if (i6 != 1 && i6 != 2) {
                                i10 = 1;
                            } else {
                                i10 = 2;
                            }
                            e6 -= (f6 + f7) * i10;
                            if (i6 == 1) {
                                i11 = 2;
                            } else {
                                i11 = 1;
                            }
                            e7 -= (f8 + f9) * i11;
                        } else {
                            i9 = i92;
                        }
                        l.d(new H265RepFormat(i6, i7, i8, e6, e7));
                    }
                    if (i91 > 1 && parsableNalUnitBitArray.d()) {
                        RoundingMode roundingMode2 = RoundingMode.CEILING;
                        int c3 = DoubleMath.c(i91);
                        for (int i93 = 1; i93 < i22; i93++) {
                            iArr34[i93] = parsableNalUnitBitArray.e(c3);
                        }
                    } else {
                        for (int i94 = 1; i94 < i22; i94++) {
                            iArr34[i94] = Math.min(i94, f5);
                        }
                    }
                    H265RepFormatsAndIndices h265RepFormatsAndIndices = new H265RepFormatsAndIndices(l.i(), iArr34);
                    parsableNalUnitBitArray.j(2);
                    for (int i95 = 1; i95 < i22; i95++) {
                        if (iArr2[iArr23[i95]] == 0) {
                            parsableNalUnitBitArray.i();
                        }
                    }
                    for (int i96 = 1; i96 < f4; i96++) {
                        boolean d13 = parsableNalUnitBitArray.d();
                        for (int i97 = 0; i97 < iArr31[i96]; i97++) {
                            if (i97 > 0 && d13) {
                                z7 = parsableNalUnitBitArray.d();
                            } else if (i97 == 0) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            if (z7) {
                                for (int i98 = 0; i98 < iArr6[i96]; i98++) {
                                    if (zArr18[i96][i98]) {
                                        parsableNalUnitBitArray.f();
                                    }
                                }
                                parsableNalUnitBitArray.f();
                                parsableNalUnitBitArray.f();
                            }
                        }
                    }
                    int f10 = parsableNalUnitBitArray.f() + 2;
                    if (parsableNalUnitBitArray.d()) {
                        parsableNalUnitBitArray.j(f10);
                    } else {
                        for (int i99 = 1; i99 < i22; i99++) {
                            for (int i100 = 0; i100 < i99; i100++) {
                                if (zArr10[i99][i100]) {
                                    parsableNalUnitBitArray.j(f10);
                                }
                            }
                        }
                    }
                    int f11 = parsableNalUnitBitArray.f();
                    for (int i101 = 1; i101 <= f11; i101++) {
                        parsableNalUnitBitArray.j(8);
                    }
                    if (parsableNalUnitBitArray.d()) {
                        int i102 = parsableNalUnitBitArray.e;
                        if (i102 > 0) {
                            parsableNalUnitBitArray.j(8 - i102);
                        }
                        if (!parsableNalUnitBitArray.d()) {
                            z4 = parsableNalUnitBitArray.d();
                        } else {
                            z4 = true;
                        }
                        if (z4) {
                            parsableNalUnitBitArray.i();
                        }
                        boolean d14 = parsableNalUnitBitArray.d();
                        boolean d15 = parsableNalUnitBitArray.d();
                        if (d14 || d15) {
                            for (int i103 = 0; i103 < f; i103++) {
                                for (int i104 = 0; i104 < iArr31[i103]; i104++) {
                                    if (d14) {
                                        z5 = parsableNalUnitBitArray.d();
                                    } else {
                                        z5 = false;
                                    }
                                    if (d15) {
                                        z6 = parsableNalUnitBitArray.d();
                                    } else {
                                        z6 = false;
                                    }
                                    if (z5) {
                                        parsableNalUnitBitArray.j(32);
                                    }
                                    if (z6) {
                                        parsableNalUnitBitArray.j(18);
                                    }
                                }
                            }
                        }
                        boolean d16 = parsableNalUnitBitArray.d();
                        if (d16) {
                            i4 = parsableNalUnitBitArray.e(4) + 1;
                        } else {
                            i4 = i22;
                        }
                        ImmutableList.Builder l2 = ImmutableList.l(i4);
                        int[] iArr35 = new int[i22];
                        for (int i105 = 0; i105 < i4; i105++) {
                            parsableNalUnitBitArray.j(3);
                            if (parsableNalUnitBitArray.d()) {
                                i5 = 1;
                            } else {
                                i5 = 2;
                            }
                            int f12 = ColorInfo.f(parsableNalUnitBitArray.e(8));
                            int g3 = ColorInfo.g(parsableNalUnitBitArray.e(8));
                            parsableNalUnitBitArray.j(8);
                            l2.d(new H265VideoSignalInfo(f12, i5, g3));
                        }
                        if (d16 && i4 > 1) {
                            for (int i106 = 0; i106 < i22; i106++) {
                                iArr35[i106] = parsableNalUnitBitArray.e(4);
                            }
                        }
                        h265VideoSignalInfosAndIndices = new H265VideoSignalInfosAndIndices(l2.i(), iArr35);
                    } else {
                        h265VideoSignalInfosAndIndices = null;
                    }
                    return new H265VpsData(i54, new H265ProfileTierLevelsAndIndices(immutableList3, iArr32), h265RepFormatsAndIndices, h265VideoSignalInfosAndIndices);
                }
                return new H265VpsData(null, h265ProfileTierLevelsAndIndices, null, null);
            }
            return new H265VpsData(null, h265ProfileTierLevelsAndIndices, null, null);
        }
        return new H265VpsData(null, h265ProfileTierLevelsAndIndices, null, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static SpsData k(byte[] bArr, int i, int i2) {
        int f;
        boolean z;
        int f2;
        int i3;
        boolean z2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z3;
        boolean d2;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        float f3;
        int i19;
        int i20;
        int i21;
        boolean d3;
        boolean d4;
        int i22;
        int i23;
        ParsableNalUnitBitArray parsableNalUnitBitArray = new ParsableNalUnitBitArray(bArr, i + 1, i2);
        int e = parsableNalUnitBitArray.e(8);
        int e2 = parsableNalUnitBitArray.e(8);
        int e3 = parsableNalUnitBitArray.e(8);
        int f4 = parsableNalUnitBitArray.f();
        if (e != 100 && e != 110 && e != 122 && e != 244 && e != 44 && e != 83 && e != 86 && e != 118 && e != 128 && e != 138) {
            f = 1;
            i3 = 16;
            i4 = 0;
            z2 = false;
            f2 = 0;
        } else {
            f = parsableNalUnitBitArray.f();
            if (f == 3) {
                z = parsableNalUnitBitArray.d();
            } else {
                z = false;
            }
            int f5 = parsableNalUnitBitArray.f();
            f2 = parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.i();
            if (parsableNalUnitBitArray.d()) {
                if (f != 3) {
                    i5 = 8;
                } else {
                    i5 = 12;
                }
                i3 = 16;
                for (int i24 = 0; i24 < i5; i24++) {
                    if (parsableNalUnitBitArray.d()) {
                        if (i24 < 6) {
                            i6 = 16;
                        } else {
                            i6 = 64;
                        }
                        int i25 = 8;
                        int i26 = 8;
                        for (int i27 = 0; i27 < i6; i27++) {
                            if (i25 != 0) {
                                i25 = ((parsableNalUnitBitArray.g() + i26) + 256) % 256;
                            }
                            if (i25 != 0) {
                                i26 = i25;
                            }
                        }
                    }
                }
            } else {
                i3 = 16;
            }
            z2 = z;
            i4 = f5;
        }
        int f6 = parsableNalUnitBitArray.f() + 4;
        int f7 = parsableNalUnitBitArray.f();
        if (f7 == 0) {
            i10 = parsableNalUnitBitArray.f() + 4;
            i7 = e;
            i8 = f7;
            i9 = f2;
        } else {
            if (f7 == 1) {
                boolean d5 = parsableNalUnitBitArray.d();
                parsableNalUnitBitArray.g();
                parsableNalUnitBitArray.g();
                i7 = e;
                long f8 = parsableNalUnitBitArray.f();
                i8 = f7;
                for (int i28 = 0; i28 < f8; i28++) {
                    parsableNalUnitBitArray.f();
                }
                i9 = f2;
                z3 = d5;
                i10 = 0;
                parsableNalUnitBitArray.f();
                parsableNalUnitBitArray.i();
                int f9 = parsableNalUnitBitArray.f() + 1;
                int f10 = parsableNalUnitBitArray.f() + 1;
                d2 = parsableNalUnitBitArray.d();
                int i29 = 2 - (d2 ? 1 : 0);
                int i30 = f10 * i29;
                if (!d2) {
                    parsableNalUnitBitArray.i();
                }
                parsableNalUnitBitArray.i();
                int i31 = f9 * 16;
                int i32 = i30 * 16;
                if (parsableNalUnitBitArray.d()) {
                    int f11 = parsableNalUnitBitArray.f();
                    int f12 = parsableNalUnitBitArray.f();
                    int f13 = parsableNalUnitBitArray.f();
                    int f14 = parsableNalUnitBitArray.f();
                    if (f == 0) {
                        i22 = 1;
                    } else {
                        if (f == 3) {
                            i22 = 1;
                        } else {
                            i22 = 2;
                        }
                        if (f == 1) {
                            i23 = 2;
                        } else {
                            i23 = 1;
                        }
                        i29 *= i23;
                    }
                    i31 -= (f11 + f12) * i22;
                    i32 -= (f13 + f14) * i29;
                }
                int i33 = i32;
                int i34 = i31;
                i11 = i7;
                if ((i11 != 44 || i11 == 86 || i11 == 100 || i11 == 110 || i11 == 122 || i11 == 244) && (e2 & 16) != 0) {
                    i12 = 0;
                } else {
                    i12 = i3;
                }
                int i35 = -1;
                float f15 = 1.0f;
                if (!parsableNalUnitBitArray.d()) {
                    if (parsableNalUnitBitArray.d()) {
                        int e4 = parsableNalUnitBitArray.e(8);
                        if (e4 == 255) {
                            int i36 = i3;
                            int e5 = parsableNalUnitBitArray.e(i36);
                            int e6 = parsableNalUnitBitArray.e(i36);
                            if (e5 != 0 && e6 != 0) {
                                f15 = e5 / e6;
                            }
                        } else if (e4 < 17) {
                            f15 = b[e4];
                        } else {
                            i13 = f6;
                            q.x("Unexpected aspect_ratio_idc value: ", e4, "NalUnitUtil");
                            if (parsableNalUnitBitArray.d()) {
                                parsableNalUnitBitArray.i();
                            }
                            if (!parsableNalUnitBitArray.d()) {
                                parsableNalUnitBitArray.j(3);
                                if (parsableNalUnitBitArray.d()) {
                                    i20 = 1;
                                } else {
                                    i20 = 2;
                                }
                                if (parsableNalUnitBitArray.d()) {
                                    int e7 = parsableNalUnitBitArray.e(8);
                                    int e8 = parsableNalUnitBitArray.e(8);
                                    parsableNalUnitBitArray.j(8);
                                    i35 = ColorInfo.f(e7);
                                    i21 = ColorInfo.g(e8);
                                } else {
                                    i21 = -1;
                                }
                            } else {
                                i20 = -1;
                                i21 = -1;
                            }
                            if (parsableNalUnitBitArray.d()) {
                                parsableNalUnitBitArray.f();
                                parsableNalUnitBitArray.f();
                            }
                            if (parsableNalUnitBitArray.d()) {
                                parsableNalUnitBitArray.j(65);
                            }
                            d3 = parsableNalUnitBitArray.d();
                            if (d3) {
                                l(parsableNalUnitBitArray);
                            }
                            d4 = parsableNalUnitBitArray.d();
                            if (d4) {
                                l(parsableNalUnitBitArray);
                            }
                            if (!d3 || d4) {
                                parsableNalUnitBitArray.i();
                            }
                            parsableNalUnitBitArray.i();
                            if (parsableNalUnitBitArray.d()) {
                                parsableNalUnitBitArray.i();
                                parsableNalUnitBitArray.f();
                                parsableNalUnitBitArray.f();
                                parsableNalUnitBitArray.f();
                                parsableNalUnitBitArray.f();
                                i12 = parsableNalUnitBitArray.f();
                                parsableNalUnitBitArray.f();
                            }
                            int i37 = i35;
                            i18 = i10;
                            f3 = f15;
                            i19 = i37;
                            i16 = i20;
                            i17 = i21;
                            i14 = i9;
                            i15 = i12;
                        }
                    }
                    i13 = f6;
                    if (parsableNalUnitBitArray.d()) {
                    }
                    if (!parsableNalUnitBitArray.d()) {
                    }
                    if (parsableNalUnitBitArray.d()) {
                    }
                    if (parsableNalUnitBitArray.d()) {
                    }
                    d3 = parsableNalUnitBitArray.d();
                    if (d3) {
                    }
                    d4 = parsableNalUnitBitArray.d();
                    if (d4) {
                    }
                    if (!d3) {
                    }
                    parsableNalUnitBitArray.i();
                    parsableNalUnitBitArray.i();
                    if (parsableNalUnitBitArray.d()) {
                    }
                    int i372 = i35;
                    i18 = i10;
                    f3 = f15;
                    i19 = i372;
                    i16 = i20;
                    i17 = i21;
                    i14 = i9;
                    i15 = i12;
                } else {
                    i13 = f6;
                    i14 = i9;
                    i15 = i12;
                    i16 = -1;
                    i17 = -1;
                    i18 = i10;
                    f3 = 1.0f;
                    i19 = -1;
                }
                return new SpsData(i11, e2, e3, f4, i34, i33, f3, i4, i14, z2, d2, i13, i8, i18, z3, i19, i16, i17, i15);
            }
            i7 = e;
            i8 = f7;
            i9 = f2;
            i10 = 0;
        }
        z3 = false;
        parsableNalUnitBitArray.f();
        parsableNalUnitBitArray.i();
        int f92 = parsableNalUnitBitArray.f() + 1;
        int f102 = parsableNalUnitBitArray.f() + 1;
        d2 = parsableNalUnitBitArray.d();
        int i292 = 2 - (d2 ? 1 : 0);
        int i302 = f102 * i292;
        if (!d2) {
        }
        parsableNalUnitBitArray.i();
        int i312 = f92 * 16;
        int i322 = i302 * 16;
        if (parsableNalUnitBitArray.d()) {
        }
        int i332 = i322;
        int i342 = i312;
        i11 = i7;
        if (i11 != 44) {
        }
        i12 = 0;
        int i352 = -1;
        float f152 = 1.0f;
        if (!parsableNalUnitBitArray.d()) {
        }
        return new SpsData(i11, e2, e3, f4, i342, i332, f3, i4, i14, z2, d2, i13, i8, i18, z3, i19, i16, i17, i15);
    }

    public static void l(ParsableNalUnitBitArray parsableNalUnitBitArray) {
        int f = parsableNalUnitBitArray.f() + 1;
        parsableNalUnitBitArray.j(8);
        for (int i = 0; i < f; i++) {
            parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.f();
            parsableNalUnitBitArray.i();
        }
        parsableNalUnitBitArray.j(20);
    }

    public static int m(int i, byte[] bArr) {
        int i2;
        synchronized (c) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    if (i3 < i - 2) {
                        try {
                            if (bArr[i3] == 0 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 3) {
                                break;
                            }
                            i3++;
                        } catch (Throwable th) {
                            throw th;
                        }
                    } else {
                        i3 = i;
                        break;
                    }
                }
                if (i3 < i) {
                    int[] iArr = d;
                    if (iArr.length <= i4) {
                        d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    d[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = d[i7] - i6;
                System.arraycopy(bArr, i6, bArr, i5, i8);
                int i9 = i5 + i8;
                int i10 = i9 + 1;
                bArr[i9] = 0;
                i5 = i9 + 2;
                bArr[i10] = 0;
                i6 += i8 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i5, i2 - i5);
        }
        return i2;
    }
}
