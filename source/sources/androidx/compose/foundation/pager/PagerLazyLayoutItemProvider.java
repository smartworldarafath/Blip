package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt;
import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import defpackage.l2;
import defpackage.t2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PagerLazyLayoutItemProvider implements LazyLayoutItemProvider {
    public final PagerState a;
    public final LazyLayoutIntervalContent b;
    public final NearestRangeKeyIndexMap c;

    public PagerLazyLayoutItemProvider(PagerState pagerState, LazyLayoutIntervalContent lazyLayoutIntervalContent, NearestRangeKeyIndexMap nearestRangeKeyIndexMap) {
        this.a = pagerState;
        this.b = lazyLayoutIntervalContent;
        this.c = nearestRangeKeyIndexMap;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int a() {
        return this.b.e().b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object b(int i) {
        Object b = this.c.b(i);
        if (b == null) {
            return this.b.f(i);
        }
        return b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int d(Object obj) {
        return this.c.a(obj);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final void e(int i, Object obj, Composer composer, int i2) {
        int i3;
        int i4;
        int i5;
        boolean z;
        int i6;
        Object obj2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1201380429);
        if (gapComposer.d(i)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i7 = i3 | i2;
        if (gapComposer.h(obj)) {
            i4 = 32;
        } else {
            i4 = 16;
        }
        int i8 = i7 | i4;
        if (gapComposer.f(this)) {
            i5 = 256;
        } else {
            i5 = 128;
        }
        int i9 = i8 | i5;
        int i10 = 1;
        if ((i9 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i9 & 1, z)) {
            i6 = i;
            obj2 = obj;
            LazyLayoutPinnableItemKt.a(obj2, i6, this.a.y, ComposableLambdaKt.b(1142237095, new l2(i, i10, this), gapComposer), gapComposer, ((i9 >> 3) & 14) | 3072 | ((i9 << 3) & 112));
        } else {
            i6 = i;
            obj2 = obj;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new t2(this, i6, obj2, i2);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PagerLazyLayoutItemProvider)) {
            return false;
        }
        return Intrinsics.a(this.b, ((PagerLazyLayoutItemProvider) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
