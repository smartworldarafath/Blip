package io.sentry;

import io.sentry.protocol.SentryId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpSpan implements ISpan {
    public static final NoOpSpan a = new Object();

    @Override // io.sentry.ISpan
    public final SpanStatus a() {
        return null;
    }

    @Override // io.sentry.ISpan
    public final ISpan c(String str, SentryDate sentryDate, Instrumenter instrumenter) {
        return a;
    }

    @Override // io.sentry.ISpan
    public final boolean d() {
        return false;
    }

    @Override // io.sentry.ISpan
    public final String o() {
        return null;
    }

    @Override // io.sentry.ISpan
    public final SpanContext r() {
        return new SpanContext(SentryId.k, SpanId.k, "op", null);
    }

    @Override // io.sentry.ISpan
    public final SentryDate s() {
        return new SentryNanotimeDate();
    }

    @Override // io.sentry.ISpan
    public final SentryDate u() {
        return new SentryNanotimeDate();
    }

    @Override // io.sentry.ISpan
    public final void h() {
    }

    @Override // io.sentry.ISpan
    public final void g(SpanStatus spanStatus) {
    }

    @Override // io.sentry.ISpan
    public final void m(String str) {
    }

    @Override // io.sentry.ISpan
    public final void f(Number number, String str) {
    }

    @Override // io.sentry.ISpan
    public final void i(Object obj, String str) {
    }

    @Override // io.sentry.ISpan
    public final void t(SpanStatus spanStatus, SentryDate sentryDate) {
    }

    @Override // io.sentry.ISpan
    public final void q(String str, Long l, MeasurementUnit measurementUnit) {
    }
}
