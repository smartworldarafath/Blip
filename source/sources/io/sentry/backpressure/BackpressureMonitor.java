package io.sentry.backpressure;

import io.sentry.ISentryExecutorService;
import io.sentry.ISentryLifecycleToken;
import io.sentry.ScopesAdapter;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.util.AutoClosableReentrantLock;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BackpressureMonitor implements IBackpressureMonitor, Runnable {
    public final SentryOptions j;
    public final ScopesAdapter k;
    public int l;
    public volatile Future m;
    public final AutoClosableReentrantLock n;

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public BackpressureMonitor(SentryOptions sentryOptions) {
        ScopesAdapter scopesAdapter = ScopesAdapter.a;
        this.l = 0;
        this.m = null;
        this.n = new ReentrantLock();
        this.j = sentryOptions;
        this.k = scopesAdapter;
    }

    @Override // io.sentry.backpressure.IBackpressureMonitor
    public final int a() {
        return this.l;
    }

    public final void b(int i) {
        ISentryExecutorService executorService = this.j.getExecutorService();
        if (!executorService.isClosed()) {
            ISentryLifecycleToken a = this.n.a();
            try {
                try {
                    this.m = executorService.c(i, this);
                } catch (RejectedExecutionException e) {
                    this.j.getLogger().b(SentryLevel.WARNING, "Backpressure monitor reschedule task rejected", e);
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
    }

    @Override // io.sentry.backpressure.IBackpressureMonitor
    public final void close() {
        Future future = this.m;
        if (future != null) {
            ISentryLifecycleToken a = this.n.a();
            try {
                future.cancel(true);
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
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean f = this.k.f();
        int i = this.l;
        SentryOptions sentryOptions = this.j;
        if (f) {
            if (i > 0) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Health check positive, reverting to normal sampling.", new Object[0]);
            }
            this.l = 0;
        } else if (i < 10) {
            this.l = i + 1;
            sentryOptions.getLogger().c(SentryLevel.DEBUG, "Health check negative, downsampling with a factor of %d", Integer.valueOf(this.l));
        }
        b(10000);
    }

    @Override // io.sentry.backpressure.IBackpressureMonitor
    public final void start() {
        b(500);
    }
}
