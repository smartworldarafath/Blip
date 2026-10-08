package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpLogger implements ILogger {
    public static final NoOpLogger a = new Object();

    @Override // io.sentry.ILogger
    public final boolean d(SentryLevel sentryLevel) {
        return false;
    }

    @Override // io.sentry.ILogger
    public final void b(SentryLevel sentryLevel, String str, Throwable th) {
    }

    @Override // io.sentry.ILogger
    public final void c(SentryLevel sentryLevel, String str, Object... objArr) {
    }

    @Override // io.sentry.ILogger
    public final void a(SentryLevel sentryLevel, Throwable th, String str, Object... objArr) {
    }
}
