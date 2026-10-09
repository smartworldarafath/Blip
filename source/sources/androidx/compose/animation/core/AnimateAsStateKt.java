package androidx.compose.animation.core;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.unit.Dp;
import defpackage.p0;
import java.util.Map;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AnimateAsStateKt {
    public static final SpringSpec a = AnimationSpecKt.b(0.0f, 0.0f, null, 7);

    static {
        Map map = VisibilityThresholdsKt.a;
        new Dp(0.4f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
        Float.floatToRawIntBits(1.0f);
    }

    public static final State a(float f, TweenSpec tweenSpec, GapComposer gapComposer, int i) {
        return c(new Dp(f), VectorConvertersKt.c, tweenSpec, null, "DpAnimation", gapComposer, (i << 3) & 896, 8);
    }

    public static final State b(float f, FiniteAnimationSpec finiteAnimationSpec, Composer composer, int i, int i2) {
        String str;
        FiniteAnimationSpec finiteAnimationSpec2;
        int i3 = i2 & 2;
        SpringSpec springSpec = a;
        if (i3 != 0) {
            finiteAnimationSpec = springSpec;
        }
        if ((i2 & 8) != 0) {
            str = "FloatAnimation";
        } else {
            str = "";
        }
        String str2 = str;
        if (finiteAnimationSpec == springSpec) {
            GapComposer gapComposer = (GapComposer) composer;
            gapComposer.W(1144115775);
            boolean c = gapComposer.c(0.01f);
            Object K = gapComposer.K();
            if (c || K == Composer.Companion.a) {
                K = AnimationSpecKt.b(0.0f, 0.0f, Float.valueOf(0.01f), 3);
                gapComposer.g0(K);
            }
            gapComposer.p(false);
            finiteAnimationSpec2 = (SpringSpec) K;
        } else {
            GapComposer gapComposer2 = (GapComposer) composer;
            gapComposer2.W(1144225701);
            gapComposer2.p(false);
            finiteAnimationSpec2 = finiteAnimationSpec;
        }
        return c(Float.valueOf(f), VectorConvertersKt.a, finiteAnimationSpec2, null, str2, composer, (i << 3) & 57344, 0);
    }

    public static final State c(Object obj, TwoWayConverter twoWayConverter, AnimationSpec animationSpec, Float f, String str, Composer composer, int i, int i2) {
        if ((i2 & 8) != 0) {
            f = null;
        }
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Object obj2 = Composer.Companion.a;
        if (K == obj2) {
            K = SnapshotStateKt.g(null);
            gapComposer.g0(K);
        }
        MutableState mutableState = (MutableState) K;
        Object K2 = gapComposer.K();
        if (K2 == obj2) {
            K2 = new Animatable(obj, twoWayConverter, f);
            gapComposer.g0(K2);
        }
        Animatable animatable = (Animatable) K2;
        MutableState k = SnapshotStateKt.k(null, gapComposer);
        if (f != null && (animationSpec instanceof SpringSpec)) {
            SpringSpec springSpec = (SpringSpec) animationSpec;
            if (!Intrinsics.a(springSpec.c, f)) {
                animationSpec = new SpringSpec(springSpec.a, springSpec.b, f);
            }
        }
        MutableState k2 = SnapshotStateKt.k(animationSpec, gapComposer);
        Object K3 = gapComposer.K();
        if (K3 == obj2) {
            K3 = ChannelKt.a(-1, 6, null);
            gapComposer.g0(K3);
        }
        Channel channel = (Channel) K3;
        boolean h = gapComposer.h(channel) | gapComposer.h(obj);
        Object K4 = gapComposer.K();
        if (h || K4 == obj2) {
            K4 = new p0(3, channel, obj);
            gapComposer.g0(K4);
        }
        EffectsKt.g((Function0) K4, gapComposer);
        boolean h2 = gapComposer.h(channel) | gapComposer.h(animatable) | gapComposer.f(k2) | gapComposer.f(k);
        Object K5 = gapComposer.K();
        if (h2 || K5 == obj2) {
            Object animateAsStateKt$animateValueAsState$3$1 = new AnimateAsStateKt$animateValueAsState$3$1(channel, animatable, k2, k, null);
            gapComposer.g0(animateAsStateKt$animateValueAsState$3$1);
            K5 = animateAsStateKt$animateValueAsState$3$1;
        }
        EffectsKt.e(gapComposer, channel, (Function2) K5);
        State state = (State) mutableState.getValue();
        if (state == null) {
            return animatable.c;
        }
        return state;
    }
}
