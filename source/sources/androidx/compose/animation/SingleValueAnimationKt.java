package androidx.compose.animation;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SingleValueAnimationKt {
    public static final SpringSpec a = AnimationSpecKt.b(0.0f, 0.0f, null, 7);

    public static final State a(long j, TweenSpec tweenSpec, Composer composer, int i, int i2) {
        FiniteAnimationSpec finiteAnimationSpec = tweenSpec;
        if ((i2 & 2) != 0) {
            finiteAnimationSpec = a;
        }
        FiniteAnimationSpec finiteAnimationSpec2 = finiteAnimationSpec;
        GapComposer gapComposer = (GapComposer) composer;
        boolean f = gapComposer.f(Color.f(j));
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            K = (TwoWayConverter) ColorVectorConverterKt$ColorToVector$1.k.b(Color.f(j));
            gapComposer.g0(K);
        }
        return AnimateAsStateKt.c(new Color(j), (TwoWayConverter) K, finiteAnimationSpec2, null, "ColorAnimation", gapComposer, (i << 3) & 896, 8);
    }
}
