.class public final synthetic Lio/sentry/android/core/internal/util/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lio/sentry/android/core/internal/util/d;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/android/core/internal/util/d;->k:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 4
    .line 5
    iput-object p2, p0, Lio/sentry/android/core/internal/util/d;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lio/sentry/android/core/internal/util/d;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/internal/util/d;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/android/core/internal/util/d;->k:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Lio/sentry/ILogger;

    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->s:Landroid/view/Choreographer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 21
    .line 22
    const-string v2, "Error retrieving Choreographer instance. Slow and frozen frames will not be reported."

    .line 23
    .line 24
    invoke-interface {v1, v0, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void

    .line 28
    :pswitch_0
    check-cast v1, Landroid/view/Window;

    .line 29
    .line 30
    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->q:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    .line 39
    .line 40
    iget-object v2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->r:Lio/sentry/android/core/internal/util/f;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catchall_1
    move-exception v0

    .line 53
    iget-object p0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->l:Lio/sentry/ILogger;

    .line 54
    .line 55
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 56
    .line 57
    const-string v2, "Failed to remove frameMetricsAvailableListener"

    .line 58
    .line 59
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_1
    return-void

    .line 63
    :pswitch_1
    check-cast v1, Landroid/view/Window;

    .line 64
    .line 65
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->k:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    :try_start_2
    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->q:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;

    .line 74
    .line 75
    iget-object v2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->r:Lio/sentry/android/core/internal/util/f;

    .line 76
    .line 77
    iget-object v3, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->m:Landroid/os/Handler;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_2
    move-exception v0

    .line 90
    iget-object p0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->l:Lio/sentry/ILogger;

    .line 91
    .line 92
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 93
    .line 94
    const-string v2, "Failed to add frameMetricsAvailableListener"

    .line 95
    .line 96
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_2
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
