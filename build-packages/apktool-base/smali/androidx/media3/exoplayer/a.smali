.class public final synthetic Landroidx/media3/exoplayer/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/a;->j:I

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/media3/exoplayer/a;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Landroidx/media3/exoplayer/a;->k:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/a;->j:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/a;->k:I

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/a;->l:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/media3/common/MediaItem;

    .line 11
    .line 12
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 13
    .line 14
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 15
    .line 16
    invoke-interface {p1, p0, v1}, Landroidx/media3/common/Player$Listener;->x(Landroidx/media3/common/MediaItem;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/PlaybackInfo;

    .line 21
    .line 22
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 23
    .line 24
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 27
    .line 28
    invoke-interface {p1, v1}, Landroidx/media3/common/Player$Listener;->r(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
