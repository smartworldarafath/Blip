package io.sentry.cache;

import io.sentry.IOptionsObserver;
import io.sentry.SentryOptions;
import io.sentry.android.core.SentryAndroidOptions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistingOptionsObserver implements IOptionsObserver {
    public final SentryOptions a;

    public PersistingOptionsObserver(SentryAndroidOptions sentryAndroidOptions) {
        this.a = sentryAndroidOptions;
    }

    public static Object b(SentryOptions sentryOptions, String str, Class cls) {
        return CacheUtils.c(sentryOptions, ".options-cache", str, cls);
    }

    public final void a(String str) {
        CacheUtils.a(this.a, ".options-cache", str);
    }

    public final void c(Object obj, String str) {
        CacheUtils.d(this.a, obj, ".options-cache", str);
    }
}
