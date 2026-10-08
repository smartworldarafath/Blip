package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Density;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyListMeasureResult implements LazyListLayoutInfo, MeasureResult {
    public final LazyListMeasuredItem a;
    public final int b;
    public final boolean c;
    public final float d;
    public final MeasureResult e;
    public final float f;
    public final boolean g;
    public final CoroutineScope h;
    public final Density i;
    public final long j;
    public final int k;
    public final List l;
    public final int m;
    public final int n;
    public final int o;
    public final Orientation p;
    public final int q;
    public final int r;

    public LazyListMeasureResult(LazyListMeasuredItem lazyListMeasuredItem, int i, boolean z, float f, MeasureResult measureResult, float f2, boolean z2, CoroutineScope coroutineScope, Density density, long j, int i2, List list, int i3, int i4, int i5, Orientation orientation, int i6, int i7) {
        this.a = lazyListMeasuredItem;
        this.b = i;
        this.c = z;
        this.d = f;
        this.e = measureResult;
        this.f = f2;
        this.g = z2;
        this.h = coroutineScope;
        this.i = density;
        this.j = j;
        this.k = i2;
        this.l = list;
        this.m = i3;
        this.n = i4;
        this.o = i5;
        this.p = orientation;
        this.q = i6;
        this.r = i7;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int a() {
        return this.e.a();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int b() {
        return this.e.b();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Map c() {
        return this.e.c();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final void d() {
        this.e.d();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Function1 e() {
        return this.e.e();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Function2 f() {
        return this.e.f();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Function1 g() {
        return this.e.g();
    }

    public final LazyListMeasureResult h(int i, boolean z) {
        LazyListMeasuredItem lazyListMeasuredItem;
        boolean z2;
        int i2;
        if (!this.g) {
            List list = this.l;
            if (!list.isEmpty() && (lazyListMeasuredItem = this.a) != null) {
                int j = lazyListMeasuredItem.j();
                int i3 = this.b - i;
                if (i3 >= 0 && i3 < j) {
                    LazyListMeasuredItem lazyListMeasuredItem2 = (LazyListMeasuredItem) CollectionsKt.s(list);
                    LazyListMeasuredItem lazyListMeasuredItem3 = (LazyListMeasuredItem) CollectionsKt.z(list);
                    if (!lazyListMeasuredItem2.r && !lazyListMeasuredItem3.r) {
                        int i4 = lazyListMeasuredItem2.m;
                        int i5 = this.n;
                        int i6 = this.m;
                        if (i < 0) {
                            if (Math.min((lazyListMeasuredItem2.j() + i4) - i6, (lazyListMeasuredItem3.j() + lazyListMeasuredItem3.m) - i5) <= (-i)) {
                                return null;
                            }
                        } else if (Math.min(i6 - i4, i5 - lazyListMeasuredItem3.m) <= i) {
                            return null;
                        }
                        int size = list.size();
                        int i7 = 0;
                        while (i7 < size) {
                            LazyListMeasuredItem lazyListMeasuredItem4 = (LazyListMeasuredItem) list.get(i7);
                            lazyListMeasuredItem4.getClass();
                            int[] iArr = lazyListMeasuredItem4.v;
                            if (!lazyListMeasuredItem4.r) {
                                lazyListMeasuredItem4.m += i;
                                int length = iArr.length;
                                for (int i8 = 0; i8 < length; i8++) {
                                    if ((i8 & 1) != 0) {
                                        iArr[i8] = iArr[i8] + i;
                                    }
                                }
                                if (z) {
                                    int size2 = lazyListMeasuredItem4.b.size();
                                    int i9 = 0;
                                    while (i9 < size2) {
                                        LazyLayoutItemAnimation a = lazyListMeasuredItem4.k.a(i9, lazyListMeasuredItem4.i);
                                        if (a != null) {
                                            long j2 = a.j;
                                            i2 = i3;
                                            a.j = (((int) (j2 >> 32)) << 32) | ((((int) (j2 & 4294967295L)) + i) & 4294967295L);
                                        } else {
                                            i2 = i3;
                                        }
                                        i9++;
                                        i3 = i2;
                                    }
                                }
                            }
                            i7++;
                            i3 = i3;
                        }
                        int i10 = i3;
                        if (!this.c && i <= 0) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        return new LazyListMeasureResult(this.a, i10, z2, i, this.e, this.f, this.g, this.h, this.i, this.j, this.k, list, this.m, this.n, this.o, this.p, this.q, this.r);
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public final long i() {
        MeasureResult measureResult = this.e;
        return (measureResult.b() << 32) | (measureResult.a() & 4294967295L);
    }
}
