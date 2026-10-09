package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory {
    static boolean b(String str, ILogger iLogger) {
        if (str != null && !str.isEmpty()) {
            return true;
        }
        iLogger.c(SentryLevel.INFO, "No cached dir path is defined in options.", new Object[0]);
        return false;
    }

    e a(IScopes iScopes, SentryOptions sentryOptions);
}
