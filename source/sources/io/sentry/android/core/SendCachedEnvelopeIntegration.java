package io.sentry.android.core;

import io.sentry.IConnectionStatusProvider;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.Integration;
import io.sentry.ScopesAdapter;
import io.sentry.SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;
import io.sentry.SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SendCachedEnvelopeIntegration implements Integration, IConnectionStatusProvider.IConnectionStatusObserver, Closeable {
    public final SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory j;
    public final LazyEvaluator k;
    public IConnectionStatusProvider m;
    public ScopesAdapter n;
    public SentryAndroidOptions o;
    public SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget p;
    public final AtomicBoolean l = new AtomicBoolean(false);
    public final AtomicBoolean q = new AtomicBoolean(false);
    public final AtomicBoolean r = new AtomicBoolean(false);
    public final AutoClosableReentrantLock s = new ReentrantLock();

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public SendCachedEnvelopeIntegration(SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory sendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory, LazyEvaluator lazyEvaluator) {
        this.j = sendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;
        this.k = lazyEvaluator;
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions;
        ScopesAdapter scopesAdapter = ScopesAdapter.a;
        this.n = scopesAdapter;
        if (sentryOptions instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        } else {
            sentryAndroidOptions = null;
        }
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.o = sentryAndroidOptions;
        String cacheDirPath = sentryOptions.getCacheDirPath();
        ILogger logger = sentryOptions.getLogger();
        this.j.getClass();
        if (!SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory.b(cacheDirPath, logger)) {
            sentryOptions.getLogger().c(SentryLevel.ERROR, "No cache dir path is defined in options.", new Object[0]);
        } else {
            IntegrationUtils.a("SendCachedEnvelope");
            a(scopesAdapter, this.o);
        }
    }

    public final void a(ScopesAdapter scopesAdapter, SentryAndroidOptions sentryAndroidOptions) {
        try {
            ISentryLifecycleToken a = this.s.a();
            try {
                Future submit = sentryAndroidOptions.getExecutorService().submit(new m(this, sentryAndroidOptions, scopesAdapter, 0));
                if (((Boolean) this.k.a()).booleanValue() && this.l.compareAndSet(false, true)) {
                    sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Startup Crash marker exists, blocking flush.", new Object[0]);
                    try {
                        submit.get(sentryAndroidOptions.getStartupCrashFlushTimeoutMillis(), TimeUnit.MILLISECONDS);
                    } catch (TimeoutException unused) {
                        sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "Synchronous send timed out, continuing in the background.", new Object[0]);
                    }
                }
                sentryAndroidOptions.getLogger().c(SentryLevel.DEBUG, "SendCachedEnvelopeIntegration installed.", new Object[0]);
                a.close();
            } catch (Throwable th) {
                try {
                    a.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (RejectedExecutionException e) {
            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to call the executor. Cached events will not be sent. Did you call Sentry.close()?", e);
        } catch (Throwable th3) {
            sentryAndroidOptions.getLogger().b(SentryLevel.ERROR, "Failed to call the executor. Cached events will not be sent", th3);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.r.set(true);
        IConnectionStatusProvider iConnectionStatusProvider = this.m;
        if (iConnectionStatusProvider != null) {
            iConnectionStatusProvider.L0(this);
        }
    }

    @Override // io.sentry.IConnectionStatusProvider.IConnectionStatusObserver
    public final void q(IConnectionStatusProvider.ConnectionStatus connectionStatus) {
        SentryAndroidOptions sentryAndroidOptions;
        ScopesAdapter scopesAdapter = this.n;
        if (scopesAdapter != null && (sentryAndroidOptions = this.o) != null && connectionStatus != IConnectionStatusProvider.ConnectionStatus.DISCONNECTED) {
            a(scopesAdapter, sentryAndroidOptions);
        }
    }
}
