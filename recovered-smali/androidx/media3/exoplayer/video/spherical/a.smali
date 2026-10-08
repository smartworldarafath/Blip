.class public final synthetic Landroidx/media3/exoplayer/video/spherical/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/spherical/SceneRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/a;->j:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/a;->j:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
