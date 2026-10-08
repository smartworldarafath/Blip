.class public Lio/sentry/android/core/performance/TimeSpan;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/android/core/performance/TimeSpan;",
        ">;"
    }
.end annotation


# instance fields
.field public j:Ljava/lang/String;

.field public k:J

.field public l:J

.field public m:J


# virtual methods
.method public final a()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->m:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    return-wide v0

    .line 13
    :cond_0
    return-wide v2
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public final c(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 8
    .line 9
    sub-long/2addr p1, v0

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sub-long/2addr v0, p1

    .line 15
    iput-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 16
    .line 17
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    .line 1
    check-cast p1, Lio/sentry/android/core/performance/TimeSpan;

    .line 2
    .line 3
    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 4
    .line 5
    iget-wide p0, p1, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 6
    .line 7
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
