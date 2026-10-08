package androidx.compose.foundation;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OverscrollKt {
    public static final ComputedProvidableCompositionLocal a = new ComputedProvidableCompositionLocal(new Object());

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.compose.ui.Modifier] */
    public static final Modifier a(Modifier modifier) {
        return modifier.l(new Object());
    }

    public static final OverscrollEffect b(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(282942128);
        OverscrollFactory overscrollFactory = (OverscrollFactory) gapComposer.j(a);
        if (overscrollFactory == null) {
            gapComposer.p(false);
            return null;
        }
        boolean f = gapComposer.f(overscrollFactory);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) overscrollFactory;
            AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = new AndroidEdgeEffectOverscrollEffect(androidEdgeEffectOverscrollFactory.a, androidEdgeEffectOverscrollFactory.b, androidEdgeEffectOverscrollFactory.c, androidEdgeEffectOverscrollFactory.d);
            gapComposer.g0(androidEdgeEffectOverscrollEffect);
            K = androidEdgeEffectOverscrollEffect;
        }
        OverscrollEffect overscrollEffect = (OverscrollEffect) K;
        gapComposer.p(false);
        return overscrollEffect;
    }
}
