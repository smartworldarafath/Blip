package io.sentry.metrics;

import defpackage.e;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryClient;
import io.sentry.SentryExecutorService;
import io.sentry.SentryLevel;
import io.sentry.SentryMetricsEvent;
import io.sentry.SentryMetricsEvents;
import io.sentry.SentryOptions;
import io.sentry.transport.ReusableCountLatch;
import io.sentry.util.AutoClosableReentrantLock;
import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MetricsBatchProcessor implements IMetricsBatchProcessor {
    public final SentryOptions j;
    public final SentryClient k;
    public final SentryExecutorService m;
    public final AutoClosableReentrantLock n = new ReentrantLock();
    public final ReusableCountLatch o = new ReusableCountLatch();
    public final ConcurrentLinkedQueue l = new ConcurrentLinkedQueue();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class BatchRunnable implements Runnable {
        public BatchRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            MetricsBatchProcessor metricsBatchProcessor;
            do {
                metricsBatchProcessor = MetricsBatchProcessor.this;
                metricsBatchProcessor.d();
            } while (metricsBatchProcessor.l.size() >= 1000);
            ISentryLifecycleToken a = metricsBatchProcessor.n.a();
            try {
                if (!metricsBatchProcessor.l.isEmpty()) {
                    metricsBatchProcessor.e(false);
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

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public MetricsBatchProcessor(SentryOptions sentryOptions, SentryClient sentryClient) {
        this.j = sentryOptions;
        this.k = sentryClient;
        this.m = new SentryExecutorService(sentryOptions);
    }

    @Override // io.sentry.metrics.IMetricsBatchProcessor
    public void b(boolean z) {
        SentryExecutorService sentryExecutorService = this.m;
        if (z) {
            e(true);
            sentryExecutorService.submit(new e(25, this));
        } else {
            sentryExecutorService.a(this.j.getShutdownTimeoutMillis());
            while (!this.l.isEmpty()) {
                d();
            }
        }
    }

    @Override // io.sentry.metrics.IMetricsBatchProcessor
    public final void c(long j) {
        e(true);
        try {
            this.o.a.tryAcquireSharedNanos(1, TimeUnit.MILLISECONDS.toNanos(j));
        } catch (InterruptedException e) {
            this.j.getLogger().b(SentryLevel.ERROR, "Failed to flush metrics events", e);
            Thread.currentThread().interrupt();
        }
    }

    public final void d() {
        ArrayList arrayList = new ArrayList(1000);
        do {
            ConcurrentLinkedQueue concurrentLinkedQueue = this.l;
            SentryMetricsEvent sentryMetricsEvent = (SentryMetricsEvent) concurrentLinkedQueue.poll();
            if (sentryMetricsEvent != null) {
                arrayList.add(sentryMetricsEvent);
            }
            if (concurrentLinkedQueue.isEmpty()) {
                break;
            }
        } while (arrayList.size() < 1000);
        if (!arrayList.isEmpty()) {
            SentryMetricsEvents sentryMetricsEvents = new SentryMetricsEvents(arrayList);
            SentryClient sentryClient = this.k;
            sentryClient.getClass();
            try {
                sentryClient.v(sentryClient.o(sentryMetricsEvents), null);
            } catch (IOException e) {
                sentryClient.b.getLogger().a(SentryLevel.WARNING, e, "Capturing metrics failed.", new Object[0]);
            }
            for (int i = 0; i < arrayList.size(); i++) {
                this.o.a();
            }
        }
    }

    public final void e(boolean z) {
        int i;
        ISentryLifecycleToken a = this.n.a();
        if (z) {
            i = 0;
        } else {
            i = 5000;
        }
        try {
            try {
                this.m.c(i, new BatchRunnable());
            } catch (RejectedExecutionException e) {
                this.j.getLogger().b(SentryLevel.WARNING, "Metrics batch processor flush task rejected", e);
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
