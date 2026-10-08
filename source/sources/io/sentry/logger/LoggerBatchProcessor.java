package io.sentry.logger;

import defpackage.e;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryClient;
import io.sentry.SentryExecutorService;
import io.sentry.SentryLevel;
import io.sentry.SentryLogEvent;
import io.sentry.SentryLogEvents;
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
public class LoggerBatchProcessor implements ILoggerBatchProcessor {
    public final SentryOptions j;
    public final SentryClient k;
    public final ConcurrentLinkedQueue l;
    public final SentryExecutorService m;
    public final AutoClosableReentrantLock n;
    public final ReusableCountLatch o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class BatchRunnable implements Runnable {
        public BatchRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            LoggerBatchProcessor loggerBatchProcessor;
            do {
                loggerBatchProcessor = LoggerBatchProcessor.this;
                loggerBatchProcessor.d();
            } while (loggerBatchProcessor.l.size() >= 100);
            ISentryLifecycleToken a = loggerBatchProcessor.n.a();
            try {
                if (!loggerBatchProcessor.l.isEmpty()) {
                    loggerBatchProcessor.e(false);
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

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public LoggerBatchProcessor(SentryOptions sentryOptions, SentryClient sentryClient) {
        SentryExecutorService sentryExecutorService = new SentryExecutorService(sentryOptions);
        this.n = new ReentrantLock();
        this.o = new ReusableCountLatch();
        this.j = sentryOptions;
        this.k = sentryClient;
        this.l = new ConcurrentLinkedQueue();
        this.m = sentryExecutorService;
    }

    @Override // io.sentry.logger.ILoggerBatchProcessor
    public void b(boolean z) {
        SentryExecutorService sentryExecutorService = this.m;
        if (z) {
            e(true);
            sentryExecutorService.submit(new e(24, this));
        } else {
            sentryExecutorService.a(this.j.getShutdownTimeoutMillis());
            while (!this.l.isEmpty()) {
                d();
            }
        }
    }

    @Override // io.sentry.logger.ILoggerBatchProcessor
    public final void c(long j) {
        e(true);
        try {
            this.o.a.tryAcquireSharedNanos(1, TimeUnit.MILLISECONDS.toNanos(j));
        } catch (InterruptedException e) {
            this.j.getLogger().b(SentryLevel.ERROR, "Failed to flush log events", e);
            Thread.currentThread().interrupt();
        }
    }

    public final void d() {
        ArrayList arrayList = new ArrayList(100);
        do {
            ConcurrentLinkedQueue concurrentLinkedQueue = this.l;
            SentryLogEvent sentryLogEvent = (SentryLogEvent) concurrentLinkedQueue.poll();
            if (sentryLogEvent != null) {
                arrayList.add(sentryLogEvent);
            }
            if (concurrentLinkedQueue.isEmpty()) {
                break;
            }
        } while (arrayList.size() < 100);
        if (!arrayList.isEmpty()) {
            SentryLogEvents sentryLogEvents = new SentryLogEvents(arrayList);
            SentryClient sentryClient = this.k;
            sentryClient.getClass();
            try {
                sentryClient.v(sentryClient.n(sentryLogEvents), null);
            } catch (IOException e) {
                sentryClient.b.getLogger().a(SentryLevel.WARNING, e, "Capturing logs failed.", new Object[0]);
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
                this.j.getLogger().b(SentryLevel.WARNING, "Logs batch processor flush task rejected", e);
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
