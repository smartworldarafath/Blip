.class public final synthetic Landroidx/media3/exoplayer/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/f;->j:I

    .line 2
    .line 3
    iput p1, p0, Landroidx/media3/exoplayer/f;->k:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/f;->j:I

    .line 2
    .line 3
    iget p0, p0, Landroidx/media3/exoplayer/f;->k:I

    .line 4
    .line 5
    check-cast p1, Landroidx/media3/common/Player$Listener;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 11
    .line 12
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->b(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 17
    .line 18
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->u(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
