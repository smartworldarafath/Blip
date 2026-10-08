package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import defpackage.o1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutItemContentFactory {
    public final SaveableStateHolder a;
    public final o1 b;
    public final MutableScatterMap c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class CachedItemContent {
        public final Object a;
        public final Object b;
        public int c;
        public ComposableLambdaImpl d;

        public CachedItemContent(int i, Object obj, Object obj2) {
            this.a = obj;
            this.b = obj2;
            this.c = i;
        }
    }

    public LazyLayoutItemContentFactory(SaveableStateHolder saveableStateHolder, o1 o1Var) {
        this.a = saveableStateHolder;
        this.b = o1Var;
        long[] jArr = ScatterMapKt.a;
        this.c = new MutableScatterMap();
    }

    public final Function2 a(int i, Object obj, Object obj2) {
        MutableScatterMap mutableScatterMap = this.c;
        CachedItemContent cachedItemContent = (CachedItemContent) mutableScatterMap.e(obj);
        int i2 = 0;
        if (cachedItemContent != null && cachedItemContent.c == i && Intrinsics.a(cachedItemContent.b, obj2)) {
            ComposableLambdaImpl composableLambdaImpl = cachedItemContent.d;
            if (composableLambdaImpl == null) {
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(818252804, true, new a(i2, LazyLayoutItemContentFactory.this, cachedItemContent));
                cachedItemContent.d = composableLambdaImpl2;
                return composableLambdaImpl2;
            }
            return composableLambdaImpl;
        }
        CachedItemContent cachedItemContent2 = new CachedItemContent(i, obj, obj2);
        mutableScatterMap.o(obj, cachedItemContent2);
        ComposableLambdaImpl composableLambdaImpl3 = cachedItemContent2.d;
        if (composableLambdaImpl3 == null) {
            ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(818252804, true, new a(i2, this, cachedItemContent2));
            cachedItemContent2.d = composableLambdaImpl4;
            return composableLambdaImpl4;
        }
        return composableLambdaImpl3;
    }

    public final Object b(Object obj) {
        if (obj != null) {
            CachedItemContent cachedItemContent = (CachedItemContent) this.c.e(obj);
            if (cachedItemContent != null) {
                return cachedItemContent.b;
            }
            LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) this.b.a();
            int d = lazyLayoutItemProvider.d(obj);
            if (d != -1) {
                return lazyLayoutItemProvider.c(d);
            }
            return null;
        }
        return null;
    }
}
