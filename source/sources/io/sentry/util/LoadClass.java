package io.sentry.util;

import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class LoadClass {
    public static boolean a(SentryOptions sentryOptions, String str) {
        ILogger iLogger;
        if (sentryOptions != null) {
            iLogger = sentryOptions.getLogger();
        } else {
            iLogger = null;
        }
        return b(str, iLogger);
    }

    public static boolean b(String str, ILogger iLogger) {
        if (c(str, iLogger) != null) {
            return true;
        }
        return false;
    }

    public static Class c(String str, ILogger iLogger) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            if (iLogger != null) {
                iLogger.c(SentryLevel.INFO, "Class not available: ".concat(str), new Object[0]);
                return null;
            }
            return null;
        } catch (UnsatisfiedLinkError e) {
            if (iLogger != null) {
                iLogger.b(SentryLevel.ERROR, "Failed to load (UnsatisfiedLinkError) ".concat(str), e);
                return null;
            }
            return null;
        } catch (Throwable th) {
            if (iLogger != null) {
                iLogger.b(SentryLevel.ERROR, "Failed to initialize ".concat(str), th);
                return null;
            }
            return null;
        }
    }
}
