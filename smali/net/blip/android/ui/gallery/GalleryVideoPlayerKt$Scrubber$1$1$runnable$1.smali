.class public final Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/ExoPlayer;

.field public final synthetic k:Landroid/os/Handler;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;Landroid/os/Handler;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;->j:Landroidx/media3/exoplayer/ExoPlayer;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;->k:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;->l:Landroidx/compose/runtime/MutableState;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;->j:Landroidx/media3/exoplayer/ExoPlayer;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/common/Player;->S()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-float v0, v0

    .line 8
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;->l:Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$Scrubber$1$1$runnable$1;->k:Landroid/os/Handler;

    .line 18
    .line 19
    const-wide/16 v1, 0x10

    .line 20
    .line 21
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method
