package androidx.compose.animation.core;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.ec;
import defpackage.lh;
import defpackage.qg;
import defpackage.x3;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransitionKt {
    public static final qg a = new qg(18);

    public static final void a(Transition transition, Transition.TransitionAnimationState transitionAnimationState, Object obj, Object obj2, FiniteAnimationSpec finiteAnimationSpec, Composer composer, int i) {
        int i2;
        boolean z;
        boolean h;
        int i3;
        boolean h2;
        int i4;
        boolean h3;
        int i5;
        int i6;
        int i7;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(867041821);
        if ((i & 6) == 0) {
            if (gapComposer.f(transition)) {
                i7 = 4;
            } else {
                i7 = 2;
            }
            i2 = i7 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(transitionAnimationState)) {
                i6 = 32;
            } else {
                i6 = 16;
            }
            i2 |= i6;
        }
        if ((i & 384) == 0) {
            if ((i & 512) == 0) {
                h3 = gapComposer.f(obj);
            } else {
                h3 = gapComposer.h(obj);
            }
            if (h3) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i2 |= i5;
        }
        if ((i & 3072) == 0) {
            if ((i & 4096) == 0) {
                h2 = gapComposer.f(obj2);
            } else {
                h2 = gapComposer.h(obj2);
            }
            if (h2) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i2 |= i4;
        }
        if ((i & 24576) == 0) {
            if ((32768 & i) == 0) {
                h = gapComposer.f(finiteAnimationSpec);
            } else {
                h = gapComposer.h(finiteAnimationSpec);
            }
            if (h) {
                i3 = 16384;
            } else {
                i3 = 8192;
            }
            i2 |= i3;
        }
        if ((i2 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            if (transition.h()) {
                transitionAnimationState.j(obj, obj2, finiteAnimationSpec);
            } else {
                transitionAnimationState.k(obj2, finiteAnimationSpec, null, null);
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new x3(transition, transitionAnimationState, obj, obj2, finiteAnimationSpec, i, 2);
        }
    }

    public static final Transition.DeferredAnimation b(Transition transition, TwoWayConverter twoWayConverter, String str, Composer composer, int i, int i2) {
        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData;
        if ((i2 & 2) != 0) {
            str = "DeferredAnimation";
        }
        boolean f = ((GapComposer) composer).f(transition);
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (f || K == composer$Companion$Empty$1) {
            K = new Transition.DeferredAnimation(twoWayConverter, str);
            gapComposer.g0(K);
        }
        Transition.DeferredAnimation deferredAnimation = (Transition.DeferredAnimation) K;
        boolean f2 = gapComposer.f(transition) | gapComposer.h(deferredAnimation);
        Object K2 = gapComposer.K();
        if (f2 || K2 == composer$Companion$Empty$1) {
            K2 = new ec(21, transition, deferredAnimation);
            gapComposer.g0(K2);
        }
        EffectsKt.c(deferredAnimation, (Function1) K2, gapComposer);
        if (transition.h() && (deferredAnimationData = (Transition.DeferredAnimation.DeferredAnimationData) ((SnapshotMutableStateImpl) deferredAnimation.b).getValue()) != null) {
            Transition transition2 = Transition.this;
            deferredAnimationData.j.j(deferredAnimationData.l.b(transition2.f().a()), deferredAnimationData.l.b(transition2.f().c()), (FiniteAnimationSpec) deferredAnimationData.k.b(transition2.f()));
        }
        return deferredAnimation;
    }

    public static final Transition.TransitionAnimationState c(Transition transition, Object obj, Object obj2, FiniteAnimationSpec finiteAnimationSpec, TwoWayConverter twoWayConverter, Composer composer, int i) {
        Function1 function1;
        boolean f = ((GapComposer) composer).f(transition);
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (f || K == composer$Companion$Empty$1) {
            Snapshot a2 = Snapshot.Companion.a();
            if (a2 != null) {
                function1 = a2.e();
            } else {
                function1 = null;
            }
            Snapshot b = Snapshot.Companion.b(a2);
            try {
                AnimationVector animationVector = (AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(obj2);
                animationVector.d();
                Transition.TransitionAnimationState transitionAnimationState = new Transition.TransitionAnimationState(obj, animationVector, twoWayConverter);
                Snapshot.Companion.e(a2, b, function1);
                gapComposer.g0(transitionAnimationState);
                K = transitionAnimationState;
            } catch (Throwable th) {
                Snapshot.Companion.e(a2, b, function1);
                throw th;
            }
        }
        Transition.TransitionAnimationState transitionAnimationState2 = (Transition.TransitionAnimationState) K;
        a(transition, transitionAnimationState2, obj, obj2, finiteAnimationSpec, gapComposer, 0);
        boolean f2 = gapComposer.f(transition) | gapComposer.f(transitionAnimationState2);
        Object K2 = gapComposer.K();
        if (f2 || K2 == composer$Companion$Empty$1) {
            K2 = new ec(22, transition, transitionAnimationState2);
            gapComposer.g0(K2);
        }
        EffectsKt.c(transitionAnimationState2, (Function1) K2, gapComposer);
        return transitionAnimationState2;
    }

    public static final Transition d(TransitionState transitionState, String str, Composer composer, int i) {
        boolean z;
        Function1 function1;
        boolean z2;
        boolean z3;
        int i2 = (i & 14) ^ 6;
        int i3 = 1;
        if ((i2 > 4 && ((GapComposer) composer).f(transitionState)) || (i & 6) == 4) {
            z = true;
        } else {
            z = false;
        }
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Object obj = Composer.Companion.a;
        if (z || K == obj) {
            Snapshot a2 = Snapshot.Companion.a();
            if (a2 != null) {
                function1 = a2.e();
            } else {
                function1 = null;
            }
            Snapshot b = Snapshot.Companion.b(a2);
            try {
                Object transition = new Transition(transitionState, null, str);
                Snapshot.Companion.e(a2, b, function1);
                gapComposer.g0(transition);
                K = transition;
            } catch (Throwable th) {
                Snapshot.Companion.e(a2, b, function1);
                throw th;
            }
        }
        Transition transition2 = (Transition) K;
        if (transitionState instanceof SeekableTransitionState) {
            gapComposer.W(-1357398105);
            Object K2 = gapComposer.K();
            if (K2 == obj) {
                K2 = EffectsKt.h(gapComposer);
                gapComposer.g0(K2);
            }
            Object obj2 = (CoroutineScope) K2;
            boolean h = gapComposer.h(obj2);
            if ((i2 > 4 && gapComposer.f(transitionState)) || (i & 6) == 4) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean z4 = h | z2;
            Object K3 = gapComposer.K();
            if (z4 || K3 == obj) {
                K3 = new ec(19, transitionState, obj2);
                gapComposer.g0(K3);
            }
            EffectsKt.c(obj2, (Function1) K3, gapComposer);
            SeekableTransitionState seekableTransitionState = (SeekableTransitionState) transitionState;
            Object value = ((SnapshotMutableStateImpl) seekableTransitionState.c).getValue();
            Object value2 = ((SnapshotMutableStateImpl) seekableTransitionState.b).getValue();
            if ((i2 > 4 && gapComposer.f(transitionState)) || (i & 6) == 4) {
                z3 = true;
            } else {
                z3 = false;
            }
            Object K4 = gapComposer.K();
            if (z3 || K4 == obj) {
                K4 = new TransitionKt$rememberTransition$2$1(transitionState, null);
                gapComposer.g0(K4);
            }
            EffectsKt.f(value, value2, (Function2) K4, gapComposer);
            gapComposer.p(false);
        } else {
            gapComposer.W(-1356407283);
            transition2.a(transitionState.b(), gapComposer, 0);
            gapComposer.p(false);
        }
        boolean f = gapComposer.f(transition2);
        Object K5 = gapComposer.K();
        if (f || K5 == obj) {
            K5 = new lh(i3, transition2);
            gapComposer.g0(K5);
        }
        EffectsKt.c(transition2, (Function1) K5, gapComposer);
        return transition2;
    }

    public static final TransitionInstance e(Object obj, String str, Composer composer, int i) {
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            K = new Transition(new MutableTransitionState(obj), null, str);
            gapComposer.g0(K);
        }
        TransitionInstance transitionInstance = (TransitionInstance) K;
        transitionInstance.a(obj, gapComposer, (i & 8) | 48 | (i & 14));
        Object K2 = gapComposer.K();
        if (K2 == composer$Companion$Empty$1) {
            K2 = new lh(2, transitionInstance);
            gapComposer.g0(K2);
        }
        EffectsKt.c(transitionInstance, (Function1) K2, gapComposer);
        return transitionInstance;
    }
}
