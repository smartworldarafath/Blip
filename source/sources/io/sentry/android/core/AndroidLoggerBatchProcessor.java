package io.sentry.android.core;

import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.AppState;
import io.sentry.logger.LoggerBatchProcessor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidLoggerBatchProcessor extends LoggerBatchProcessor implements AppState.AppStateListener {
    @Override // io.sentry.logger.LoggerBatchProcessor, io.sentry.logger.ILoggerBatchProcessor
    public final void b(boolean z) {
        AppState.n.q(this);
        super.b(z);
    }

    @Override // io.sentry.android.core.AppState.AppStateListener
    public final void h() {
        SentryOptions sentryOptions = this.j;
        try {
            sentryOptions.getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.AndroidLoggerBatchProcessor.1
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidLoggerBatchProcessor.this.c(5000L);
                }
            });
        } catch (Throwable th) {
            sentryOptions.getLogger().a(SentryLevel.ERROR, th, "Failed to submit log flush in onBackground()", new Object[0]);
        }
    }

    @Override // io.sentry.android.core.AppState.AppStateListener
    public final void a() {
    }
}
