package net.blip.android.transferworker;

import android.app.Notification;
import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.ForegroundInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.utils.SerialExecutorImpl;
import androidx.work.impl.utils.WorkForegroundUpdater;
import defpackage.n5;
import defpackage.p1;
import defpackage.u2;
import java.util.UUID;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.CancellableFlow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.transferworker.TransferWorker$doWork$2$notifJob$1", f = "TransferWorker.kt", l = {88}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class TransferWorker$doWork$2$notifJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ TransferWorker o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferWorker$doWork$2$notifJob$1(TransferWorker transferWorker, Continuation continuation) {
        super(2, continuation);
        this.o = transferWorker;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TransferWorker$doWork$2$notifJob$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TransferWorker$doWork$2$notifJob$1(this.o, continuation);
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
            final TransferWorker transferWorker = this.o;
            CancellableFlow e = FlowKt.e((CancellableFlow) transferWorker.h);
            FlowCollector flowCollector = new FlowCollector() { // from class: net.blip.android.transferworker.TransferWorker$doWork$2$notifJob$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object r(Object obj2, Continuation continuation) {
                    Pair pair = (Pair) obj2;
                    int intValue = ((Number) pair.j).intValue();
                    Notification notification = (Notification) pair.k;
                    TransferWorker transferWorker2 = TransferWorker.this;
                    ForegroundInfo foregroundInfo = new ForegroundInfo(intValue, notification, transferWorker2.i);
                    WorkerParameters workerParameters = transferWorker2.b;
                    WorkForegroundUpdater workForegroundUpdater = workerParameters.e;
                    Context context = transferWorker2.a;
                    UUID uuid = workerParameters.a;
                    SerialExecutorImpl serialExecutorImpl = workForegroundUpdater.a.a;
                    p1 p1Var = new p1(workForegroundUpdater, uuid, foregroundInfo, context);
                    serialExecutorImpl.getClass();
                    Object a = ListenableFutureKt.a(CallbackToFutureAdapter.a(new n5(5, serialExecutorImpl, p1Var)), continuation);
                    if (a == CoroutineSingletons.j) {
                        return a;
                    }
                    return Unit.a;
                }
            };
            this.n = 1;
            if (e.a(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
