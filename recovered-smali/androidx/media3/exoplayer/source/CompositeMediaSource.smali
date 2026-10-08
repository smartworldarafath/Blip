.class public abstract Landroidx/media3/exoplayer/source/CompositeMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;,
        Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/media3/exoplayer/source/BaseMediaSource;"
    }
.end annotation


# instance fields
.field public final i:Ljava/util/HashMap;

.field public j:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->i:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaSource;->d()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->b:Landroidx/media3/exoplayer/source/a;

    .line 26
    .line 27
    check-cast v1, Landroidx/media3/exoplayer/source/BaseMediaSource;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->i(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    .line 22
    .line 23
    iget-object v1, v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    .line 24
    .line 25
    iget-object v0, v0, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->b:Landroidx/media3/exoplayer/source/a;

    .line 26
    .line 27
    check-cast v1, Landroidx/media3/exoplayer/source/BaseMediaSource;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->k(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
