package androidx.compose.foundation;

import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ DelegatingNode k;

    public /* synthetic */ c(DelegatingNode delegatingNode, int i) {
        this.j = i;
        this.k = delegatingNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect;
        int i = this.j;
        DelegatingNode delegatingNode = this.k;
        switch (i) {
            case 0:
                Function0 function0 = ((CombinedClickableNode) delegatingNode).T;
                if (function0 != null) {
                    function0.a();
                }
                return Boolean.TRUE;
            default:
                ScrollableAreaNode scrollableAreaNode = (ScrollableAreaNode) delegatingNode;
                OverscrollFactory overscrollFactory = (OverscrollFactory) CompositionLocalConsumerModifierNodeKt.a(scrollableAreaNode, OverscrollKt.a);
                scrollableAreaNode.J = overscrollFactory;
                if (overscrollFactory != null) {
                    AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) overscrollFactory;
                    androidEdgeEffectOverscrollEffect = new AndroidEdgeEffectOverscrollEffect(androidEdgeEffectOverscrollFactory.a, androidEdgeEffectOverscrollFactory.b, androidEdgeEffectOverscrollFactory.c, androidEdgeEffectOverscrollFactory.d);
                } else {
                    androidEdgeEffectOverscrollEffect = null;
                }
                scrollableAreaNode.K = androidEdgeEffectOverscrollEffect;
                return Unit.a;
        }
    }
}
