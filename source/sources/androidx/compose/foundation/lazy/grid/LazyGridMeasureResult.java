package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.LazyGridSnapLayoutInfoProviderKt;
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
public final class LazyGridMeasureResult implements LazyGridLayoutInfo, MeasureResult {
    public final LazyGridMeasuredLine a;
    public final int b;
    public final boolean c;
    public final float d;
    public final MeasureResult e;
    public final float f;
    public final boolean g;
    public final CoroutineScope h;
    public final Density i;
    public final int j;
    public final Function1 k;
    public final Function1 l;
    public final int m;
    public final List n;
    public final int o;
    public final int p;
    public final int q;
    public final Orientation r;
    public final int s;
    public final int t;

    public LazyGridMeasureResult(LazyGridMeasuredLine lazyGridMeasuredLine, int i, boolean z, float f, MeasureResult measureResult, float f2, boolean z2, CoroutineScope coroutineScope, Density density, int i2, Function1 function1, Function1 function12, int i3, List list, int i4, int i5, int i6, Orientation orientation, int i7, int i8) {
        this.a = lazyGridMeasuredLine;
        this.b = i;
        this.c = z;
        this.d = f;
        this.e = measureResult;
        this.f = f2;
        this.g = z2;
        this.h = coroutineScope;
        this.i = density;
        this.j = i2;
        this.k = function1;
        this.l = function12;
        this.m = i3;
        this.n = list;
        this.o = i4;
        this.p = i5;
        this.q = i6;
        this.r = orientation;
        this.s = i7;
        this.t = i8;
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

    public final LazyGridMeasureResult h(int i, boolean z) {
        LazyGridMeasuredLine lazyGridMeasuredLine;
        boolean z2;
        int i2;
        List list;
        int i3;
        int i4;
        long j;
        List list2;
        if (!this.g) {
            List list3 = this.n;
            if (!list3.isEmpty() && (lazyGridMeasuredLine = this.a) != null) {
                int i5 = lazyGridMeasuredLine.g;
                int i6 = this.b - i;
                if (i6 >= 0 && i6 < i5) {
                    LazyGridMeasuredItem lazyGridMeasuredItem = (LazyGridMeasuredItem) CollectionsKt.s(list3);
                    LazyGridMeasuredItem lazyGridMeasuredItem2 = (LazyGridMeasuredItem) CollectionsKt.z(list3);
                    if (!lazyGridMeasuredItem.x && !lazyGridMeasuredItem2.x) {
                        int i7 = this.p;
                        int i8 = this.o;
                        Orientation orientation = this.r;
                        if (i < 0) {
                            if (Math.min((lazyGridMeasuredItem.j() + LazyGridSnapLayoutInfoProviderKt.a(lazyGridMeasuredItem, orientation)) - i8, (lazyGridMeasuredItem2.j() + LazyGridSnapLayoutInfoProviderKt.a(lazyGridMeasuredItem2, orientation)) - i7) <= (-i)) {
                                return null;
                            }
                        } else if (Math.min(i8 - LazyGridSnapLayoutInfoProviderKt.a(lazyGridMeasuredItem, orientation), i7 - LazyGridSnapLayoutInfoProviderKt.a(lazyGridMeasuredItem2, orientation)) <= i) {
                            return null;
                        }
                        int size = list3.size();
                        int i9 = 0;
                        while (i9 < size) {
                            LazyGridMeasuredItem lazyGridMeasuredItem3 = (LazyGridMeasuredItem) list3.get(i9);
                            lazyGridMeasuredItem3.getClass();
                            if (lazyGridMeasuredItem3.x) {
                                list = list3;
                                i3 = size;
                                i2 = i6;
                            } else {
                                long j2 = lazyGridMeasuredItem3.u;
                                long j3 = 4294967295L;
                                i2 = i6;
                                lazyGridMeasuredItem3.u = (((int) (j2 >> 32)) << 32) | ((((int) (j2 & 4294967295L)) + i) & 4294967295L);
                                if (z) {
                                    int size2 = lazyGridMeasuredItem3.g.size();
                                    int i10 = 0;
                                    while (i10 < size2) {
                                        LazyLayoutItemAnimation a = lazyGridMeasuredItem3.j.a(i10, lazyGridMeasuredItem3.b);
                                        if (a != null) {
                                            long j4 = a.j;
                                            j = j3;
                                            list2 = list3;
                                            i4 = size;
                                            a.j = ((((int) (j4 & j)) + i) & j) | (((int) (j4 >> 32)) << 32);
                                        } else {
                                            i4 = size;
                                            j = j3;
                                            list2 = list3;
                                        }
                                        i10++;
                                        list3 = list2;
                                        j3 = j;
                                        size = i4;
                                    }
                                }
                                list = list3;
                                i3 = size;
                            }
                            i9++;
                            i6 = i2;
                            list3 = list;
                            size = i3;
                        }
                        List list4 = list3;
                        int i11 = i6;
                        if (!this.c && i <= 0) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        return new LazyGridMeasureResult(this.a, i11, z2, i, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, list4, this.o, this.p, this.q, orientation, this.s, this.t);
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
