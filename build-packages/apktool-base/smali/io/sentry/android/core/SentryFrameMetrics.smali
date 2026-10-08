.class final Lio/sentry/android/core/SentryFrameMetrics;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:J


# virtual methods
.method public final a(JJZZ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->e:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lio/sentry/android/core/SentryFrameMetrics;->e:J

    .line 5
    .line 6
    if-eqz p6, :cond_0

    .line 7
    .line 8
    iget-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->d:J

    .line 9
    .line 10
    add-long/2addr p1, p3

    .line 11
    iput-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->d:J

    .line 12
    .line 13
    iget p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->b:I

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    iput p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->b:I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    if-eqz p5, :cond_1

    .line 21
    .line 22
    iget-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->c:J

    .line 23
    .line 24
    add-long/2addr p1, p3

    .line 25
    iput-wide p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->c:J

    .line 26
    .line 27
    iget p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->a:I

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    iput p1, p0, Lio/sentry/android/core/SentryFrameMetrics;->a:I

    .line 32
    .line 33
    :cond_1
    return-void
.end method
