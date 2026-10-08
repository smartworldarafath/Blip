.class public final Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final c:Landroidx/media3/common/MediaItem;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;->c:Landroidx/media3/common/MediaItem;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;->c:Landroidx/media3/common/MediaItem;

    .line 5
    .line 6
    iput-object p0, p2, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 9
    .line 10
    return-object p2
.end method
