.class public final Lio/sentry/android/replay/screenshot/PixelCopyStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/replay/screenshot/ScreenshotStrategy;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseKtx"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
    }
.end annotation


# instance fields
.field public final a:Lio/sentry/android/replay/ReplayIntegration;

.field public final b:Lio/sentry/SentryOptions;

.field public final c:Lio/sentry/android/replay/ScreenshotRecorderConfig;

.field public final d:Lkotlin/jvm/functions/Function0;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lio/sentry/android/replay/util/MainLooperHandler;

.field public final g:Landroid/graphics/Bitmap;

.field public final h:Lkotlin/Lazy;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lio/sentry/android/replay/util/MaskRenderer;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Lkotlin/Lazy;

.field public final n:Lkotlin/Lazy;

.field public final o:Landroid/graphics/Rect;

.field public final p:Landroid/graphics/RectF;

.field public final q:[I

.field public final r:[I


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/util/DebugOverlayDrawable;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->a:Lio/sentry/android/replay/ReplayIntegration;

    .line 8
    .line 9
    iput-object p3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->b:Lio/sentry/SentryOptions;

    .line 10
    .line 11
    iput-object p4, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->c:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 12
    .line 13
    iput-object p6, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->d:Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    check-cast p1, Lio/sentry/android/replay/WindowRecorder;

    .line 16
    .line 17
    iget-object p2, p1, Lio/sentry/android/replay/WindowRecorder;->n:Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    iget-object p1, p1, Lio/sentry/android/replay/WindowRecorder;->m:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 22
    .line 23
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->f:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 24
    .line 25
    iget p1, p4, Lio/sentry/android/replay/ScreenshotRecorderConfig;->a:I

    .line 26
    .line 27
    iget p2, p4, Lio/sentry/android/replay/ScreenshotRecorderConfig;->b:I

    .line 28
    .line 29
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 30
    .line 31
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->g:Landroid/graphics/Bitmap;

    .line 39
    .line 40
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 41
    .line 42
    new-instance p2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$prescaledMatrix$2;

    .line 43
    .line 44
    invoke-direct {p2, p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$prescaledMatrix$2;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->h:Lkotlin/Lazy;

    .line 52
    .line 53
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    const/4 p3, 0x0

    .line 56
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    new-instance p2, Lio/sentry/android/replay/util/MaskRenderer;

    .line 62
    .line 63
    invoke-direct {p2}, Lio/sentry/android/replay/util/MaskRenderer;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->j:Lio/sentry/android/replay/util/MaskRenderer;

    .line 67
    .line 68
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 71
    .line 72
    .line 73
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    .line 77
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 78
    .line 79
    .line 80
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    .line 82
    sget-object p2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;->k:Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;

    .line 83
    .line 84
    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->m:Lkotlin/Lazy;

    .line 89
    .line 90
    new-instance p2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$screenshotCanvas$2;

    .line 91
    .line 92
    invoke-direct {p2, p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$screenshotCanvas$2;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->n:Lkotlin/Lazy;

    .line 100
    .line 101
    new-instance p1, Landroid/graphics/Rect;

    .line 102
    .line 103
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->o:Landroid/graphics/Rect;

    .line 107
    .line 108
    new-instance p1, Landroid/graphics/RectF;

    .line 109
    .line 110
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->p:Landroid/graphics/RectF;

    .line 114
    .line 115
    const/4 p1, 0x2

    .line 116
    new-array p2, p1, [I

    .line 117
    .line 118
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->q:[I

    .line 119
    .line 120
    new-array p1, p1, [I

    .line 121
    .line 122
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->r:[I

    .line 123
    .line 124
    return-void
.end method

.method public static final e(Ljava/util/concurrent/atomic/AtomicInteger;Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    iget-object p0, p1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 8
    .line 9
    new-instance v0, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 10
    .line 11
    new-instance v1, Lio/sentry/android/replay/screenshot/c;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    move-object v6, p2

    .line 15
    move-object v3, p3

    .line 16
    move-object v7, p4

    .line 17
    move v4, p5

    .line 18
    move v5, p6

    .line 19
    invoke-direct/range {v1 .. v7}, Lio/sentry/android/replay/screenshot/c;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IILandroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V

    .line 20
    .line 21
    .line 22
    const-string p1, "screenshot_recorder.composite"

    .line 23
    .line 24
    invoke-direct {v0, v1, p1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lio/sentry/android/replay/WindowsKt;->a(Landroid/view/View;)Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->b:Lio/sentry/SentryOptions;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 15
    .line 16
    const-string v0, "Window is invalid, not capturing screenshot"

    .line 17
    .line 18
    new-array v1, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 37
    .line 38
    const-string v0, "PixelCopyStrategy is closed, not capturing screenshot"

    .line 39
    .line 40
    new-array v1, v2, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    :try_start_0
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->g:Landroid/graphics/Bitmap;

    .line 52
    .line 53
    new-instance v4, Lio/sentry/android/replay/screenshot/d;

    .line 54
    .line 55
    invoke-direct {v4, p0, p1}, Lio/sentry/android/replay/screenshot/d;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->f:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 59
    .line 60
    iget-object p1, p1, Lio/sentry/android/replay/util/MainLooperHandler;->a:Landroid/os/Handler;

    .line 61
    .line 62
    invoke-static {v0, v3, v4, p1}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 72
    .line 73
    const-string v3, "Failed to capture replay recording"

    .line 74
    .line 75
    invoke-interface {v0, v1, v3, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->g:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->a:Lio/sentry/android/replay/ReplayIntegration;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/ReplayIntegration;->X(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 8
    .line 9
    new-instance v1, Le;

    .line 10
    .line 11
    const/16 v2, 0x17

    .line 12
    .line 13
    invoke-direct {v1, v2, p0}, Le;-><init>(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const-string v2, "PixelCopyStrategy.close"

    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 22
    .line 23
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final d(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->b:Lio/sentry/SentryOptions;

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->g:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->h:Lkotlin/Lazy;

    .line 22
    .line 23
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/graphics/Matrix;

    .line 28
    .line 29
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->j:Lio/sentry/android/replay/util/MaskRenderer;

    .line 30
    .line 31
    invoke-virtual {v3, p1, p2, v2}, Lio/sentry/android/replay/util/MaskRenderer;->a(Landroid/graphics/Bitmap;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Landroid/graphics/Matrix;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->a:Lio/sentry/android/replay/ReplayIntegration;

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lio/sentry/android/replay/ReplayIntegration;->X(Landroid/graphics/Bitmap;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 63
    .line 64
    const-string p2, "PixelCopyStrategy is closed, skipping masking"

    .line 65
    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onContentChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
