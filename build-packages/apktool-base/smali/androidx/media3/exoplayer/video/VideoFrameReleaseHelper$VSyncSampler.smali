.class abstract Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "VSyncSampler"
.end annotation


# instance fields
.field public final j:Landroid/view/Choreographer;

.field public final k:Landroid/hardware/display/DisplayManager;

.field public volatile l:J

.field public volatile m:J


# direct methods
.method public constructor <init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->j:Landroid/view/Choreographer;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->k:Landroid/hardware/display/DisplayManager;

    .line 7
    .line 8
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->l:J

    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->m:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method
