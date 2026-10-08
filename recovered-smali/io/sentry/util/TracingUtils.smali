.class public abstract Lio/sentry/util/TracingUtils;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Lio/sentry/Baggage;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;)Lio/sentry/Baggage;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lio/sentry/Baggage;

    .line 4
    .line 5
    invoke-direct {p0}, Lio/sentry/Baggage;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lio/sentry/Baggage;->d:Ljava/lang/Double;

    .line 9
    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lio/sentry/Baggage;->c:Ljava/lang/Double;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-object p2, v0

    .line 18
    :goto_0
    invoke-static {p3, p2, p1}, Lio/sentry/util/SampleRateUtils;->b(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)Ljava/lang/Double;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-boolean p2, p0, Lio/sentry/Baggage;->e:Z

    .line 23
    .line 24
    if-eqz p2, :cond_2

    .line 25
    .line 26
    iput-object p1, p0, Lio/sentry/Baggage;->d:Ljava/lang/Double;

    .line 27
    .line 28
    :cond_2
    return-object p0
.end method
