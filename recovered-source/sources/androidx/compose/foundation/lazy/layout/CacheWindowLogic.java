package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntIntMapKt;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.foundation.lazy.layout.CachedItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.pager.PagerState$pagerCacheWindow$1;
import androidx.compose.ui.util.AndroidTrace_androidKt;
import defpackage.w4;
import java.util.List;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CacheWindowLogic {
    public final PagerState$pagerCacheWindow$1 a;
    public final MutableIntObjectMap b;
    public final MutableIntSet c;
    public final MutableIntIntMap d;
    public final MutableIntObjectMap e;
    public float f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public boolean l;
    public int m;

    public CacheWindowLogic(PagerState$pagerCacheWindow$1 pagerState$pagerCacheWindow$1) {
        this.a = pagerState$pagerCacheWindow$1;
        MutableIntObjectMap mutableIntObjectMap = IntObjectMapKt.a;
        this.b = new MutableIntObjectMap();
        this.c = new MutableIntSet();
        int i = IntIntMapKt.a;
        this.d = new MutableIntIntMap();
        this.e = new MutableIntObjectMap();
        this.g = -1;
        this.h = Integer.MAX_VALUE;
        this.i = Integer.MIN_VALUE;
    }

    public final int a(CacheWindowScope cacheWindowScope, int i, boolean z) {
        List list;
        List list2;
        MutableIntObjectMap mutableIntObjectMap = this.e;
        if (mutableIntObjectMap.a(i)) {
            Object b = mutableIntObjectMap.b(i);
            b.getClass();
            return ((CachedItem) b).b;
        }
        MutableIntObjectMap mutableIntObjectMap2 = this.b;
        int i2 = 0;
        if (mutableIntObjectMap2.a(i)) {
            if (z && (list2 = (List) mutableIntObjectMap2.b(i)) != null) {
                int size = list2.size();
                while (i2 < size) {
                    ((LazyLayoutPrefetchState.PrefetchHandle) list2.get(i2)).a();
                    i2++;
                }
                return -1;
            }
            return -1;
        }
        mutableIntObjectMap2.i(i, cacheWindowScope.a(i, new w4(this, cacheWindowScope, 0)));
        if (z && (list = (List) mutableIntObjectMap2.b(i)) != null) {
            int size2 = list.size();
            while (i2 < size2) {
                ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i2)).a();
                i2++;
            }
            return -1;
        }
        return -1;
    }

    public final boolean b() {
        if (this.h != Integer.MAX_VALUE && this.i != Integer.MIN_VALUE) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, androidx.compose.foundation.lazy.layout.CachedItem] */
    public final void c(CacheWindowScope cacheWindowScope, int i, int i2) {
        CachedItem cachedItem;
        int i3;
        MutableIntObjectMap mutableIntObjectMap = this.e;
        CachedItem cachedItem2 = (CachedItem) mutableIntObjectMap.b(i);
        CachedItem.NoKey noKey = CachedItem.c;
        if (cachedItem2 != null) {
            cachedItem2.b = i2;
            cachedItem2.a = noKey;
            cachedItem = cachedItem2;
        } else {
            ?? obj = new Object();
            obj.a = noKey;
            obj.b = i2;
            cachedItem = obj;
        }
        mutableIntObjectMap.i(i, cachedItem);
        if (i > this.i) {
            this.i = i;
            this.k -= i2;
        } else if (i < this.h) {
            this.h = i;
            this.j -= i2;
        }
        if (Math.signum(this.f) <= 0.0f) {
            if (this.k > 0) {
                i3 = this.i + 1;
            }
            i3 = -1;
        } else {
            if (Math.signum(this.f) > 0.0f && this.j > 0) {
                i3 = this.h - 1;
            }
            i3 = -1;
        }
        if (i3 > 0) {
            cacheWindowScope.getClass();
            if (i3 != -1 && i3 < this.m) {
                this.b.i(i3, cacheWindowScope.a(i3, new w4(this, cacheWindowScope, 1)));
            }
        }
        g();
    }

    public final void d(CacheWindowScope cacheWindowScope, int i, int i2, int i3, int i4, int i5, float f, boolean z) {
        boolean z2;
        int i6;
        boolean z3;
        int i7;
        boolean z4;
        if (Math.signum(f) == Math.signum(this.f)) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z) {
            if (z2 && !this.l) {
                int b = MathKt.b(Math.abs(f)) + this.k;
                int i8 = i3 - i4;
                if (b > i8) {
                    b = i8;
                }
                this.k = b;
            } else {
                this.k = i3 - i4;
                this.i = i2;
            }
            while (this.k > 0) {
                int i9 = this.i;
                cacheWindowScope.getClass();
                if (i9 != -1 && (i7 = this.i) < this.m - 1) {
                    if (i7 + 1 == i2 + 1 && f != 0.0f && Math.abs(f) >= i4) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    int a = a(cacheWindowScope, this.i + 1, z4);
                    if (a != -1) {
                        this.i++;
                        this.k -= a;
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            return;
        }
        if (z2 && !this.l) {
            int b2 = MathKt.b(Math.abs(f)) + this.j;
            int i10 = i3 - i5;
            if (b2 > i10) {
                b2 = i10;
            }
            this.j = b2;
        } else {
            this.j = i3 - i5;
            this.h = i;
        }
        while (this.j > 0 && (i6 = this.h) > 0) {
            if (i6 - 1 == i - 1 && f != 0.0f && Math.abs(f) >= i5) {
                z3 = true;
            } else {
                z3 = false;
            }
            int a2 = a(cacheWindowScope, this.h - 1, z3);
            if (a2 != -1) {
                this.h--;
                this.j -= a2;
            } else {
                return;
            }
        }
    }

    public final void e(int i, int i2) {
        char c;
        long j;
        long j2;
        long j3;
        char c2;
        int[] iArr;
        long[] jArr;
        int[] iArr2;
        long[] jArr2;
        int i3;
        char c3;
        int i4;
        MutableIntSet mutableIntSet = this.c;
        mutableIntSet.c();
        MutableIntObjectMap mutableIntObjectMap = this.b;
        int[] iArr3 = mutableIntObjectMap.b;
        long[] jArr3 = mutableIntObjectMap.a;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i5 = 0;
            j = 128;
            j2 = 255;
            while (true) {
                long j4 = jArr3[i5];
                c = 7;
                j3 = -9187201950435737472L;
                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i6 = 8 - ((~(i5 - length)) >>> 31);
                    for (int i7 = 0; i7 < i6; i7++) {
                        if ((j4 & 255) < 128 && i <= (i4 = iArr3[(i5 << 3) + i7]) && i4 <= i2) {
                            mutableIntSet.b(i4);
                        }
                        j4 >>= 8;
                    }
                    if (i6 != 8) {
                        break;
                    }
                }
                if (i5 == length) {
                    break;
                } else {
                    i5++;
                }
            }
        } else {
            c = 7;
            j = 128;
            j2 = 255;
            j3 = -9187201950435737472L;
        }
        MutableIntIntMap mutableIntIntMap = this.d;
        int[] iArr4 = mutableIntIntMap.b;
        long[] jArr4 = mutableIntIntMap.a;
        int length2 = jArr4.length - 2;
        if (length2 >= 0) {
            int i8 = 0;
            while (true) {
                long j5 = jArr4[i8];
                if ((((~j5) << c) & j5 & j3) != j3) {
                    int i9 = 8 - ((~(i8 - length2)) >>> 31);
                    int i10 = 0;
                    while (i10 < i9) {
                        if ((j5 & j2) < j) {
                            c3 = c;
                            int i11 = iArr4[(i8 << 3) + i10];
                            if (i <= i11 && i11 <= i2) {
                                mutableIntSet.b(i11);
                            }
                        } else {
                            c3 = c;
                        }
                        j5 >>= 8;
                        i10++;
                        c = c3;
                    }
                    c2 = c;
                    if (i9 != 8) {
                        break;
                    }
                } else {
                    c2 = c;
                }
                if (i8 == length2) {
                    break;
                }
                i8++;
                c = c2;
            }
        } else {
            c2 = c;
        }
        MutableIntObjectMap mutableIntObjectMap2 = this.e;
        int[] iArr5 = mutableIntObjectMap2.b;
        long[] jArr5 = mutableIntObjectMap2.a;
        int length3 = jArr5.length - 2;
        if (length3 >= 0) {
            int i12 = 0;
            while (true) {
                long j6 = jArr5[i12];
                if ((((~j6) << c2) & j6 & j3) != j3) {
                    int i13 = 8 - ((~(i12 - length3)) >>> 31);
                    for (int i14 = 0; i14 < i13; i14++) {
                        if ((j6 & j2) < j && i <= (i3 = iArr5[(i12 << 3) + i14]) && i3 <= i2) {
                            mutableIntSet.b(i3);
                        }
                        j6 >>= 8;
                    }
                    if (i13 != 8) {
                        break;
                    }
                }
                if (i12 == length3) {
                    break;
                } else {
                    i12++;
                }
            }
        }
        int[] iArr6 = mutableIntSet.b;
        long[] jArr6 = mutableIntSet.a;
        int length4 = jArr6.length - 2;
        if (length4 >= 0) {
            int i15 = 0;
            while (true) {
                long j7 = jArr6[i15];
                if ((((~j7) << c2) & j7 & j3) != j3) {
                    int i16 = 8 - ((~(i15 - length4)) >>> 31);
                    int i17 = 0;
                    while (i17 < i16) {
                        if ((j7 & j2) < j) {
                            int i18 = iArr6[(i15 << 3) + i17];
                            List list = (List) mutableIntObjectMap.g(i18);
                            if (list != null) {
                                int size = list.size();
                                for (int i19 = 0; i19 < size; i19++) {
                                    ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i19)).cancel();
                                }
                            }
                            int a = mutableIntIntMap.a(i18);
                            if (a >= 0) {
                                mutableIntIntMap.e--;
                                long[] jArr7 = mutableIntIntMap.a;
                                int i20 = mutableIntIntMap.d;
                                int i21 = a >> 3;
                                int i22 = (a & 7) << 3;
                                iArr2 = iArr6;
                                jArr2 = jArr6;
                                long j8 = (jArr7[i21] & (~(j2 << i22))) | (254 << i22);
                                jArr7[i21] = j8;
                                jArr7[(((a - 7) & i20) + (i20 & 7)) >> 3] = j8;
                            } else {
                                iArr2 = iArr6;
                                jArr2 = jArr6;
                            }
                            mutableIntObjectMap2.g(i18);
                        } else {
                            iArr2 = iArr6;
                            jArr2 = jArr6;
                        }
                        j7 >>= 8;
                        i17++;
                        iArr6 = iArr2;
                        jArr6 = jArr2;
                    }
                    iArr = iArr6;
                    jArr = jArr6;
                    if (i16 != 8) {
                        return;
                    }
                } else {
                    iArr = iArr6;
                    jArr = jArr6;
                }
                if (i15 != length4) {
                    i15++;
                    iArr6 = iArr;
                    jArr6 = jArr;
                } else {
                    return;
                }
            }
        }
    }

    public final void f() {
        this.h = Integer.MAX_VALUE;
        this.i = Integer.MIN_VALUE;
        this.j = 0;
        this.k = 0;
        this.l = false;
        this.d.c();
        this.e.c();
        MutableIntObjectMap mutableIntObjectMap = this.b;
        long[] jArr = mutableIntObjectMap.a;
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
                            int i5 = mutableIntObjectMap.b[i4];
                            List list = (List) mutableIntObjectMap.c[i4];
                            int size = list.size();
                            for (int i6 = 0; i6 < size; i6++) {
                                ((LazyLayoutPrefetchState.PrefetchHandle) list.get(i6)).cancel();
                            }
                            mutableIntObjectMap.h(i4);
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

    public final void g() {
        AndroidTrace_androidKt.a(this.j, "prefetchWindowStartExtraSpace");
        AndroidTrace_androidKt.a(this.k, "prefetchWindowEndExtraSpace");
        AndroidTrace_androidKt.a(this.h, "prefetchWindowStartIndex");
        AndroidTrace_androidKt.a(this.i, "prefetchWindowEndIndex");
    }
}
