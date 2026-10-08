.class Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29$1;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29$1;->a:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29$1;->a:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->c:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    .line 6
    .line 7
    new-instance p1, Landroidx/media3/exoplayer/audio/a;

    .line 8
    .line 9
    const/4 p2, 0x2

    .line 10
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/audio/a;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 p2, -0x1

    .line 14
    invoke-virtual {p0, p2, p1}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onPresentationEnded(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29$1;->a:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->c:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    .line 6
    .line 7
    new-instance p1, Landroidx/media3/exoplayer/audio/a;

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/audio/a;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29$1;->a:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$StreamEventCallbackV29;->c:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    .line 6
    .line 7
    new-instance p1, Landroidx/media3/exoplayer/audio/a;

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/audio/a;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
