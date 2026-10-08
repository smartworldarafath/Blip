package io.sentry.transport;

import io.sentry.ILogger;
import io.sentry.SentryDate;
import io.sentry.SentryDateProvider;
import io.sentry.SentryLevel;
import io.sentry.transport.ReusableCountLatch;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class QueuedThreadPoolExecutor extends ThreadPoolExecutor implements AutoCloseable {
    public final int j;
    public SentryDate k;
    public final ILogger l;
    public final SentryDateProvider m;
    public final ReusableCountLatch n;

    public QueuedThreadPoolExecutor(int i, ThreadFactory threadFactory, a aVar, ILogger iLogger, SentryDateProvider sentryDateProvider) {
        super(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), threadFactory, aVar);
        this.k = null;
        this.n = new ReusableCountLatch();
        this.j = i;
        this.l = iLogger;
        this.m = sentryDateProvider;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final void afterExecute(Runnable runnable, Throwable th) {
        ReusableCountLatch reusableCountLatch = this.n;
        try {
            super.afterExecute(runnable, th);
        } finally {
            reusableCountLatch.a();
        }
    }

    @Override // java.lang.AutoCloseable
    public final /* synthetic */ void close() {
        boolean isTerminated;
        if (this != ForkJoinPool.commonPool() && !(isTerminated = isTerminated())) {
            shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.concurrent.Future, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.concurrent.Future, java.lang.Object] */
    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable) {
        ReusableCountLatch reusableCountLatch = this.n;
        int a = ReusableCountLatch.Sync.a(reusableCountLatch.a);
        int i = this.j;
        ILogger iLogger = this.l;
        SentryDateProvider sentryDateProvider = this.m;
        if (a < i) {
            ReusableCountLatch.Sync.b(reusableCountLatch.a);
            try {
                return super.submit(runnable);
            } catch (RejectedExecutionException e) {
                reusableCountLatch.a();
                this.k = sentryDateProvider.a();
                iLogger.b(SentryLevel.WARNING, "Submit rejected by thread pool executor", e);
                return new Object();
            }
        }
        this.k = sentryDateProvider.a();
        iLogger.c(SentryLevel.WARNING, "Submit cancelled", new Object[0]);
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
}
