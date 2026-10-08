.class public final Lio/sentry/android/core/FeedbackShakeIntegration;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/Integration;
.implements Ljava/io/Closeable;
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final j:Landroid/app/Application;

.field public final k:Lio/sentry/android/core/SentryShakeDetector;

.field public l:Lio/sentry/android/core/SentryAndroidOptions;

.field public volatile m:Ljava/lang/ref/WeakReference;

.field public volatile n:Z

.field public volatile o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->j:Landroid/app/Application;

    .line 8
    .line 9
    new-instance p1, Lio/sentry/android/core/SentryShakeDetector;

    .line 10
    .line 11
    sget-object v0, Lio/sentry/NoOpLogger;->a:Lio/sentry/NoOpLogger;

    .line 12
    .line 13
    invoke-direct {p1, v0}, Lio/sentry/android/core/SentryShakeDetector;-><init>(Lio/sentry/ILogger;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->k:Lio/sentry/android/core/SentryShakeDetector;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final E(Lio/sentry/SentryOptions;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v1

    .line 10
    :goto_0
    const-string v0, "SentryAndroidOptions is required"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-boolean p1, p1, Lio/sentry/SentryFeedbackOptions;->g:Z

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->k:Lio/sentry/android/core/SentryShakeDetector;

    .line 27
    .line 28
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->j:Landroid/app/Application;

    .line 29
    .line 30
    iget-object v2, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 31
    .line 32
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iput-object v2, p1, Lio/sentry/android/core/SentryShakeDetector;->f:Lio/sentry/ILogger;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryShakeDetector;->a(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    const-string p1, "FeedbackShake"

    .line 42
    .line 43
    invoke-static {p1}, Lio/sentry/util/IntegrationUtils;->a(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->j:Landroid/app/Application;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 52
    .line 53
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    new-array v2, v2, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string v3, "FeedbackShakeIntegration installed."

    .line 63
    .line 64
    invoke-interface {p1, v0, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lio/sentry/android/core/CurrentActivityHolder;->b:Lio/sentry/android/core/CurrentActivityHolder;

    .line 68
    .line 69
    iget-object p1, p1, Lio/sentry/android/core/CurrentActivityHolder;->a:Ljava/lang/ref/WeakReference;

    .line 70
    .line 71
    if-eqz p1, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    move-object v1, p1

    .line 78
    check-cast v1, Landroid/app/Activity;

    .line 79
    .line 80
    :cond_2
    if-eqz v1, :cond_4

    .line 81
    .line 82
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 83
    .line 84
    invoke-direct {p1, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 88
    .line 89
    iget-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->k:Lio/sentry/android/core/SentryShakeDetector;

    .line 90
    .line 91
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 92
    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    invoke-virtual {p1}, Lio/sentry/android/core/SentryShakeDetector;->c()V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lio/sentry/android/core/l;

    .line 100
    .line 101
    const/4 v2, 0x3

    .line 102
    invoke-direct {v0, v2, p0}, Lio/sentry/android/core/l;-><init>(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v1, v0}, Lio/sentry/android/core/SentryShakeDetector;->b(Landroid/app/Activity;Lio/sentry/android/core/SentryShakeDetector$Listener;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    :goto_1
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->j:Landroid/app/Application;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->k:Lio/sentry/android/core/SentryShakeDetector;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/sentry/android/core/SentryShakeDetector;->c()V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lio/sentry/android/core/SentryShakeDetector;->c:Landroid/os/HandlerThread;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 17
    .line 18
    .line 19
    iput-object v2, v0, Lio/sentry/android/core/SentryShakeDetector;->c:Landroid/os/HandlerThread;

    .line 20
    .line 21
    iput-object v2, v0, Lio/sentry/android/core/SentryShakeDetector;->d:Landroid/os/Handler;

    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 29
    .line 30
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->o:Ljava/lang/Runnable;

    .line 39
    .line 40
    iput-object v1, v0, Lio/sentry/SentryFeedbackOptions;->s:Ljava/lang/Runnable;

    .line 41
    .line 42
    :cond_1
    iput-object v2, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->o:Ljava/lang/Runnable;

    .line 43
    .line 44
    :cond_2
    iput-object v2, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Activity;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    iget-boolean v2, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    if-ne p1, v0, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 24
    .line 25
    iput-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    iget-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->o:Ljava/lang/Runnable;

    .line 36
    .line 37
    iput-object v0, p1, Lio/sentry/SentryFeedbackOptions;->s:Ljava/lang/Runnable;

    .line 38
    .line 39
    :cond_1
    iput-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->o:Ljava/lang/Runnable;

    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Activity;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->k:Lio/sentry/android/core/SentryShakeDetector;

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/sentry/android/core/SentryShakeDetector;->c()V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iput-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Activity;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    iget-boolean v2, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    if-eq v0, p1, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->n:Z

    .line 26
    .line 27
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->o:Ljava/lang/Runnable;

    .line 36
    .line 37
    iput-object v2, v0, Lio/sentry/SentryFeedbackOptions;->s:Ljava/lang/Runnable;

    .line 38
    .line 39
    :cond_1
    iput-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->o:Ljava/lang/Runnable;

    .line 40
    .line 41
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->m:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    iget-object v0, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->k:Lio/sentry/android/core/SentryShakeDetector;

    .line 49
    .line 50
    iget-object v1, p0, Lio/sentry/android/core/FeedbackShakeIntegration;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    invoke-virtual {v0}, Lio/sentry/android/core/SentryShakeDetector;->c()V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lio/sentry/android/core/l;

    .line 59
    .line 60
    const/4 v2, 0x3

    .line 61
    invoke-direct {v1, v2, p0}, Lio/sentry/android/core/l;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1, v1}, Lio/sentry/android/core/SentryShakeDetector;->b(Landroid/app/Activity;Lio/sentry/android/core/SentryShakeDetector$Listener;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    return-void
.end method
