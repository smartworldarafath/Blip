.class public final synthetic Landroidx/media3/exoplayer/video/c;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

.field public final synthetic k:Landroidx/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/c;->j:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/video/c;->k:Landroidx/media3/common/VideoSize;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/c;->j:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/video/c;->k:Landroidx/media3/common/VideoSize;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoSink$Listener;->a(Landroidx/media3/common/VideoSize;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
