package io.sentry;

import io.sentry.protocol.SentryTransaction;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface EventProcessor {
    SentryEvent h(SentryEvent sentryEvent, Hint hint);

    default SentryReplayEvent a(SentryReplayEvent sentryReplayEvent, Hint hint) {
        return sentryReplayEvent;
    }

    default SentryTransaction n(SentryTransaction sentryTransaction, Hint hint) {
        return sentryTransaction;
    }
}
