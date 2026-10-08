package io.sentry;

import io.sentry.SentryTracer;
import io.sentry.util.LazyEvaluator;
import java.util.ListIterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class o implements SpanFinishedCallback, LazyEvaluator.Evaluator {
    public final /* synthetic */ Object j;

    public /* synthetic */ o(Object obj) {
        this.j = obj;
    }

    @Override // io.sentry.SpanFinishedCallback
    public void b(Span span) {
        SentryTracer sentryTracer = (SentryTracer) this.j;
        CompositePerformanceCollector compositePerformanceCollector = sentryTracer.q;
        if (compositePerformanceCollector != null) {
            compositePerformanceCollector.b(span);
        }
        SentryTracer.FinishStatus finishStatus = sentryTracer.f;
        TransactionOptions transactionOptions = sentryTracer.r;
        if (transactionOptions.g != null) {
            if (transactionOptions.f) {
                ListIterator listIterator = sentryTracer.c.listIterator();
                while (listIterator.hasNext()) {
                    Span span2 = (Span) listIterator.next();
                    if (!span2.f && span2.b == null) {
                        return;
                    }
                }
            }
            sentryTracer.p();
            return;
        }
        if (finishStatus.a) {
            sentryTracer.t(finishStatus.b, null);
        }
    }

    @Override // io.sentry.util.LazyEvaluator.Evaluator
    public Object c() {
        String str = (String) this.j;
        SpanId spanId = SpanId.k;
        return str;
    }
}
