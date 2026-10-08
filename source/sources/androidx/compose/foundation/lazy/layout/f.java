package androidx.compose.foundation.lazy.layout;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ LazyLayoutSemanticsModifierNode k;

    public /* synthetic */ f(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode, int i) {
        this.j = i;
        this.k = lazyLayoutSemanticsModifierNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode = this.k;
        switch (i) {
            case 0:
                return Float.valueOf(lazyLayoutSemanticsModifierNode.y.b());
            case 1:
                return Float.valueOf(lazyLayoutSemanticsModifierNode.y.d());
            default:
                return Float.valueOf(lazyLayoutSemanticsModifierNode.y.a() - lazyLayoutSemanticsModifierNode.y.c());
        }
    }
}
