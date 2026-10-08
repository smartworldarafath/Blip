package io.sentry.android.core.anr;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import defpackage.e;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.Integration;
import io.sentry.NoOpLogger;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.AppState;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import io.sentry.util.SentryRandom;
import java.io.Closeable;
import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AnrProfilingIntegration implements Integration, Closeable, AppState.AppStateListener, Runnable {
    public volatile AnrProfileManager q;
    public volatile SentryAndroidOptions s;
    public volatile Handler w;
    public volatile Thread x;
    public final AtomicBoolean j = new AtomicBoolean(true);
    public final e k = new e(20, this);
    public final AutoClosableReentrantLock l = new ReentrantLock();
    public final AutoClosableReentrantLock m = new ReentrantLock();
    public volatile long n = SystemClock.uptimeMillis();
    public final AtomicInteger o = new AtomicInteger();
    public volatile MainThreadState p = MainThreadState.IDLE;
    public volatile ILogger r = NoOpLogger.a;
    public volatile Thread t = null;
    public volatile boolean u = false;
    public volatile boolean v = false;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum MainThreadState {
        IDLE,
        SUSPICIOUS,
        ANR_DETECTED
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions;
        if (sentryOptions instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        } else {
            sentryAndroidOptions = null;
        }
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.s = sentryAndroidOptions;
        this.r = sentryOptions.getLogger();
        if (this.s.isAnrProfilingEnabled()) {
            if (this.s.getCacheDirPath() == null) {
                this.r.c(SentryLevel.WARNING, "ANR Profiling is enabled but cacheDirPath is not set", new Object[0]);
                return;
            }
            Looper mainLooper = Looper.getMainLooper();
            this.x = mainLooper.getThread();
            this.w = new Handler(mainLooper);
            IntegrationUtils.a("AnrProfiling");
            AppState.n.a(this);
        }
    }

    @Override // io.sentry.android.core.AppState.AppStateListener
    public final void a() {
        if (!this.j.get()) {
            return;
        }
        ISentryLifecycleToken a = this.l.a();
        try {
            if (this.v) {
                a.close();
                return;
            }
            this.v = true;
            this.k.run();
            Thread thread = this.t;
            if (thread != null && thread.isAlive()) {
                synchronized (this) {
                    notifyAll();
                }
            }
            if (thread == null || !thread.isAlive()) {
                Thread thread2 = new Thread(this, "AnrProfilingIntegration");
                thread2.setDaemon(true);
                thread2.start();
                this.t = thread2;
            }
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.set(false);
        AppState.n.q(this);
        Handler handler = this.w;
        if (handler != null) {
            handler.removeCallbacks(this.k);
        }
        Thread thread = this.t;
        if (thread != null) {
            synchronized (this) {
                notifyAll();
            }
            thread.interrupt();
        }
        SentryAndroidOptions sentryAndroidOptions = this.s;
        ISentryLifecycleToken a = this.m.a();
        try {
            AnrProfileManager anrProfileManager = this.q;
            this.q = null;
            a.close();
            if (sentryAndroidOptions != null) {
                try {
                    sentryAndroidOptions.getExecutorService().submit(new a(0, this, anrProfileManager));
                } catch (Throwable unused) {
                    this.r.c(SentryLevel.WARNING, "Failed to submit AnrProfileManager close", new Object[0]);
                }
            }
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // io.sentry.android.core.AppState.AppStateListener
    public final void h() {
        if (!this.j.get()) {
            return;
        }
        ISentryLifecycleToken a = this.l.a();
        try {
            this.v = false;
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void n(Thread thread) {
        Double d;
        long uptimeMillis = SystemClock.uptimeMillis() - this.n;
        if (uptimeMillis < 1000) {
            this.p = MainThreadState.IDLE;
            this.u = false;
        }
        if (this.p == MainThreadState.IDLE && uptimeMillis > 1000) {
            ILogger iLogger = this.r;
            SentryLevel sentryLevel = SentryLevel.DEBUG;
            if (iLogger.d(sentryLevel)) {
                this.r.c(sentryLevel, "ANR: main thread is suspicious", new Object[0]);
            }
            this.p = MainThreadState.SUSPICIOUS;
            SentryAndroidOptions sentryAndroidOptions = this.s;
            if (sentryAndroidOptions != null) {
                d = sentryAndroidOptions.getAnrProfilingSampleRate();
            } else {
                d = null;
            }
            if (d != null && SentryRandom.a().c() < d.doubleValue()) {
                this.u = true;
            }
            if (this.u) {
                this.o.set(0);
                q().j.clear();
            }
        }
        if (this.u && (this.p == MainThreadState.SUSPICIOUS || this.p == MainThreadState.ANR_DETECTED)) {
            if (this.o.get() < 151) {
                long uptimeMillis2 = SystemClock.uptimeMillis();
                AnrStackTrace anrStackTrace = new AnrStackTrace(System.currentTimeMillis(), thread.getStackTrace());
                long uptimeMillis3 = SystemClock.uptimeMillis() - uptimeMillis2;
                ILogger iLogger2 = this.r;
                SentryLevel sentryLevel2 = SentryLevel.DEBUG;
                if (iLogger2.d(sentryLevel2)) {
                    this.r.c(sentryLevel2, "AnrWatchdog: capturing main thread stacktrace took " + uptimeMillis3 + "ms", new Object[0]);
                }
                if (this.j.get()) {
                    this.o.incrementAndGet();
                    q().j.A(anrStackTrace);
                }
            } else {
                ILogger iLogger3 = this.r;
                SentryLevel sentryLevel3 = SentryLevel.DEBUG;
                if (iLogger3.d(sentryLevel3)) {
                    this.r.c(sentryLevel3, "ANR: reached maximum number of collected stack traces, skipping further collection", new Object[0]);
                }
            }
        }
        if (this.p == MainThreadState.SUSPICIOUS && uptimeMillis > 4000) {
            ILogger iLogger4 = this.r;
            SentryLevel sentryLevel4 = SentryLevel.DEBUG;
            if (iLogger4.d(sentryLevel4)) {
                this.r.c(sentryLevel4, "ANR: main thread ANR threshold reached", new Object[0]);
            }
            this.p = MainThreadState.ANR_DETECTED;
        }
    }

    public final AnrProfileManager q() {
        ISentryLifecycleToken a = this.m.a();
        try {
            if (this.q == null) {
                SentryAndroidOptions sentryAndroidOptions = this.s;
                Objects.b(sentryAndroidOptions, "Options can't be null");
                String cacheDirPath = sentryAndroidOptions.getCacheDirPath();
                if (cacheDirPath != null) {
                    File file = new File(cacheDirPath);
                    AnrProfileRotationHelper.b(file);
                    this.q = new AnrProfileManager(sentryAndroidOptions, new File(file, "anr_profile"));
                } else {
                    throw new IllegalStateException("cacheDirPath is required for ANR profiling");
                }
            }
            AnrProfileManager anrProfileManager = this.q;
            a.close();
            return anrProfileManager;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler = this.w;
        Thread thread = this.x;
        if (handler != null && thread != null) {
            while (this.j.get() && !Thread.currentThread().isInterrupted()) {
                try {
                    try {
                        if (!this.v) {
                            synchronized (this) {
                                while (!this.v && this.j.get()) {
                                    try {
                                        wait();
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                            }
                            this.k.run();
                        } else {
                            n(thread);
                            handler.removeCallbacks(this.k);
                            handler.post(this.k);
                            Thread.sleep(66L);
                        }
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                } catch (Throwable th2) {
                    this.r.b(SentryLevel.WARNING, "Failed to execute AnrStacktraceIntegration", th2);
                    return;
                }
            }
        }
    }
}
