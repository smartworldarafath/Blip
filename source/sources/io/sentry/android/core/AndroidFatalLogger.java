package io.sentry.android.core;

import android.util.Log;
import io.sentry.ILogger;
import io.sentry.SentryLevel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidFatalLogger implements ILogger {
    @Override // io.sentry.ILogger
    public final void a(SentryLevel sentryLevel, Throwable th, String str, Object... objArr) {
        if (objArr.length == 0) {
            b(sentryLevel, str, th);
        } else {
            b(sentryLevel, String.format(str, objArr), th);
        }
    }

    @Override // io.sentry.ILogger
    public final void b(SentryLevel sentryLevel, String str, Throwable th) {
        Log.wtf("Sentry", str, th);
    }

    @Override // io.sentry.ILogger
    public final void c(SentryLevel sentryLevel, String str, Object... objArr) {
        if (objArr.length == 0) {
            Log.println(7, "Sentry", str);
        } else {
            Log.println(7, "Sentry", String.format(str, objArr));
        }
    }

    @Override // io.sentry.ILogger
    public final boolean d(SentryLevel sentryLevel) {
        return true;
    }
}
