.class public final Lio/sentry/android/replay/gestures/GestureRecorder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/replay/OnRootViewsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;
    }
.end annotation


# instance fields
.field public final j:Lio/sentry/SentryOptions;

.field public final k:Lio/sentry/android/replay/ReplayIntegration;

.field public final l:Ljava/util/ArrayList;

.field public final m:Lio/sentry/util/AutoClosableReentrantLock;

.field public final n:Ljava/util/WeakHashMap;

.field public final o:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->j:Lio/sentry/SentryOptions;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->k:Lio/sentry/android/replay/ReplayIntegration;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->l:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance p1, Lio/sentry/util/AutoClosableReentrantLock;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->m:Lio/sentry/util/AutoClosableReentrantLock;

    .line 21
    .line 22
    new-instance p1, Ljava/util/WeakHashMap;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->n:Ljava/util/WeakHashMap;

    .line 28
    .line 29
    new-instance p1, Lio/sentry/util/AutoClosableReentrantLock;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->m:Lio/sentry/util/AutoClosableReentrantLock;

    .line 5
    .line 6
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->l:Ljava/util/ArrayList;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    :try_start_0
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/gestures/GestureRecorder;->b(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/gestures/GestureRecorder;->d(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    new-instance p0, Lio/sentry/android/replay/gestures/GestureRecorder$onRootViewsChanged$1$1;

    .line 32
    .line 33
    invoke-direct {p0, p1}, Lio/sentry/android/replay/gestures/GestureRecorder$onRootViewsChanged$1$1;-><init>(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p0}, Lkotlin/collections/CollectionsKt;->J(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :goto_0
    const/4 p0, 0x0

    .line 40
    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :catchall_1
    move-exception p1

    .line 46
    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public final b(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->n:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Lio/sentry/android/replay/WindowsKt;->a(Landroid/view/View;)Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->j:Lio/sentry/SentryOptions;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v1, "Window is invalid, not tracking gestures"

    .line 21
    .line 22
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v2, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 27
    .line 28
    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move-object v4, v5

    .line 51
    :goto_0
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-static {v3, v5}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-static {v3, v5}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v4, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;

    .line 65
    .line 66
    iget-object p0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->k:Lio/sentry/android/replay/ReplayIntegration;

    .line 67
    .line 68
    invoke-direct {v4, v1, p0, v3}, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;-><init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ReplayIntegration;Landroid/view/Window$Callback;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v4}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    :try_start_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 79
    .line 80
    invoke-direct {v1, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    .line 86
    invoke-static {p0, v5}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    :catchall_2
    move-exception v0

    .line 93
    invoke-static {p0, p1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 98
    :catchall_3
    move-exception p1

    .line 99
    invoke-static {v3, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->l:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->m:Lio/sentry/util/AutoClosableReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/view/View;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, v3}, Lio/sentry/android/replay/gestures/GestureRecorder;->d(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    invoke-static {v1, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    :catchall_1
    move-exception v0

    .line 49
    invoke-static {v1, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method public final d(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lio/sentry/android/replay/WindowsKt;->a(Landroid/view/View;)Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->j:Lio/sentry/SentryOptions;

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string v1, "Window was null in stopGestureTracking"

    .line 19
    .line 20
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    check-cast v0, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;

    .line 34
    .line 35
    iget-object v0, v0, Lio/sentry/android/replay/util/FixedWindowCallback;->j:Landroid/view/Window$Callback;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 41
    .line 42
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :try_start_0
    iget-object p0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->n:Ljava/util/WeakHashMap;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    invoke-static {v0, v2}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    :catchall_1
    move-exception p1

    .line 61
    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_1
    iget-object v0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 66
    .line 67
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :try_start_2
    iget-object v1, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->n:Ljava/util/WeakHashMap;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_2
    move-exception p0

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    move-object v1, v2

    .line 91
    :goto_0
    iget-object p0, p0, Lio/sentry/android/replay/gestures/GestureRecorder;->n:Ljava/util/WeakHashMap;

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Ljava/lang/ref/WeakReference;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    .line 99
    invoke-static {v0, v2}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    iput-object v2, v1, Lio/sentry/android/replay/gestures/GestureRecorder$SentryReplayGestureRecorder;->l:Lio/sentry/android/replay/ReplayIntegration;

    .line 105
    .line 106
    :cond_3
    return-void

    .line 107
    :goto_1
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 108
    :catchall_3
    move-exception p1

    .line 109
    invoke-static {v0, p0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method
