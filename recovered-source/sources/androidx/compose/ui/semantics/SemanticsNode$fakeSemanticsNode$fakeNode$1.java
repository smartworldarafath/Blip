package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.SemanticsModifierNode;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SemanticsNode$fakeSemanticsNode$fakeNode$1 extends Modifier.Node implements SemanticsModifierNode {
    public final /* synthetic */ Function1 x;

    public SemanticsNode$fakeSemanticsNode$fakeNode$1(Function1 function1) {
        this.x = function1;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        this.x.b(semanticsPropertyReceiver);
    }
}
