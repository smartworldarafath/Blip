.class public abstract Lio/sentry/SentryDate;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/SentryDate;",
        ">;"
    }
.end annotation


# virtual methods
.method public a(Lio/sentry/SentryDate;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryDate;->d()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lio/sentry/SentryDate;->d()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public b(Lio/sentry/SentryDate;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryDate;->d()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lio/sentry/SentryDate;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    sub-long/2addr v0, p0

    .line 10
    return-wide v0
.end method

.method public c(Lio/sentry/SentryDate;)J
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/SentryDate;->a(Lio/sentry/SentryDate;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lio/sentry/SentryDate;->d()J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryDate;->d()J

    .line 15
    .line 16
    .line 17
    move-result-wide p0

    .line 18
    return-wide p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/sentry/SentryDate;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/SentryDate;->a(Lio/sentry/SentryDate;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public abstract d()J
.end method
