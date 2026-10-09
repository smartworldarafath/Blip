package io.sentry;

import io.sentry.protocol.SentryId;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpTransaction implements ITransaction {
    public static final NoOpTransaction a = new Object();

    @Override // io.sentry.ISpan
    public final SpanStatus a() {
        return null;
    }

    @Override // io.sentry.ISpan
    public final TraceContext b() {
        return new TraceContext(SentryId.k, "", null, null, null, null, null, null, null, null);
    }

    @Override // io.sentry.ISpan
    public final ISpan c(String str, SentryDate sentryDate, Instrumenter instrumenter) {
        return NoOpSpan.a;
    }

    @Override // io.sentry.ISpan
    public final boolean d() {
        return true;
    }

    @Override // io.sentry.ITransaction
    public final String getName() {
        return "";
    }

    @Override // io.sentry.ITransaction
    public final ISpan k() {
        return null;
    }

    @Override // io.sentry.ISpan
    public final ISpan l(String str, String str2, SentryDate sentryDate, Instrumenter instrumenter, SpanOptions spanOptions) {
        return NoOpSpan.a;
    }

    @Override // io.sentry.ITransaction
    public final SentryId n() {
        return SentryId.k;
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
    public final void j() {
    }

    @Override // io.sentry.ITransaction
    public final void p() {
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

    @Override // io.sentry.ITransaction
    public final void e(SpanStatus spanStatus, boolean z, Hint hint) {
    }

    @Override // io.sentry.ISpan
    public final void q(String str, Long l, MeasurementUnit measurementUnit) {
    }
}
