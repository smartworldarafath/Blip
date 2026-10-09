package androidx.compose.foundation.pager;

import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.CachedItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import defpackage.ia;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PagerCacheWindowLogic extends CacheWindowLogic {
    public final LazyLayoutPrefetchState n;
    public final PagerCacheWindowScope o;

    public PagerCacheWindowLogic(PagerState$pagerCacheWindow$1 pagerState$pagerCacheWindow$1, LazyLayoutPrefetchState lazyLayoutPrefetchState, ia iaVar) {
        super(pagerState$pagerCacheWindow$1);
        this.n = lazyLayoutPrefetchState;
        this.o = new PagerCacheWindowScope(iaVar);
    }

    public final void h(float f, PagerMeasureResult pagerMeasureResult) {
        CacheWindowLogic cacheWindowLogic;
        boolean z;
        int i;
        boolean z2;
        int i2;
        int i3;
        PagerCacheWindowScope pagerCacheWindowScope = this.o;
        pagerCacheWindowScope.b = pagerMeasureResult;
        pagerCacheWindowScope.c = this.n;
        float f2 = -f;
        g();
        if (pagerCacheWindowScope.c()) {
            pagerCacheWindowScope.h();
            pagerCacheWindowScope.e();
            this.m = pagerCacheWindowScope.i();
            int b = pagerCacheWindowScope.b();
            int d = pagerCacheWindowScope.d();
            int i4 = pagerCacheWindowScope.i();
            int g = pagerCacheWindowScope.g();
            int f3 = pagerCacheWindowScope.f();
            MutableIntObjectMap mutableIntObjectMap = this.e;
            if (f2 <= 0.0f) {
                this.j = 0 - g;
                this.h = b;
                while (this.j > 0 && (i3 = this.h) > 0 && mutableIntObjectMap.a(i3 - 1)) {
                    Object b2 = mutableIntObjectMap.b(this.h - 1);
                    b2.getClass();
                    this.h--;
                    this.j -= ((CachedItem) b2).b;
                }
                e(0, this.h - 1);
            } else {
                this.k = 0 - f3;
                this.i = d;
                while (this.k > 0 && (i2 = this.i) < i4 - 1 && mutableIntObjectMap.a(i2 + 1)) {
                    Object b3 = mutableIntObjectMap.b(this.i + 1);
                    b3.getClass();
                    int i5 = ((CachedItem) b3).b;
                    this.i++;
                    this.k -= i5;
                }
                e(this.i + 1, i4 - 1);
            }
        }
        if (pagerCacheWindowScope.c()) {
            pagerCacheWindowScope.h();
            if (pagerCacheWindowScope.e().t != null) {
                i = this.a.a.o;
                z = false;
            } else {
                z = false;
                i = 0;
            }
            int b4 = pagerCacheWindowScope.b();
            int d2 = pagerCacheWindowScope.d();
            int g2 = pagerCacheWindowScope.g();
            int f4 = pagerCacheWindowScope.f();
            if (f2 <= 0.0f) {
                z2 = true;
            } else {
                z2 = z;
            }
            cacheWindowLogic = this;
            cacheWindowLogic.d(pagerCacheWindowScope, b4, d2, i, f4, g2, f2, z2);
        } else {
            cacheWindowLogic = this;
        }
        cacheWindowLogic.f = f2;
        cacheWindowLogic.g();
    }
}
