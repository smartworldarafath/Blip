package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactory;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ a(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj3 = this.l;
        Object obj4 = this.k;
        int i2 = 0;
        switch (i) {
            case 0:
                LazyLayoutItemContentFactory lazyLayoutItemContentFactory = (LazyLayoutItemContentFactory) obj4;
                LazyLayoutItemContentFactory.CachedItemContent cachedItemContent = (LazyLayoutItemContentFactory.CachedItemContent) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    LazyLayoutItemProvider lazyLayoutItemProvider = (LazyLayoutItemProvider) lazyLayoutItemContentFactory.b.a();
                    int i3 = cachedItemContent.c;
                    Object obj5 = cachedItemContent.a;
                    if ((i3 >= lazyLayoutItemProvider.a() || !lazyLayoutItemProvider.b(i3).equals(obj5)) && (i3 = lazyLayoutItemProvider.d(obj5)) != -1) {
                        cachedItemContent.c = i3;
                    }
                    int i4 = i3;
                    if (i4 != -1) {
                        gapComposer.W(-1664741271);
                        LazyLayoutItemContentFactoryKt.a(lazyLayoutItemProvider, lazyLayoutItemContentFactory.a, i4, cachedItemContent.a, gapComposer, 0);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(-1664505826);
                        gapComposer.p(false);
                    }
                    boolean h = gapComposer.h(cachedItemContent);
                    Object K = gapComposer.K();
                    if (h || K == Composer.Companion.a) {
                        K = new b(i2, cachedItemContent);
                        gapComposer.g0(K);
                    }
                    EffectsKt.c(obj5, (Function1) K, gapComposer);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj4;
                LazySaveableStateHolder lazySaveableStateHolder = (LazySaveableStateHolder) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z2)) {
                    composableLambdaImpl.f(lazySaveableStateHolder, gapComposer2, 0);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }
}
