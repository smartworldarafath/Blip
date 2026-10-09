.class public final Lio/sentry/android/core/internal/gestures/SentryGestureListener;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;,
        Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;
    }
.end annotation


# instance fields
.field public final j:Ljava/lang/ref/WeakReference;

.field public final k:Lio/sentry/IScopes;

.field public final l:Lio/sentry/android/core/SentryAndroidOptions;

.field public m:Lio/sentry/internal/gestures/UiElement;

.field public n:Lio/sentry/ITransaction;

.field public o:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

.field public final p:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/sentry/ScopesAdapter;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->m:Lio/sentry/internal/gestures/UiElement;

    .line 6
    .line 7
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->n:Lio/sentry/ITransaction;

    .line 8
    .line 9
    sget-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->o:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 12
    .line 13
    new-instance v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->c:F

    .line 22
    .line 23
    iput v0, v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->d:F

    .line 24
    .line 25
    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->p:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->j:Ljava/lang/ref/WeakReference;

    .line 33
    .line 34
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->k:Lio/sentry/IScopes;

    .line 35
    .line 36
    iput-object p3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;Ljava/util/Map;Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isEnableUserInteractionBreadcrumbs()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$1;->a:[I

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    aget p2, v0, p2

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eq p2, v0, :cond_3

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    if-eq p2, v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    if-eq p2, v0, :cond_1

    .line 26
    .line 27
    const-string p2, "unknown"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string p2, "swipe"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const-string p2, "scroll"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const-string p2, "click"

    .line 37
    .line 38
    :goto_0
    new-instance v0, Lio/sentry/Hint;

    .line 39
    .line 40
    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "android:motionEvent"

    .line 44
    .line 45
    invoke-virtual {v0, p4, v1}, Lio/sentry/Hint;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p4, p1, Lio/sentry/internal/gestures/UiElement;->a:Ljava/lang/ref/WeakReference;

    .line 49
    .line 50
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    const-string v1, "android:view"

    .line 55
    .line 56
    invoke-virtual {v0, p4, v1}, Lio/sentry/Hint;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p4, p1, Lio/sentry/internal/gestures/UiElement;->c:Ljava/lang/String;

    .line 60
    .line 61
    iget-object p1, p1, Lio/sentry/internal/gestures/UiElement;->b:Ljava/lang/String;

    .line 62
    .line 63
    new-instance v1, Lio/sentry/Breadcrumb;

    .line 64
    .line 65
    invoke-direct {v1}, Lio/sentry/Breadcrumb;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "user"

    .line 69
    .line 70
    iput-object v2, v1, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 71
    .line 72
    const-string v2, "ui."

    .line 73
    .line 74
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iput-object p2, v1, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 79
    .line 80
    if-eqz p4, :cond_4

    .line 81
    .line 82
    const-string p2, "view.id"

    .line 83
    .line 84
    invoke-virtual {v1, p4, p2}, Lio/sentry/Breadcrumb;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    if-eqz p1, :cond_5

    .line 88
    .line 89
    const-string p2, "view.class"

    .line 90
    .line 91
    invoke-virtual {v1, p1, p2}, Lio/sentry/Breadcrumb;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_6

    .line 107
    .line 108
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Ljava/util/Map$Entry;

    .line 113
    .line 114
    iget-object p3, v1, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 115
    .line 116
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    check-cast p4, Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_6
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 131
    .line 132
    iput-object p1, v1, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 133
    .line 134
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->k:Lio/sentry/IScopes;

    .line 135
    .line 136
    invoke-interface {p0, v1, v0}, Lio/sentry/IScopes;->a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method public final b(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->j:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const-string v3, ". No breadcrumb captured."

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 22
    .line 23
    const-string v4, "Activity is null in "

    .line 24
    .line 25
    invoke-static {v4, p1, v3}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-interface {p0, v0, p1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 46
    .line 47
    const-string v4, "Window is null in "

    .line 48
    .line 49
    invoke-static {v4, p1, v3}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-interface {p0, v0, p1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 70
    .line 71
    const-string v4, "DecorView is null in "

    .line 72
    .line 73
    invoke-static {v4, p1, v3}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-interface {p0, v0, p1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_2
    return-object v0
.end method

.method public final c(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->o:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->m:Lio/sentry/internal/gestures/UiElement;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lio/sentry/internal/gestures/UiElement;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    sget-object v3, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 19
    .line 20
    if-ne p2, v3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    if-nez v0, :cond_2

    .line 24
    .line 25
    :goto_1
    move v0, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v0, v1

    .line 28
    :goto_2
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 29
    .line 30
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-object v5, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->k:Lio/sentry/IScopes;

    .line 35
    .line 36
    if-eqz v4, :cond_c

    .line 37
    .line 38
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->isEnableUserInteractionTracing()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    goto/16 :goto_6

    .line 45
    .line 46
    :cond_3
    iget-object v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->j:Ljava/lang/ref/WeakReference;

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/app/Activity;

    .line 53
    .line 54
    if-nez v4, :cond_4

    .line 55
    .line 56
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 61
    .line 62
    const-string p2, "Activity is null, no transaction captured."

    .line 63
    .line 64
    new-array v0, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_4
    iget-object v6, p1, Lio/sentry/internal/gestures/UiElement;->c:Ljava/lang/String;

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    if-eqz v6, :cond_5

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_5
    const-string v6, "UiElement.tag can\'t be null"

    .line 77
    .line 78
    invoke-static {v7, v6}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v6, v7

    .line 82
    :goto_3
    iget-object v8, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->n:Lio/sentry/ITransaction;

    .line 83
    .line 84
    if-eqz v8, :cond_7

    .line 85
    .line 86
    if-nez v0, :cond_6

    .line 87
    .line 88
    invoke-interface {v8}, Lio/sentry/ISpan;->d()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_6

    .line 93
    .line 94
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 99
    .line 100
    const-string v0, "The view with id: "

    .line 101
    .line 102
    const-string v2, " already has an ongoing transaction assigned. Rescheduling finish"

    .line 103
    .line 104
    invoke-static {v0, v6, v2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    new-array v1, v1, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getIdleTimeout()Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_e

    .line 118
    .line 119
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->n:Lio/sentry/ITransaction;

    .line 120
    .line 121
    invoke-interface {p0}, Lio/sentry/ITransaction;->p()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_6
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->d(Lio/sentry/SpanStatus;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, "."

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    sget-object v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$1;->a:[I

    .line 159
    .line 160
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    aget v1, v1, v4

    .line 165
    .line 166
    if-eq v1, v2, :cond_a

    .line 167
    .line 168
    const/4 v4, 0x2

    .line 169
    if-eq v1, v4, :cond_9

    .line 170
    .line 171
    const/4 v4, 0x3

    .line 172
    if-eq v1, v4, :cond_8

    .line 173
    .line 174
    const-string v1, "unknown"

    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_8
    const-string v1, "swipe"

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_9
    const-string v1, "scroll"

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_a
    const-string v1, "click"

    .line 184
    .line 185
    :goto_4
    const-string v4, "ui.action."

    .line 186
    .line 187
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    new-instance v4, Lio/sentry/TransactionOptions;

    .line 192
    .line 193
    invoke-direct {v4}, Lio/sentry/TransactionOptions;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-boolean v2, v4, Lio/sentry/TransactionOptions;->f:Z

    .line 197
    .line 198
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getDeadlineTimeout()J

    .line 199
    .line 200
    .line 201
    move-result-wide v8

    .line 202
    const-wide/16 v10, 0x0

    .line 203
    .line 204
    cmp-long v6, v8, v10

    .line 205
    .line 206
    if-gtz v6, :cond_b

    .line 207
    .line 208
    move-object v6, v7

    .line 209
    goto :goto_5

    .line 210
    :cond_b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    :goto_5
    iput-object v6, v4, Lio/sentry/TransactionOptions;->h:Ljava/lang/Long;

    .line 215
    .line 216
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getIdleTimeout()Ljava/lang/Long;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    iput-object v3, v4, Lio/sentry/TransactionOptions;->g:Ljava/lang/Long;

    .line 221
    .line 222
    iput-boolean v2, v4, Lio/sentry/SpanOptions;->c:Z

    .line 223
    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    const-string v3, "auto.ui.gesture_listener."

    .line 227
    .line 228
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    iget-object v3, p1, Lio/sentry/internal/gestures/UiElement;->d:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    iput-object v2, v4, Lio/sentry/SpanOptions;->d:Ljava/lang/String;

    .line 241
    .line 242
    new-instance v2, Lio/sentry/TransactionContext;

    .line 243
    .line 244
    sget-object v3, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    .line 245
    .line 246
    invoke-direct {v2, v0, v3, v1, v7}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v5, v2, v4}, Lio/sentry/IScopes;->n(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    new-instance v1, Ln5;

    .line 254
    .line 255
    const/16 v2, 0xc

    .line 256
    .line 257
    invoke-direct {v1, v2, p0, v0}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v5, v1}, Lio/sentry/IScopes;->o(Lio/sentry/ScopeCallback;)V

    .line 261
    .line 262
    .line 263
    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->n:Lio/sentry/ITransaction;

    .line 264
    .line 265
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->m:Lio/sentry/internal/gestures/UiElement;

    .line 266
    .line 267
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->o:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 268
    .line 269
    return-void

    .line 270
    :cond_c
    :goto_6
    if-eqz v0, :cond_e

    .line 271
    .line 272
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoTraceIdGeneration()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_d

    .line 277
    .line 278
    new-instance v0, Lfe;

    .line 279
    .line 280
    const/16 v1, 0x1d

    .line 281
    .line 282
    invoke-direct {v0, v1}, Lfe;-><init>(I)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v5, v0}, Lio/sentry/IScopes;->o(Lio/sentry/ScopeCallback;)V

    .line 286
    .line 287
    .line 288
    :cond_d
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->m:Lio/sentry/internal/gestures/UiElement;

    .line 289
    .line 290
    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->o:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 291
    .line 292
    :cond_e
    return-void
.end method

.method public final d(Lio/sentry/SpanStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->n:Lio/sentry/ITransaction;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lio/sentry/ISpan;->a()Lio/sentry/SpanStatus;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->n:Lio/sentry/ITransaction;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, p1}, Lio/sentry/ISpan;->g(Lio/sentry/SpanStatus;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v1}, Lio/sentry/ISpan;->h()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    new-instance p1, Lp;

    .line 21
    .line 22
    const/16 v0, 0x18

    .line 23
    .line 24
    invoke-direct {p1, v0, p0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->k:Lio/sentry/IScopes;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lio/sentry/IScopes;->o(Lio/sentry/ScopeCallback;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->n:Lio/sentry/ITransaction;

    .line 34
    .line 35
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->m:Lio/sentry/internal/gestures/UiElement;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->m:Lio/sentry/internal/gestures/UiElement;

    .line 40
    .line 41
    :cond_2
    sget-object p1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 42
    .line 43
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->o:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 44
    .line 45
    return-void
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->p:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 7
    .line 8
    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->b:Lio/sentry/internal/gestures/UiElement;

    .line 9
    .line 10
    sget-object v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 11
    .line 12
    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->c:F

    .line 16
    .line 17
    iput v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->d:F

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->c:F

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->d:F

    .line 30
    .line 31
    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->p:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 2
    .line 3
    sget-object p1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Swipe:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 4
    .line 5
    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 1
    const-string p2, "onScroll"

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->b(Ljava/lang/String;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 p3, 0x0

    .line 8
    if-eqz p2, :cond_3

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->p:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 14
    .line 15
    iget-object v0, p4, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 16
    .line 17
    sget-object v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 18
    .line 19
    if-ne v0, v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    sget-object v1, Lio/sentry/internal/gestures/UiElement$Type;->SCROLLABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 30
    .line 31
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 32
    .line 33
    invoke-static {p0, p2, v0, p1, v1}, Lio/sentry/android/core/internal/gestures/ViewUtils;->a(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 44
    .line 45
    const-string p2, "Unable to find scroll target. No breadcrumb captured."

    .line 46
    .line 47
    new-array v0, p3, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Scroll:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 53
    .line 54
    iput-object p0, p4, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 55
    .line 56
    return p3

    .line 57
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 62
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "Scroll target found: "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p1, Lio/sentry/internal/gestures/UiElement;->c:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const-string v1, "UiElement.tag can\'t be null"

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-static {v2, v1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    move-object v1, v2

    .line 82
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-array v1, p3, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-interface {p0, p2, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iput-object p1, p4, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->b:Lio/sentry/internal/gestures/UiElement;

    .line 95
    .line 96
    sget-object p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Scroll:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 97
    .line 98
    iput-object p0, p4, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->a:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 99
    .line 100
    :cond_3
    :goto_1
    return p3
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const-string v0, "onSingleTapUp"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->b(Ljava/lang/String;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sget-object v4, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 22
    .line 23
    iget-object v5, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 24
    .line 25
    invoke-static {v5, v0, v2, v3, v4}, Lio/sentry/android/core/internal/gestures/ViewUtils;->a(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 36
    .line 37
    const-string v0, "Unable to find click target. No breadcrumb captured."

    .line 38
    .line 39
    new-array v2, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-interface {p0, p1, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    sget-object v2, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 46
    .line 47
    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 48
    .line 49
    invoke-virtual {p0, v0, v2, v3, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->a(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0, v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->c(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    return v1
.end method
