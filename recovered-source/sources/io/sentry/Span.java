package io.sentry;

import io.sentry.protocol.Contexts;
import io.sentry.protocol.MeasurementValue;
import io.sentry.util.Objects;
import io.sentry.util.SpanUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Span implements ISpan {
    public final SentryDate a;
    public SentryDate b;
    public final SpanContext c;
    public final SentryTracer d;
    public final IScopes e;
    public final SpanOptions h;
    public SpanFinishedCallback i;
    public boolean f = false;
    public final AtomicBoolean g = new AtomicBoolean(false);
    public final ConcurrentHashMap j = new ConcurrentHashMap();
    public final ConcurrentHashMap k = new ConcurrentHashMap();

    public Span(SentryTracer sentryTracer, Scopes scopes, SpanContext spanContext, SpanOptions spanOptions, o oVar) {
        new Contexts();
        this.c = spanContext;
        spanContext.r = spanOptions.d;
        Objects.b(sentryTracer, "transaction is required");
        this.d = sentryTracer;
        Objects.b(scopes, "Scopes are required");
        this.e = scopes;
        this.h = spanOptions;
        this.i = oVar;
        SentryDate sentryDate = spanOptions.a;
        if (sentryDate != null) {
            this.a = sentryDate;
        } else {
            this.a = scopes.j().getDateProvider().a();
        }
    }

    @Override // io.sentry.ISpan
    public final SpanStatus a() {
        return this.c.p;
    }

    @Override // io.sentry.ISpan
    public final ISpan c(String str, SentryDate sentryDate, Instrumenter instrumenter) {
        return l("activity.load", str, sentryDate, instrumenter, new SpanOptions());
    }

    @Override // io.sentry.ISpan
    public final boolean d() {
        return this.f;
    }

    @Override // io.sentry.ISpan
    public final void f(Number number, String str) {
        if (this.f) {
            this.e.j().getLogger().c(SentryLevel.DEBUG, "The span is already finished. Measurement %s cannot be set", str);
            return;
        }
        this.k.put(str, new MeasurementValue(number, null));
        SentryTracer sentryTracer = this.d;
        Span span = sentryTracer.b;
        if (span != this && !span.k.containsKey(str)) {
            sentryTracer.f(number, str);
        }
    }

    @Override // io.sentry.ISpan
    public final void g(SpanStatus spanStatus) {
        t(spanStatus, this.e.j().getDateProvider().a());
    }

    @Override // io.sentry.ISpan
    public final void h() {
        g(this.c.p);
    }

    @Override // io.sentry.ISpan
    public final void i(Object obj, String str) {
        ConcurrentHashMap concurrentHashMap = this.j;
        if (obj == null) {
            concurrentHashMap.remove(str);
        } else {
            concurrentHashMap.put(str, obj);
        }
    }

    @Override // io.sentry.ISpan
    public final ISpan l(String str, String str2, SentryDate sentryDate, Instrumenter instrumenter, SpanOptions spanOptions) {
        boolean z = this.f;
        NoOpSpan noOpSpan = NoOpSpan.a;
        if (!z) {
            SpanId spanId = this.c.k;
            SentryTracer sentryTracer = this.d;
            Span span = sentryTracer.b;
            SpanContext spanContext = span.c;
            SpanContext spanContext2 = new SpanContext(spanContext.j, new SpanId(), spanId, str, null, spanContext.m, null, "manual");
            spanContext2.o = str2;
            spanContext2.u = instrumenter;
            spanOptions.a = sentryDate;
            CopyOnWriteArrayList copyOnWriteArrayList = sentryTracer.c;
            Scopes scopes = sentryTracer.d;
            if (!span.f && sentryTracer.o.equals(instrumenter)) {
                if (!SpanUtils.a(spanOptions.d, scopes.j().getIgnoredSpanOrigins())) {
                    String str3 = spanContext2.o;
                    int size = copyOnWriteArrayList.size();
                    int maxSpans = scopes.j().getMaxSpans();
                    String str4 = spanContext2.n;
                    if (size < maxSpans) {
                        Objects.b(spanContext2.l, "parentSpanId is required");
                        Objects.b(str4, "operation is required");
                        sentryTracer.w();
                        Span span2 = new Span(sentryTracer, sentryTracer.d, spanContext2, spanOptions, new o(sentryTracer));
                        sentryTracer.z(span2);
                        copyOnWriteArrayList.add(span2);
                        CompositePerformanceCollector compositePerformanceCollector = sentryTracer.q;
                        if (compositePerformanceCollector != null) {
                            compositePerformanceCollector.d(span2);
                        }
                        return span2;
                    }
                    scopes.j().getLogger().c(SentryLevel.WARNING, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan.", str4, str3);
                    return noOpSpan;
                }
            }
        }
        return noOpSpan;
    }

    @Override // io.sentry.ISpan
    public final void m(String str) {
        this.c.o = str;
    }

    @Override // io.sentry.ISpan
    public final String o() {
        return this.c.o;
    }

    @Override // io.sentry.ISpan
    public final void q(String str, Long l, MeasurementUnit measurementUnit) {
        if (this.f) {
            this.e.j().getLogger().c(SentryLevel.DEBUG, "The span is already finished. Measurement %s cannot be set", str);
            return;
        }
        this.k.put(str, new MeasurementValue(l, measurementUnit.apiName()));
        SentryTracer sentryTracer = this.d;
        Span span = sentryTracer.b;
        if (span != this && !span.k.containsKey(str)) {
            sentryTracer.q(str, l, measurementUnit);
        }
    }

    @Override // io.sentry.ISpan
    public final SpanContext r() {
        return this.c;
    }

    @Override // io.sentry.ISpan
    public final SentryDate s() {
        return this.b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.sentry.ISpan
    public final void t(SpanStatus spanStatus, SentryDate sentryDate) {
        SentryDate sentryDate2;
        SentryDate sentryDate3;
        if (!this.f && this.g.compareAndSet(false, true)) {
            SpanContext spanContext = this.c;
            spanContext.p = spanStatus;
            SpanId spanId = spanContext.k;
            if (sentryDate == null) {
                sentryDate = this.e.j().getDateProvider().a();
            }
            this.b = sentryDate;
            SpanOptions spanOptions = this.h;
            spanOptions.getClass();
            if (spanOptions.c) {
                SentryTracer sentryTracer = this.d;
                Span span = sentryTracer.b;
                CopyOnWriteArrayList<Span> copyOnWriteArrayList = sentryTracer.c;
                if (!span.c.k.equals(spanId)) {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = copyOnWriteArrayList.iterator();
                    while (it.hasNext()) {
                        Span span2 = (Span) it.next();
                        SpanId spanId2 = span2.c.l;
                        if (spanId2 != null && spanId2.equals(spanId)) {
                            arrayList.add(span2);
                        }
                    }
                    copyOnWriteArrayList = arrayList;
                }
                SentryDate sentryDate4 = null;
                SentryDate sentryDate5 = null;
                for (Span span3 : copyOnWriteArrayList) {
                    if (sentryDate4 == null || span3.a.b(sentryDate4) < 0) {
                        sentryDate4 = span3.a;
                    }
                    if (sentryDate5 == null || ((sentryDate3 = span3.b) != null && sentryDate3.b(sentryDate5) > 0)) {
                        sentryDate5 = span3.b;
                    }
                }
                if (spanOptions.c && sentryDate5 != null && (((sentryDate2 = this.b) == null || sentryDate2.b(sentryDate5) > 0) && this.b != null)) {
                    this.b = sentryDate5;
                }
            }
            SpanFinishedCallback spanFinishedCallback = this.i;
            if (spanFinishedCallback != null) {
                spanFinishedCallback.b(this);
            }
            this.f = true;
        }
    }

    @Override // io.sentry.ISpan
    public final SentryDate u() {
        return this.a;
    }

    public final Boolean v() {
        TracesSamplingDecision tracesSamplingDecision = this.c.m;
        if (tracesSamplingDecision == null) {
            return null;
        }
        return tracesSamplingDecision.a;
    }

    public Span(TransactionContext transactionContext, SentryTracer sentryTracer, Scopes scopes, TransactionOptions transactionOptions) {
        new Contexts();
        this.c = transactionContext;
        transactionContext.r = transactionOptions.d;
        this.d = sentryTracer;
        this.e = scopes;
        this.i = null;
        SentryDate sentryDate = transactionOptions.a;
        if (sentryDate != null) {
            this.a = sentryDate;
        } else {
            this.a = scopes.j().getDateProvider().a();
        }
        this.h = transactionOptions;
    }
}
