package androidx.compose.animation.core;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import defpackage.p1;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class InfiniteTransitionKt {
    public static final InfiniteTransition.TransitionAnimationState a(InfiniteTransition infiniteTransition, float f, float f2, InfiniteRepeatableSpec infiniteRepeatableSpec, Composer composer, int i, int i2) {
        String str;
        if ((i2 & 8) != 0) {
            str = "FloatAnimation";
        } else {
            str = "";
        }
        String str2 = str;
        return b(infiniteTransition, Float.valueOf(f), Float.valueOf(f2), VectorConvertersKt.a, infiniteRepeatableSpec, str2, composer, 33208 | ((i << 3) & 458752), 0);
    }

    public static final InfiniteTransition.TransitionAnimationState b(InfiniteTransition infiniteTransition, Number number, Number number2, TwoWayConverter twoWayConverter, InfiniteRepeatableSpec infiniteRepeatableSpec, String str, Composer composer, int i, int i2) {
        InfiniteTransition infiniteTransition2;
        Number number3;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            infiniteTransition2 = infiniteTransition;
            InfiniteTransition.TransitionAnimationState transitionAnimationState = new InfiniteTransition.TransitionAnimationState(number, number2, twoWayConverter, infiniteRepeatableSpec);
            number3 = number2;
            gapComposer.g0(transitionAnimationState);
            K = transitionAnimationState;
        } else {
            infiniteTransition2 = infiniteTransition;
            number3 = number2;
        }
        InfiniteTransition.TransitionAnimationState transitionAnimationState2 = (InfiniteTransition.TransitionAnimationState) K;
        if ((((57344 & i) ^ 24576) > 16384 && gapComposer.h(infiniteRepeatableSpec)) || (i & 24576) == 16384) {
            z = true;
        } else {
            z = false;
        }
        Object K2 = gapComposer.K();
        if (z || K2 == composer$Companion$Empty$1) {
            p1 p1Var = new p1(number, transitionAnimationState2, number3, infiniteRepeatableSpec, 2);
            gapComposer.g0(p1Var);
            K2 = p1Var;
        }
        EffectsKt.g((Function0) K2, gapComposer);
        boolean h = gapComposer.h(infiniteTransition2);
        Object K3 = gapComposer.K();
        if (h || K3 == composer$Companion$Empty$1) {
            K3 = new defpackage.b(19, infiniteTransition2, transitionAnimationState2);
            gapComposer.g0(K3);
        }
        EffectsKt.c(transitionAnimationState2, (Function1) K3, gapComposer);
        return transitionAnimationState2;
    }

    public static final InfiniteTransition c(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        if (K == Composer.Companion.a) {
            K = new InfiniteTransition();
            gapComposer.g0(K);
        }
        InfiniteTransition infiniteTransition = (InfiniteTransition) K;
        infiniteTransition.a(0, gapComposer);
        return infiniteTransition;
    }
}
