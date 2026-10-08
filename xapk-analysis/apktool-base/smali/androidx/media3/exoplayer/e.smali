.class public final synthetic Landroidx/media3/exoplayer/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 2
    .line 3
    sget p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 4
    .line 5
    new-instance p0, Landroidx/media3/exoplayer/ExoTimeoutException;

    .line 6
    .line 7
    const-string v0, "Player release timed out."

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/16 v2, 0x3eb

    .line 16
    .line 17
    invoke-direct {v0, v1, p0, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->h(Landroidx/media3/common/PlaybackException;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public f(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 2
    .line 3
    new-instance p0, Landroidx/media3/common/Player$Events;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->k(Landroidx/media3/common/Player$Events;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
