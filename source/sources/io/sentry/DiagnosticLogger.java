package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DiagnosticLogger implements ILogger {
    public final SentryOptions a;
    public final ILogger b;

    public DiagnosticLogger(SentryOptions sentryOptions, ILogger iLogger) {
        this.a = sentryOptions;
        this.b = iLogger;
    }

    @Override // io.sentry.ILogger
    public final void a(SentryLevel sentryLevel, Throwable th, String str, Object... objArr) {
        ILogger iLogger = this.b;
        if (iLogger != null && d(sentryLevel)) {
            iLogger.a(sentryLevel, th, str, objArr);
        }
    }

    @Override // io.sentry.ILogger
    public final void b(SentryLevel sentryLevel, String str, Throwable th) {
        ILogger iLogger = this.b;
        if (iLogger != null && d(sentryLevel)) {
            iLogger.b(sentryLevel, str, th);
        }
    }

    @Override // io.sentry.ILogger
    public final void c(SentryLevel sentryLevel, String str, Object... objArr) {
        ILogger iLogger = this.b;
        if (iLogger != null && d(sentryLevel)) {
            iLogger.c(sentryLevel, str, objArr);
        }
    }

    @Override // io.sentry.ILogger
    public final boolean d(SentryLevel sentryLevel) {
        SentryOptions sentryOptions = this.a;
        SentryLevel diagnosticLevel = sentryOptions.getDiagnosticLevel();
        if (sentryLevel == null || !sentryOptions.isDebug() || sentryLevel.ordinal() < diagnosticLevel.ordinal()) {
            return false;
        }
        return true;
    }
}
