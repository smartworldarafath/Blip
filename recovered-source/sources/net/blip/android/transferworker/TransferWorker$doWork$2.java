package net.blip.android.transferworker;

import android.app.Notification;
import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.core.app.NotificationManagerCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.ForegroundInfo;
import androidx.work.ListenableWorker;
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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import net.blip.android.notifications.NotificationChannels;
import net.blip.android.notifications.NotificationFactory;
import net.blip.android.notifications.NotificationFactoryKt;
import net.blip.android.notifications.b;
import net.blip.android.notifications.e;
import net.blip.libblip.Logger;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.Users_DerivedKt;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;
import net.blip.libblip.frontend.TransferErr;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.transferworker.TransferWorker$doWork$2", f = "TransferWorker.kt", l = {70, 101, 118}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
public final class TransferWorker$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
    public NotificationManagerCompat n;
    public Object o;
    public Object p;
    public int q;
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ TransferWorker t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransferWorker$doWork$2(TransferWorker transferWorker, Continuation continuation) {
        super(2, continuation);
        this.t = transferWorker;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TransferWorker$doWork$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TransferWorker$doWork$2 transferWorker$doWork$2 = new TransferWorker$doWork$2(this.t, continuation);
        transferWorker$doWork$2.s = obj;
        return transferWorker$doWork$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x01c6, code lost:
    
        if (r0 == r5) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0118 A[Catch: Exception -> 0x0027, TryCatch #0 {Exception -> 0x0027, blocks: (B:8:0x001f, B:10:0x01c9, B:11:0x01da, B:17:0x003c, B:19:0x010e, B:21:0x0118, B:23:0x011e, B:25:0x0122, B:26:0x0132, B:31:0x0142, B:33:0x0146, B:34:0x014a, B:36:0x014e, B:37:0x0150, B:39:0x0154, B:40:0x017d, B:42:0x0182, B:45:0x0187, B:47:0x01ae, B:52:0x0049, B:53:0x00dd, B:58:0x0051, B:64:0x00d6), top: B:2:0x0015 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x011e A[Catch: Exception -> 0x0027, TryCatch #0 {Exception -> 0x0027, blocks: (B:8:0x001f, B:10:0x01c9, B:11:0x01da, B:17:0x003c, B:19:0x010e, B:21:0x0118, B:23:0x011e, B:25:0x0122, B:26:0x0132, B:31:0x0142, B:33:0x0146, B:34:0x014a, B:36:0x014e, B:37:0x0150, B:39:0x0154, B:40:0x017d, B:42:0x0182, B:45:0x0187, B:47:0x01ae, B:52:0x0049, B:53:0x00dd, B:58:0x0051, B:64:0x00d6), top: B:2:0x0015 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        NotificationManagerCompat notificationManagerCompat;
        int i;
        Job c;
        Object n;
        Job job;
        Transfer transfer;
        Peer peer;
        Object e;
        TransferErr.Code code;
        TransferWorker transferWorker = this.t;
        StateFlow stateFlow = transferWorker.g;
        Context context = transferWorker.a;
        CoroutineScope coroutineScope = (CoroutineScope) this.s;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.r;
        TransferErr.Code code2 = null;
        try {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
                            NotificationManagerCompat notificationManagerCompat2 = this.n;
                            ResultKt.b(obj);
                            notificationManagerCompat = notificationManagerCompat2;
                            e = obj;
                            Pair pair = (Pair) e;
                            NotificationFactoryKt.c(notificationManagerCompat, ((Number) pair.j).intValue(), (Notification) pair.k);
                            return new ListenableWorker.Result.Success();
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    int i3 = this.q;
                    Job job2 = (Job) this.p;
                    job = (Job) this.o;
                    notificationManagerCompat = this.n;
                    ResultKt.b(obj);
                    c = job2;
                    i = i3;
                    n = obj;
                    transfer = (Transfer) n;
                    job.n(null);
                    c.n(null);
                    if (transfer != null) {
                        return new ListenableWorker.Result.Success();
                    }
                    PeerId peerId = transfer.n;
                    if (peerId != null) {
                        peer = Users_DerivedKt.a(State_DerivedKt.d((State) stateFlow.getValue()), peerId);
                    } else {
                        peer = null;
                    }
                    int ordinal = transfer.w.ordinal();
                    if (ordinal != 8) {
                        if (ordinal == 9) {
                            TransferErr transferErr = transfer.t;
                            if (transferErr != null) {
                                code = transferErr.m;
                            } else {
                                code = null;
                            }
                            TransferErr transferErr2 = transfer.u;
                            if (transferErr2 != null) {
                                code2 = transferErr2.m;
                            }
                            if (code2 == TransferErr.Code.A) {
                                context.getClass();
                                Pair d = NotificationFactory.d(new NotificationFactory(context), 0, NotificationChannels.b, peer, new e(transfer, peer, 0), 1);
                                NotificationFactoryKt.c(notificationManagerCompat, ((Number) d.j).intValue(), (Notification) d.k);
                            } else {
                                Peer peer2 = peer;
                                if (code != TransferErr.Code.B && code != TransferErr.Code.z) {
                                    context.getClass();
                                    Pair d2 = NotificationFactory.d(new NotificationFactory(context), 0, NotificationChannels.b, peer2, new e(transfer, peer2, 1), 1);
                                    NotificationFactoryKt.c(notificationManagerCompat, ((Number) d2.j).intValue(), (Notification) d2.k);
                                }
                            }
                        }
                        return new ListenableWorker.Result.Success();
                    }
                    context.getClass();
                    NotificationFactory notificationFactory = new NotificationFactory(context);
                    this.s = null;
                    this.n = notificationManagerCompat;
                    this.o = null;
                    this.p = null;
                    this.q = i;
                    this.r = 3;
                    e = notificationFactory.e(peer, transfer, this);
                } else {
                    i = this.q;
                    notificationManagerCompat = this.n;
                    ResultKt.b(obj);
                }
            } else {
                ResultKt.b(obj);
                notificationManagerCompat = new NotificationManagerCompat(context);
                TransferWorker.k.getClass();
                Logger.h("doWork()", new Pair[0]);
                context.getClass();
                new NotificationFactory(context).b(transferWorker.e());
                context.getClass();
                NotificationFactory notificationFactory2 = new NotificationFactory(context);
                String e2 = transferWorker.e();
                int hashCode = "transferProgress:".concat(e2).hashCode();
                Pair d3 = NotificationFactory.d(notificationFactory2, hashCode, NotificationChannels.e, null, new b(notificationFactory2, hashCode, e2), 4);
                int intValue = ((Number) d3.j).intValue();
                ForegroundInfo foregroundInfo = new ForegroundInfo(intValue, (Notification) d3.k, transferWorker.i);
                this.s = coroutineScope;
                this.n = notificationManagerCompat;
                this.q = intValue;
                this.r = 1;
                WorkerParameters workerParameters = transferWorker.b;
                WorkForegroundUpdater workForegroundUpdater = workerParameters.e;
                UUID uuid = workerParameters.a;
                SerialExecutorImpl serialExecutorImpl = workForegroundUpdater.a.a;
                p1 p1Var = new p1(workForegroundUpdater, uuid, foregroundInfo, context);
                serialExecutorImpl.getClass();
                Object a = ListenableFutureKt.a(CallbackToFutureAdapter.a(new n5(5, serialExecutorImpl, p1Var)), this);
                if (a != coroutineSingletons) {
                    a = Unit.a;
                }
                if (a != coroutineSingletons) {
                    i = intValue;
                } else {
                    return coroutineSingletons;
                }
            }
            Job c2 = BuildersKt.c(coroutineScope, null, null, new TransferWorker$doWork$2$timeoutJob$1(transferWorker, null), 3);
            c = BuildersKt.c(coroutineScope, null, null, new TransferWorker$doWork$2$notifJob$1(transferWorker, null), 3);
            TransferWorker$doWork$2$invokeSuspend$$inlined$filter$1 transferWorker$doWork$2$invokeSuspend$$inlined$filter$1 = new TransferWorker$doWork$2$invokeSuspend$$inlined$filter$1(new TransferWorker$doWork$2$invokeSuspend$$inlined$map$1(stateFlow, transferWorker));
            this.s = coroutineScope;
            this.n = notificationManagerCompat;
            this.o = c2;
            this.p = c;
            this.q = i;
            this.r = 2;
            n = FlowKt.n(transferWorker$doWork$2$invokeSuspend$$inlined$filter$1, this);
            if (n != coroutineSingletons) {
                job = c2;
                transfer = (Transfer) n;
                job.n(null);
                c.n(null);
                if (transfer != null) {
                }
            } else {
                return coroutineSingletons;
            }
        } catch (Exception e3) {
            Logger logger = TransferWorker.k;
            Pair[] pairArr = {new Pair("transferId", transferWorker.e()), new Pair("err", e3)};
            logger.getClass();
            Logger.e("failed", pairArr);
            return new ListenableWorker.Result.Failure();
        }
    }
}
