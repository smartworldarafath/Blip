package androidx.compose.ui.input.key;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class KeyInputNode extends Modifier.Node implements KeyInputModifierNode {
    public Function1 x;
    public Function1 y;

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    public final boolean I(android.view.KeyEvent keyEvent) {
        Function1 function1 = this.x;
        if (function1 != null) {
            return ((Boolean) function1.b(new KeyEvent(keyEvent))).booleanValue();
        }
        return false;
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    public final boolean o(android.view.KeyEvent keyEvent) {
        Function1 function1 = this.y;
        if (function1 != null) {
            return ((Boolean) function1.b(new KeyEvent(keyEvent))).booleanValue();
        }
        return false;
    }
}
