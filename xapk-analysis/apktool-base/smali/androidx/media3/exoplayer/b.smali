.class public final synthetic Landroidx/media3/exoplayer/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/b;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/b;->k:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/b;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/b;->k:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    .line 9
    .line 10
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 11
    .line 12
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    .line 15
    .line 16
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->s(Landroidx/media3/common/MediaMetadata;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p0, Landroidx/media3/common/TrackSelectionParameters;

    .line 21
    .line 22
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 23
    .line 24
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 25
    .line 26
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->t(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    check-cast p0, Landroidx/media3/common/MediaMetadata;

    .line 31
    .line 32
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 33
    .line 34
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 35
    .line 36
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->s(Landroidx/media3/common/MediaMetadata;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
