package defpackage;

import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.GraphicsLayerBlockForEnterExit;
import androidx.compose.animation.SharedMutableTransformState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionInstance;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d8 implements GraphicsLayerBlockForEnterExit {
    public final /* synthetic */ Transition.DeferredAnimation a;
    public final /* synthetic */ SharedMutableTransformState b;
    public final /* synthetic */ Transition.DeferredAnimation c;
    public final /* synthetic */ TransitionInstance d;
    public final /* synthetic */ EnterTransition e;
    public final /* synthetic */ ExitTransition f;
    public final /* synthetic */ Transition.DeferredAnimation g;

    public /* synthetic */ d8(Transition.DeferredAnimation deferredAnimation, SharedMutableTransformState sharedMutableTransformState, Transition.DeferredAnimation deferredAnimation2, TransitionInstance transitionInstance, EnterTransition enterTransition, ExitTransition exitTransition, Transition.DeferredAnimation deferredAnimation3) {
        this.a = deferredAnimation;
        this.b = sharedMutableTransformState;
        this.c = deferredAnimation2;
        this.d = transitionInstance;
        this.e = enterTransition;
        this.f = exitTransition;
        this.g = deferredAnimation3;
    }
}
