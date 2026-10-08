package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FocusEventNode extends Modifier.Node implements FocusEventModifierNode {
    public Function1 x;

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public final void j0(FocusStateImpl focusStateImpl) {
        this.x.b(focusStateImpl);
    }
}
