package androidx.work.impl.background.greedy;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.SystemClock;
import androidx.work.WorkInfo$State;
import androidx.work.impl.DefaultRunnableScheduler;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.StartStopTokens;
import androidx.work.impl.WorkLauncherImpl;
import androidx.work.impl.a;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.ProcessUtils;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class GreedyScheduler implements Scheduler, OnConstraintsStateChangedListener, ExecutionListener {
    public static final String x = Logger.f("GreedyScheduler");
    public final Context j;
    public final DelayedWorkTracker l;
    public boolean m;
    public final Processor p;
    public final WorkLauncherImpl q;
    public final Configuration r;
    public Boolean t;
    public final WorkConstraintsTracker u;
    public final TaskExecutor v;
    public final TimeLimiter w;
    public final HashMap k = new HashMap();
    public final Object n = new Object();
    public final StartStopTokens o = StartStopTokens.Companion.a(true);
    public final HashMap s = new HashMap();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class AttemptData {
        public final int a;
        public final long b;

        public AttemptData(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    public GreedyScheduler(Context context, Configuration configuration, Trackers trackers, Processor processor, WorkLauncherImpl workLauncherImpl, TaskExecutor taskExecutor) {
        this.j = context;
        DefaultRunnableScheduler defaultRunnableScheduler = configuration.g;
        this.l = new DelayedWorkTracker(this, defaultRunnableScheduler, configuration.d);
        this.w = new TimeLimiter(defaultRunnableScheduler, workLauncherImpl);
        this.v = taskExecutor;
        this.u = new WorkConstraintsTracker(trackers);
        this.r = configuration;
        this.p = processor;
        this.q = workLauncherImpl;
    }

    @Override // androidx.work.impl.Scheduler
    public final void a(WorkSpec... workSpecArr) {
        long max;
        if (this.t == null) {
            this.t = Boolean.valueOf(ProcessUtils.a(this.j, this.r));
        }
        if (!this.t.booleanValue()) {
            Logger.d().e(x, "Ignoring schedule request in a secondary process");
            return;
        }
        if (!this.m) {
            this.p.a(this);
            this.m = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (final WorkSpec workSpec : workSpecArr) {
            if (!this.o.b(WorkSpecKt.a(workSpec))) {
                synchronized (this.n) {
                    try {
                        WorkGenerationalId a = WorkSpecKt.a(workSpec);
                        AttemptData attemptData = (AttemptData) this.s.get(a);
                        if (attemptData == null) {
                            int i = workSpec.k;
                            this.r.d.getClass();
                            attemptData = new AttemptData(i, System.currentTimeMillis());
                            this.s.put(a, attemptData);
                        }
                        max = (Math.max((workSpec.k - attemptData.a) - 5, 0) * 30000) + attemptData.b;
                    } finally {
                    }
                }
                long max2 = Math.max(workSpec.a(), max);
                this.r.d.getClass();
                long currentTimeMillis = System.currentTimeMillis();
                if (workSpec.b == WorkInfo$State.j) {
                    if (currentTimeMillis < max2) {
                        final DelayedWorkTracker delayedWorkTracker = this.l;
                        if (delayedWorkTracker != null) {
                            RunnableScheduler runnableScheduler = delayedWorkTracker.b;
                            HashMap hashMap = delayedWorkTracker.d;
                            Runnable runnable = (Runnable) hashMap.remove(workSpec.a);
                            if (runnable != null) {
                                ((DefaultRunnableScheduler) runnableScheduler).a.removeCallbacks(runnable);
                            }
                            Runnable runnable2 = new Runnable() { // from class: androidx.work.impl.background.greedy.DelayedWorkTracker.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    Logger d = Logger.d();
                                    String str = DelayedWorkTracker.e;
                                    StringBuilder sb = new StringBuilder("Scheduling work ");
                                    WorkSpec workSpec2 = workSpec;
                                    sb.append(workSpec2.a);
                                    d.a(str, sb.toString());
                                    DelayedWorkTracker.this.a.a(workSpec2);
                                }
                            };
                            hashMap.put(workSpec.a, runnable2);
                            ((SystemClock) delayedWorkTracker.c).getClass();
                            ((DefaultRunnableScheduler) runnableScheduler).a.postDelayed(runnable2, max2 - System.currentTimeMillis());
                        }
                    } else if (!Intrinsics.a(Constraints.j, workSpec.j)) {
                        Constraints constraints = workSpec.j;
                        if (constraints.d) {
                            Logger.d().a(x, "Ignoring " + workSpec + ". Requires device idle.");
                        } else if (!constraints.i.isEmpty()) {
                            Logger.d().a(x, "Ignoring " + workSpec + ". Requires ContentUri triggers.");
                        } else {
                            hashSet.add(workSpec);
                            hashSet2.add(workSpec.a);
                        }
                    } else if (!this.o.b(WorkSpecKt.a(workSpec))) {
                        Logger.d().a(x, "Starting work for " + workSpec.a);
                        StartStopTokens startStopTokens = this.o;
                        startStopTokens.getClass();
                        StartStopToken a2 = startStopTokens.a(WorkSpecKt.a(workSpec));
                        this.w.b(a2);
                        WorkLauncherImpl workLauncherImpl = this.q;
                        workLauncherImpl.getClass();
                        TaskExecutor taskExecutor = workLauncherImpl.b;
                        a aVar = new a(workLauncherImpl, a2, null);
                        taskExecutor.getClass();
                        ((WorkManagerTaskExecutor) taskExecutor).a.execute(aVar);
                    }
                }
            }
        }
        synchronized (this.n) {
            try {
                if (!hashSet.isEmpty()) {
                    Logger.d().a(x, "Starting tracking for " + TextUtils.join(",", hashSet2));
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        WorkSpec workSpec2 = (WorkSpec) it.next();
                        WorkGenerationalId a3 = WorkSpecKt.a(workSpec2);
                        if (!this.k.containsKey(a3)) {
                            this.k.put(a3, WorkConstraintsTrackerKt.a(this.u, workSpec2, ((WorkManagerTaskExecutor) this.v).b, this));
                        }
                    }
                }
            } finally {
            }
        }
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void b(WorkGenerationalId workGenerationalId, boolean z) {
        Job job;
        StartStopToken c = this.o.c(workGenerationalId);
        if (c != null) {
            this.w.a(c);
        }
        synchronized (this.n) {
            job = (Job) this.k.remove(workGenerationalId);
        }
        if (job != null) {
            Logger.d().a(x, "Stopping tracking for " + workGenerationalId);
            job.n(null);
        }
        if (!z) {
            synchronized (this.n) {
                this.s.remove(workGenerationalId);
            }
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final boolean c() {
        return false;
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public final void d(WorkSpec workSpec, ConstraintsState constraintsState) {
        WorkGenerationalId a = WorkSpecKt.a(workSpec);
        boolean z = constraintsState instanceof ConstraintsState.ConstraintsMet;
        WorkLauncherImpl workLauncherImpl = this.q;
        TimeLimiter timeLimiter = this.w;
        String str = x;
        StartStopTokens startStopTokens = this.o;
        if (z) {
            if (!startStopTokens.b(a)) {
                Logger.d().a(str, "Constraints met: Scheduling work ID " + a);
                StartStopToken a2 = startStopTokens.a(a);
                timeLimiter.b(a2);
                workLauncherImpl.getClass();
                TaskExecutor taskExecutor = workLauncherImpl.b;
                a aVar = new a(workLauncherImpl, a2, null);
                taskExecutor.getClass();
                ((WorkManagerTaskExecutor) taskExecutor).a.execute(aVar);
                return;
            }
            return;
        }
        Logger.d().a(str, "Constraints not met: Cancelling work ID " + a);
        StartStopToken c = startStopTokens.c(a);
        if (c != null) {
            timeLimiter.a(c);
            int i = ((ConstraintsState.ConstraintsNotMet) constraintsState).a;
            workLauncherImpl.getClass();
            workLauncherImpl.a(c, i);
        }
    }

    @Override // androidx.work.impl.Scheduler
    public final void e(String str) {
        Runnable runnable;
        if (this.t == null) {
            this.t = Boolean.valueOf(ProcessUtils.a(this.j, this.r));
        }
        boolean booleanValue = this.t.booleanValue();
        String str2 = x;
        if (!booleanValue) {
            Logger.d().e(str2, "Ignoring schedule request in non-main process");
            return;
        }
        if (!this.m) {
            this.p.a(this);
            this.m = true;
        }
        Logger.d().a(str2, "Cancelling work ID " + str);
        DelayedWorkTracker delayedWorkTracker = this.l;
        if (delayedWorkTracker != null && (runnable = (Runnable) delayedWorkTracker.d.remove(str)) != null) {
            ((DefaultRunnableScheduler) delayedWorkTracker.b).a.removeCallbacks(runnable);
        }
        for (StartStopToken startStopToken : this.o.remove(str)) {
            this.w.a(startStopToken);
            WorkLauncherImpl workLauncherImpl = this.q;
            workLauncherImpl.getClass();
            workLauncherImpl.a(startStopToken, -512);
        }
    }
}
