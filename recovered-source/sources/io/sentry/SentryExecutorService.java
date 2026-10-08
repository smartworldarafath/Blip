package io.sentry;

import defpackage.r;
import io.sentry.util.AutoClosableReentrantLock;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryExecutorService implements ISentryExecutorService {
    public final ScheduledThreadPoolExecutor a;
    public final AutoClosableReentrantLock b;
    public final r c;
    public final SentryOptions d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SentryExecutorServiceThreadFactory implements ThreadFactory {
        public int a;

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            StringBuilder sb = new StringBuilder("SentryExecutorServiceThreadFactory-");
            int i = this.a;
            this.a = i + 1;
            sb.append(i);
            Thread thread = new Thread(runnable, sb.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public SentryExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, SentryOptions sentryOptions) {
        this.b = new ReentrantLock();
        this.c = new r(2);
        this.a = scheduledThreadPoolExecutor;
        this.d = sentryOptions;
    }

    @Override // io.sentry.ISentryExecutorService
    public final void a(long j) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.a;
        ISentryLifecycleToken a = this.b.a();
        try {
            if (!scheduledThreadPoolExecutor.isShutdown()) {
                scheduledThreadPoolExecutor.shutdown();
                try {
                    if (!scheduledThreadPoolExecutor.awaitTermination(j, TimeUnit.MILLISECONDS)) {
                        scheduledThreadPoolExecutor.shutdownNow();
                    }
                } catch (InterruptedException unused) {
                    scheduledThreadPoolExecutor.shutdownNow();
                    Thread.currentThread().interrupt();
                }
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

    @Override // io.sentry.ISentryExecutorService
    public final void b() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.a;
        try {
            scheduledThreadPoolExecutor.submit(new g(1, this));
        } catch (RejectedExecutionException e) {
            SentryOptions sentryOptions = this.d;
            if (sentryOptions != null) {
                sentryOptions.getLogger().b(SentryLevel.WARNING, "Prewarm task rejected from " + scheduledThreadPoolExecutor, e);
            }
        }
    }

    @Override // io.sentry.ISentryExecutorService
    public final Future c(long j, Runnable runnable) {
        return this.a.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }

    @Override // io.sentry.ISentryExecutorService
    public final boolean isClosed() {
        ISentryLifecycleToken a = this.b.a();
        try {
            boolean isShutdown = this.a.isShutdown();
            a.close();
            return isShutdown;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.concurrent.Future, java.lang.Object] */
    @Override // io.sentry.ISentryExecutorService
    public final Future submit(Runnable runnable) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.a;
        if (scheduledThreadPoolExecutor.getQueue().size() >= 271) {
            scheduledThreadPoolExecutor.purge();
        }
        if (scheduledThreadPoolExecutor.getQueue().size() < 271) {
            return scheduledThreadPoolExecutor.submit(runnable);
        }
        SentryOptions sentryOptions = this.d;
        if (sentryOptions != null) {
            sentryOptions.getLogger().c(SentryLevel.WARNING, "Task " + runnable + " rejected from " + scheduledThreadPoolExecutor, new Object[0]);
        }
        return new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CancelledFuture<T> implements Future<T> {
        @Override // java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            return true;
        }

        @Override // java.util.concurrent.Future
        public final Object get() {
            throw new CancellationException();
        }

        @Override // java.util.concurrent.Future
        public final boolean isCancelled() {
            return true;
        }

        @Override // java.util.concurrent.Future
        public final boolean isDone() {
            return true;
        }

        @Override // java.util.concurrent.Future
        public final Object get(long j, TimeUnit timeUnit) {
            throw new CancellationException();
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    public SentryExecutorService(SentryOptions sentryOptions) {
        this(new ScheduledThreadPoolExecutor(1, (ThreadFactory) new Object()), sentryOptions);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    public SentryExecutorService() {
        this(new ScheduledThreadPoolExecutor(1, (ThreadFactory) new Object()), null);
    }
}
