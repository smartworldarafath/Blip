package androidx.compose.ui.platform;

import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import defpackage.f7;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.platform.MotionDurationScaleImpl$startObservingSystemScaleFactor$1", f = "WindowRecomposer.android.kt", l = {446}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class MotionDurationScaleImpl$startObservingSystemScaleFactor$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ StateFlow o;
    public final /* synthetic */ MotionDurationScaleImpl p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MotionDurationScaleImpl$startObservingSystemScaleFactor$1(StateFlow stateFlow, MotionDurationScaleImpl motionDurationScaleImpl, Continuation continuation) {
        super(2, continuation);
        this.o = stateFlow;
        this.p = motionDurationScaleImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((MotionDurationScaleImpl$startObservingSystemScaleFactor$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new MotionDurationScaleImpl$startObservingSystemScaleFactor$1(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1) {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            final MotionDurationScaleImpl motionDurationScaleImpl = this.p;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.ui.platform.MotionDurationScaleImpl$startObservingSystemScaleFactor$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object r(Object obj2, Continuation continuation) {
                    ((SnapshotMutableFloatStateImpl) MotionDurationScaleImpl.this.l).k(((Number) obj2).floatValue());
                    return Unit.a;
                }
            };
            this.n = 1;
            if (this.o.a(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        f7.h();
        return null;
    }
}
