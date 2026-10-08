package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.u2;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableScatterMap<K, V> extends ScatterMap<K, V> {
    public int f;

    public MutableScatterMap(int i) {
        boolean z;
        this.a = ScatterMapKt.a;
        Object[] objArr = ContainerHelpersKt.c;
        this.b = objArr;
        this.c = objArr;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            k(ScatterMapKt.d(i));
        } else {
            u2.g("Capacity must be a positive value.");
            throw null;
        }
    }

    public final void h() {
        this.e = 0;
        long[] jArr = this.a;
        if (jArr != ScatterMapKt.a) {
            ArraysKt.n(jArr, -9187201950435737472L);
            long[] jArr2 = this.a;
            int i = this.d;
            int i2 = i >> 3;
            long j = 255 << ((i & 7) << 3);
            jArr2[i2] = (jArr2[i2] & (~j)) | j;
        }
        ArraysKt.m(0, this.d, null, this.c);
        ArraysKt.m(0, this.d, null, this.b);
        this.f = ScatterMapKt.a(this.d) - this.e;
    }

    public final int i(int i) {
        int i2 = this.d;
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

    public final int j(Object obj) {
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
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        int i5 = -862048943;
        int i6 = i * (-862048943);
        int i7 = i6 ^ (i6 << 16);
        int i8 = i7 >>> 7;
        int i9 = i7 & 127;
        int i10 = this.d;
        int i11 = i8 & i10;
        int i12 = 0;
        while (true) {
            long[] jArr3 = this.a;
            int i13 = i11 >> 3;
            int i14 = (i11 & 7) << 3;
            long j4 = ((jArr3[i13 + 1] << (64 - i14)) & ((-i14) >> 63)) | (jArr3[i13] >>> i14);
            long j5 = i9;
            int i15 = i9;
            int i16 = 0;
            long j6 = j4 ^ (j5 * 72340172838076673L);
            long j7 = (~j6) & (j6 - 72340172838076673L) & (-9187201950435737472L);
            while (j7 != 0) {
                int numberOfTrailingZeros = (i11 + (Long.numberOfTrailingZeros(j7) >> 3)) & i10;
                int i17 = i5;
                if (Intrinsics.a(this.b[numberOfTrailingZeros], obj)) {
                    return numberOfTrailingZeros;
                }
                j7 &= j7 - 1;
                i5 = i17;
            }
            int i18 = i5;
            if ((((~j4) << 6) & j4 & (-9187201950435737472L)) != 0) {
                int i19 = i(i8);
                long j8 = 255;
                if (this.f != 0 || ((this.a[i19 >> 3] >> ((i19 & 7) << 3)) & 255) == 254) {
                    j = 255;
                    j2 = j5;
                    j3 = 128;
                } else {
                    int i20 = this.d;
                    if (i20 > 8) {
                        int i21 = 8;
                        if (Long.compareUnsigned(this.e * 32, i20 * 25) <= 0) {
                            long[] jArr4 = this.a;
                            int i22 = this.d;
                            Object[] objArr2 = this.b;
                            Object[] objArr3 = this.c;
                            j3 = 128;
                            int i23 = (i22 + 7) >> 3;
                            int i24 = 0;
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
                            jArr4[i26] = (jArr4[i26] & 72057594037927935L) | (-72057594037927936L);
                            jArr4[s] = jArr4[0];
                            int i27 = 0;
                            while (i27 != i22) {
                                int i28 = i27 >> 3;
                                int i29 = (i27 & 7) << 3;
                                long j11 = (jArr4[i28] >> i29) & j;
                                if (j11 == 128 || j11 != 254) {
                                    i27++;
                                } else {
                                    Object obj2 = objArr2[i27];
                                    if (obj2 != null) {
                                        i3 = obj2.hashCode();
                                    } else {
                                        i3 = 0;
                                    }
                                    int i30 = i3 * i18;
                                    int i31 = (i30 ^ (i30 << 16)) >>> 7;
                                    int i32 = i(i31);
                                    int i33 = i31 & i22;
                                    if (((i32 - i33) & i22) / i25 == ((i27 - i33) & i22) / i25) {
                                        jArr4[i28] = ((r8 & 127) << i29) | (jArr4[i28] & (~(j << i29)));
                                        jArr4[jArr4.length - 1] = jArr4[0];
                                        i27++;
                                        i25 = i25;
                                    } else {
                                        int i34 = i25;
                                        int i35 = i32 >> 3;
                                        long j12 = jArr4[i35];
                                        int i36 = (i32 & 7) << 3;
                                        if (((j12 >> i36) & j) == 128) {
                                            i4 = i22;
                                            objArr = objArr2;
                                            jArr4[i35] = ((~(j << i36)) & j12) | ((r8 & 127) << i36);
                                            jArr4[i28] = (jArr4[i28] & (~(j << i29))) | (128 << i29);
                                            objArr[i32] = objArr[i27];
                                            objArr[i27] = null;
                                            objArr3[i32] = objArr3[i27];
                                            objArr3[i27] = null;
                                        } else {
                                            i4 = i22;
                                            objArr = objArr2;
                                            jArr4[i35] = ((r8 & 127) << i36) | ((~(j << i36)) & j12);
                                            Object obj3 = objArr[i32];
                                            objArr[i32] = objArr[i27];
                                            objArr[i27] = obj3;
                                            Object obj4 = objArr3[i32];
                                            objArr3[i32] = objArr3[i27];
                                            objArr3[i27] = obj4;
                                            i27--;
                                        }
                                        jArr4[jArr4.length - 1] = jArr4[0];
                                        i27++;
                                        i25 = i34;
                                        i22 = i4;
                                        objArr2 = objArr;
                                    }
                                }
                            }
                            this.f = ScatterMapKt.a(this.d) - this.e;
                            i19 = i(i8);
                        }
                    }
                    j = 255;
                    j2 = j5;
                    j3 = 128;
                    int b = ScatterMapKt.b(this.d);
                    long[] jArr5 = this.a;
                    Object[] objArr4 = this.b;
                    Object[] objArr5 = this.c;
                    int i37 = this.d;
                    k(b);
                    long[] jArr6 = this.a;
                    Object[] objArr6 = this.b;
                    Object[] objArr7 = this.c;
                    int i38 = this.d;
                    int i39 = 0;
                    while (i39 < i37) {
                        if (((jArr5[i39 >> 3] >> ((i39 & 7) << 3)) & 255) < 128) {
                            Object obj5 = objArr4[i39];
                            if (obj5 != null) {
                                i2 = obj5.hashCode();
                            } else {
                                i2 = 0;
                            }
                            int i40 = i2 * i18;
                            int i41 = i40 ^ (i40 << 16);
                            int i42 = i(i41 >>> 7);
                            jArr = jArr6;
                            jArr2 = jArr5;
                            long j13 = i41 & 127;
                            int i43 = i42 >> 3;
                            int i44 = (i42 & 7) << 3;
                            long j14 = (jArr[i43] & (~(255 << i44))) | (j13 << i44);
                            jArr[i43] = j14;
                            jArr[(((i42 - 7) & i38) + (i38 & 7)) >> 3] = j14;
                            objArr6[i42] = obj5;
                            objArr7[i42] = objArr5[i39];
                        } else {
                            jArr = jArr6;
                            jArr2 = jArr5;
                        }
                        i39++;
                        jArr5 = jArr2;
                        jArr6 = jArr;
                    }
                    i19 = i(i8);
                }
                this.e++;
                int i45 = this.f;
                long[] jArr7 = this.a;
                int i46 = i19 >> 3;
                long j15 = jArr7[i46];
                int i47 = (i19 & 7) << 3;
                if (((j15 >> i47) & j) == j3) {
                    i16 = 1;
                }
                this.f = i45 - i16;
                int i48 = this.d;
                long j16 = (j15 & (~(j << i47))) | (j2 << i47);
                jArr7[i46] = j16;
                jArr7[(((i19 - 7) & i48) + (i48 & 7)) >> 3] = j16;
                return ~i19;
            }
            i12 += 8;
            i11 = (i11 + i12) & i10;
            i9 = i15;
            i5 = i18;
        }
    }

    public final void k(int i) {
        int i2;
        long[] jArr;
        Object[] objArr;
        if (i > 0) {
            i2 = Math.max(7, ScatterMapKt.c(i));
        } else {
            i2 = 0;
        }
        this.d = i2;
        if (i2 == 0) {
            jArr = ScatterMapKt.a;
        } else {
            int i3 = ((i2 + 15) & (-8)) >> 3;
            long[] jArr2 = new long[i3];
            Arrays.fill(jArr2, 0, i3, -9187201950435737472L);
            int i4 = i2 >> 3;
            long j = 255 << ((i2 & 7) << 3);
            jArr2[i4] = (jArr2[i4] & (~j)) | j;
            jArr = jArr2;
        }
        this.a = jArr;
        this.f = ScatterMapKt.a(this.d) - this.e;
        Object[] objArr2 = ContainerHelpersKt.c;
        if (i2 == 0) {
            objArr = objArr2;
        } else {
            objArr = new Object[i2];
        }
        this.b = objArr;
        if (i2 != 0) {
            objArr2 = new Object[i2];
        }
        this.c = objArr2;
    }

    public final void l(ScatterMap scatterMap) {
        scatterMap.getClass();
        Object[] objArr = scatterMap.b;
        Object[] objArr2 = scatterMap.c;
        long[] jArr = scatterMap.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            o(objArr[i4], objArr2[i4]);
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

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
    
        if (((r4 & ((~r4) << 6)) & (-9187201950435737472L)) == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006a, code lost:
    
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m(Object obj) {
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
        int i7 = this.d;
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
                }
                j3 &= j3 - 1;
            }
            i3 += 8;
            i8 = i9 + i3;
        }
        if (i2 >= 0) {
            return n(i2);
        }
        return null;
    }

    public final Object n(int i) {
        this.e--;
        long[] jArr = this.a;
        int i2 = this.d;
        int i3 = i >> 3;
        int i4 = (i & 7) << 3;
        long j = (jArr[i3] & (~(255 << i4))) | (254 << i4);
        jArr[i3] = j;
        jArr[(((i - 7) & i2) + (i2 & 7)) >> 3] = j;
        this.b[i] = null;
        Object[] objArr = this.c;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    public final void o(Object obj, Object obj2) {
        int j = j(obj);
        if (j < 0) {
            j = ~j;
        }
        this.b[j] = obj;
        this.c[j] = obj2;
    }

    public /* synthetic */ MutableScatterMap() {
        this(6);
    }
}
