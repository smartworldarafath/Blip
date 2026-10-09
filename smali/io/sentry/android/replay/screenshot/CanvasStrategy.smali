.class public final Lio/sentry/android/replay/screenshot/CanvasStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/android/replay/screenshot/ScreenshotStrategy;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "UseKtx"
    }
.end annotation


# instance fields
.field public final a:Lio/sentry/android/replay/ExecutorProvider;

.field public final b:Lio/sentry/android/replay/ReplayIntegration;

.field public final c:Lio/sentry/SentryOptions;

.field public final d:Lio/sentry/android/replay/ScreenshotRecorderConfig;

.field public volatile e:Landroid/graphics/Bitmap;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;

.field public final g:Lio/sentry/util/AutoClosableReentrantLock;

.field public final h:Lkotlin/Lazy;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;

.field public final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final l:Landroid/graphics/SurfaceTexture;

.field public final m:Landroid/view/Surface;

.field public final n:Lio/sentry/android/replay/screenshot/a;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ReplayIntegration;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->a:Lio/sentry/android/replay/ExecutorProvider;

    .line 8
    .line 9
    iput-object p3, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->b:Lio/sentry/android/replay/ReplayIntegration;

    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->c:Lio/sentry/SentryOptions;

    .line 12
    .line 13
    iput-object p4, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->d:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 14
    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22
    .line 23
    new-instance p1, Lio/sentry/util/AutoClosableReentrantLock;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->g:Lio/sentry/util/AutoClosableReentrantLock;

    .line 29
    .line 30
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 31
    .line 32
    new-instance p2, Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;-><init>(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->h:Lkotlin/Lazy;

    .line 42
    .line 43
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    new-instance p1, Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;

    .line 52
    .line 53
    invoke-direct {p1}, Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->j:Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;

    .line 57
    .line 58
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    new-instance p1, Landroid/graphics/SurfaceTexture;

    .line 66
    .line 67
    invoke-direct {p1, p2}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    iget p3, p4, Lio/sentry/android/replay/ScreenshotRecorderConfig;->a:I

    .line 71
    .line 72
    iget p4, p4, Lio/sentry/android/replay/ScreenshotRecorderConfig;->b:I

    .line 73
    .line 74
    invoke-virtual {p1, p3, p4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->l:Landroid/graphics/SurfaceTexture;

    .line 78
    .line 79
    new-instance p3, Landroid/view/Surface;

    .line 80
    .line 81
    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 82
    .line 83
    .line 84
    iput-object p3, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->m:Landroid/view/Surface;

    .line 85
    .line 86
    const-string p1, "ReplayCanvasStrategy"

    .line 87
    .line 88
    invoke-static {p1}, Lio/sentry/util/IntegrationUtils;->a(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Lio/sentry/android/replay/screenshot/a;

    .line 92
    .line 93
    invoke-direct {p1, p0, p2}, Lio/sentry/android/replay/screenshot/a;-><init>(Lio/sentry/android/replay/screenshot/CanvasStrategy;I)V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->n:Lio/sentry/android/replay/screenshot/a;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Landroid/graphics/Picture;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/graphics/Picture;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->d:Lio/sentry/android/replay/ScreenshotRecorderConfig;

    .line 16
    .line 17
    iget v3, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->a:I

    .line 18
    .line 19
    iget v2, v2, Lio/sentry/android/replay/ScreenshotRecorderConfig;->b:I

    .line 20
    .line 21
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->j:Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iput-object v2, v3, Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;->a:Landroid/graphics/Canvas;

    .line 34
    .line 35
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->h:Lkotlin/Lazy;

    .line 36
    .line 37
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/graphics/Matrix;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Lio/sentry/android/replay/screenshot/TextIgnoringDelegateCanvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/graphics/Picture;->endRecording()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->a:Lio/sentry/android/replay/ExecutorProvider;

    .line 64
    .line 65
    check-cast p1, Lio/sentry/android/replay/WindowRecorder;

    .line 66
    .line 67
    invoke-virtual {p1}, Lio/sentry/android/replay/WindowRecorder;->n()Landroid/os/Handler;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 72
    .line 73
    const-string v1, "screenshot_recorder.canvas"

    .line 74
    .line 75
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->n:Lio/sentry/android/replay/screenshot/a;

    .line 76
    .line 77
    invoke-direct {v0, v2, v1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1, v0}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->d(Landroid/os/Handler;Lio/sentry/android/replay/util/ReplayRunnable;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->e:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->b:Lio/sentry/android/replay/ReplayIntegration;

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/ReplayIntegration;->X(Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->a:Lio/sentry/android/replay/ExecutorProvider;

    .line 8
    .line 9
    check-cast v0, Lio/sentry/android/replay/WindowRecorder;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/sentry/android/replay/WindowRecorder;->n()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 16
    .line 17
    new-instance v3, Lio/sentry/android/replay/screenshot/a;

    .line 18
    .line 19
    invoke-direct {v3, p0, v1}, Lio/sentry/android/replay/screenshot/a;-><init>(Lio/sentry/android/replay/screenshot/CanvasStrategy;I)V

    .line 20
    .line 21
    .line 22
    const-string v1, "CanvasStrategy.close"

    .line 23
    .line 24
    invoke-direct {v2, v3, v1}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v2}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->d(Landroid/os/Handler;Lio/sentry/android/replay/util/ReplayRunnable;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final d(Landroid/os/Handler;Lio/sentry/android/replay/util/ReplayRunnable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catchall_0
    move-exception p1

    .line 6
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy;->c:Lio/sentry/SentryOptions;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 13
    .line 14
    iget-object p2, p2, Lio/sentry/android/replay/util/ReplayRunnable;->j:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "Canvas Strategy: failed to post runnable "

    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p0, v0, p2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onContentChanged()V
    .locals 0

    .line 1
    return-void
.end method
