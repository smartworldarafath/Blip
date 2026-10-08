package io.sentry;

import io.sentry.protocol.SentryId;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.util.TracingUtils;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransactionContext extends SpanContext {
    public static final TransactionNameSource B = TransactionNameSource.CUSTOM;
    public TracesSamplingDecision A;
    public String y;
    public TransactionNameSource z;

    public TransactionContext(String str, TransactionNameSource transactionNameSource, String str2, TracesSamplingDecision tracesSamplingDecision) {
        super(new SentryId(), new SpanId(), str2, null);
        Boolean bool;
        Double d;
        Double d2;
        this.y = str;
        this.z = transactionNameSource;
        a(tracesSamplingDecision);
        if (tracesSamplingDecision == null) {
            bool = null;
        } else {
            bool = tracesSamplingDecision.a;
        }
        if (tracesSamplingDecision == null) {
            d = null;
        } else {
            d = tracesSamplingDecision.b;
        }
        if (tracesSamplingDecision == null) {
            d2 = null;
        } else {
            d2 = tracesSamplingDecision.c;
        }
        this.v = TracingUtils.a(null, bool, d, d2);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [io.sentry.TransactionContext, io.sentry.SpanContext] */
    public static TransactionContext b(PropagationContext propagationContext) {
        propagationContext.getClass();
        Baggage baggage = propagationContext.c;
        Double d = baggage.c;
        ?? spanContext = new SpanContext(propagationContext.a, propagationContext.b, "default", null);
        spanContext.y = "<unlabeled transaction>";
        spanContext.A = null;
        spanContext.z = B;
        spanContext.v = TracingUtils.a(baggage, null, null, null);
        return spanContext;
    }
}
