.class final Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StreamEventCallbackV29"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/media/AudioTrack$StreamEventCallback;

.field public final synthetic c:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->c:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/Util;->k(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->a:Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29$1;-><init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->b:Landroid/media/AudioTrack$StreamEventCallback;

    .line 19
    .line 20
    iget-object p0, p1, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->a:Landroid/media/AudioTrack;

    .line 21
    .line 22
    new-instance p1, Lu3;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {p1, v2, v0}, Lu3;-><init>(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1, v1}, Ll0;->r(Landroid/media/AudioTrack;Lu3;Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
