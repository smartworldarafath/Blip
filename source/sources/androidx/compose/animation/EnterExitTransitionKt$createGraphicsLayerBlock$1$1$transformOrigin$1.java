package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.ui.graphics.TransformOrigin;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1 extends Lambda implements Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<TransformOrigin>> {
    public static final EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1 k = new Lambda(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return AnimationSpecKt.b(0.0f, 0.0f, null, 7);
    }
}
