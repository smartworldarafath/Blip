.class public final synthetic Landroidx/media3/exoplayer/audio/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/audio/DefaultAudioSink;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/e;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/e;->j:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:J

    .line 4
    .line 5
    const-wide/32 v2, 0x493e0

    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->n:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 13
    .line 14
    check-cast v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;

    .line 15
    .line 16
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$AudioSinkListener;->a:Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, v0, Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;->b1:Z

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->b0:J

    .line 24
    .line 25
    :cond_0
    return-void
.end method
