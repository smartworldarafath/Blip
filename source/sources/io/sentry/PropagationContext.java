package io.sentry;

import io.sentry.protocol.SentryId;
import io.sentry.util.TracingUtils;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PropagationContext {
    public final SentryId a;
    public final SpanId b;
    public final Baggage c;

    public PropagationContext() {
        this(new SentryId(), new SpanId(), null);
    }

    public PropagationContext(SentryId sentryId, SpanId spanId, Baggage baggage) {
        this.a = sentryId;
        this.b = spanId;
        this.c = TracingUtils.a(baggage, null, null, null);
    }

    public PropagationContext(PropagationContext propagationContext) {
        this(propagationContext.a, propagationContext.b, propagationContext.c);
    }
}
