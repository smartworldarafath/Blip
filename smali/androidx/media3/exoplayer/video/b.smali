.class public final synthetic Landroidx/media3/exoplayer/video/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/video/b;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/video/b;->k:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/video/b;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/b;->k:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 11
    .line 12
    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->c()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 19
    .line 20
    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->b()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
