package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyGridMeasuredItem implements LazyGridItemInfo, LazyLayoutMeasuredItem {
    public final int a;
    public final Object b;
    public final int c;
    public final LayoutDirection d;
    public final int e;
    public final int f;
    public final List g;
    public final long h;
    public final Object i;
    public final LazyLayoutItemAnimator j;
    public final long k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public int q = Integer.MIN_VALUE;
    public int r;
    public int s;
    public final long t;
    public long u;
    public int v;
    public int w;
    public boolean x;

    public LazyGridMeasuredItem(int i, Object obj, int i2, int i3, LayoutDirection layoutDirection, int i4, int i5, List list, long j, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2, int i6, int i7) {
        this.a = i;
        this.b = obj;
        this.c = i2;
        this.d = layoutDirection;
        this.e = i4;
        this.f = i5;
        this.g = list;
        this.h = j;
        this.i = obj2;
        this.j = lazyLayoutItemAnimator;
        this.k = j2;
        this.l = i6;
        this.m = i7;
        int size = list.size();
        int i8 = 0;
        for (int i9 = 0; i9 < size; i9++) {
            i8 = Math.max(i8, ((Placeable) list.get(i9)).k);
        }
        this.n = i8;
        this.p = i3;
        this.o = i8;
        this.t = (this.c << 32) | (i8 & 4294967295L);
        this.u = 0L;
        this.v = -1;
        this.w = -1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final long a() {
        return this.k;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int b() {
        return this.m;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int c() {
        return this.o;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final List d() {
        return this.g;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int e() {
        return this.p;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final long f(int i) {
        return this.u;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int g() {
        return this.l;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int getIndex() {
        return this.a;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final Object getKey() {
        return this.b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void h() {
        this.x = true;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void i(int i, int i2, int i3, int i4) {
        l(i, i2, i3, i4, -1, -1);
    }

    public final int j() {
        return this.o + this.p;
    }

    public final void k(Placeable.PlacementScope placementScope, boolean z) {
        GraphicsLayer graphicsLayer;
        long j;
        if (this.q == Integer.MIN_VALUE) {
            InlineClassHelperKt.a("position() should be called first");
        }
        List list = this.g;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable placeable = (Placeable) list.get(i);
            int i2 = this.r - placeable.k;
            int i3 = this.s;
            long j2 = this.u;
            LazyLayoutItemAnimation a = this.j.a(i, this.b);
            if (a != null) {
                if (z) {
                    a.l = j2;
                } else {
                    if (!IntOffset.a(a.l, 9223372034707292159L)) {
                        j = a.l;
                    } else {
                        j = j2;
                    }
                    long c = IntOffset.c(j, ((IntOffset) ((SnapshotMutableStateImpl) a.p).getValue()).a);
                    int i4 = (int) (j2 & 4294967295L);
                    if ((i4 <= i2 && ((int) (c & 4294967295L)) <= i2) || (i4 >= i3 && ((int) (c & 4294967295L)) >= i3)) {
                        a.b();
                    }
                    j2 = c;
                }
                graphicsLayer = a.m;
            } else {
                graphicsLayer = null;
            }
            long c2 = IntOffset.c(j2, this.h);
            if (!z && a != null) {
                a.k = c2;
            }
            if (graphicsLayer != null) {
                placementScope.getClass();
                Placeable.PlacementScope.a(placementScope, placeable);
                placeable.b0(IntOffset.c(c2, placeable.n), 0.0f, graphicsLayer);
            } else {
                Placeable.PlacementScope.o(placementScope, placeable, c2);
            }
        }
    }

    public final void l(int i, int i2, int i3, int i4, int i5, int i6) {
        this.q = i4;
        if (this.d == LayoutDirection.k) {
            i2 = (i3 - i2) - this.c;
        }
        this.u = (i2 << 32) | (i & 4294967295L);
        this.v = i5;
        this.w = i6;
        this.r = -this.e;
        this.s = i4 + this.f;
    }
}
