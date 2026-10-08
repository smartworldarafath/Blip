package androidx.work.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import androidx.tracing.Trace;
import androidx.work.Configuration;
import androidx.work.ConfigurationKt$createDefaultTracer$tracer$1;
import androidx.work.Logger;
import androidx.work.WorkManager;
import androidx.work.impl.Schedulers;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.impl.utils.PreferenceUtils;
import androidx.work.impl.utils.ProcessUtils;
import androidx.work.impl.utils.SerialExecutorImpl;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import defpackage.ii;
import defpackage.kb;
import defpackage.u2;
import java.util.Arrays;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class WorkManagerImpl extends WorkManager {
    public static WorkManagerImpl k;
    public static WorkManagerImpl l;
    public static final Object m;
    public final Context a;
    public final Configuration b;
    public final WorkDatabase c;
    public final TaskExecutor d;
    public final List e;
    public final Processor f;
    public final PreferenceUtils g;
    public boolean h = false;
    public BroadcastReceiver.PendingResult i;
    public final Trackers j;

    static {
        Logger.f("WorkManagerImpl");
        k = null;
        l = null;
        m = new Object();
    }

    /* JADX WARN: Type inference failed for: r4v9, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function4] */
    public WorkManagerImpl(Context context, final Configuration configuration, TaskExecutor taskExecutor, final WorkDatabase workDatabase, final List list, Processor processor, Trackers trackers) {
        Context applicationContext = context.getApplicationContext();
        if (!applicationContext.isDeviceProtectedStorage()) {
            Logger.LogcatLogger logcatLogger = new Logger.LogcatLogger(configuration.h);
            synchronized (Logger.a) {
                try {
                    if (Logger.b == null) {
                        Logger.b = logcatLogger;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.a = applicationContext;
            this.d = taskExecutor;
            this.c = workDatabase;
            this.f = processor;
            this.j = trackers;
            this.b = configuration;
            this.e = list;
            WorkManagerTaskExecutor workManagerTaskExecutor = (WorkManagerTaskExecutor) taskExecutor;
            CoroutineDispatcher coroutineDispatcher = workManagerTaskExecutor.b;
            coroutineDispatcher.getClass();
            ContextScope a = CoroutineScopeKt.a(coroutineDispatcher);
            this.g = new PreferenceUtils(workDatabase);
            final SerialExecutorImpl serialExecutorImpl = workManagerTaskExecutor.a;
            String str = Schedulers.a;
            processor.a(new ExecutionListener() { // from class: re
                @Override // androidx.work.impl.ExecutionListener
                public final void b(WorkGenerationalId workGenerationalId, boolean z) {
                    String str2 = Schedulers.a;
                    serialExecutorImpl.execute(new se(list, workGenerationalId, configuration, workDatabase, 0));
                }
            });
            workManagerTaskExecutor.a.execute(new ForceStopRunnable(applicationContext, this));
            String str2 = UnfinishedWorkListenerKt.a;
            if (ProcessUtils.a(applicationContext, configuration)) {
                RoomDatabase roomDatabase = ((WorkSpecDao_Impl) workDatabase.v()).a;
                FlowKt.r(new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2(applicationContext, null), FlowKt.i(FlowKt.c(new FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1(new FlowUtil$createFlow$$inlined$map$1(FlowKt.c(roomDatabase.f().a((String[]) Arrays.copyOf(new String[]{"workspec"}, 1)), -1), roomDatabase, new ii(18)), new SuspendLambda(4, null)), -1))), a);
                return;
            }
            return;
        }
        u2.l("Cannot initialize WorkManager in direct boot mode");
        throw null;
    }

    public static WorkManagerImpl a(Context context) {
        WorkManagerImpl workManagerImpl;
        Object obj = m;
        synchronized (obj) {
            try {
                synchronized (obj) {
                    workManagerImpl = k;
                    if (workManagerImpl == null) {
                        workManagerImpl = l;
                    }
                }
                return workManagerImpl;
            } catch (Throwable th) {
                throw th;
            } finally {
            }
        }
        if (workManagerImpl != null) {
            return workManagerImpl;
        }
        context.getApplicationContext();
        throw new IllegalStateException("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
    }

    public final void b() {
        synchronized (m) {
            try {
                this.h = true;
                BroadcastReceiver.PendingResult pendingResult = this.i;
                if (pendingResult != null) {
                    pendingResult.finish();
                    this.i = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void c() {
        ConfigurationKt$createDefaultTracer$tracer$1 configurationKt$createDefaultTracer$tracer$1 = this.b.m;
        kb kbVar = new kb(26, this);
        configurationKt$createDefaultTracer$tracer$1.getClass();
        boolean d = Trace.d();
        if (d) {
            try {
                android.os.Trace.beginSection(Trace.e("ReschedulingWork"));
            } finally {
                if (d) {
                    android.os.Trace.endSection();
                }
            }
        }
        kbVar.a();
    }
}
