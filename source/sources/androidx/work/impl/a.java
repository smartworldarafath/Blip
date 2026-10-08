package androidx.work.impl;

import androidx.room.util.DBUtil;
import androidx.work.ListenableFutureKt;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.model.WorkTagDao_Impl;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.f3;
import defpackage.s3;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ WorkLauncherImpl j;
    public final /* synthetic */ StartStopToken k;
    public final /* synthetic */ WorkerParameters.RuntimeExtras l;

    public /* synthetic */ a(WorkLauncherImpl workLauncherImpl, StartStopToken startStopToken, WorkerParameters.RuntimeExtras runtimeExtras) {
        this.j = workLauncherImpl;
        this.k = startStopToken;
        this.l = runtimeExtras;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        WorkLauncherImpl workLauncherImpl = this.j;
        StartStopToken startStopToken = this.k;
        final Processor processor = workLauncherImpl.a;
        processor.getClass();
        WorkGenerationalId workGenerationalId = startStopToken.a;
        final String str = workGenerationalId.a;
        final ArrayList arrayList = new ArrayList();
        WorkSpec workSpec = (WorkSpec) processor.e.n(new Callable() { // from class: xd
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WorkDatabase workDatabase = Processor.this.e;
                WorkTagDao_Impl workTagDao_Impl = (WorkTagDao_Impl) workDatabase.w();
                workTagDao_Impl.getClass();
                String str2 = str;
                str2.getClass();
                arrayList.addAll((List) DBUtil.b(workTagDao_Impl.a, true, false, new q7(str2, 20)));
                return ((WorkSpecDao_Impl) workDatabase.v()).b(str2);
            }
        });
        int i = 17;
        if (workSpec == null) {
            Logger.d().g(Processor.l, "Didn't find WorkSpec for id " + workGenerationalId);
            processor.d.d.execute(new f3(i, processor, workGenerationalId));
            return;
        }
        synchronized (processor.k) {
            try {
                synchronized (processor.k) {
                    if (processor.c(str) != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    Set set = (Set) processor.h.get(str);
                    if (((StartStopToken) set.iterator().next()).a.b == workGenerationalId.b) {
                        set.add(startStopToken);
                        Logger.d().a(Processor.l, "Work " + workGenerationalId + " is already enqueued for processing");
                    } else {
                        processor.d.d.execute(new f3(i, processor, workGenerationalId));
                    }
                    return;
                }
                if (workSpec.t != workGenerationalId.b) {
                    processor.d.d.execute(new f3(i, processor, workGenerationalId));
                    return;
                }
                WorkerWrapper workerWrapper = new WorkerWrapper(new WorkerWrapper.Builder(processor.b, processor.c, processor.d, processor, processor.e, workSpec, arrayList));
                CoroutineDispatcher coroutineDispatcher = workerWrapper.d.b;
                JobImpl a = JobKt.a();
                coroutineDispatcher.getClass();
                ListenableFuture a2 = ListenableFutureKt.a(CoroutineContext.Element.DefaultImpls.c(coroutineDispatcher, a), new WorkerWrapper$launch$1(workerWrapper, null));
                a2.a(new s3(processor, a2, workerWrapper, 6), processor.d.d);
                processor.g.put(str, workerWrapper);
                HashSet hashSet = new HashSet();
                hashSet.add(startStopToken);
                processor.h.put(str, hashSet);
                Logger.d().a(Processor.l, processor.getClass().getSimpleName() + ": processing " + workGenerationalId);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
