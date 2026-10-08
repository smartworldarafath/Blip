.class public abstract Lio/sentry/util/SampleRateUtils;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Lio/sentry/TracesSamplingDecision;)Lio/sentry/TracesSamplingDecision;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->c:Ljava/lang/Double;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lio/sentry/TracesSamplingDecision;->b:Ljava/lang/Double;

    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/TracesSamplingDecision;->a:Ljava/lang/Boolean;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2, v0, v1}, Lio/sentry/util/SampleRateUtils;->b(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)Ljava/lang/Double;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    new-instance v3, Lio/sentry/TracesSamplingDecision;

    .line 16
    .line 17
    iget-object v4, p0, Lio/sentry/TracesSamplingDecision;->a:Ljava/lang/Boolean;

    .line 18
    .line 19
    iget-object v5, p0, Lio/sentry/TracesSamplingDecision;->b:Ljava/lang/Double;

    .line 20
    .line 21
    iget-object v7, p0, Lio/sentry/TracesSamplingDecision;->d:Ljava/lang/Boolean;

    .line 22
    .line 23
    iget-object v8, p0, Lio/sentry/TracesSamplingDecision;->e:Ljava/lang/Double;

    .line 24
    .line 25
    invoke-direct/range {v3 .. v8}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 26
    .line 27
    .line 28
    return-object v3
.end method

.method public static b(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;)Ljava/lang/Double;
    .locals 6

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-static {}, Lio/sentry/util/SentryRandom;->a()Lio/sentry/util/Random;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lio/sentry/util/Random;->c()D

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    mul-double/2addr p0, v0

    .line 27
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    sub-double/2addr v4, p0

    .line 43
    mul-double/2addr v4, v0

    .line 44
    add-double/2addr v4, v2

    .line 45
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static c(Ljava/lang/Double;Z)Z
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmpl-double p1, v0, v2

    .line 17
    .line 18
    if-ltz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 21
    .line 22
    .line 23
    move-result-wide p0

    .line 24
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 25
    .line 26
    cmpg-double p0, p0, v0

    .line 27
    .line 28
    if-gtz p0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return p0
.end method
