.class final Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VirtualDeviceIdChangeListener"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Landroidx/media3/exoplayer/m;

.field public final synthetic c:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;->c:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;->a:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    new-instance v0, Landroidx/media3/exoplayer/m;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/m;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$VirtualDeviceIdChangeListener;->b:Landroidx/media3/exoplayer/m;

    .line 19
    .line 20
    iget-object p0, p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->u:Landroidx/media3/common/util/SystemClock;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->s:Landroid/os/Looper;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p0, p1, v1}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    new-instance p1, Lu3;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-direct {p1, v1, p0}, Lu3;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2, p1, v0}, Ld1;->n(Landroid/content/Context;Lu3;Landroidx/media3/exoplayer/m;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
