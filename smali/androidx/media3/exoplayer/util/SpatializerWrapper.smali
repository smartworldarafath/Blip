.class public Landroidx/media3/exoplayer/util/SpatializerWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/media/Spatializer;

.field public final b:Z

.field public final c:Landroid/os/Handler;

.field public final d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    move-object p1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/audio/AudioManagerCompat;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    if-eqz p3, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    invoke-static {p1}, Lk;->b(Landroid/media/AudioManager;)Landroid/media/Spatializer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->a:Landroid/media/Spatializer;

    .line 30
    .line 31
    invoke-static {p1}, Lk;->a(Landroid/media/Spatializer;)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    const/4 p3, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move p3, v1

    .line 40
    :goto_1
    iput-boolean p3, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->b:Z

    .line 41
    .line 42
    new-instance p3, Landroid/os/Handler;

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    iput-object p3, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->c:Landroid/os/Handler;

    .line 55
    .line 56
    new-instance v0, Landroidx/media3/exoplayer/util/SpatializerWrapper$1;

    .line 57
    .line 58
    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/util/SpatializerWrapper$1;-><init>(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 62
    .line 63
    new-instance p0, Lu3;

    .line 64
    .line 65
    invoke-direct {p0, v1, p3}, Lu3;-><init>(ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1, p0, v0}, Lk;->f(Landroid/media/Spatializer;Lu3;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    :goto_2
    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->a:Landroid/media/Spatializer;

    .line 73
    .line 74
    iput-boolean v1, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->b:Z

    .line 75
    .line 76
    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->c:Landroid/os/Handler;

    .line 77
    .line 78
    iput-object v0, p0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 79
    .line 80
    return-void
.end method
