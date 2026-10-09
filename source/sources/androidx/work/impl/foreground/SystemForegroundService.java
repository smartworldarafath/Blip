package androidx.work.impl.foreground;

import android.app.ForegroundServiceStartNotAllowedException;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.lifecycle.LifecycleService;
import androidx.work.ConfigurationKt$createDefaultTracer$tracer$1;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.OperationKt;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.SerialExecutorImpl;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import defpackage.p0;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SystemForegroundService extends LifecycleService {
    public static final String n = Logger.f("SystemFgService");
    public boolean k;
    public SystemForegroundDispatcher l;
    public NotificationManager m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static void a(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
            systemForegroundService.startForeground(i, notification, i2);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api31Impl {
        public static void a(SystemForegroundService systemForegroundService, int i, Notification notification, int i2) {
            try {
                systemForegroundService.startForeground(i, notification, i2);
            } catch (ForegroundServiceStartNotAllowedException e) {
                Logger d = Logger.d();
                String str = SystemForegroundService.n;
                if (((Logger.LogcatLogger) d).c <= 5) {
                    Log.w(str, "Unable to start foreground service", e);
                }
            } catch (SecurityException e2) {
                Logger d2 = Logger.d();
                String str2 = SystemForegroundService.n;
                if (((Logger.LogcatLogger) d2).c <= 5) {
                    Log.w(str2, "Unable to start foreground service", e2);
                }
            }
        }
    }

    public final void b() {
        this.m = (NotificationManager) getApplicationContext().getSystemService("notification");
        SystemForegroundDispatcher systemForegroundDispatcher = new SystemForegroundDispatcher(getApplicationContext());
        this.l = systemForegroundDispatcher;
        if (systemForegroundDispatcher.r != null) {
            Logger.d().b(SystemForegroundDispatcher.s, "A callback already exists.");
        } else {
            systemForegroundDispatcher.r = this;
        }
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onCreate() {
        super.onCreate();
        b();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.l.e();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        boolean z = this.k;
        String str = n;
        if (z) {
            Logger.d().e(str, "Re-initializing SystemForegroundService after a request to shut-down.");
            this.l.e();
            b();
            this.k = false;
        }
        if (intent != null) {
            final SystemForegroundDispatcher systemForegroundDispatcher = this.l;
            systemForegroundDispatcher.getClass();
            String str2 = SystemForegroundDispatcher.s;
            String action = intent.getAction();
            if ("ACTION_START_FOREGROUND".equals(action)) {
                Logger.d().e(str2, "Started foreground service " + intent);
                final String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
                TaskExecutor taskExecutor = systemForegroundDispatcher.k;
                Runnable anonymousClass1 = new Runnable() { // from class: androidx.work.impl.foreground.SystemForegroundDispatcher.1
                    public final /* synthetic */ String j;

                    public AnonymousClass1(final String stringExtra2) {
                        r2 = stringExtra2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkSpec workSpec;
                        Processor processor = SystemForegroundDispatcher.this.j.f;
                        String str3 = r2;
                        synchronized (processor.k) {
                            try {
                                WorkerWrapper c = processor.c(str3);
                                if (c != null) {
                                    workSpec = c.a;
                                } else {
                                    workSpec = null;
                                }
                            } finally {
                            }
                        }
                        if (workSpec != null && !Intrinsics.a(Constraints.j, workSpec.j)) {
                            synchronized (SystemForegroundDispatcher.this.l) {
                                SystemForegroundDispatcher.this.o.put(WorkSpecKt.a(workSpec), workSpec);
                                SystemForegroundDispatcher systemForegroundDispatcher2 = SystemForegroundDispatcher.this;
                                SystemForegroundDispatcher.this.p.put(WorkSpecKt.a(workSpec), WorkConstraintsTrackerKt.a(systemForegroundDispatcher2.q, workSpec, ((WorkManagerTaskExecutor) systemForegroundDispatcher2.k).b, systemForegroundDispatcher2));
                            }
                        }
                    }
                };
                taskExecutor.getClass();
                ((WorkManagerTaskExecutor) taskExecutor).a.execute(anonymousClass1);
                systemForegroundDispatcher.c(intent);
                return 3;
            }
            if ("ACTION_NOTIFY".equals(action)) {
                systemForegroundDispatcher.c(intent);
                return 3;
            }
            if ("ACTION_CANCEL_WORK".equals(action)) {
                Logger.d().e(str2, "Stopping foreground work for " + intent);
                String stringExtra2 = intent.getStringExtra("KEY_WORKSPEC_ID");
                if (stringExtra2 != null && !TextUtils.isEmpty(stringExtra2)) {
                    WorkManagerImpl workManagerImpl = systemForegroundDispatcher.j;
                    UUID fromString = UUID.fromString(stringExtra2);
                    workManagerImpl.getClass();
                    fromString.getClass();
                    ConfigurationKt$createDefaultTracer$tracer$1 configurationKt$createDefaultTracer$tracer$1 = workManagerImpl.b.m;
                    SerialExecutorImpl serialExecutorImpl = ((WorkManagerTaskExecutor) workManagerImpl.d).a;
                    serialExecutorImpl.getClass();
                    OperationKt.a(configurationKt$createDefaultTracer$tracer$1, "CancelWorkById", serialExecutorImpl, new p0(7, workManagerImpl, fromString));
                    return 3;
                }
                return 3;
            }
            if ("ACTION_STOP_FOREGROUND".equals(action)) {
                Logger.d().e(str2, "Stopping foreground service");
                SystemForegroundService systemForegroundService = systemForegroundDispatcher.r;
                if (systemForegroundService != null) {
                    systemForegroundService.k = true;
                    Logger.d().a(str, "Shutting down.");
                    systemForegroundService.stopForeground(true);
                    systemForegroundService.stopSelf(i2);
                    return 3;
                }
                return 3;
            }
            return 3;
        }
        return 3;
    }

    @Override // android.app.Service
    public final void onTimeout(int i) {
        if (Build.VERSION.SDK_INT >= 35) {
            return;
        }
        this.l.f(i, 2048);
    }

    public final void onTimeout(int i, int i2) {
        this.l.f(i, i2);
    }
}
