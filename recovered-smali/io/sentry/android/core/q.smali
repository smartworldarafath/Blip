.class public final synthetic Lio/sentry/android/core/q;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lio/sentry/ISpan;

    .line 2
    .line 3
    check-cast p2, Lio/sentry/ISpan;

    .line 4
    .line 5
    sget-object p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->h:Lio/sentry/SentryNanotimeDate;

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-interface {p1}, Lio/sentry/ISpan;->u()Lio/sentry/SentryDate;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p2}, Lio/sentry/ISpan;->u()Lio/sentry/SentryDate;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lio/sentry/SentryDate;->a(Lio/sentry/SentryDate;)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    return p0

    .line 26
    :cond_1
    invoke-interface {p1}, Lio/sentry/ISpan;->r()Lio/sentry/SpanContext;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    iget-object p0, p0, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 31
    .line 32
    invoke-virtual {p0}, Lio/sentry/SpanId;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p2}, Lio/sentry/ISpan;->r()Lio/sentry/SpanContext;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p1, p1, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 41
    .line 42
    invoke-virtual {p1}, Lio/sentry/SpanId;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method
