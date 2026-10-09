package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.ui.graphics.TransformOrigin;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnimatedContentKt$AnimatedContent$1$1 extends Lambda implements Function1<AnimatedContentTransitionScope<Object>, ContentTransform> {
    public static final AnimatedContentKt$AnimatedContent$1$1 k = new Lambda(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return AnimatedContentKt.d(EnterExitTransitionKt.c(AnimationSpecKt.c(220, 90, null, 4), 2).a(EnterExitTransitionKt.e(AnimationSpecKt.c(220, 90, null, 4), 0.92f, TransformOrigin.b)), EnterExitTransitionKt.d(AnimationSpecKt.c(90, 0, null, 6), 2));
    }
}
