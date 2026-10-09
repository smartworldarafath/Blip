package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.TapGestureDetectorKt$NoPressGesture$1", f = "TapGestureDetector.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TapGestureDetectorKt$NoPressGesture$1 extends SuspendLambda implements Function3<PressGestureScope, Offset, Continuation<? super Unit>, Object> {
    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        long j = ((Offset) obj2).a;
        SuspendLambda suspendLambda = new SuspendLambda(3, (Continuation) obj3);
        Unit unit = Unit.a;
        suspendLambda.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        return Unit.a;
    }
}
