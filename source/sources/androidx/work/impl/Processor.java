package androidx.work.impl;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.foreground.SystemForegroundService;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Processor implements ForegroundProcessor {
    public static final String l = Logger.f("Processor");
    public final Context b;
    public final Configuration c;
    public final WorkManagerTaskExecutor d;
    public final WorkDatabase e;
    public final HashMap g = new HashMap();
    public final HashMap f = new HashMap();
    public final HashSet i = new HashSet();
    public final ArrayList j = new ArrayList();
    public PowerManager.WakeLock a = null;
    public final Object k = new Object();
    public final HashMap h = new HashMap();

    public Processor(Context context, Configuration configuration, WorkManagerTaskExecutor workManagerTaskExecutor, WorkDatabase workDatabase) {
        this.b = context;
        this.c = configuration;
        this.d = workManagerTaskExecutor;
        this.e = workDatabase;
    }

    public static boolean d(String str, WorkerWrapper workerWrapper, int i) {
        String str2 = l;
        if (workerWrapper != null) {
            workerWrapper.m.y(new WorkerStoppedException(i));
            Logger.d().a(str2, "WorkerWrapper interrupted for " + str);
            return true;
        }
        Logger.d().a(str2, "WorkerWrapper could not be found for " + str);
        return false;
    }

    public final void a(ExecutionListener executionListener) {
        synchronized (this.k) {
            this.j.add(executionListener);
        }
    }

    public final WorkerWrapper b(String str) {
        boolean z;
        WorkerWrapper workerWrapper = (WorkerWrapper) this.f.remove(str);
        if (workerWrapper != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            workerWrapper = (WorkerWrapper) this.g.remove(str);
        }
        this.h.remove(str);
        if (z) {
            synchronized (this.k) {
                try {
                    if (this.f.isEmpty()) {
                        Context context = this.b;
                        String str2 = SystemForegroundDispatcher.s;
                        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
                        intent.setAction("ACTION_STOP_FOREGROUND");
                        try {
                            this.b.startService(intent);
                        } catch (Throwable th) {
                            Logger.d().c(l, "Unable to stop foreground service", th);
                        }
                        PowerManager.WakeLock wakeLock = this.a;
                        if (wakeLock != null) {
                            wakeLock.release();
                            this.a = null;
                        }
                    }
                } finally {
                }
            }
        }
        return workerWrapper;
    }

    public final WorkerWrapper c(String str) {
        WorkerWrapper workerWrapper = (WorkerWrapper) this.f.get(str);
        if (workerWrapper == null) {
            return (WorkerWrapper) this.g.get(str);
        }
        return workerWrapper;
    }
}
