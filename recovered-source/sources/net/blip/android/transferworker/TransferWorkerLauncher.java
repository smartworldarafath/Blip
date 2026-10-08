package net.blip.android.transferworker;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkRequest;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import defpackage.qg;
import defpackage.u2;
import java.time.Duration;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlow;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransferWorkerLauncher {
    public final Context a;
    public final StateFlow b;
    public final JobScheduler c;
    public final WorkManagerImpl d;
    public final Logger e;

    public TransferWorkerLauncher(Context context, StateFlow stateFlow) {
        stateFlow.getClass();
        this.a = context;
        this.b = stateFlow;
        Object systemService = context.getSystemService("jobscheduler");
        systemService.getClass();
        this.c = (JobScheduler) systemService;
        this.d = WorkManagerImpl.a(context);
        this.e = LoggerKt.a.m("TransferWorkerLauncher", new Pair[0]);
    }

    public final Object a(Continuation continuation) {
        return FlowKt.k(new TransferWorkerLauncher$launchTransferWorkersWhenNeeded$$inlined$map$1(this.b), new qg(17)).a(new FlowCollector() { // from class: net.blip.android.transferworker.TransferWorkerLauncher$launchTransferWorkersWhenNeeded$4
            /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Object, androidx.work.Constraints$Builder] */
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object r(Object obj, Continuation continuation2) {
                long j;
                JobInfo.Builder userInitiated;
                List<Transfer> list = (List) obj;
                TransferWorkerLauncher transferWorkerLauncher = TransferWorkerLauncher.this;
                Logger logger = transferWorkerLauncher.e;
                int size = list.size();
                logger.getClass();
                Logger.g("TransferWorkerLauncher", size + " transfers need workers", new Pair[0]);
                for (Transfer transfer : list) {
                    String str = transfer.m;
                    if (Build.VERSION.SDK_INT >= 34) {
                        JobScheduler jobScheduler = transferWorkerLauncher.c;
                        Logger logger2 = TransferService.k;
                        Context context = transferWorkerLauncher.a;
                        NetworkRequest build = new NetworkRequest.Builder().addCapability(12).build();
                        PersistableBundle persistableBundle = new PersistableBundle();
                        persistableBundle.putString("transfer_id", str);
                        int ordinal = transfer.v.ordinal();
                        long j2 = 0;
                        if (ordinal != 1) {
                            if (ordinal != 2) {
                                j = 0;
                            } else {
                                j = Transfer_DerivedKt.b(transfer);
                            }
                        } else {
                            j = 0;
                            j2 = Transfer_DerivedKt.b(transfer);
                        }
                        userInitiated = new JobInfo.Builder(("transfer_service:" + str).hashCode(), new ComponentName(context, (Class<?>) TransferService.class)).setUserInitiated(true);
                        JobInfo build2 = userInitiated.setRequiredNetwork(build).setEstimatedNetworkBytes(j2, j).setRequiresStorageNotLow(true).setExtras(persistableBundle).build();
                        build2.getClass();
                        int schedule = jobScheduler.schedule(build2);
                        if (schedule != 0) {
                            if (schedule == 1) {
                                Logger.h("scheduled job", new Pair("transferId", str));
                            }
                        } else {
                            Logger.l("scheduling job failed; attempting to enqueue work", new Pair("transferId", str));
                        }
                    }
                    String str2 = TransferWorker.j;
                    str.getClass();
                    Logger logger3 = TransferWorker.k;
                    Pair[] pairArr = {new Pair("transferId", str)};
                    logger3.getClass();
                    Logger.h("starting if needed", pairArr);
                    String concat = "work_transfer:".concat(str);
                    Data.Builder builder = new Data.Builder();
                    String str3 = TransferWorker.j;
                    str3.getClass();
                    builder.a.put(str3, str);
                    ?? obj2 = new Object();
                    NetworkRequestCompat networkRequestCompat = new NetworkRequestCompat(null);
                    NetworkType networkType = NetworkType.j;
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    obj2.a = true;
                    Constraints constraints = new Constraints(networkRequestCompat, networkType, false, false, false, obj2.a, -1L, -1L, CollectionsKt.a0(linkedHashSet));
                    WorkRequest.Builder builder2 = new WorkRequest.Builder(TransferWorker.class);
                    builder2.b.j = constraints;
                    builder2.b.e = builder.a();
                    Duration duration = Duration.ZERO;
                    duration.getClass();
                    builder2.b.g = duration.toMillis();
                    long currentTimeMillis = Long.MAX_VALUE - System.currentTimeMillis();
                    WorkSpec workSpec = builder2.b;
                    if (currentTimeMillis > workSpec.g) {
                        OutOfQuotaPolicy outOfQuotaPolicy = OutOfQuotaPolicy.j;
                        workSpec.q = true;
                        workSpec.r = outOfQuotaPolicy;
                        OneTimeWorkRequest a = builder2.a();
                        WorkManagerImpl workManagerImpl = transferWorkerLauncher.d;
                        ExistingWorkPolicy[] existingWorkPolicyArr = ExistingWorkPolicy.j;
                        workManagerImpl.getClass();
                        List B = CollectionsKt.B(a);
                        if (!B.isEmpty()) {
                            new WorkContinuationImpl(workManagerImpl, concat, B).a();
                            Logger.h("enqueued work", new Pair("transferId", str));
                        } else {
                            u2.g("beginUniqueWork needs at least one OneTimeWorkRequest.");
                            return null;
                        }
                    } else {
                        u2.g("The given initial delay is too large and will cause an overflow!");
                        return null;
                    }
                }
                return Unit.a;
            }
        }, continuation);
    }
}
