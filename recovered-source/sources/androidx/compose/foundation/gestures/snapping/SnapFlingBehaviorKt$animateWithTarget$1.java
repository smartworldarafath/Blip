package androidx.compose.foundation.gestures.snapping;

import androidx.compose.animation.core.AnimationState;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$FloatRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt", f = "SnapFlingBehavior.kt", l = {349}, m = "animateWithTarget", v = 1)
/* loaded from: classes.dex */
public final class SnapFlingBehaviorKt$animateWithTarget$1 extends ContinuationImpl {
    public float m;
    public float n;
    public AnimationState o;
    public Ref$FloatRef p;
    public /* synthetic */ Object q;
    public int r;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.q = obj;
        this.r |= Integer.MIN_VALUE;
        return SnapFlingBehaviorKt.b(null, 0.0f, 0.0f, null, null, null, this);
    }
}
