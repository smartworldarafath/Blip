package io.sentry.util;

import io.sentry.ILogger;
import io.sentry.SentryLevel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LogUtils {
    public static void a(Class cls, Object obj, ILogger iLogger) {
        String str;
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        if (obj != null) {
            str = obj.getClass().getCanonicalName();
        } else {
            str = "Hint";
        }
        iLogger.c(sentryLevel, "%s is not %s", str, cls.getCanonicalName());
    }
}
