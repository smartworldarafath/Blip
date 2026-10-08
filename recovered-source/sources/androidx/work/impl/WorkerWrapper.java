package androidx.work.impl;

import android.content.Context;
import android.util.Log;
import androidx.room.util.DBUtil;
import androidx.tracing.Trace;
import androidx.work.Configuration;
import androidx.work.ConfigurationKt$createDefaultTracer$tracer$1;
import androidx.work.Data;
import androidx.work.InputMerger;
import androidx.work.InputMergerKt;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.SystemClock;
import androidx.work.WorkInfo$State;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.DependencyDao_Impl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import defpackage.ec;
import defpackage.q;
import defpackage.q7;
import defpackage.u2;
import defpackage.vi;
import defpackage.w1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkerWrapper {
    public final WorkSpec a;
    public final Context b;
    public final String c;
    public final WorkManagerTaskExecutor d;
    public final Configuration e;
    public final SystemClock f;
    public final ForegroundProcessor g;
    public final WorkDatabase h;
    public final WorkSpecDao i;
    public final DependencyDao j;
    public final ArrayList k;
    public final String l;
    public final JobImpl m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final Configuration a;
        public final WorkManagerTaskExecutor b;
        public final ForegroundProcessor c;
        public final WorkDatabase d;
        public final WorkSpec e;
        public final ArrayList f;
        public final Context g;

        public Builder(Context context, Configuration configuration, WorkManagerTaskExecutor workManagerTaskExecutor, ForegroundProcessor foregroundProcessor, WorkDatabase workDatabase, WorkSpec workSpec, ArrayList arrayList) {
            context.getClass();
            foregroundProcessor.getClass();
            this.a = configuration;
            this.b = workManagerTaskExecutor;
            this.c = foregroundProcessor;
            this.d = workDatabase;
            this.e = workSpec;
            this.f = arrayList;
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            this.g = applicationContext;
            new WorkerParameters.RuntimeExtras();
        }
    }

    public WorkerWrapper(Builder builder) {
        WorkSpec workSpec = builder.e;
        this.a = workSpec;
        this.b = builder.g;
        String str = workSpec.a;
        this.c = str;
        this.d = builder.b;
        Configuration configuration = builder.a;
        this.e = configuration;
        this.f = configuration.d;
        this.g = builder.c;
        WorkDatabase workDatabase = builder.d;
        this.h = workDatabase;
        this.i = workDatabase.v();
        this.j = workDatabase.q();
        ArrayList arrayList = builder.f;
        this.k = arrayList;
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(str);
        sb.append(", tags={ ");
        this.l = q.l(sb, CollectionsKt.y(arrayList, ",", null, null, null, 62), " } ]");
        this.m = JobKt.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
    /* JADX WARN: Type inference failed for: r3v15, types: [androidx.work.WorkerParameters, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(WorkerWrapper workerWrapper, ContinuationImpl continuationImpl) {
        WorkerWrapper$runWorker$1 workerWrapper$runWorker$1;
        int i;
        String str;
        InputMerger inputMerger;
        Data a;
        String str2 = workerWrapper.l;
        WorkManagerTaskExecutor workManagerTaskExecutor = workerWrapper.d;
        String str3 = workerWrapper.c;
        WorkDatabase workDatabase = workerWrapper.h;
        Configuration configuration = workerWrapper.e;
        ConfigurationKt$createDefaultTracer$tracer$1 configurationKt$createDefaultTracer$tracer$1 = configuration.m;
        WorkSpec workSpec = workerWrapper.a;
        try {
            if (continuationImpl instanceof WorkerWrapper$runWorker$1) {
                workerWrapper$runWorker$1 = (WorkerWrapper$runWorker$1) continuationImpl;
                int i2 = workerWrapper$runWorker$1.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    workerWrapper$runWorker$1.o = i2 - Integer.MIN_VALUE;
                    Object obj = workerWrapper$runWorker$1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = workerWrapper$runWorker$1.o;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        configurationKt$createDefaultTracer$tracer$1.getClass();
                        boolean d = Trace.d();
                        String str4 = workSpec.x;
                        String str5 = workSpec.c;
                        String str6 = workSpec.d;
                        if (d && str4 != null) {
                            Trace.a(workSpec.hashCode(), str4);
                        }
                        if (((Boolean) workDatabase.n(new vi(0, workerWrapper))).booleanValue()) {
                            return new Resolution.ResetWorkerStatus();
                        }
                        if (workSpec.b()) {
                            a = workSpec.e;
                            str = str4;
                        } else {
                            configuration.f.getClass();
                            str6.getClass();
                            String str7 = InputMergerKt.a;
                            try {
                                Object newInstance = Class.forName(str6).getDeclaredConstructor(null).newInstance(null);
                                newInstance.getClass();
                                inputMerger = (InputMerger) newInstance;
                                str = str4;
                            } catch (Exception e) {
                                str = str4;
                                Logger.d().c(InputMergerKt.a, "Trouble instantiating ".concat(str6), e);
                                inputMerger = null;
                            }
                            if (inputMerger == null) {
                                Logger.d().b(WorkerWrapperKt.a, "Could not create Input Merger ".concat(str6));
                                return new Resolution.Failed();
                            }
                            List B = CollectionsKt.B(workSpec.e);
                            WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) workerWrapper.i;
                            workSpecDao_Impl.getClass();
                            str3.getClass();
                            ArrayList F = CollectionsKt.F(B, (List) DBUtil.b(workSpecDao_Impl.a, true, false, new q7(str3, 16)));
                            Data.Builder builder = new Data.Builder();
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            Iterator it = F.iterator();
                            while (it.hasNext()) {
                                Map unmodifiableMap = Collections.unmodifiableMap(((Data) it.next()).a);
                                unmodifiableMap.getClass();
                                linkedHashMap.putAll(unmodifiableMap);
                            }
                            builder.b(linkedHashMap);
                            a = builder.a();
                        }
                        UUID fromString = UUID.fromString(str3);
                        ArrayList arrayList = workerWrapper.k;
                        ExecutorService executorService = configuration.a;
                        DefaultScheduler defaultScheduler = configuration.b;
                        WorkForegroundUpdater workForegroundUpdater = new WorkForegroundUpdater(workDatabase, workerWrapper.g, workManagerTaskExecutor);
                        ?? obj2 = new Object();
                        obj2.a = fromString;
                        obj2.b = a;
                        new HashSet(arrayList);
                        obj2.c = executorService;
                        obj2.d = defaultScheduler;
                        obj2.e = workForegroundUpdater;
                        try {
                            ListenableWorker a2 = configuration.e.a(workerWrapper.b, str5, obj2);
                            a2.d = true;
                            CoroutineContext coroutineContext = workerWrapper$runWorker$1.k;
                            coroutineContext.getClass();
                            CoroutineContext.Element v = coroutineContext.v(Job.Key.j);
                            v.getClass();
                            Job job = (Job) v;
                            job.v0(new w1(a2, d, str, workerWrapper, 1));
                            Object n = workDatabase.n(new vi(1, workerWrapper));
                            n.getClass();
                            if (!((Boolean) n).booleanValue()) {
                                return new Resolution.ResetWorkerStatus();
                            }
                            if (job.isCancelled()) {
                                return new Resolution.ResetWorkerStatus();
                            }
                            Executor executor = workManagerTaskExecutor.d;
                            executor.getClass();
                            CoroutineDispatcher a3 = ExecutorsKt.a(executor);
                            WorkerWrapper$runWorker$result$1 workerWrapper$runWorker$result$1 = new WorkerWrapper$runWorker$result$1(workerWrapper, a2, workForegroundUpdater, null);
                            workerWrapper$runWorker$1.o = 1;
                            obj = BuildersKt.e(a3, workerWrapper$runWorker$result$1, workerWrapper$runWorker$1);
                            if (obj == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        } catch (Throwable unused) {
                            String str8 = WorkerWrapperKt.a;
                            Logger.d().b(str8, "Could not create Worker " + str5);
                            return new Resolution.Failed();
                        }
                    }
                    ListenableWorker.Result result = (ListenableWorker.Result) obj;
                    result.getClass();
                    return new Resolution.Finished(result);
                }
            }
            if (i == 0) {
            }
            ListenableWorker.Result result2 = (ListenableWorker.Result) obj;
            result2.getClass();
            return new Resolution.Finished(result2);
        } catch (CancellationException e2) {
            String str9 = WorkerWrapperKt.a;
            String str10 = str2 + " was cancelled";
            if (((Logger.LogcatLogger) Logger.d()).c <= 4) {
                Log.i(str9, str10, e2);
            }
            throw e2;
        } catch (Throwable th) {
            String str11 = WorkerWrapperKt.a;
            Logger.d().c(str11, str2 + " failed because it threw an exception/error", th);
            return new Resolution.Failed();
        }
        workerWrapper$runWorker$1 = new WorkerWrapper$runWorker$1(workerWrapper, continuationImpl);
        Object obj3 = workerWrapper$runWorker$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = workerWrapper$runWorker$1.o;
    }

    public final void b(int i) {
        WorkInfo$State workInfo$State = WorkInfo$State.j;
        WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) this.i;
        String str = this.c;
        workSpecDao_Impl.f(workInfo$State, str);
        this.f.getClass();
        workSpecDao_Impl.e(System.currentTimeMillis(), str);
        workSpecDao_Impl.d(this.a.v, str);
        workSpecDao_Impl.c(-1L, str);
        workSpecDao_Impl.g(i, str);
    }

    public final void c() {
        this.f.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) this.i;
        String str = this.c;
        workSpecDao_Impl.e(currentTimeMillis, str);
        workSpecDao_Impl.f(WorkInfo$State.j, str);
        workSpecDao_Impl.getClass();
        ((Number) DBUtil.b(workSpecDao_Impl.a, false, true, new q7(str, 14))).intValue();
        workSpecDao_Impl.d(this.a.v, str);
        workSpecDao_Impl.getClass();
        DBUtil.b(workSpecDao_Impl.a, false, true, new q7(str, 15));
        workSpecDao_Impl.c(-1L, str);
    }

    public final void d(ListenableWorker.Result result) {
        result.getClass();
        String str = this.c;
        ArrayList E = CollectionsKt.E(str);
        while (true) {
            boolean isEmpty = E.isEmpty();
            WorkSpecDao workSpecDao = this.i;
            if (!isEmpty) {
                String str2 = (String) CollectionsKt.L(E);
                WorkSpecDao_Impl workSpecDao_Impl = (WorkSpecDao_Impl) workSpecDao;
                if (workSpecDao_Impl.a(str2) != WorkInfo$State.o) {
                    workSpecDao_Impl.f(WorkInfo$State.m, str2);
                }
                E.addAll(((DependencyDao_Impl) this.j).a(str2));
            } else {
                Data data = ((ListenableWorker.Result.Failure) result).a;
                data.getClass();
                WorkSpecDao_Impl workSpecDao_Impl2 = (WorkSpecDao_Impl) workSpecDao;
                workSpecDao_Impl2.d(this.a.v, str);
                workSpecDao_Impl2.getClass();
                DBUtil.b(workSpecDao_Impl2.a, false, true, new ec(29, data, str));
                return;
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class Resolution {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Failed extends Resolution {
            public final ListenableWorker.Result a = new ListenableWorker.Result.Failure();
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Finished extends Resolution {
            public final ListenableWorker.Result a;

            public Finished(ListenableWorker.Result result) {
                this.a = result;
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class ResetWorkerStatus extends Resolution {
            public final int a;

            public ResetWorkerStatus(int i) {
                this.a = i;
            }

            public /* synthetic */ ResetWorkerStatus() {
                this(-256);
            }
        }
    }
}
