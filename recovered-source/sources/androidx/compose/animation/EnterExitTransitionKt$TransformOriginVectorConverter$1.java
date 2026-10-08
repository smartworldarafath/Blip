package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.ui.graphics.TransformOrigin;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EnterExitTransitionKt$TransformOriginVectorConverter$1 extends Lambda implements Function1<TransformOrigin, AnimationVector2D> {
    public static final EnterExitTransitionKt$TransformOriginVectorConverter$1 k = new Lambda(1);

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        long j = ((TransformOrigin) obj).a;
        return new AnimationVector2D(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)));
    }
}
