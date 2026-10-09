package net.blip.android.notifications;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.ec;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.ThrowingCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.notifications.NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1", f = "NotificationFactory.kt", l = {189}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<Object>, Object, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ FlowCollector o;
    public /* synthetic */ Object p;
    public final /* synthetic */ ec q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1(Continuation continuation, ec ecVar) {
        super(3, continuation);
        this.q = ecVar;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1 notificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1 = new NotificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1((Continuation) obj3, this.q);
        notificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1.o = (FlowCollector) obj;
        notificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1.p = obj2;
        return notificationFactoryKt$dynamicDelay$$inlined$flatMapLatest$1.v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        FlowCollector flowCollector = this.o;
        Object obj2 = this.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            Flow p = FlowKt.p(new NotificationFactoryKt$dynamicDelay$1$1(((Number) this.q.b(obj2)).longValue(), obj2, null));
            this.o = null;
            this.p = null;
            this.n = 1;
            if (!(flowCollector instanceof ThrowingCollector)) {
                Object a = ((AbstractFlow) p).a(flowCollector, this);
                if (a != coroutineSingletons) {
                    a = unit;
                }
                if (a == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                throw ((ThrowingCollector) flowCollector).j;
            }
        }
        return unit;
    }
}
