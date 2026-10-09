package androidx.work.impl.background.systemjob;

import android.app.Application;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.os.Build;
import android.os.Looper;
import android.os.PersistableBundle;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkLauncherImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.a;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import defpackage.q;
import defpackage.u2;
import java.util.Arrays;
import java.util.HashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SystemJobService extends JobService implements ExecutionListener {
    public static final String n = Logger.f("SystemJobService");
    public WorkManagerImpl j;
    public final HashMap k = new HashMap();
    public final StartStopTokens l = StartStopTokens.Companion.a(false);
    public WorkLauncherImpl m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api31Impl {
        public static int a(JobParameters jobParameters) {
            int stopReason = jobParameters.getStopReason();
            String str = SystemJobService.n;
            switch (stopReason) {
                case 0:
                case 1:
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                case KeyModifiers.a /* 9 */:
                case KeyModifiers.b /* 10 */:
                case 11:
                case KeyModifiers.c /* 12 */:
                case 13:
                case 14:
                case 15:
                    return stopReason;
                default:
                    return -512;
            }
        }
    }

    public static void a(String str) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return;
        }
        u2.l(q.i("Cannot invoke ", str, " on a background thread"));
    }

    public static WorkGenerationalId c(JobParameters jobParameters) {
        try {
            PersistableBundle extras = jobParameters.getExtras();
            if (extras != null && extras.containsKey("EXTRA_WORK_SPEC_ID")) {
                return new WorkGenerationalId(extras.getString("EXTRA_WORK_SPEC_ID"), extras.getInt("EXTRA_WORK_SPEC_GENERATION"));
            }
            return null;
        } catch (NullPointerException unused) {
            return null;
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void b(WorkGenerationalId workGenerationalId, boolean z) {
        a("onExecuted");
        Logger.d().a(n, workGenerationalId.a + " executed on JobScheduler");
        JobParameters jobParameters = (JobParameters) this.k.remove(workGenerationalId);
        this.l.c(workGenerationalId);
        if (jobParameters != null) {
            jobFinished(jobParameters, z);
        }
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        try {
            WorkManagerImpl a = WorkManagerImpl.a(getApplicationContext());
            this.j = a;
            Processor processor = a.f;
            this.m = new WorkLauncherImpl(processor, a.d);
            processor.a(this);
        } catch (IllegalStateException e) {
            if (Application.class.equals(getApplication().getClass())) {
                Logger.d().g(n, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer.");
                return;
            }
            throw new IllegalStateException("WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", e);
        }
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        WorkManagerImpl workManagerImpl = this.j;
        if (workManagerImpl != null) {
            Processor processor = workManagerImpl.f;
            synchronized (processor.k) {
                processor.j.remove(this);
            }
        }
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        a("onStartJob");
        WorkManagerImpl workManagerImpl = this.j;
        String str = n;
        if (workManagerImpl == null) {
            Logger.d().a(str, "WorkManager is not initialized; requesting retry.");
            jobFinished(jobParameters, true);
            return false;
        }
        WorkGenerationalId c = c(jobParameters);
        if (c == null) {
            Logger.d().b(str, "WorkSpec id not found!");
            return false;
        }
        HashMap hashMap = this.k;
        if (hashMap.containsKey(c)) {
            Logger.d().a(str, "Job is already being executed by SystemJobService: " + c);
            return false;
        }
        Logger.d().a(str, "onStartJob for " + c);
        hashMap.put(c, jobParameters);
        WorkerParameters.RuntimeExtras runtimeExtras = new WorkerParameters.RuntimeExtras();
        if (jobParameters.getTriggeredContentUris() != null) {
            Arrays.asList(jobParameters.getTriggeredContentUris());
        }
        if (jobParameters.getTriggeredContentAuthorities() != null) {
            Arrays.asList(jobParameters.getTriggeredContentAuthorities());
        }
        jobParameters.getNetwork();
        WorkLauncherImpl workLauncherImpl = this.m;
        StartStopToken a = this.l.a(c);
        workLauncherImpl.getClass();
        a.getClass();
        TaskExecutor taskExecutor = workLauncherImpl.b;
        a aVar = new a(workLauncherImpl, a, runtimeExtras);
        taskExecutor.getClass();
        ((WorkManagerTaskExecutor) taskExecutor).a.execute(aVar);
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        boolean contains;
        int i;
        a("onStopJob");
        if (this.j == null) {
            Logger.d().a(n, "WorkManager is not initialized; requesting retry.");
            return true;
        }
        WorkGenerationalId c = c(jobParameters);
        if (c == null) {
            Logger.d().b(n, "WorkSpec id not found!");
            return false;
        }
        Logger.d().a(n, "onStopJob for " + c);
        this.k.remove(c);
        StartStopToken c2 = this.l.c(c);
        if (c2 != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                i = Api31Impl.a(jobParameters);
            } else {
                i = -512;
            }
            WorkLauncherImpl workLauncherImpl = this.m;
            workLauncherImpl.getClass();
            workLauncherImpl.a(c2, i);
        }
        Processor processor = this.j.f;
        String str = c.a;
        synchronized (processor.k) {
            contains = processor.i.contains(str);
        }
        return !contains;
    }
}
