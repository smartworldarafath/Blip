package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class VeilModifierElement extends ModifierNodeElement<VeilModifierNode> {
    public final TransitionInstance b;
    public final Transition.DeferredAnimation c;
    public final EnterTransition d;
    public final ExitTransition e;
    public final SharedMutableTransformState f;

    public VeilModifierElement(TransitionInstance transitionInstance, Transition.DeferredAnimation deferredAnimation, EnterTransition enterTransition, ExitTransition exitTransition, SharedMutableTransformState sharedMutableTransformState) {
        this.b = transitionInstance;
        this.c = deferredAnimation;
        this.d = enterTransition;
        this.e = exitTransition;
        this.f = sharedMutableTransformState;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VeilModifierElement) {
            VeilModifierElement veilModifierElement = (VeilModifierElement) obj;
            if (this.b == veilModifierElement.b && Intrinsics.a(this.c, veilModifierElement.c) && this.d.equals(veilModifierElement.d) && Intrinsics.a(this.e, veilModifierElement.e) && this.f == veilModifierElement.f) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.animation.VeilModifierNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? node = new Modifier.Node();
        node.x = this.c;
        node.y = this.d;
        node.z = this.e;
        node.A = this.f;
        return node;
    }

    public final int hashCode() {
        return this.f.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        VeilModifierNode veilModifierNode = (VeilModifierNode) node;
        veilModifierNode.getClass();
        veilModifierNode.x = this.c;
        veilModifierNode.y = this.d;
        veilModifierNode.z = this.e;
        veilModifierNode.A = this.f;
    }

    public final String toString() {
        return "VeilModifierElement(transition=" + this.b + ", veilAnimation=" + this.c + ", enter=" + this.d + ", exit=" + this.e + ", mutableTransformState=" + this.f + ")";
    }
}
