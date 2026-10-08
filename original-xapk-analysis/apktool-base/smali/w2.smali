.class public final synthetic Lw2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lw2;->j:I

    .line 2
    .line 3
    iput-object p3, p0, Lw2;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iput p1, p0, Lw2;->k:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lw2;->j:I

    .line 2
    .line 3
    iget v1, p0, Lw2;->k:I

    .line 4
    .line 5
    iget-object p0, p0, Lw2;->l:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->b(I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 19
    .line 20
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->b(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_1
    check-cast p0, Ljava/util/function/IntConsumer;

    .line 27
    .line 28
    invoke-interface {p0, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
