package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FocusRequesterNode extends Modifier.Node implements FocusRequesterModifierNode {
    public FocusRequester x;

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        this.x.a.b(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        this.x.a.j(this);
    }
}
