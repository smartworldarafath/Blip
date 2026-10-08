package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.u2;
import java.util.Arrays;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableScatterSet<E> extends ScatterSet<E> {
    public int e;

    public MutableScatterSet(int i) {
        this.a = ScatterMapKt.a;
        this.b = ContainerHelpersKt.c;
        if (i >= 0) {
            i(ScatterMapKt.d(i));
        } else {
            u2.g("Capacity must be a positive value.");
            throw null;
        }
    }

    public final boolean d(Object obj) {
        int i = this.d;
        this.b[g(obj)] = obj;
        if (this.d != i) {
            return true;
        }
        return false;
    }

    public final Set e() {
        return new MutableSetWrapper(this);
    }

    public final void f() {
        this.d = 0;
        long[] jArr = this.a;
        if (jArr != ScatterMapKt.a) {
            ArraysKt.n(jArr, -9187201950435737472L);
            long[] jArr2 = this.a;
            int i = this.c;
            int i2 = i >> 3;
            long j = 255 << ((i & 7) << 3);
            jArr2[i2] = (jArr2[i2] & (~j)) | j;
        }
        ArraysKt.m(0, this.c, null, this.b);
        this.e = ScatterMapKt.a(this.c) - this.d;
    }

    public final int g(Object obj) {
        int i;
        long j;
        long j2;
        long j3;
        long[] jArr;
        long[] jArr2;
        int i2;
        int i3;
        int i4;
        Object[] objArr;
        int i5;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        int i6 = -862048943;
        int i7 = i * (-862048943);
        int i8 = i7 ^ (i7 << 16);
        int i9 = i8 >>> 7;
        int i10 = i8 & 127;
        int i11 = this.c;
        int i12 = i9 & i11;
        int i13 = 0;
        while (true) {
            long[] jArr3 = this.a;
            int i14 = i12 >> 3;
            int i15 = (i12 & 7) << 3;
            long j4 = ((jArr3[i14 + 1] << (64 - i15)) & ((-i15) >> 63)) | (jArr3[i14] >>> i15);
            long j5 = i10;
            int i16 = i10;
            int i17 = 0;
            long j6 = j4 ^ (j5 * 72340172838076673L);
            long j7 = (~j6) & (j6 - 72340172838076673L) & (-9187201950435737472L);
            while (j7 != 0) {
                int numberOfTrailingZeros = (i12 + (Long.numberOfTrailingZeros(j7) >> 3)) & i11;
                int i18 = i6;
                if (Intrinsics.a(this.b[numberOfTrailingZeros], obj)) {
                    return numberOfTrailingZeros;
                }
                j7 &= j7 - 1;
                i6 = i18;
            }
            int i19 = i6;
            if ((((~j4) << 6) & j4 & (-9187201950435737472L)) != 0) {
                int h = h(i9);
                long j8 = 255;
                if (this.e != 0 || ((this.a[h >> 3] >> ((h & 7) << 3)) & 255) == 254) {
                    j = 255;
                    j2 = j5;
                    j3 = 128;
                } else {
                    int i20 = this.c;
                    if (i20 > 8) {
                        int i21 = 8;
                        if (Long.compareUnsigned(this.d * 32, i20 * 25) <= 0) {
                            long[] jArr4 = this.a;
                            int i22 = this.c;
                            Object[] objArr2 = this.b;
                            int i23 = (i22 + 7) >> 3;
                            int i24 = 0;
                            j3 = 128;
                            while (i24 < i23) {
                                long j9 = j8;
                                long j10 = jArr4[i24] & (-9187201950435737472L);
                                jArr4[i24] = (-72340172838076674L) & ((~j10) + (j10 >>> 7));
                                i24++;
                                i21 = i21;
                                j5 = j5;
                                j8 = j9;
                            }
                            j = j8;
                            j2 = j5;
                            int i25 = i21;
                            int s = ArraysKt.s(jArr4);
                            int i26 = s - 1;
                            long j11 = 72057594037927935L;
                            jArr4[i26] = (jArr4[i26] & 72057594037927935L) | (-72057594037927936L);
                            jArr4[s] = jArr4[0];
                            int i27 = 0;
                            while (i27 != i22) {
                                int i28 = i27 >> 3;
                                int i29 = (i27 & 7) << 3;
                                long j12 = (jArr4[i28] >> i29) & j;
                                if (j12 == 128 || j12 != 254) {
                                    i27++;
                                } else {
                                    Object obj2 = objArr2[i27];
                                    if (obj2 != null) {
                                        i3 = obj2.hashCode();
                                    } else {
                                        i3 = 0;
                                    }
                                    int i30 = i3 * i19;
                                    int i31 = (i30 ^ (i30 << 16)) >>> 7;
                                    int h2 = h(i31);
                                    int i32 = i31 & i22;
                                    if (((h2 - i32) & i22) / i25 == ((i27 - i32) & i22) / i25) {
                                        long j13 = j11;
                                        jArr4[i28] = ((r7 & 127) << i29) | ((~(j << i29)) & jArr4[i28]);
                                        jArr4[jArr4.length - 1] = (jArr4[0] & j13) | Long.MIN_VALUE;
                                        i27++;
                                        j11 = j13;
                                    } else {
                                        long j14 = j11;
                                        int i33 = h2 >> 3;
                                        long j15 = jArr4[i33];
                                        int i34 = (h2 & 7) << 3;
                                        if (((j15 >> i34) & j) == 128) {
                                            i5 = i25;
                                            i4 = i22;
                                            objArr = objArr2;
                                            jArr4[i33] = ((~(j << i34)) & j15) | ((r7 & 127) << i34);
                                            jArr4[i28] = (jArr4[i28] & (~(j << i29))) | (128 << i29);
                                            objArr[h2] = objArr[i27];
                                            objArr[i27] = null;
                                        } else {
                                            i4 = i22;
                                            objArr = objArr2;
                                            i5 = i25;
                                            jArr4[i33] = ((r7 & 127) << i34) | ((~(j << i34)) & j15);
                                            Object obj3 = objArr[h2];
                                            objArr[h2] = objArr[i27];
                                            objArr[i27] = obj3;
                                            i27--;
                                        }
                                        jArr4[jArr4.length - 1] = (jArr4[0] & j14) | Long.MIN_VALUE;
                                        i27++;
                                        j11 = j14;
                                        i25 = i5;
                                        i22 = i4;
                                        objArr2 = objArr;
                                    }
                                }
                            }
                            this.e = ScatterMapKt.a(this.c) - this.d;
                            h = h(i9);
                        }
                    }
                    j = 255;
                    j2 = j5;
                    j3 = 128;
                    int b = ScatterMapKt.b(this.c);
                    long[] jArr5 = this.a;
                    Object[] objArr3 = this.b;
                    int i35 = this.c;
                    i(b);
                    long[] jArr6 = this.a;
                    Object[] objArr4 = this.b;
                    int i36 = this.c;
                    int i37 = 0;
                    while (i37 < i35) {
                        if (((jArr5[i37 >> 3] >> ((i37 & 7) << 3)) & 255) < 128) {
                            Object obj4 = objArr3[i37];
                            if (obj4 != null) {
                                i2 = obj4.hashCode();
                            } else {
                                i2 = 0;
                            }
                            int i38 = i2 * i19;
                            int i39 = i38 ^ (i38 << 16);
                            int h3 = h(i39 >>> 7);
                            long j16 = i39 & 127;
                            int i40 = h3 >> 3;
                            int i41 = (h3 & 7) << 3;
                            jArr = jArr6;
                            jArr2 = jArr5;
                            long j17 = (jArr6[i40] & (~(255 << i41))) | (j16 << i41);
                            jArr[i40] = j17;
                            jArr[(((h3 - 7) & i36) + (i36 & 7)) >> 3] = j17;
                            objArr4[h3] = obj4;
                        } else {
                            jArr = jArr6;
                            jArr2 = jArr5;
                        }
                        i37++;
                        jArr5 = jArr2;
                        jArr6 = jArr;
                    }
                    h = h(i9);
                }
                this.d++;
                int i42 = this.e;
                long[] jArr7 = this.a;
                int i43 = h >> 3;
                long j18 = jArr7[i43];
                int i44 = (h & 7) << 3;
                if (((j18 >> i44) & j) == j3) {
                    i17 = 1;
                }
                this.e = i42 - i17;
                int i45 = this.c;
                long j19 = (j18 & (~(j << i44))) | (j2 << i44);
                jArr7[i43] = j19;
                jArr7[(((h - 7) & i45) + (i45 & 7)) >> 3] = j19;
                return h;
            }
            i13 += 8;
            i12 = (i12 + i13) & i11;
            i10 = i16;
            i6 = i19;
        }
    }

    public final int h(int i) {
        int i2 = this.c;
        int i3 = i & i2;
        int i4 = 0;
        while (true) {
            long[] jArr = this.a;
            int i5 = i3 >> 3;
            int i6 = (i3 & 7) << 3;
            long j = ((jArr[i5 + 1] << (64 - i6)) & ((-i6) >> 63)) | (jArr[i5] >>> i6);
            long j2 = j & ((~j) << 7) & (-9187201950435737472L);
            if (j2 != 0) {
                return (i3 + (Long.numberOfTrailingZeros(j2) >> 3)) & i2;
            }
            i4 += 8;
            i3 = (i3 + i4) & i2;
        }
    }

    public final void i(int i) {
        int i2;
        long[] jArr;
        Object[] objArr;
        if (i > 0) {
            i2 = Math.max(7, ScatterMapKt.c(i));
        } else {
            i2 = 0;
        }
        this.c = i2;
        if (i2 == 0) {
            jArr = ScatterMapKt.a;
        } else {
            int i3 = ((i2 + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i3];
            Arrays.fill(jArr2, 0, i3, -9187201950435737472L);
            jArr = jArr2;
        }
        this.a = jArr;
        int i4 = i2 >> 3;
        long j = 255 << ((i2 & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j)) | j;
        this.e = ScatterMapKt.a(this.c) - this.d;
        if (i2 == 0) {
            objArr = ContainerHelpersKt.c;
        } else {
            objArr = new Object[i2];
        }
        this.b = objArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006a, code lost:
    
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j(Object obj) {
        int i;
        int i2;
        int i3 = 0;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        int i4 = i * (-862048943);
        int i5 = i4 ^ (i4 << 16);
        int i6 = i5 & 127;
        int i7 = this.c;
        int i8 = i5 >>> 7;
        loop0: while (true) {
            int i9 = i8 & i7;
            long[] jArr = this.a;
            int i10 = i9 >> 3;
            int i11 = (i9 & 7) << 3;
            long j = ((jArr[i10 + 1] << (64 - i11)) & ((-i11) >> 63)) | (jArr[i10] >>> i11);
            long j2 = (i6 * 72340172838076673L) ^ j;
            long j3 = (~j2) & (j2 - 72340172838076673L) & (-9187201950435737472L);
            while (true) {
                if (j3 == 0) {
                    break;
                }
                i2 = ((Long.numberOfTrailingZeros(j3) >> 3) + i9) & i7;
                if (Intrinsics.a(this.b[i2], obj)) {
                    break loop0;
                } else {
                    j3 &= j3 - 1;
                }
            }
            i3 += 8;
            i8 = i9 + i3;
        }
        if (i2 >= 0) {
            n(i2);
        }
    }

    public final void k(ScatterSet scatterSet) {
        scatterSet.getClass();
        Object[] objArr = scatterSet.b;
        long[] jArr = scatterSet.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            l(objArr[(i << 3) + i3]);
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public final void l(Object obj) {
        this.b[g(obj)] = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x006d, code lost:
    
        if (((r7 & ((~r7) << 6)) & (-9187201950435737472L)) == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006f, code lost:
    
        r11 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean m(Object obj) {
        int i;
        int i2;
        boolean z = false;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        int i3 = i * (-862048943);
        int i4 = i3 ^ (i3 << 16);
        int i5 = i4 & 127;
        int i6 = this.c;
        int i7 = (i4 >>> 7) & i6;
        int i8 = 0;
        loop0: while (true) {
            long[] jArr = this.a;
            int i9 = i7 >> 3;
            int i10 = (i7 & 7) << 3;
            long j = ((jArr[i9 + 1] << (64 - i10)) & ((-i10) >> 63)) | (jArr[i9] >>> i10);
            long j2 = (i5 * 72340172838076673L) ^ j;
            long j3 = (~j2) & (j2 - 72340172838076673L) & (-9187201950435737472L);
            while (true) {
                if (j3 == 0) {
                    break;
                }
                i2 = ((Long.numberOfTrailingZeros(j3) >> 3) + i7) & i6;
                if (Intrinsics.a(this.b[i2], obj)) {
                    break loop0;
                }
                j3 &= j3 - 1;
            }
            i8 += 8;
            i7 = (i7 + i8) & i6;
        }
        if (i2 >= 0) {
            z = true;
        }
        if (z) {
            n(i2);
        }
        return z;
    }

    public final void n(int i) {
        this.d--;
        long[] jArr = this.a;
        int i2 = this.c;
        int i3 = i >> 3;
        int i4 = (i & 7) << 3;
        long j = (jArr[i3] & (~(255 << i4))) | (254 << i4);
        jArr[i3] = j;
        jArr[(((i - 7) & i2) + (i2 & 7)) >> 3] = j;
        this.b[i] = null;
    }

    public /* synthetic */ MutableScatterSet() {
        this(6);
    }
}
