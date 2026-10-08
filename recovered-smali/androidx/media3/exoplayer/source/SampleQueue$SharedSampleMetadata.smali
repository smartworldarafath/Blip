.class final Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/SampleQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedSampleMetadata"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Format;

.field public final b:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->b:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    .line 7
    .line 8
    return-void
.end method
