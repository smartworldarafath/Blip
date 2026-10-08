.class public abstract Landroidx/media3/exoplayer/source/BaseMediaSource;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/HashSet;

.field public final c:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final d:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public e:Landroid/os/Looper;

.field public f:Landroidx/media3/common/Timeline;

.field public g:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public h:Landroidx/media3/exoplayer/upstream/BandwidthMeter;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->b:Ljava/util/HashSet;

    .line 18
    .line 19
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->c:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 32
    .line 33
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 34
    .line 35
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->d:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final h(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->c:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->a:Landroid/os/Handler;

    .line 17
    .line 18
    iput-object p2, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final i(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->b:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->j()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method

.method public final k(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->e:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->b:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->l()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public l()V
    .locals 0

    .line 1
    return-void
.end method

.method public final m(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->e:Landroid/os/Looper;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 15
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->g:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 19
    .line 20
    iput-object p3, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->h:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 21
    .line 22
    iget-object p2, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->f:Landroidx/media3/common/Timeline;

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->a:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->e:Landroid/os/Looper;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->e:Landroid/os/Looper;

    .line 34
    .line 35
    iget-object p2, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->b:Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    invoke-interface {p3}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->c()Landroidx/media3/datasource/TransferListener;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->n(Landroidx/media3/datasource/TransferListener;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    if-eqz p2, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->k(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;->a(Landroidx/media3/common/Timeline;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public abstract n(Landroidx/media3/datasource/TransferListener;)V
.end method

.method public final o(Landroidx/media3/common/Timeline;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->f:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;->a(Landroidx/media3/common/Timeline;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public final p(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->e:Landroid/os/Looper;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->f:Landroidx/media3/common/Timeline;

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->g:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 18
    .line 19
    iget-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->b:Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->q()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->i(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public abstract q()V
.end method

.method public final r(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->c:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;

    .line 20
    .line 21
    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$ListenerAndHandler;->b:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 22
    .line 23
    if-ne v2, p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method
