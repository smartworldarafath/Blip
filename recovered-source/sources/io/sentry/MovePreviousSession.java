package io.sentry;

import io.sentry.cache.EnvelopeCache;
import io.sentry.cache.IEnvelopeCache;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MovePreviousSession implements Runnable {
    public final SentryOptions j;

    public MovePreviousSession(SentryOptions sentryOptions) {
        this.j = sentryOptions;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SentryOptions sentryOptions = this.j;
        String cacheDirPath = sentryOptions.getCacheDirPath();
        if (cacheDirPath == null) {
            sentryOptions.getLogger().c(SentryLevel.INFO, "Cache dir is not set, not moving the previous session.", new Object[0]);
            return;
        }
        IEnvelopeCache envelopeDiskCache = sentryOptions.getEnvelopeDiskCache();
        if (envelopeDiskCache instanceof EnvelopeCache) {
            int i = EnvelopeCache.s;
            EnvelopeCache envelopeCache = (EnvelopeCache) envelopeDiskCache;
            envelopeCache.f(new File(cacheDirPath, "session.json"), new File(cacheDirPath, "previous_session.json"));
            envelopeCache.o.countDown();
        }
    }
}
