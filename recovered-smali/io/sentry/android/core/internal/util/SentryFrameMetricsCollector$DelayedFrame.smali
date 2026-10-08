.class Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelayedFrame"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;",
        ">;"
    }
.end annotation


# instance fields
.field public final j:J

.field public final k:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;->j:J

    .line 5
    .line 6
    iput-wide p3, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;->k:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;

    .line 2
    .line 3
    iget-wide v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;->k:J

    .line 4
    .line 5
    iget-wide v2, p1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;->k:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    iget-wide v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;->j:J

    .line 15
    .line 16
    iget-wide p0, p1, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$DelayedFrame;->j:J

    .line 17
    .line 18
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0
.end method
