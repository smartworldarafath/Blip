package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.u2;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableObjectIntMap<K> extends ObjectIntMap<K> {
    public int f;

    public MutableObjectIntMap(int i) {
        boolean z;
        this.a = ScatterMapKt.a;
        this.b = ContainerHelpersKt.c;
        this.c = IntSetKt.a;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            e(ScatterMapKt.d(i));
        } else {
            u2.g("Capacity must be a positive value.");
            throw null;
        }
    }

    public final void b() {
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
        ArraysKt.m(0, this.d, null, this.b);
        this.f = ScatterMapKt.a(this.d) - this.e;
    }

    public final int c(int i) {
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

    public final int d(Object obj) {
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
                int c = c(i8);
                long j8 = 255;
                if (this.f != 0 || ((this.a[c >> 3] >> ((c & 7) << 3)) & 255) == 254) {
                    j = 255;
                    j2 = j5;
                    j3 = 128;
                } else {
                    int i19 = this.d;
                    if (i19 > 8) {
                        int i20 = 8;
                        if (Long.compareUnsigned(this.e * 32, i19 * 25) <= 0) {
                            long[] jArr4 = this.a;
                            int i21 = this.d;
                            Object[] objArr2 = this.b;
                            int[] iArr = this.c;
                            j3 = 128;
                            int i22 = (i21 + 7) >> 3;
                            int i23 = 0;
                            while (i23 < i22) {
                                long j9 = j8;
                                long j10 = jArr4[i23] & (-9187201950435737472L);
                                jArr4[i23] = (-72340172838076674L) & ((~j10) + (j10 >>> 7));
                                i23++;
                                i20 = i20;
                                j5 = j5;
                                j8 = j9;
                            }
                            j = j8;
                            j2 = j5;
                            int i24 = i20;
                            int s = ArraysKt.s(jArr4);
                            int i25 = s - 1;
                            long j11 = 72057594037927935L;
                            jArr4[i25] = (jArr4[i25] & 72057594037927935L) | (-72057594037927936L);
                            jArr4[s] = jArr4[0];
                            int i26 = 0;
                            while (i26 != i21) {
                                int i27 = i26 >> 3;
                                int i28 = (i26 & 7) << 3;
                                long j12 = (jArr4[i27] >> i28) & j;
                                if (j12 == 128 || j12 != 254) {
                                    i26++;
                                } else {
                                    Object obj2 = objArr2[i26];
                                    if (obj2 != null) {
                                        i3 = obj2.hashCode();
                                    } else {
                                        i3 = 0;
                                    }
                                    int i29 = i3 * i18;
                                    int i30 = (i29 ^ (i29 << 16)) >>> 7;
                                    int c2 = c(i30);
                                    int i31 = i30 & i21;
                                    long j13 = j11;
                                    if (((c2 - i31) & i21) / 8 == ((i26 - i31) & i21) / i24) {
                                        jArr4[i27] = ((r8 & 127) << i28) | (jArr4[i27] & (~(j << i28)));
                                        jArr4[jArr4.length - 1] = (jArr4[0] & j13) | Long.MIN_VALUE;
                                        i26++;
                                        i24 = i24;
                                        j11 = j13;
                                    } else {
                                        int i32 = i24;
                                        int i33 = c2 >> 3;
                                        long j14 = jArr4[i33];
                                        int i34 = (c2 & 7) << 3;
                                        if (((j14 >> i34) & j) == 128) {
                                            i4 = i21;
                                            objArr = objArr2;
                                            jArr4[i33] = ((~(j << i34)) & j14) | ((r8 & 127) << i34);
                                            jArr4[i27] = (jArr4[i27] & (~(j << i28))) | (128 << i28);
                                            objArr[c2] = objArr[i26];
                                            objArr[i26] = null;
                                            iArr[c2] = iArr[i26];
                                            iArr[i26] = 0;
                                        } else {
                                            i4 = i21;
                                            objArr = objArr2;
                                            jArr4[i33] = ((r8 & 127) << i34) | ((~(j << i34)) & j14);
                                            Object obj3 = objArr[c2];
                                            objArr[c2] = objArr[i26];
                                            objArr[i26] = obj3;
                                            int i35 = iArr[c2];
                                            iArr[c2] = iArr[i26];
                                            iArr[i26] = i35;
                                            i26--;
                                        }
                                        jArr4[jArr4.length - 1] = (jArr4[0] & j13) | Long.MIN_VALUE;
                                        i26++;
                                        i21 = i4;
                                        i24 = i32;
                                        j11 = j13;
                                        objArr2 = objArr;
                                    }
                                }
                            }
                            this.f = ScatterMapKt.a(this.d) - this.e;
                            c = c(i8);
                        }
                    }
                    j = 255;
                    j2 = j5;
                    j3 = 128;
                    int b = ScatterMapKt.b(this.d);
                    long[] jArr5 = this.a;
                    Object[] objArr3 = this.b;
                    int[] iArr2 = this.c;
                    int i36 = this.d;
                    e(b);
                    long[] jArr6 = this.a;
                    Object[] objArr4 = this.b;
                    int[] iArr3 = this.c;
                    int i37 = this.d;
                    int i38 = 0;
                    while (i38 < i36) {
                        if (((jArr5[i38 >> 3] >> ((i38 & 7) << 3)) & 255) < 128) {
                            Object obj4 = objArr3[i38];
                            if (obj4 != null) {
                                i2 = obj4.hashCode();
                            } else {
                                i2 = 0;
                            }
                            int i39 = i2 * i18;
                            int i40 = i39 ^ (i39 << 16);
                            int c3 = c(i40 >>> 7);
                            jArr = jArr6;
                            jArr2 = jArr5;
                            long j15 = i40 & 127;
                            int i41 = c3 >> 3;
                            int i42 = (c3 & 7) << 3;
                            long j16 = (jArr[i41] & (~(255 << i42))) | (j15 << i42);
                            jArr[i41] = j16;
                            jArr[(((c3 - 7) & i37) + (i37 & 7)) >> 3] = j16;
                            objArr4[c3] = obj4;
                            iArr3[c3] = iArr2[i38];
                        } else {
                            jArr = jArr6;
                            jArr2 = jArr5;
                        }
                        i38++;
                        jArr5 = jArr2;
                        jArr6 = jArr;
                    }
                    c = c(i8);
                }
                this.e++;
                int i43 = this.f;
                long[] jArr7 = this.a;
                int i44 = c >> 3;
                long j17 = jArr7[i44];
                int i45 = (c & 7) << 3;
                if (((j17 >> i45) & j) == j3) {
                    i16 = 1;
                }
                this.f = i43 - i16;
                int i46 = this.d;
                long j18 = (j17 & (~(j << i45))) | (j2 << i45);
                jArr7[i44] = j18;
                jArr7[(((c - 7) & i46) + (i46 & 7)) >> 3] = j18;
                return ~c;
            }
            i12 += 8;
            i11 = (i11 + i12) & i10;
            i9 = i15;
            i5 = i18;
        }
    }

    public final void e(int i) {
        int i2;
        long[] jArr;
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
            jArr = jArr2;
        }
        this.a = jArr;
        int i4 = i2 >> 3;
        long j = 255 << ((i2 & 7) << 3);
        jArr[i4] = (jArr[i4] & (~j)) | j;
        this.f = ScatterMapKt.a(this.d) - this.e;
        this.b = new Object[i2];
        this.c = new int[i2];
    }

    public final void f(int i) {
        this.e--;
        long[] jArr = this.a;
        int i2 = this.d;
        int i3 = i >> 3;
        int i4 = (i & 7) << 3;
        long j = (jArr[i3] & (~(255 << i4))) | (254 << i4);
        jArr[i3] = j;
        jArr[(((i - 7) & i2) + (i2 & 7)) >> 3] = j;
        this.b[i] = null;
    }

    public final void g(int i, Object obj) {
        int d = d(obj);
        if (d < 0) {
            d = ~d;
        }
        this.b[d] = obj;
        this.c[d] = i;
    }

    public /* synthetic */ MutableObjectIntMap() {
        this(6);
    }
}
