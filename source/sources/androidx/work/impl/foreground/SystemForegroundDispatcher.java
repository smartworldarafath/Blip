package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.impl.ExecutionListener;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import defpackage.u2;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SystemForegroundDispatcher implements OnConstraintsStateChangedListener, ExecutionListener {
    public static final String s = Logger.f("SystemFgDispatcher");
    public final WorkManagerImpl j;
    public final TaskExecutor k;
    public final Object l = new Object();
    public WorkGenerationalId m;
    public final LinkedHashMap n;
    public final HashMap o;
    public final HashMap p;
    public final WorkConstraintsTracker q;
    public SystemForegroundService r;

    public SystemForegroundDispatcher(Context context) {
        WorkManagerImpl a = WorkManagerImpl.a(context);
        this.j = a;
        this.k = a.d;
        this.m = null;
        this.n = new LinkedHashMap();
        this.p = new HashMap();
        this.o = new HashMap();
        this.q = new WorkConstraintsTracker(a.j);
        a.f.a(this);
    }

    public static Intent a(Context context, WorkGenerationalId workGenerationalId, ForegroundInfo foregroundInfo) {
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", workGenerationalId.a);
        intent.putExtra("KEY_GENERATION", workGenerationalId.b);
        intent.putExtra("KEY_NOTIFICATION_ID", foregroundInfo.a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", foregroundInfo.b);
        intent.putExtra("KEY_NOTIFICATION", foregroundInfo.c);
        return intent;
    }

    @Override // androidx.work.impl.ExecutionListener
    public final void b(WorkGenerationalId workGenerationalId, boolean z) {
        Job job;
        Map.Entry entry;
        synchronized (this.l) {
            try {
                if (((WorkSpec) this.o.remove(workGenerationalId)) != null) {
                    job = (Job) this.p.remove(workGenerationalId);
                } else {
                    job = null;
                }
                if (job != null) {
                    job.n(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ForegroundInfo foregroundInfo = (ForegroundInfo) this.n.remove(workGenerationalId);
        if (workGenerationalId.equals(this.m)) {
            if (this.n.size() > 0) {
                Iterator it = this.n.entrySet().iterator();
                Object next = it.next();
                while (true) {
                    entry = (Map.Entry) next;
                    if (!it.hasNext()) {
                        break;
                    } else {
                        next = it.next();
                    }
                }
                this.m = (WorkGenerationalId) entry.getKey();
                if (this.r != null) {
                    ForegroundInfo foregroundInfo2 = (ForegroundInfo) entry.getValue();
                    SystemForegroundService systemForegroundService = this.r;
                    int i = foregroundInfo2.a;
                    int i2 = foregroundInfo2.b;
                    Notification notification = foregroundInfo2.c;
                    systemForegroundService.getClass();
                    int i3 = Build.VERSION.SDK_INT;
                    if (i3 >= 31) {
                        SystemForegroundService.Api31Impl.a(systemForegroundService, i, notification, i2);
                    } else if (i3 >= 29) {
                        SystemForegroundService.Api29Impl.a(systemForegroundService, i, notification, i2);
                    } else {
                        systemForegroundService.startForeground(i, notification);
                    }
                    this.r.m.cancel(foregroundInfo2.a);
                }
            } else {
                this.m = null;
            }
        }
        SystemForegroundService systemForegroundService2 = this.r;
        if (foregroundInfo != null && systemForegroundService2 != null) {
            Logger.d().a(s, "Removing Notification (id: " + foregroundInfo.a + ", workSpecId: " + workGenerationalId + ", notificationType: " + foregroundInfo.b);
            systemForegroundService2.m.cancel(foregroundInfo.a);
        }
    }

    public final void c(Intent intent) {
        if (this.r != null) {
            int i = 0;
            int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
            int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
            String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            WorkGenerationalId workGenerationalId = new WorkGenerationalId(stringExtra, intent.getIntExtra("KEY_GENERATION", 0));
            Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
            Logger.d().a(s, "Notifying with (id:" + intExtra + ", workSpecId: " + stringExtra + ", notificationType :" + intExtra2 + ")");
            if (notification != null) {
                ForegroundInfo foregroundInfo = new ForegroundInfo(intExtra, notification, intExtra2);
                LinkedHashMap linkedHashMap = this.n;
                linkedHashMap.put(workGenerationalId, foregroundInfo);
                ForegroundInfo foregroundInfo2 = (ForegroundInfo) linkedHashMap.get(this.m);
                if (foregroundInfo2 == null) {
                    this.m = workGenerationalId;
                } else {
                    this.r.m.notify(intExtra, notification);
                    if (Build.VERSION.SDK_INT >= 29) {
                        Iterator it = linkedHashMap.entrySet().iterator();
                        while (it.hasNext()) {
                            i |= ((ForegroundInfo) ((Map.Entry) it.next()).getValue()).b;
                        }
                        foregroundInfo = new ForegroundInfo(foregroundInfo2.a, foregroundInfo2.c, i);
                    } else {
                        foregroundInfo = foregroundInfo2;
                    }
                }
                SystemForegroundService systemForegroundService = this.r;
                int i2 = foregroundInfo.a;
                int i3 = foregroundInfo.b;
                Notification notification2 = foregroundInfo.c;
                systemForegroundService.getClass();
                int i4 = Build.VERSION.SDK_INT;
                if (i4 >= 31) {
                    SystemForegroundService.Api31Impl.a(systemForegroundService, i2, notification2, i3);
                    return;
                } else if (i4 >= 29) {
                    SystemForegroundService.Api29Impl.a(systemForegroundService, i2, notification2, i3);
                    return;
                } else {
                    systemForegroundService.startForeground(i2, notification2);
                    return;
                }
            }
            u2.g("Notification passed in the intent was null.");
            return;
        }
        u2.l("handleNotify was called on the destroyed dispatcher");
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public final void d(WorkSpec workSpec, ConstraintsState constraintsState) {
        if (constraintsState instanceof ConstraintsState.ConstraintsNotMet) {
            String str = workSpec.a;
            Logger.d().a(s, "Constraints unmet for WorkSpec " + str);
            WorkGenerationalId a = WorkSpecKt.a(workSpec);
            int i = ((ConstraintsState.ConstraintsNotMet) constraintsState).a;
            WorkManagerImpl workManagerImpl = this.j;
            TaskExecutor taskExecutor = workManagerImpl.d;
            StopWorkRunnable stopWorkRunnable = new StopWorkRunnable(workManagerImpl.f, new StartStopToken(a), true, i);
            taskExecutor.getClass();
            ((WorkManagerTaskExecutor) taskExecutor).a.execute(stopWorkRunnable);
        }
    }

    public final void e() {
        this.r = null;
        synchronized (this.l) {
            try {
                Iterator it = this.p.values().iterator();
                while (it.hasNext()) {
                    ((Job) it.next()).n(null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Processor processor = this.j.f;
        synchronized (processor.k) {
            processor.j.remove(this);
        }
    }

    public final void f(int i, int i2) {
        Logger.d().e(s, "Foreground service timed out, FGS type: " + i2);
        for (Map.Entry entry : this.n.entrySet()) {
            if (((ForegroundInfo) entry.getValue()).b == i2) {
                WorkGenerationalId workGenerationalId = (WorkGenerationalId) entry.getKey();
                WorkManagerImpl workManagerImpl = this.j;
                TaskExecutor taskExecutor = workManagerImpl.d;
                StopWorkRunnable stopWorkRunnable = new StopWorkRunnable(workManagerImpl.f, new StartStopToken(workGenerationalId), true, -128);
                taskExecutor.getClass();
                ((WorkManagerTaskExecutor) taskExecutor).a.execute(stopWorkRunnable);
            }
        }
        SystemForegroundService systemForegroundService = this.r;
        if (systemForegroundService != null) {
            systemForegroundService.k = true;
            Logger.d().a(SystemForegroundService.n, "Shutting down.");
            systemForegroundService.stopForeground(true);
            systemForegroundService.stopSelf(i);
        }
    }
}
