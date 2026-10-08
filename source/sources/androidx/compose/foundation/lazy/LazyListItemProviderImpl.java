package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.IntervalList$Interval;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyListItemProviderImpl implements LazyListItemProvider {
    public final LazyListState a;
    public final LazyListIntervalContent b;
    public final LazyItemScopeImpl c;
    public final NearestRangeKeyIndexMap d;

    public LazyListItemProviderImpl(LazyListState lazyListState, LazyListIntervalContent lazyListIntervalContent, LazyItemScopeImpl lazyItemScopeImpl, NearestRangeKeyIndexMap nearestRangeKeyIndexMap) {
        this.a = lazyListState;
        this.b = lazyListIntervalContent;
        this.c = lazyItemScopeImpl;
        this.d = nearestRangeKeyIndexMap;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int a() {
        return this.b.e().b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object b(int i) {
        Object b = this.d.b(i);
        if (b == null) {
            return this.b.f(i);
        }
        return b;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final Object c(int i) {
        return this.b.d(i);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final int d(Object obj) {
        return this.d.a(obj);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public final void e(final int i, Object obj, Composer composer, final int i2) {
        int i3;
        int i4;
        int i5;
        boolean z;
        final int i6;
        final Object obj2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-462424778);
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
        if ((i9 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i9 & 1, z)) {
            i6 = i;
            obj2 = obj;
            LazyLayoutPinnableItemKt.a(obj2, i6, this.a.s, ComposableLambdaKt.b(-824725566, new Function2() { // from class: androidx.compose.foundation.lazy.a
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj3, Object obj4) {
                    boolean z2;
                    Composer composer2 = (Composer) obj3;
                    int intValue = ((Integer) obj4).intValue();
                    if ((intValue & 3) != 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.N(intValue & 1, z2)) {
                        LazyListItemProviderImpl lazyListItemProviderImpl = LazyListItemProviderImpl.this;
                        MutableIntervalList mutableIntervalList = lazyListItemProviderImpl.b.a;
                        int i10 = i;
                        IntervalList$Interval b = mutableIntervalList.b(i10);
                        ((LazyListInterval) b.c).c.j(lazyListItemProviderImpl.c, Integer.valueOf(i10 - b.a), gapComposer2, 0);
                    } else {
                        gapComposer2.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer), gapComposer, ((i9 >> 3) & 14) | 3072 | ((i9 << 3) & 112));
        } else {
            i6 = i;
            obj2 = obj;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(i6, obj2, i2) { // from class: androidx.compose.foundation.lazy.b
                public final /* synthetic */ int k;
                public final /* synthetic */ Object l;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    int a = RecomposeScopeImplKt.a(1);
                    LazyListItemProviderImpl.this.e(this.k, this.l, (Composer) obj3, a);
                    return Unit.a;
                }
            };
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyListItemProviderImpl)) {
            return false;
        }
        return Intrinsics.a(this.b, ((LazyListItemProviderImpl) obj).b);
    }

    public final int hashCode() {
        return this.b.hashCode();
    }
}
