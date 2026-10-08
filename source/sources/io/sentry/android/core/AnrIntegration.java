package io.sentry.android.core;

import android.content.Context;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.Integration;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.hints.AbnormalExit;
import io.sentry.hints.TransactionEnd;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.IntegrationUtils;
import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnrIntegration implements Integration, Closeable {
    public static ANRWatchDog n;
    public static final AutoClosableReentrantLock o = new ReentrantLock();
    public final Context j;
    public boolean k = false;
    public final AutoClosableReentrantLock l = new ReentrantLock();
    public SentryOptions m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AnrHint implements AbnormalExit, TransactionEnd {
        public final boolean a;

        public AnrHint(boolean z) {
            this.a = z;
        }

        @Override // io.sentry.hints.AbnormalExit
        public final Long b() {
            return null;
        }

        @Override // io.sentry.hints.AbnormalExit
        public final boolean c() {
            return true;
        }

        @Override // io.sentry.hints.AbnormalExit
        public final String f() {
            if (this.a) {
                return "anr_background";
            }
            return "anr_foreground";
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public AnrIntegration(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext != null ? applicationContext : context;
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        this.m = sentryOptions;
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "AnrIntegration enabled: %s", Boolean.valueOf(sentryAndroidOptions.isAnrEnabled()));
        if (sentryAndroidOptions.isAnrEnabled()) {
            IntegrationUtils.a("Anr");
            try {
                sentryAndroidOptions.getExecutorService().submit(new g(1, this, sentryAndroidOptions));
            } catch (Throwable th) {
                sentryAndroidOptions.getLogger().b(SentryLevel.DEBUG, "Failed to start AnrIntegration on executor thread.", th);
            }
        }
    }

    public final void a(SentryAndroidOptions sentryAndroidOptions) {
        ISentryLifecycleToken a = o.a();
        try {
            if (n == null) {
                ILogger logger = sentryAndroidOptions.getLogger();
                SentryLevel sentryLevel = SentryLevel.DEBUG;
                logger.c(sentryLevel, "ANR timeout in milliseconds: %d", Long.valueOf(sentryAndroidOptions.getAnrTimeoutIntervalMillis()));
                ANRWatchDog aNRWatchDog = new ANRWatchDog(sentryAndroidOptions.getAnrTimeoutIntervalMillis(), sentryAndroidOptions.isAnrReportInDebug(), new e(this, sentryAndroidOptions), sentryAndroidOptions.getLogger(), this.j);
                n = aNRWatchDog;
                aNRWatchDog.start();
                sentryAndroidOptions.getLogger().c(sentryLevel, "AnrIntegration installed.", new Object[0]);
            }
            a.close();
        } finally {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ISentryLifecycleToken a = this.l.a();
        try {
            this.k = true;
            a.close();
            ISentryLifecycleToken a2 = o.a();
            try {
                ANRWatchDog aNRWatchDog = n;
                if (aNRWatchDog != null) {
                    aNRWatchDog.interrupt();
                    n = null;
                    SentryOptions sentryOptions = this.m;
                    if (sentryOptions != null) {
                        sentryOptions.getLogger().c(SentryLevel.DEBUG, "AnrIntegration removed.", new Object[0]);
                    }
                }
                a2.close();
            } catch (Throwable th) {
                try {
                    a2.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            try {
                a.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }
}
