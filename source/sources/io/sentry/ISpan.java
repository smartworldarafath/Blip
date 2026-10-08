package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ISpan {
    SpanStatus a();

    TraceContext b();

    ISpan c(String str, SentryDate sentryDate, Instrumenter instrumenter);

    boolean d();

    void f(Number number, String str);

    void g(SpanStatus spanStatus);

    void h();

    void i(Object obj, String str);

    void j();

    ISpan l(String str, String str2, SentryDate sentryDate, Instrumenter instrumenter, SpanOptions spanOptions);

    void m(String str);

    String o();

    void q(String str, Long l, MeasurementUnit measurementUnit);

    SpanContext r();

    SentryDate s();

    void t(SpanStatus spanStatus, SentryDate sentryDate);

    SentryDate u();
}
