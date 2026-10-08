.class public final synthetic Lio/sentry/android/replay/screenshot/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic h:Landroid/view/View;

.field public final synthetic i:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/graphics/Bitmap;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IIILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/e;->a:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/e;->b:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iput-object p3, p0, Lio/sentry/android/replay/screenshot/e;->c:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    .line 9
    .line 10
    iput p4, p0, Lio/sentry/android/replay/screenshot/e;->d:I

    .line 11
    .line 12
    iput p5, p0, Lio/sentry/android/replay/screenshot/e;->e:I

    .line 13
    .line 14
    iput p6, p0, Lio/sentry/android/replay/screenshot/e;->f:I

    .line 15
    .line 16
    iput-object p7, p0, Lio/sentry/android/replay/screenshot/e;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    iput-object p8, p0, Lio/sentry/android/replay/screenshot/e;->h:Landroid/view/View;

    .line 19
    .line 20
    iput-object p9, p0, Lio/sentry/android/replay/screenshot/e;->i:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 21
    .line 22
    iput p10, p0, Lio/sentry/android/replay/screenshot/e;->j:I

    .line 23
    .line 24
    iput p11, p0, Lio/sentry/android/replay/screenshot/e;->k:I

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 10

    .line 1
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/e;->a:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 2
    .line 3
    iget-object v0, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/e;->b:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    iget-object v3, p0, Lio/sentry/android/replay/screenshot/e;->c:[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    .line 12
    .line 13
    move v4, v0

    .line 14
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/e;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    move-object v5, v2

    .line 17
    iget-object v2, p0, Lio/sentry/android/replay/screenshot/e;->h:Landroid/view/View;

    .line 18
    .line 19
    move v6, v4

    .line 20
    iget-object v4, p0, Lio/sentry/android/replay/screenshot/e;->i:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 21
    .line 22
    move-object v7, v5

    .line 23
    iget v5, p0, Lio/sentry/android/replay/screenshot/e;->j:I

    .line 24
    .line 25
    move v8, v6

    .line 26
    iget v6, p0, Lio/sentry/android/replay/screenshot/e;->k:I

    .line 27
    .line 28
    if-eqz v8, :cond_0

    .line 29
    .line 30
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    .line 32
    .line 33
    invoke-static/range {v0 .. v6}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->e(Ljava/util/concurrent/atomic/AtomicInteger;Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;II)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    if-nez p1, :cond_1

    .line 38
    .line 39
    new-instance p1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    .line 40
    .line 41
    iget v8, p0, Lio/sentry/android/replay/screenshot/e;->e:I

    .line 42
    .line 43
    iget v9, p0, Lio/sentry/android/replay/screenshot/e;->f:I

    .line 44
    .line 45
    invoke-direct {p1, v7, v8, v9}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;-><init>(Landroid/graphics/Bitmap;II)V

    .line 46
    .line 47
    .line 48
    iget p0, p0, Lio/sentry/android/replay/screenshot/e;->d:I

    .line 49
    .line 50
    aput-object p1, v3, p0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 54
    .line 55
    .line 56
    iget-object p0, v1, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->b:Lio/sentry/SentryOptions;

    .line 57
    .line 58
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    sget-object v7, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v8, "Failed to capture SurfaceView: %d"

    .line 73
    .line 74
    invoke-interface {p0, v7, v8, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    invoke-static/range {v0 .. v6}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->e(Ljava/util/concurrent/atomic/AtomicInteger;Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;II)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
