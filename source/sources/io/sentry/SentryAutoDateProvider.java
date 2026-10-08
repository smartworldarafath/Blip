package io.sentry;

import io.sentry.util.Platform;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryAutoDateProvider implements SentryDateProvider {
    public final SentryDateProvider a;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, io.sentry.SentryDateProvider] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, io.sentry.SentryDateProvider] */
    public SentryAutoDateProvider() {
        if (!Platform.a && Platform.b) {
            this.a = new Object();
        } else {
            this.a = new Object();
        }
    }

    @Override // io.sentry.SentryDateProvider
    public final SentryDate a() {
        return this.a.a();
    }
}
