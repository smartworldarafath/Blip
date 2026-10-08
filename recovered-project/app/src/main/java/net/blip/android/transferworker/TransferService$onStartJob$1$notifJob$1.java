package net.blip.android.transferworker;

import android.app.Notification;
import android.app.job.JobParameters;
import android.content.Context;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
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
import net.blip.android.notifications.NotificationFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.transferworker.TransferService$onStartJob$1$notifJob$1", f = "TransferService.kt", l = {55}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class TransferService$onStartJob$1$notifJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ TransferService o;
    public final /* synthetic */ String p;
    public final /* synthetic */ JobParameters q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferService$onStartJob$1$notifJob$1(TransferService transferService, String str, JobParameters jobParameters, Continuation continuation) {
        super(2, continuation);
        this.o = transferService;
        this.p = str;
        this.q = jobParameters;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TransferService$onStartJob$1$notifJob$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TransferService$onStartJob$1$notifJob$1(this.o, this.p, this.q, continuation);
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
            final TransferService transferService = this.o;
            Context applicationContext = transferService.getApplicationContext();
            applicationContext.getClass();
            CancellableFlow e = FlowKt.e((CancellableFlow) new NotificationFactory(applicationContext).f(transferService.j, this.p));
            final JobParameters jobParameters = this.q;
            FlowCollector flowCollector = new FlowCollector() { // from class: net.blip.android.transferworker.TransferService$onStartJob$1$notifJob$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object r(Object obj2, Continuation continuation) {
                    Pair pair = (Pair) obj2;
                    TransferService.this.setNotification(jobParameters, ((Number) pair.j).intValue(), (Notification) pair.k, 1);
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
