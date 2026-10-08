package androidx.work.impl.constraints.controllers;

import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTrackerKt;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.constraints.trackers.ConstraintTrackerKt;
import defpackage.p0;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.work.impl.constraints.controllers.BaseConstraintController$track$1", f = "ContraintControllers.kt", l = {62}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class BaseConstraintController$track$1 extends SuspendLambda implements Function2<ProducerScope<? super ConstraintsState>, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ BaseConstraintController p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseConstraintController$track$1(BaseConstraintController baseConstraintController, Continuation continuation) {
        super(2, continuation);
        this.p = baseConstraintController;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((BaseConstraintController$track$1) s((ProducerScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        BaseConstraintController$track$1 baseConstraintController$track$1 = new BaseConstraintController$track$1(this.p, continuation);
        baseConstraintController$track$1.o = obj;
        return baseConstraintController$track$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            ProducerScope producerScope = (ProducerScope) this.o;
            BaseConstraintController baseConstraintController = this.p;
            BaseConstraintController$track$1$listener$1 baseConstraintController$track$1$listener$1 = new BaseConstraintController$track$1$listener$1(baseConstraintController, producerScope);
            ConstraintTracker constraintTracker = baseConstraintController.a;
            constraintTracker.getClass();
            synchronized (constraintTracker.c) {
                try {
                    if (constraintTracker.d.add(baseConstraintController$track$1$listener$1)) {
                        if (constraintTracker.d.size() == 1) {
                            constraintTracker.e = constraintTracker.a();
                            Logger.d().a(ConstraintTrackerKt.a, constraintTracker.getClass().getSimpleName() + ": initial state = " + constraintTracker.e);
                            BroadcastReceiverConstraintTracker broadcastReceiverConstraintTracker = (BroadcastReceiverConstraintTracker) constraintTracker;
                            Logger.d().a(BroadcastReceiverConstraintTrackerKt.a, broadcastReceiverConstraintTracker.getClass().getSimpleName().concat(": registering receiver"));
                            broadcastReceiverConstraintTracker.b.registerReceiver(broadcastReceiverConstraintTracker.f, broadcastReceiverConstraintTracker.c());
                        }
                        baseConstraintController$track$1$listener$1.a(constraintTracker.e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            p0 p0Var = new p0(4, this.p, baseConstraintController$track$1$listener$1);
            this.n = 1;
            if (ProduceKt.a(producerScope, p0Var, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
