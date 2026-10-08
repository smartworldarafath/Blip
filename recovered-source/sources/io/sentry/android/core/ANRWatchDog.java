package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.SystemClock;
import io.sentry.ILogger;
import io.sentry.ScopesAdapter;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.android.core.AnrIntegration;
import io.sentry.exception.ExceptionMechanismException;
import io.sentry.util.HintUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ANRWatchDog extends Thread {
    public static final /* synthetic */ int u = 0;
    public final boolean j;
    public final e k;
    public final MainLooperHandler l;
    public final a m;
    public final long n;
    public final long o;
    public final ILogger p;
    public volatile long q;
    public final AtomicBoolean r;
    public final Context s;
    public final b t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ANRWatchDog(long j, boolean z, e eVar, ILogger iLogger, Context context) {
        super("|ANR-WatchDog|");
        a aVar = new a(0);
        MainLooperHandler mainLooperHandler = new MainLooperHandler();
        this.q = 0L;
        this.r = new AtomicBoolean(false);
        this.m = aVar;
        this.o = j;
        this.n = 500L;
        this.j = z;
        this.k = eVar;
        this.p = iLogger;
        this.l = mainLooperHandler;
        this.s = context;
        this.t = new b(this, aVar);
        if (j >= 1000) {
        } else {
            throw new IllegalArgumentException(String.format("ANRWatchDog: timeoutIntervalMillis has to be at least %d ms", 1000L));
        }
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [java.lang.Object, io.sentry.protocol.Mechanism] */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ApplicationNotResponding applicationNotResponding;
        List<ActivityManager.ProcessErrorStateInfo> list;
        this.t.run();
        while (!isInterrupted()) {
            this.l.a.post(this.t);
            try {
                Thread.sleep(this.n);
                this.m.getClass();
                if (SystemClock.uptimeMillis() - this.q > this.o) {
                    if (!this.j && (Debug.isDebuggerConnected() || Debug.waitingForDebugger())) {
                        this.p.c(SentryLevel.DEBUG, "An ANR was detected but ignored because the debugger is connected.", new Object[0]);
                        this.r.set(true);
                    } else {
                        ActivityManager activityManager = (ActivityManager) this.s.getSystemService("activity");
                        if (activityManager != null) {
                            try {
                                list = activityManager.getProcessesInErrorState();
                            } catch (Throwable th) {
                                this.p.b(SentryLevel.ERROR, "Error getting ActivityManager#getProcessesInErrorState.", th);
                                list = null;
                            }
                            if (list != null) {
                                Iterator<ActivityManager.ProcessErrorStateInfo> it = list.iterator();
                                while (it.hasNext()) {
                                    if (it.next().condition == 2) {
                                    }
                                }
                            }
                        }
                        if (this.r.compareAndSet(false, true)) {
                            ApplicationNotResponding applicationNotResponding2 = new ApplicationNotResponding(defpackage.q.k(new StringBuilder("Application Not Responding for at least "), this.o, " ms."), this.l.a.getLooper().getThread());
                            e eVar = this.k;
                            Object obj = eVar.j;
                            ScopesAdapter scopesAdapter = ScopesAdapter.a;
                            SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) eVar.k;
                            ANRWatchDog aNRWatchDog = AnrIntegration.n;
                            sentryAndroidOptions.getLogger().c(SentryLevel.INFO, "ANR triggered with message: %s", applicationNotResponding2.getMessage());
                            boolean equals = Boolean.TRUE.equals(AppState.n.m);
                            String str = "ANR for at least " + sentryAndroidOptions.getAnrTimeoutIntervalMillis() + " ms.";
                            if (equals) {
                                str = "Background ".concat(str);
                            }
                            Thread thread = applicationNotResponding2.j;
                            if (thread == null) {
                                applicationNotResponding = new ApplicationNotResponding(str);
                            } else {
                                applicationNotResponding = new ApplicationNotResponding(str, thread);
                            }
                            ?? obj2 = new Object();
                            obj2.j = "ANR";
                            SentryEvent sentryEvent = new SentryEvent(new ExceptionMechanismException(obj2, applicationNotResponding, thread, true));
                            sentryEvent.D = SentryLevel.ERROR;
                            scopesAdapter.x(sentryEvent, HintUtils.a(new AnrIntegration.AnrHint(equals)));
                        }
                    }
                }
            } catch (InterruptedException e) {
                try {
                    Thread.currentThread().interrupt();
                    this.p.c(SentryLevel.WARNING, "Interrupted: %s", e.getMessage());
                    return;
                } catch (SecurityException unused) {
                    this.p.c(SentryLevel.WARNING, "Failed to interrupt due to SecurityException: %s", e.getMessage());
                    return;
                }
            }
        }
    }
}
