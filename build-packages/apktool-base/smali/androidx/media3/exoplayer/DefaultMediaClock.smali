.class final Landroidx/media3/exoplayer/DefaultMediaClock;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;
    }
.end annotation


# instance fields
.field public final j:Landroidx/media3/exoplayer/StandaloneMediaClock;

.field public final k:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

.field public l:Landroidx/media3/exoplayer/Renderer;

.field public m:Landroidx/media3/exoplayer/MediaClock;

.field public n:Z

.field public o:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;Landroidx/media3/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->k:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/StandaloneMediaClock;-><init>(Landroidx/media3/common/util/Clock;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->n:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/Renderer;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->q()Landroidx/media3/exoplayer/MediaClock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->m:Landroidx/media3/exoplayer/MediaClock;

    .line 8
    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->m:Landroidx/media3/exoplayer/MediaClock;

    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->l:Landroidx/media3/exoplayer/Renderer;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->n:Landroidx/media3/common/PlaybackParameters;

    .line 20
    .line 21
    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->c(Landroidx/media3/common/PlaybackParameters;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string p1, "Multiple renderer media clocks enabled."

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 35
    .line 36
    const/4 v0, 0x2

    .line 37
    const/16 v1, 0x3e8

    .line 38
    .line 39
    invoke-direct {p1, v0, p0, v1}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    return-void
.end method

.method public final c(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->m:Landroidx/media3/exoplayer/MediaClock;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/MediaClock;->c(Landroidx/media3/common/PlaybackParameters;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->m:Landroidx/media3/exoplayer/MediaClock;

    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/media3/exoplayer/MediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->c(Landroidx/media3/common/PlaybackParameters;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final e()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->m:Landroidx/media3/exoplayer/MediaClock;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/MediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->n:Landroidx/media3/common/PlaybackParameters;

    .line 13
    .line 14
    return-object p0
.end method

.method public final k()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->k()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->m:Landroidx/media3/exoplayer/MediaClock;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Landroidx/media3/exoplayer/MediaClock;->k()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    return-wide v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->m:Landroidx/media3/exoplayer/MediaClock;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Landroidx/media3/exoplayer/MediaClock;->m()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method
