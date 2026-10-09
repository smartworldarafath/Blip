.class public final synthetic Landroidx/media3/exoplayer/source/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    .line 2
    .line 3
    iget-object p0, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->b:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->a()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
