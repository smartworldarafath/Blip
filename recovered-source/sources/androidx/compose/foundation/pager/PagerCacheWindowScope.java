package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import defpackage.ia;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PagerCacheWindowScope implements CacheWindowScope {
    public final ia a;
    public PagerMeasureResult b;
    public LazyLayoutPrefetchState c;

    public PagerCacheWindowScope(ia iaVar) {
        this.a = iaVar;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public final List a(int i, final Function2 function2) {
        long j = e().u;
        LazyLayoutPrefetchState lazyLayoutPrefetchState = this.c;
        if (lazyLayoutPrefetchState != null) {
            return CollectionsKt.B(lazyLayoutPrefetchState.a(i, j, true, new Function1() { // from class: androidx.compose.foundation.pager.e
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    Function2.this.n(Integer.valueOf(((LazyLayoutPrefetchState.PrefetchResultScope) obj).getIndex()), Integer.valueOf(this.e().b));
                    return Unit.a;
                }
            }));
        }
        Intrinsics.e("state");
        throw null;
    }

    public final int b() {
        if (e().a.isEmpty()) {
            return -1;
        }
        long j = ((MeasuredPage) CollectionsKt.s(e().a)).a - e().h;
        if (j < 0) {
            j = 0;
        }
        return (int) j;
    }

    public final boolean c() {
        return !e().a.isEmpty();
    }

    public final int d() {
        if (e().a.isEmpty()) {
            return -1;
        }
        long j = ((MeasuredPage) CollectionsKt.z(e().a)).a + e().h;
        long i = i() - 1;
        if (j > i) {
            j = i;
        }
        return (int) j;
    }

    public final PagerMeasureResult e() {
        PagerMeasureResult pagerMeasureResult = this.b;
        if (pagerMeasureResult != null) {
            return pagerMeasureResult;
        }
        Intrinsics.e("layoutInfo");
        throw null;
    }

    public final int f() {
        if (e().a.isEmpty()) {
            return 0;
        }
        return Math.abs(((((MeasuredPage) CollectionsKt.z(e().a)).j + e().b) + e().c) - e().g);
    }

    public final int g() {
        int i = 0;
        if (e().a.isEmpty()) {
            return 0;
        }
        int i2 = ((MeasuredPage) CollectionsKt.s(e().a)).j + (-e().f);
        if (i2 <= 0) {
            i = i2;
        }
        return Math.abs(i);
    }

    public final int h() {
        return PagerLayoutInfoKt.a(e());
    }

    public final int i() {
        return ((Number) this.a.a()).intValue();
    }
}
