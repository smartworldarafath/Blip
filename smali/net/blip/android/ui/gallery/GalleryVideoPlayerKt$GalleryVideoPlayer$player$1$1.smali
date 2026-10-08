.class public final Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$player$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/ExoPlayer;

.field public final synthetic b:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$player$1$1;->a:Landroidx/media3/exoplayer/ExoPlayer;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$player$1$1;->b:Landroidx/compose/runtime/MutableState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final j(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$player$1$1;->b:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final n(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 2

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p2, p1, :cond_0

    .line 3
    .line 4
    iget-object p0, p0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$player$1$1;->a:Landroidx/media3/exoplayer/ExoPlayer;

    .line 5
    .line 6
    check-cast p0, Landroidx/media3/common/BasePlayer;

    .line 7
    .line 8
    const/4 p1, 0x5

    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/common/BasePlayer;->Z(IJ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
