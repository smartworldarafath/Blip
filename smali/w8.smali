.class public final synthetic Lw8;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/media3/exoplayer/ExoPlayer;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw8;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lw8;->k:Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lw8;->j:I

    .line 2
    .line 3
    iget-object p0, p0, Lw8;->k:Landroidx/media3/exoplayer/ExoPlayer;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroidx/media3/ui/PlayerView;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Landroidx/media3/ui/PlayerView;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {v0, p1}, Landroidx/media3/ui/PlayerView;->setUseController(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p0}, Landroidx/media3/ui/PlayerView;->setPlayer(Landroidx/media3/common/Player;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_0
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    new-instance p1, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$lambda$8$0$$inlined$onDispose$1;

    .line 41
    .line 42
    invoke-direct {p1, p0}, Lnet/blip/android/ui/gallery/GalleryVideoPlayerKt$GalleryVideoPlayer$lambda$8$0$$inlined$onDispose$1;-><init>(Landroidx/media3/exoplayer/ExoPlayer;)V

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
