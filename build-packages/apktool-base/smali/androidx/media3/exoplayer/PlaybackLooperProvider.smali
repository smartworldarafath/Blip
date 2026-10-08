.class public final Landroidx/media3/exoplayer/PlaybackLooperProvider;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Landroid/os/Looper;

.field public c:Landroid/os/HandlerThread;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->a:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->b:Landroid/os/Looper;

    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->c:Landroid/os/HandlerThread;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->d:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->d:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->d:I

    .line 16
    .line 17
    sub-int/2addr v1, v2

    .line 18
    iput v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->d:I

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->c:Landroid/os/HandlerThread;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->c:Landroid/os/HandlerThread;

    .line 31
    .line 32
    iput-object v1, p0, Landroidx/media3/exoplayer/PlaybackLooperProvider;->b:Landroid/os/Looper;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method
