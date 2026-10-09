package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyListScrollScopeKt$LazyLayoutScrollScope$1 implements LazyLayoutScrollScope, ScrollScope {
    public final /* synthetic */ ScrollScope a;
    public final /* synthetic */ LazyListState b;

    public LazyListScrollScopeKt$LazyLayoutScrollScope$1(ScrollScope scrollScope, LazyListState lazyListState) {
        this.b = lazyListState;
        this.a = scrollScope;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int a() {
        return ((LazyListMeasureResult) this.b.h()).o;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int b() {
        LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) CollectionsKt.A(((LazyListMeasureResult) this.b.h()).l);
        if (lazyListItemInfo != null) {
            return ((LazyListMeasuredItem) lazyListItemInfo).a;
        }
        return 0;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final void c(int i, int i2) {
        this.b.j(i, i2);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int d() {
        return this.b.e.b();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int e(int i) {
        Object obj;
        LazyListLayoutInfo h = this.b.h();
        if (!((LazyListMeasureResult) h).l.isEmpty()) {
            int g = g();
            if (i <= b() && g <= i) {
                List list = ((LazyListMeasureResult) h).l;
                int size = list.size();
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        obj = list.get(i2);
                        if (((LazyListMeasuredItem) ((LazyListItemInfo) obj)).a == i) {
                            break;
                        }
                        i2++;
                    } else {
                        obj = null;
                        break;
                    }
                }
                LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) obj;
                if (lazyListItemInfo != null) {
                    return ((LazyListMeasuredItem) lazyListItemInfo).m;
                }
            } else {
                return ((i - g()) * LazyListLayoutInfoKt.a(h)) - d();
            }
        }
        return 0;
    }

    @Override // androidx.compose.foundation.gestures.ScrollScope
    public final float f(float f) {
        return this.a.f(f);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
    public final int g() {
        return this.b.e.a();
    }
}
