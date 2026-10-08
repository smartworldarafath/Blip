package io.sentry.transport;

import io.sentry.Hint;
import io.sentry.SentryEnvelope;
import io.sentry.cache.IEnvelopeCache;
import java.util.Collections;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpEnvelopeCache implements IEnvelopeCache {
    public static final NoOpEnvelopeCache j = new Object();

    @Override // java.lang.Iterable
    public final Iterator<SentryEnvelope> iterator() {
        return Collections.emptyIterator();
    }

    @Override // io.sentry.cache.IEnvelopeCache
    public final boolean q(SentryEnvelope sentryEnvelope, Hint hint) {
        return false;
    }

    @Override // io.sentry.cache.IEnvelopeCache
    public final void a(SentryEnvelope sentryEnvelope) {
    }
}
