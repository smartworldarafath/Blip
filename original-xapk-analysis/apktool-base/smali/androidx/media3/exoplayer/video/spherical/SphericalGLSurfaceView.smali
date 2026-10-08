.class public final Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;,
        Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
    }
.end annotation


# instance fields
.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final k:Landroid/hardware/SensorManager;

.field public final l:Landroid/hardware/Sensor;

.field public final m:Landroidx/media3/exoplayer/video/spherical/OrientationListener;

.field public final n:Landroid/os/Handler;

.field public final o:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

.field public p:Landroid/graphics/SurfaceTexture;

.field public q:Landroid/view/Surface;

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->n:Landroid/os/Handler;

    .line 22
    .line 23
    const-string v0, "sensor"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    check-cast v0, Landroid/hardware/SensorManager;

    .line 33
    .line 34
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->k:Landroid/hardware/SensorManager;

    .line 35
    .line 36
    const/16 v1, 0xf

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    const/16 v1, 0xb

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_0
    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->l:Landroid/hardware/Sensor;

    .line 51
    .line 52
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 53
    .line 54
    invoke-direct {v0}, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->o:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 58
    .line 59
    new-instance v1, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;

    .line 60
    .line 61
    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$Renderer;-><init>(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;Landroidx/media3/exoplayer/video/spherical/SceneRenderer;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;

    .line 65
    .line 66
    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/video/spherical/TouchTracker;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "window"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/view/WindowManager;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v2, Landroidx/media3/exoplayer/video/spherical/OrientationListener;

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    new-array v4, v3, [Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    aput-object v0, v4, v5

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    aput-object v1, v4, v5

    .line 94
    .line 95
    invoke-direct {v2, p1, v4}, Landroidx/media3/exoplayer/video/spherical/OrientationListener;-><init>(Landroid/view/Display;[Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;)V

    .line 96
    .line 97
    .line 98
    iput-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->m:Landroidx/media3/exoplayer/video/spherical/OrientationListener;

    .line 99
    .line 100
    iput-boolean v5, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->r:Z

    .line 101
    .line 102
    invoke-virtual {p0, v3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->s:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->l:Landroid/hardware/Sensor;

    .line 14
    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->t:Z

    .line 18
    .line 19
    if-ne v0, v3, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->m:Landroidx/media3/exoplayer/video/spherical/OrientationListener;

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->k:Landroid/hardware/SensorManager;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v4, v3, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {v4, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->t:Z

    .line 36
    .line 37
    :cond_3
    :goto_2
    return-void
.end method

.method public getCameraMotionListener()Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->o:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVideoFrameMetadataListener()Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->o:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 2
    .line 3
    return-object p0
.end method

.method public getVideoSurface()Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->q:Landroid/view/Surface;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Le;

    .line 5
    .line 6
    const/16 v1, 0x11

    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Le;-><init>(ILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->n:Landroid/os/Handler;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->s:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->a()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->s:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->a()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->o:Landroidx/media3/exoplayer/video/spherical/SceneRenderer;

    .line 2
    .line 3
    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/SceneRenderer;->t:I

    .line 4
    .line 5
    return-void
.end method

.method public setUseSensorRotation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->r:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
