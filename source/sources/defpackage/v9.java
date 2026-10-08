package defpackage;

import androidx.compose.foundation.layout.InsetsConsumingModifierNode;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNode$Companion$TraverseDescendantsAction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class v9 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ InsetsConsumingModifierNode k;

    public /* synthetic */ v9(InsetsConsumingModifierNode insetsConsumingModifierNode, int i) {
        this.j = i;
        this.k = insetsConsumingModifierNode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        InsetsConsumingModifierNode insetsConsumingModifierNode = this.k;
        TraversableNode traversableNode = (TraversableNode) obj;
        switch (i) {
            case 0:
                traversableNode.getClass();
                InsetsConsumingModifierNode insetsConsumingModifierNode2 = (InsetsConsumingModifierNode) traversableNode;
                WindowInsets windowInsets = insetsConsumingModifierNode.y;
                if (!Intrinsics.a(insetsConsumingModifierNode2.x, windowInsets)) {
                    insetsConsumingModifierNode2.x = windowInsets;
                    insetsConsumingModifierNode2.Z0();
                }
                return TraversableNode$Companion$TraverseDescendantsAction.k;
            default:
                traversableNode.getClass();
                insetsConsumingModifierNode.x = ((InsetsConsumingModifierNode) traversableNode).y;
                return Boolean.FALSE;
        }
    }
}
