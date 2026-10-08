package io.sentry;

import io.sentry.android.core.SentryAndroidOptions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultVersionDetector implements IVersionDetector {
    public final SentryOptions a;

    public DefaultVersionDetector(SentryAndroidOptions sentryAndroidOptions) {
        this.a = sentryAndroidOptions;
    }

    @Override // io.sentry.IVersionDetector
    public final boolean a() {
        return SentryIntegrationPackageStorage.d().c(this.a.getFatalLogger());
    }
}
