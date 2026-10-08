.class public final synthetic Landroidx/media3/exoplayer/audio/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic j:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/d;->j:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    .line 2
    .line 3
    check-cast p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 8
    .line 9
    if-eq p1, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    check-cast p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 17
    .line 18
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->c1:Z

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->R0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 24
    .line 25
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->a:Landroid/os/Handler;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v1, Lp3;

    .line 30
    .line 31
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/d;->j:J

    .line 32
    .line 33
    invoke-direct {v1, p1, v2, v3}, Lp3;-><init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method
