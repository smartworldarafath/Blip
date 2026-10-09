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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import net.blip.android.notifications.NotificationChannels;
import net.blip.android.notifications.NotificationFactory;
import net.blip.android.notifications.b;
import net.blip.libblip.Logger;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.transferworker.TransferService$onStartJob$1", f = "TransferService.kt", l = {64, 71}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class TransferService$onStartJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public Object n;
    public int o;
    public int p;
    public /* synthetic */ Object q;
    public final /* synthetic */ TransferService r;
    public final /* synthetic */ String s;
    public final /* synthetic */ JobParameters t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferService$onStartJob$1(TransferService transferService, String str, JobParameters jobParameters, Continuation continuation) {
        super(2, continuation);
        this.r = transferService;
        this.s = str;
        this.t = jobParameters;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TransferService$onStartJob$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TransferService$onStartJob$1 transferService$onStartJob$1 = new TransferService$onStartJob$1(this.r, this.s, this.t, continuation);
        transferService$onStartJob$1.q = obj;
        return transferService$onStartJob$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00ae, code lost:
    
        if (r8.a(r6, r1, r17) == r2) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b0, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0098, code lost:
    
        if (r1 == r2) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        int intValue;
        Job c;
        Object n;
        CoroutineScope coroutineScope = (CoroutineScope) this.q;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.p;
        JobParameters jobParameters = this.t;
        String str = this.s;
        TransferService transferService = this.r;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    transferService.jobFinished(jobParameters, false);
                    Logger logger = TransferService.k;
                    Pair[] pairArr = {new Pair("transferId", str), new Pair("params", jobParameters)};
                    logger.getClass();
                    Logger.h("finished job", pairArr);
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            int i2 = this.o;
            c = (Job) this.n;
            ResultKt.b(obj);
            intValue = i2;
            n = obj;
        } else {
            ResultKt.b(obj);
            Context applicationContext = transferService.getApplicationContext();
            applicationContext.getClass();
            new NotificationFactory(applicationContext).b(str);
            Context applicationContext2 = transferService.getApplicationContext();
            applicationContext2.getClass();
            NotificationFactory notificationFactory = new NotificationFactory(applicationContext2);
            int hashCode = "transferProgress:".concat(str).hashCode();
            Pair d = NotificationFactory.d(notificationFactory, hashCode, NotificationChannels.e, null, new b(notificationFactory, hashCode, str), 4);
            intValue = ((Number) d.j).intValue();
            transferService.setNotification(jobParameters, intValue, (Notification) d.k, 1);
            c = BuildersKt.c(coroutineScope, null, null, new TransferService$onStartJob$1$notifJob$1(transferService, str, jobParameters, null), 3);
            TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1 transferService$onStartJob$1$invokeSuspend$$inlined$filter$1 = new TransferService$onStartJob$1$invokeSuspend$$inlined$filter$1(new TransferService$onStartJob$1$invokeSuspend$$inlined$map$1(transferService.j, str));
            this.q = null;
            this.n = c;
            this.o = intValue;
            this.p = 1;
            n = FlowKt.n(transferService$onStartJob$1$invokeSuspend$$inlined$filter$1, this);
        }
        Transfer transfer = (Transfer) n;
        c.n(null);
        if (transfer != null) {
            this.q = null;
            this.n = null;
            this.o = intValue;
            this.p = 2;
        }
        transferService.jobFinished(jobParameters, false);
        Logger logger2 = TransferService.k;
        Pair[] pairArr2 = {new Pair("transferId", str), new Pair("params", jobParameters)};
        logger2.getClass();
        Logger.h("finished job", pairArr2);
        return Unit.a;
    }
}
