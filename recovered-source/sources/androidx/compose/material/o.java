package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements Function3 {
    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        Object tweenSpec;
        Transition.Segment segment = (Transition.Segment) obj;
        ((Integer) obj3).getClass();
        GapComposer gapComposer = (GapComposer) ((Composer) obj2);
        gapComposer.W(1849239065);
        InputPhase inputPhase = InputPhase.j;
        InputPhase inputPhase2 = InputPhase.k;
        if (segment.b(inputPhase, inputPhase2)) {
            tweenSpec = AnimationSpecKt.c(67, 0, EasingKt.c, 2);
        } else if (!segment.b(inputPhase2, inputPhase) && !segment.b(InputPhase.l, inputPhase2)) {
            tweenSpec = AnimationSpecKt.b(0.0f, 0.0f, null, 7);
        } else {
            tweenSpec = new TweenSpec(83, 67, EasingKt.c);
        }
        gapComposer.p(false);
        return tweenSpec;
    }
}
