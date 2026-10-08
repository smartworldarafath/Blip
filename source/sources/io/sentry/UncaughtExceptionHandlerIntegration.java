package io.sentry;

import io.sentry.exception.ExceptionMechanismException;
import io.sentry.hints.BlockingFlushHint;
import io.sentry.hints.EventDropReason;
import io.sentry.hints.SessionEnd;
import io.sentry.hints.TransactionEnd;
import io.sentry.protocol.SentryId;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.HintUtils;
import io.sentry.util.IntegrationUtils;
import java.io.Closeable;
import java.lang.Thread;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UncaughtExceptionHandlerIntegration implements Integration, Thread.UncaughtExceptionHandler, Closeable {
    public static final AutoClosableReentrantLock n = new ReentrantLock();
    public Thread.UncaughtExceptionHandler j;
    public ScopesAdapter k;
    public SentryOptions l;
    public boolean m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class UncaughtExceptionHint extends BlockingFlushHint implements SessionEnd, TransactionEnd {
        public final AtomicReference d;

        public UncaughtExceptionHint(long j, ILogger iLogger) {
            super(j, iLogger);
            this.d = new AtomicReference();
        }

        @Override // io.sentry.hints.DiskFlushNotification
        public final boolean d(SentryId sentryId) {
            SentryId sentryId2 = (SentryId) this.d.get();
            if (sentryId2 != null && sentryId2.equals(sentryId)) {
                return true;
            }
            return false;
        }

        @Override // io.sentry.hints.DiskFlushNotification
        public final void g(SentryId sentryId) {
            this.d.set(sentryId);
        }
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        ScopesAdapter scopesAdapter = ScopesAdapter.a;
        if (this.m) {
            sentryOptions.getLogger().c(SentryLevel.ERROR, "Attempt to register a UncaughtExceptionHandlerIntegration twice.", new Object[0]);
            return;
        }
        this.m = true;
        this.k = scopesAdapter;
        this.l = sentryOptions;
        ILogger logger = sentryOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "UncaughtExceptionHandlerIntegration enabled: %s", Boolean.valueOf(this.l.isEnableUncaughtExceptionHandler()));
        if (this.l.isEnableUncaughtExceptionHandler()) {
            ISentryLifecycleToken a = n.a();
            try {
                Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
                if (defaultUncaughtExceptionHandler != null) {
                    this.l.getLogger().c(sentryLevel, "default UncaughtExceptionHandler class='" + defaultUncaughtExceptionHandler.getClass().getName() + "'", new Object[0]);
                    if (defaultUncaughtExceptionHandler instanceof UncaughtExceptionHandlerIntegration) {
                        UncaughtExceptionHandlerIntegration uncaughtExceptionHandlerIntegration = (UncaughtExceptionHandlerIntegration) defaultUncaughtExceptionHandler;
                        ScopesAdapter scopesAdapter2 = uncaughtExceptionHandlerIntegration.k;
                        if (scopesAdapter2 != null) {
                            IScopesStorage iScopesStorage = Sentry.a;
                            scopesAdapter2.getClass();
                            this.j = uncaughtExceptionHandlerIntegration.j;
                        } else {
                            this.j = defaultUncaughtExceptionHandler;
                        }
                    } else {
                        this.j = defaultUncaughtExceptionHandler;
                    }
                }
                Thread.setDefaultUncaughtExceptionHandler(this);
                a.close();
                this.l.getLogger().c(sentryLevel, "UncaughtExceptionHandlerIntegration installed.", new Object[0]);
                IntegrationUtils.a("UncaughtExceptionHandler");
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

    public final void a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, HashSet hashSet) {
        if (uncaughtExceptionHandler == null) {
            SentryOptions sentryOptions = this.l;
            if (sentryOptions != null) {
                sentryOptions.getLogger().c(SentryLevel.DEBUG, "Found no UncaughtExceptionHandler to remove.", new Object[0]);
                return;
            }
            return;
        }
        if (!hashSet.add(uncaughtExceptionHandler)) {
            SentryOptions sentryOptions2 = this.l;
            if (sentryOptions2 != null) {
                sentryOptions2.getLogger().c(SentryLevel.WARNING, "Cycle detected in UncaughtExceptionHandler chain while removing handler.", new Object[0]);
                return;
            }
            return;
        }
        if (uncaughtExceptionHandler instanceof UncaughtExceptionHandlerIntegration) {
            UncaughtExceptionHandlerIntegration uncaughtExceptionHandlerIntegration = (UncaughtExceptionHandlerIntegration) uncaughtExceptionHandler;
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = uncaughtExceptionHandlerIntegration.j;
            if (this == uncaughtExceptionHandler2) {
                uncaughtExceptionHandlerIntegration.j = this.j;
                SentryOptions sentryOptions3 = this.l;
                if (sentryOptions3 != null) {
                    sentryOptions3.getLogger().c(SentryLevel.DEBUG, "UncaughtExceptionHandlerIntegration removed.", new Object[0]);
                    return;
                }
                return;
            }
            a(uncaughtExceptionHandler2, hashSet);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ISentryLifecycleToken a = n.a();
        try {
            if (this == Thread.getDefaultUncaughtExceptionHandler()) {
                Thread.setDefaultUncaughtExceptionHandler(this.j);
                SentryOptions sentryOptions = this.l;
                if (sentryOptions != null) {
                    sentryOptions.getLogger().c(SentryLevel.DEBUG, "UncaughtExceptionHandlerIntegration removed.", new Object[0]);
                }
            } else {
                a(Thread.getDefaultUncaughtExceptionHandler(), new HashSet());
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

    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object, io.sentry.protocol.Mechanism] */
    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        SentryId sentryId;
        SentryOptions sentryOptions = this.l;
        if (sentryOptions != null && this.k != null) {
            sentryOptions.getLogger().c(SentryLevel.INFO, "Uncaught exception received.", new Object[0]);
            try {
                UncaughtExceptionHint uncaughtExceptionHint = new UncaughtExceptionHint(this.l.getFlushTimeoutMillis(), this.l.getLogger());
                ?? obj = new Object();
                obj.m = Boolean.FALSE;
                obj.j = "UncaughtExceptionHandler";
                SentryEvent sentryEvent = new SentryEvent(new ExceptionMechanismException(obj, th, thread, false));
                sentryEvent.D = SentryLevel.FATAL;
                if (this.k.k() == null && (sentryId = sentryEvent.j) != null) {
                    uncaughtExceptionHint.g(sentryId);
                }
                Hint a = HintUtils.a(uncaughtExceptionHint);
                boolean equals = this.k.x(sentryEvent, a).equals(SentryId.k);
                EventDropReason eventDropReason = (EventDropReason) a.c(EventDropReason.class, "sentry:eventDropReason");
                if ((!equals || EventDropReason.MULTITHREADED_DEDUPLICATION.equals(eventDropReason)) && !uncaughtExceptionHint.e()) {
                    this.l.getLogger().c(SentryLevel.WARNING, "Timed out waiting to flush event to disk before crashing. Event: %s", sentryEvent.j);
                }
            } catch (Throwable th2) {
                this.l.getLogger().b(SentryLevel.ERROR, "Error sending uncaught exception to Sentry.", th2);
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.j;
            SentryOptions sentryOptions2 = this.l;
            if (uncaughtExceptionHandler != null) {
                sentryOptions2.getLogger().c(SentryLevel.INFO, "Invoking inner uncaught exception handler.", new Object[0]);
                this.j.uncaughtException(thread, th);
            } else if (sentryOptions2.isPrintUncaughtStackTrace()) {
                th.printStackTrace();
            }
        }
    }
}
