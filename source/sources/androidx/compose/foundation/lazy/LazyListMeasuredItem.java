package androidx.compose.foundation.lazy;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.q;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyListMeasuredItem implements LazyListItemInfo, LazyLayoutMeasuredItem {
    public final int a;
    public final List b;
    public final Alignment.Horizontal c;
    public final LayoutDirection d;
    public final int e;
    public final int f;
    public final int g;
    public final long h;
    public final Object i;
    public final Object j;
    public final LazyLayoutItemAnimator k;
    public final long l;
    public int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public boolean r;
    public int s = Integer.MIN_VALUE;
    public int t;
    public int u;
    public final int[] v;

    public LazyListMeasuredItem(int i, List list, Alignment.Horizontal horizontal, LayoutDirection layoutDirection, int i2, int i3, int i4, long j, Object obj, Object obj2, LazyLayoutItemAnimator lazyLayoutItemAnimator, long j2) {
        this.a = i;
        this.b = list;
        this.c = horizontal;
        this.d = layoutDirection;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        this.h = j;
        this.i = obj;
        this.j = obj2;
        this.k = lazyLayoutItemAnimator;
        this.l = j2;
        int size = list.size();
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < size; i7++) {
            Placeable placeable = (Placeable) list.get(i7);
            i5 += placeable.k;
            i6 = Math.max(i6, placeable.j);
        }
        this.n = i5;
        this.q = i6;
        this.v = new int[this.b.size() * 2];
        this.p = this.g;
        this.o = i5;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final long a() {
        return this.l;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int b() {
        return 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int c() {
        return this.o;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final List d() {
        return this.b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int e() {
        return this.p;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final long f(int i) {
        if (i == 0 && this.b.size() == 0) {
            return this.m & 4294967295L;
        }
        int[] iArr = this.v;
        return (iArr[r5 + 1] & 4294967295L) | (iArr[i * 2] << 32);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int g() {
        return 0;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final int getIndex() {
        return this.a;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final Object getKey() {
        return this.i;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void h() {
        this.r = true;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem
    public final void i(int i, int i2, int i3, int i4) {
        l(i, i3, i4);
    }

    public final int j() {
        int i = this.o + this.p;
        if (i < 0) {
            return 0;
        }
        return i;
    }

    public final void k(Placeable.PlacementScope placementScope, boolean z) {
        GraphicsLayer graphicsLayer;
        if (this.s == Integer.MIN_VALUE) {
            InlineClassHelperKt.a("position() should be called first");
        }
        List list = this.b;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable placeable = (Placeable) list.get(i);
            int i2 = this.t - placeable.k;
            int i3 = this.u;
            long f = f(i);
            LazyLayoutItemAnimation a = this.k.a(i, this.i);
            if (a != null) {
                if (z) {
                    a.l = f;
                } else {
                    if (!IntOffset.a(a.l, 9223372034707292159L)) {
                        f = a.l;
                    }
                    long c = IntOffset.c(f, ((IntOffset) ((SnapshotMutableStateImpl) a.p).getValue()).a);
                    int i4 = (int) (f & 4294967295L);
                    if ((i4 <= i2 && ((int) (c & 4294967295L)) <= i2) || (i4 >= i3 && ((int) (c & 4294967295L)) >= i3)) {
                        a.b();
                    }
                    f = c;
                }
                graphicsLayer = a.m;
            } else {
                graphicsLayer = null;
            }
            long c2 = IntOffset.c(f, this.h);
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

    public final void l(int i, int i2, int i3) {
        this.m = i;
        this.s = i3;
        List list = this.b;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            Placeable placeable = (Placeable) list.get(i4);
            int i5 = i4 * 2;
            Alignment.Horizontal horizontal = this.c;
            if (horizontal != null) {
                int a = ((BiasAlignment.Horizontal) horizontal).a(placeable.j, i2, this.d);
                int[] iArr = this.v;
                iArr[i5] = a;
                iArr[i5 + 1] = i;
                i += placeable.k;
            } else {
                throw q.C("null horizontalAlignment when isVertical == true");
            }
        }
        this.t = -this.e;
        this.u = this.s + this.f;
    }
}
