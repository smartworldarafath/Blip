.class public final synthetic Lio/sentry/android/core/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Lio/sentry/android/core/b;->j:I

    iput-object p2, p0, Lio/sentry/android/core/b;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/android/core/ANRWatchDog;Lio/sentry/android/core/a;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lio/sentry/android/core/b;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/android/core/b;->k:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/android/core/AppState;Lio/sentry/android/core/AppState$LifecycleObserver;)V
    .locals 0

    .line 11
    const/4 p1, 0x5

    iput p1, p0, Lio/sentry/android/core/b;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/sentry/android/core/b;->k:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lio/sentry/android/core/b;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object p0, p0, Lio/sentry/android/core/b;->k:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->q(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast p0, Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 20
    .line 21
    sget-object v0, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->r:Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->o:Landroidx/lifecycle/LifecycleRegistry;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;->b(Landroidx/lifecycle/LifecycleObserver;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :pswitch_1
    check-cast p0, Lio/sentry/android/core/AndroidProfiler;

    .line 34
    .line 35
    invoke-virtual {p0, v2, v3}, Lio/sentry/android/core/AndroidProfiler;->a(Ljava/util/List;Z)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_2
    check-cast p0, Lio/sentry/android/core/AndroidContinuousProfiler;

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lio/sentry/android/core/AndroidContinuousProfiler;->h(Z)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_3
    check-cast p0, Lio/sentry/android/core/ActivityFramesTracker;

    .line 46
    .line 47
    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker;->a:Lio/sentry/util/LazyEvaluator;

    .line 48
    .line 49
    invoke-virtual {p0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroidx/core/app/FrameMetricsAggregator;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/core/app/FrameMetricsAggregator;->e()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_4
    check-cast p0, Lio/sentry/android/core/SentryShakeDetector;

    .line 60
    .line 61
    iget-object p0, p0, Lio/sentry/android/core/SentryShakeDetector;->g:Lio/sentry/android/core/SentryShakeDetector$SampleQueue;

    .line 62
    .line 63
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->b:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v3, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 68
    .line 69
    iput-object v3, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->b:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 70
    .line 71
    iget-object v3, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->a:Lio/sentry/android/core/SentryShakeDetector$SamplePool;

    .line 72
    .line 73
    iget-object v4, v3, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->a:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 74
    .line 75
    iput-object v4, v0, Lio/sentry/android/core/SentryShakeDetector$Sample;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 76
    .line 77
    iput-object v0, v3, Lio/sentry/android/core/SentryShakeDetector$SamplePool;->a:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iput-object v2, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->c:Lio/sentry/android/core/SentryShakeDetector$Sample;

    .line 81
    .line 82
    iput v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->d:I

    .line 83
    .line 84
    iput v1, p0, Lio/sentry/android/core/SentryShakeDetector$SampleQueue;->e:I

    .line 85
    .line 86
    return-void

    .line 87
    :pswitch_5
    check-cast p0, Lio/sentry/android/core/ANRWatchDog;

    .line 88
    .line 89
    sget v0, Lio/sentry/android/core/ANRWatchDog;->u:I

    .line 90
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    iput-wide v2, p0, Lio/sentry/android/core/ANRWatchDog;->q:J

    .line 96
    .line 97
    iget-object p0, p0, Lio/sentry/android/core/ANRWatchDog;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
