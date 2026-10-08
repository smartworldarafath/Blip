package androidx.compose.animation;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import defpackage.k8;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class VeilModifierNode extends Modifier.Node implements DrawModifierNode {
    public SharedMutableTransformState A;
    public Transition.DeferredAnimation x;
    public EnterTransition y;
    public ExitTransition z;

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void h(LayoutNodeDrawScope layoutNodeDrawScope) {
        Color color;
        layoutNodeDrawScope.a();
        Transition.DeferredAnimation deferredAnimation = this.x;
        Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Color>> function1 = new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Color>>() { // from class: androidx.compose.animation.VeilModifierNode$draw$veilColor$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Transition.Segment segment = (Transition.Segment) obj;
                EnterExitState enterExitState = EnterExitState.j;
                EnterExitState enterExitState2 = EnterExitState.k;
                boolean b = segment.b(enterExitState, enterExitState2);
                VeilModifierNode veilModifierNode = VeilModifierNode.this;
                if (b) {
                    TransitionData transitionData = ((EnterTransitionImpl) veilModifierNode.y).b;
                    return EnterExitTransitionKt.c;
                }
                if (segment.b(enterExitState2, EnterExitState.l)) {
                    TransitionData transitionData2 = ((ExitTransitionImpl) veilModifierNode.z).c;
                    return EnterExitTransitionKt.c;
                }
                return EnterExitTransitionKt.c;
            }
        };
        SharedMutableTransformState sharedMutableTransformState = this.A;
        if (sharedMutableTransformState.a()) {
            color = new Color(sharedMutableTransformState.e);
        } else {
            color = null;
        }
        Transition.DeferredAnimation.DeferredAnimationData a = deferredAnimation.a(function1, color, null, new Function1<EnterExitState, Color>() { // from class: androidx.compose.animation.VeilModifierNode$draw$veilColor$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                long j;
                int ordinal = ((EnterExitState) obj).ordinal();
                VeilModifierNode veilModifierNode = VeilModifierNode.this;
                if (ordinal != 0) {
                    if (ordinal != 1) {
                        if (ordinal == 2) {
                            TransitionData transitionData = ((ExitTransitionImpl) veilModifierNode.z).c;
                            j = veilModifierNode.A.e;
                        } else {
                            k8.e();
                            return null;
                        }
                    } else {
                        TransitionData transitionData2 = ((EnterTransitionImpl) veilModifierNode.y).b;
                        TransitionData transitionData3 = ((ExitTransitionImpl) veilModifierNode.z).c;
                        j = Color.g;
                    }
                } else {
                    TransitionData transitionData4 = ((EnterTransitionImpl) veilModifierNode.y).b;
                    j = Color.g;
                }
                return new Color(j);
            }
        });
        SharedMutableTransformState sharedMutableTransformState2 = this.A;
        long j = ((Color) a.getValue()).a;
        TransformScopeImpl transformScopeImpl = sharedMutableTransformState2.c;
        if (sharedMutableTransformState2.b() && ((Boolean) ((SnapshotMutableStateImpl) transformScopeImpl.g).getValue()).booleanValue()) {
            j = ((Color) ((SnapshotMutableStateImpl) transformScopeImpl.h).getValue()).a;
        }
        long j2 = j;
        if (sharedMutableTransformState2.b()) {
            sharedMutableTransformState2.e = j2;
        }
        if (Color.d(j2) == 0.0f) {
            return;
        }
        TransitionData transitionData = ((EnterTransitionImpl) this.y).b;
        TransitionData transitionData2 = ((ExitTransitionImpl) this.z).c;
        DrawScope.r0(layoutNodeDrawScope, j2, 0L, 0.0f, null, 126);
    }
}
