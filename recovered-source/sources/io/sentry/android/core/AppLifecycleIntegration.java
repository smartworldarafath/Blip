package io.sentry.android.core;

import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.Integration;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AppLifecycleIntegration implements Integration, Closeable {
    public final AutoClosableReentrantLock j = new ReentrantLock();
    public volatile LifecycleWatcher k;
    public SentryAndroidOptions l;

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions;
        if (sentryOptions instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        } else {
            sentryAndroidOptions = null;
        }
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.l = sentryAndroidOptions;
        ILogger logger = sentryAndroidOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "enableSessionTracking enabled: %s", Boolean.valueOf(this.l.isEnableAutoSessionTracking()));
        this.l.getLogger().c(sentryLevel, "enableAppLifecycleBreadcrumbs enabled: %s", Boolean.valueOf(this.l.isEnableAppLifecycleBreadcrumbs()));
        if (!this.l.isEnableAutoSessionTracking() && !this.l.isEnableAppLifecycleBreadcrumbs()) {
            return;
        }
        ISentryLifecycleToken a = this.j.a();
        try {
            if (this.k != null) {
                a.close();
                return;
            }
            this.k = new LifecycleWatcher(this.l.getSessionTrackingIntervalMillis(), this.l.isEnableAutoSessionTracking(), this.l.isEnableAppLifecycleBreadcrumbs());
            AppState.n.a(this.k);
            a.close();
            sentryOptions.getLogger().c(sentryLevel, "AppLifecycleIntegration installed.", new Object[0]);
            IntegrationUtils.a("AppLifecycle");
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
        ISentryLifecycleToken a = this.j.a();
        try {
            LifecycleWatcher lifecycleWatcher = this.k;
            this.k = null;
            a.close();
            if (lifecycleWatcher != null) {
                AppState.n.q(lifecycleWatcher);
                SentryAndroidOptions sentryAndroidOptions = this.l;
                if (sentryAndroidOptions != null) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "AppLifecycleIntegration removed.", new Object[0]);
                }
            }
            AppState.n.v();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
