package androidx.compose.animation;

import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1 extends Lambda implements Function2<EnterExitState, EnterExitState, Boolean> {
    public static final AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1 k = new Lambda(2);

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        EnterExitState enterExitState = (EnterExitState) obj2;
        if (((EnterExitState) obj) == enterExitState && enterExitState == EnterExitState.l) {
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
