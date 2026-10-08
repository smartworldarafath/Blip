package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EnterExitTransitionElement extends ModifierNodeElement<EnterExitTransitionModifierNode> {
    public final TransitionInstance b;
    public final Transition.DeferredAnimation c;
    public final Transition.DeferredAnimation d;
    public final Transition.DeferredAnimation e;
    public final EnterTransition f;
    public final ExitTransition g;
    public final SharedMutableTransformState h;
    public final Function0 i;
    public final GraphicsLayerBlockForEnterExit j;

    public EnterExitTransitionElement(TransitionInstance transitionInstance, Transition.DeferredAnimation deferredAnimation, Transition.DeferredAnimation deferredAnimation2, Transition.DeferredAnimation deferredAnimation3, EnterTransition enterTransition, ExitTransition exitTransition, SharedMutableTransformState sharedMutableTransformState, Function0 function0, GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit) {
        this.b = transitionInstance;
        this.c = deferredAnimation;
        this.d = deferredAnimation2;
        this.e = deferredAnimation3;
        this.f = enterTransition;
        this.g = exitTransition;
        this.h = sharedMutableTransformState;
        this.i = function0;
        this.j = graphicsLayerBlockForEnterExit;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof EnterExitTransitionElement) {
            EnterExitTransitionElement enterExitTransitionElement = (EnterExitTransitionElement) obj;
            if (enterExitTransitionElement.b == this.b && Intrinsics.a(enterExitTransitionElement.c, this.c) && Intrinsics.a(enterExitTransitionElement.d, this.d) && Intrinsics.a(enterExitTransitionElement.e, this.e) && enterExitTransitionElement.f.equals(this.f) && Intrinsics.a(enterExitTransitionElement.g, this.g) && enterExitTransitionElement.h == this.h && enterExitTransitionElement.i == this.i && Intrinsics.a(enterExitTransitionElement.j, this.j)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new EnterExitTransitionModifierNode(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j);
    }

    public final int hashCode() {
        int i;
        int i2;
        int hashCode = this.b.hashCode() * 31;
        int i3 = 0;
        Transition.DeferredAnimation deferredAnimation = this.c;
        if (deferredAnimation != null) {
            i = deferredAnimation.hashCode();
        } else {
            i = 0;
        }
        int i4 = (hashCode + i) * 31;
        Transition.DeferredAnimation deferredAnimation2 = this.d;
        if (deferredAnimation2 != null) {
            i2 = deferredAnimation2.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (i4 + i2) * 31;
        Transition.DeferredAnimation deferredAnimation3 = this.e;
        if (deferredAnimation3 != null) {
            i3 = deferredAnimation3.hashCode();
        }
        return this.h.hashCode() + (this.j.hashCode() * 31) + ((this.i.hashCode() + ((this.g.hashCode() + ((this.f.hashCode() + ((i5 + i3) * 31)) * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        EnterExitTransitionModifierNode enterExitTransitionModifierNode = (EnterExitTransitionModifierNode) node;
        enterExitTransitionModifierNode.x = this.b;
        enterExitTransitionModifierNode.y = this.c;
        enterExitTransitionModifierNode.z = this.d;
        enterExitTransitionModifierNode.A = this.e;
        enterExitTransitionModifierNode.B = this.f;
        enterExitTransitionModifierNode.C = this.g;
        enterExitTransitionModifierNode.D = this.h;
        enterExitTransitionModifierNode.E = this.i;
        enterExitTransitionModifierNode.F = this.j;
    }
}
