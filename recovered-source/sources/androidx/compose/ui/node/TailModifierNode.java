package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TailModifierNode extends Modifier.Node {
    public boolean x;

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        this.x = true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        this.x = false;
    }

    public final String toString() {
        return "<tail>";
    }
}
