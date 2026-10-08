package io.sentry;

import io.sentry.protocol.Contexts;
import io.sentry.protocol.SentryRuntime;
import io.sentry.protocol.SentryTransaction;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryRuntimeEventProcessor implements EventProcessor {
    public final String j;
    public final String k;

    public SentryRuntimeEventProcessor() {
        String property = System.getProperty("java.version");
        String property2 = System.getProperty("java.vendor");
        this.j = property;
        this.k = property2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [io.sentry.protocol.SentryRuntime, java.lang.Object] */
    public final void b(SentryBaseEvent sentryBaseEvent) {
        Contexts contexts = sentryBaseEvent.k;
        if (contexts.h() == null) {
            contexts.t(new Object());
        }
        SentryRuntime h = contexts.h();
        if (h != null && h.j == null && h.k == null) {
            h.j = this.k;
            h.k = this.j;
        }
    }

    @Override // io.sentry.EventProcessor
    public final SentryEvent h(SentryEvent sentryEvent, Hint hint) {
        b(sentryEvent);
        return sentryEvent;
    }

    @Override // io.sentry.EventProcessor
    public final SentryTransaction n(SentryTransaction sentryTransaction, Hint hint) {
        b(sentryTransaction);
        return sentryTransaction;
    }
}
