.class public final Lio/sentry/SentryNanotimeDate;
.super Lio/sentry/SentryDate;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final j:Ljava/util/Date;

.field public final k:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-direct {p0, v0, v1, v2}, Lio/sentry/SentryNanotimeDate;-><init>(Ljava/util/Date;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/sentry/SentryNanotimeDate;->j:Ljava/util/Date;

    .line 15
    iput-wide p2, p0, Lio/sentry/SentryNanotimeDate;->k:J

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/SentryDate;)I
    .locals 5

    .line 1
    instance-of v0, p1, Lio/sentry/SentryNanotimeDate;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lio/sentry/SentryNanotimeDate;

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/SentryNanotimeDate;->j:Ljava/util/Date;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p1, Lio/sentry/SentryNanotimeDate;->j:Ljava/util/Date;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    cmp-long v4, v0, v2

    .line 20
    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    iget-wide v0, p0, Lio/sentry/SentryNanotimeDate;->k:J

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    iget-wide v0, p1, Lio/sentry/SentryNanotimeDate;->k:J

    .line 30
    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    return p0

    .line 53
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/SentryDate;->a(Lio/sentry/SentryDate;)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    return p0
.end method

.method public final b(Lio/sentry/SentryDate;)J
    .locals 2

    .line 1
    instance-of v0, p1, Lio/sentry/SentryNanotimeDate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lio/sentry/SentryNanotimeDate;

    .line 6
    .line 7
    iget-wide v0, p0, Lio/sentry/SentryNanotimeDate;->k:J

    .line 8
    .line 9
    iget-wide p0, p1, Lio/sentry/SentryNanotimeDate;->k:J

    .line 10
    .line 11
    sub-long/2addr v0, p0

    .line 12
    return-wide v0

    .line 13
    :cond_0
    invoke-super {p0, p1}, Lio/sentry/SentryDate;->b(Lio/sentry/SentryDate;)J

    .line 14
    .line 15
    .line 16
    move-result-wide p0

    .line 17
    return-wide p0
.end method

.method public final c(Lio/sentry/SentryDate;)J
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Lio/sentry/SentryNanotimeDate;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lio/sentry/SentryNanotimeDate;

    .line 9
    .line 10
    iget-wide v1, v0, Lio/sentry/SentryNanotimeDate;->k:J

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lio/sentry/SentryNanotimeDate;->a(Lio/sentry/SentryDate;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-wide v3, p0, Lio/sentry/SentryNanotimeDate;->k:J

    .line 17
    .line 18
    if-gez p1, :cond_0

    .line 19
    .line 20
    sub-long/2addr v1, v3

    .line 21
    invoke-virtual {p0}, Lio/sentry/SentryNanotimeDate;->d()J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    add-long/2addr p0, v1

    .line 26
    return-wide p0

    .line 27
    :cond_0
    sub-long/2addr v3, v1

    .line 28
    invoke-virtual {v0}, Lio/sentry/SentryNanotimeDate;->d()J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    add-long/2addr p0, v3

    .line 33
    return-wide p0

    .line 34
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/SentryDate;->c(Lio/sentry/SentryDate;)J

    .line 35
    .line 36
    .line 37
    move-result-wide p0

    .line 38
    return-wide p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/sentry/SentryDate;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/sentry/SentryNanotimeDate;->a(Lio/sentry/SentryDate;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final d()J
    .locals 4

    .line 1
    iget-object p0, p0, Lio/sentry/SentryNanotimeDate;->j:Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0xf4240

    .line 8
    .line 9
    .line 10
    mul-long/2addr v0, v2

    .line 11
    return-wide v0
.end method
