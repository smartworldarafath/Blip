package io.sentry.cache;

import io.sentry.Hint;
import io.sentry.SentryEnvelope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface IEnvelopeCache extends Iterable<SentryEnvelope> {
    void a(SentryEnvelope sentryEnvelope);

    boolean q(SentryEnvelope sentryEnvelope, Hint hint);
}
