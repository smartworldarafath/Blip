package net.blip.android.transferworker;

import android.app.Notification;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Context;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.android.App;
import net.blip.android.notifications.NotificationChannels;
import net.blip.android.notifications.NotificationFactory;
import net.blip.android.notifications.e;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerId;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.Users_DerivedKt;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;
import net.blip.libblip.frontend.TransferErr;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferService extends JobService {
    public static final Logger k = LoggerKt.a.m("TransferService", new Pair[0]);
    public final StateFlow j;

    public TransferService() {
        Context context = App.m;
        this.j = App.Companion.b().a;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(JobParameters jobParameters, Transfer transfer, ContinuationImpl continuationImpl) {
        TransferService$handleFinalTransfer$1 transferService$handleFinalTransfer$1;
        int i;
        Peer peer;
        TransferErr.Code code;
        if (continuationImpl instanceof TransferService$handleFinalTransfer$1) {
            transferService$handleFinalTransfer$1 = (TransferService$handleFinalTransfer$1) continuationImpl;
            int i2 = transferService$handleFinalTransfer$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                transferService$handleFinalTransfer$1.p = i2 - Integer.MIN_VALUE;
                Object obj = transferService$handleFinalTransfer$1.n;
                Object obj2 = CoroutineSingletons.j;
                i = transferService$handleFinalTransfer$1.p;
                int i3 = 1;
                TransferErr.Code code2 = null;
                if (i == 0) {
                    if (i == 1) {
                        jobParameters = transferService$handleFinalTransfer$1.m;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    PeerId peerId = transfer.n;
                    if (peerId != null) {
                        peer = Users_DerivedKt.a(State_DerivedKt.d((State) this.j.getValue()), peerId);
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
                                Context applicationContext = getApplicationContext();
                                applicationContext.getClass();
                                Pair d = NotificationFactory.d(new NotificationFactory(applicationContext), 0, NotificationChannels.b, peer, new e(transfer, peer, 0), 1);
                                setNotification(jobParameters, ((Number) d.j).intValue(), (Notification) d.k, 0);
                            } else if (code != TransferErr.Code.B && code != TransferErr.Code.z) {
                                Context applicationContext2 = getApplicationContext();
                                applicationContext2.getClass();
                                Pair d2 = NotificationFactory.d(new NotificationFactory(applicationContext2), 0, NotificationChannels.b, peer, new e(transfer, peer, i3), 1);
                                setNotification(jobParameters, ((Number) d2.j).intValue(), (Notification) d2.k, 0);
                            }
                        }
                        return Unit.a;
                    }
                    Context applicationContext3 = getApplicationContext();
                    applicationContext3.getClass();
                    NotificationFactory notificationFactory = new NotificationFactory(applicationContext3);
                    transferService$handleFinalTransfer$1.m = jobParameters;
                    transferService$handleFinalTransfer$1.p = 1;
                    obj = notificationFactory.e(peer, transfer, transferService$handleFinalTransfer$1);
                    if (obj == obj2) {
                        return obj2;
                    }
                }
                Pair pair = (Pair) obj;
                setNotification(jobParameters, ((Number) pair.j).intValue(), (Notification) pair.k, 0);
                return Unit.a;
            }
        }
        transferService$handleFinalTransfer$1 = new TransferService$handleFinalTransfer$1(this, continuationImpl);
        Object obj3 = transferService$handleFinalTransfer$1.n;
        Object obj22 = CoroutineSingletons.j;
        i = transferService$handleFinalTransfer$1.p;
        int i32 = 1;
        TransferErr.Code code22 = null;
        if (i == 0) {
        }
        Pair pair2 = (Pair) obj3;
        setNotification(jobParameters, ((Number) pair2.j).intValue(), (Notification) pair2.k, 0);
        return Unit.a;
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        jobParameters.getClass();
        String string = jobParameters.getExtras().getString("transfer_id");
        Logger logger = k;
        if (string == null) {
            Pair[] pairArr = {new Pair("params", jobParameters)};
            logger.getClass();
            Logger.e("starting job: transferId is null", pairArr);
            return false;
        }
        Pair[] pairArr2 = {new Pair("transferId", string), new Pair("params", jobParameters)};
        logger.getClass();
        Logger.h("started job", pairArr2);
        DefaultScheduler defaultScheduler = Dispatchers.a;
        BuildersKt.c(CoroutineScopeKt.a(DefaultIoScheduler.l), null, null, new TransferService$onStartJob$1(this, string, jobParameters, null), 3);
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        jobParameters.getClass();
        String string = jobParameters.getExtras().getString("transfer_id");
        if (string == null) {
            string = "";
        }
        Pair[] pairArr = {new Pair("transferId", string), new Pair("params", jobParameters)};
        k.getClass();
        Logger.h("stopped job", pairArr);
        return false;
    }
}
