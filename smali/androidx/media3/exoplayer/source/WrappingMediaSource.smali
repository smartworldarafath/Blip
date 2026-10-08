.class public abstract Landroidx/media3/exoplayer/source/WrappingMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Landroidx/media3/exoplayer/source/MediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c()Landroidx/media3/common/MediaItem;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->c()Landroidx/media3/common/MediaItem;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final e()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final f()Landroidx/media3/common/Timeline;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->f()Landroidx/media3/common/Timeline;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final n(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Landroidx/media3/common/util/Util;->k(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->j:Landroid/os/Handler;

    .line 7
    .line 8
    check-cast p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 9
    .line 10
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->l:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->q:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->s()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    xor-int/lit8 v2, v2, 0x1

    .line 9
    .line 10
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v2, Landroidx/media3/exoplayer/source/a;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Landroidx/media3/exoplayer/source/a;-><init>(Landroidx/media3/exoplayer/source/WrappingMediaSource;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;

    .line 19
    .line 20
    invoke-direct {v3, p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;-><init>(Landroidx/media3/exoplayer/source/WrappingMediaSource;)V

    .line 21
    .line 22
    .line 23
    new-instance v4, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    .line 24
    .line 25
    iget-object v5, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    .line 26
    .line 27
    invoke-direct {v4, v5, v2, v3}, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/source/a;Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->j:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    check-cast v5, Landroidx/media3/exoplayer/source/BaseMediaSource;

    .line 39
    .line 40
    invoke-virtual {v5, v0, v3}, Landroidx/media3/exoplayer/source/BaseMediaSource;->h(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->j:Landroid/os/Handler;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    iget-object v1, v5, Landroidx/media3/exoplayer/source/BaseMediaSource;->d:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 49
    .line 50
    invoke-virtual {v1, v0, v3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->a(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->g:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->h:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v2, v0, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->m(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->b:Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_0

    .line 73
    .line 74
    invoke-virtual {v5, v2}, Landroidx/media3/exoplayer/source/BaseMediaSource;->i(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method
