package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ILogger {
    void a(SentryLevel sentryLevel, Throwable th, String str, Object... objArr);

    void b(SentryLevel sentryLevel, String str, Throwable th);

    void c(SentryLevel sentryLevel, String str, Object... objArr);

    boolean d(SentryLevel sentryLevel);
}
