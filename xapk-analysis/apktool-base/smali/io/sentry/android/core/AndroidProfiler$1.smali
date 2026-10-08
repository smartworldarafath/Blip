.class Lio/sentry/android/core/AndroidProfiler$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;


# instance fields
.field public a:F

.field public final synthetic b:Lio/sentry/android/core/AndroidProfiler;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/AndroidProfiler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/AndroidProfiler$1;->b:Lio/sentry/android/core/AndroidProfiler;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lio/sentry/android/core/AndroidProfiler$1;->a:F

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(JJJJZZF)V
    .locals 2

    .line 1
    new-instance p1, Lio/sentry/SentryNanotimeDate;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/sentry/SentryNanotimeDate;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/sentry/SentryNanotimeDate;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 11
    .line 12
    .line 13
    move-result-wide p7

    .line 14
    sub-long/2addr p3, p7

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 16
    .line 17
    .line 18
    move-result-wide p7

    .line 19
    add-long/2addr p7, p3

    .line 20
    iget-object p3, p0, Lio/sentry/android/core/AndroidProfiler$1;->b:Lio/sentry/android/core/AndroidProfiler;

    .line 21
    .line 22
    iget-wide v0, p3, Lio/sentry/android/core/AndroidProfiler;->a:J

    .line 23
    .line 24
    sub-long/2addr p7, v0

    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    cmp-long p4, p7, v0

    .line 28
    .line 29
    if-gez p4, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    if-eqz p10, :cond_1

    .line 33
    .line 34
    iget-object p4, p3, Lio/sentry/android/core/AndroidProfiler;->j:Ljava/util/ArrayDeque;

    .line 35
    .line 36
    new-instance p9, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 37
    .line 38
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object p10

    .line 42
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p5

    .line 46
    invoke-direct {p9, p10, p5, p1, p2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4, p9}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    if-eqz p9, :cond_2

    .line 54
    .line 55
    iget-object p4, p3, Lio/sentry/android/core/AndroidProfiler;->i:Ljava/util/ArrayDeque;

    .line 56
    .line 57
    new-instance p9, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 58
    .line 59
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object p10

    .line 63
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object p5

    .line 67
    invoke-direct {p9, p10, p5, p1, p2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p4, p9}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_0
    iget p4, p0, Lio/sentry/android/core/AndroidProfiler$1;->a:F

    .line 74
    .line 75
    cmpl-float p4, p11, p4

    .line 76
    .line 77
    if-eqz p4, :cond_3

    .line 78
    .line 79
    iput p11, p0, Lio/sentry/android/core/AndroidProfiler$1;->a:F

    .line 80
    .line 81
    iget-object p0, p3, Lio/sentry/android/core/AndroidProfiler;->h:Ljava/util/ArrayDeque;

    .line 82
    .line 83
    new-instance p3, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 84
    .line 85
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-static {p11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 90
    .line 91
    .line 92
    move-result-object p5

    .line 93
    invoke-direct {p3, p4, p5, p1, p2}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    return-void
.end method
