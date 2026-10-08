.class public final synthetic Landroidx/media3/exoplayer/video/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/video/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/video/a;->k:Ljava/lang/Object;

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
    iget v0, p0, Landroidx/media3/exoplayer/video/a;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->j:Landroid/view/Choreographer;

    .line 11
    .line 12
    invoke-static {v0, p0}, Ll;->D(Landroid/view/Choreographer;Landroid/view/Choreographer$VsyncCallback;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 19
    .line 20
    invoke-interface {p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->d()V

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
