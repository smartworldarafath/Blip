.class public final synthetic Lni;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic l:Landroidx/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V
    .locals 0

    .line 1
    iput p3, p0, Lni;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lni;->k:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 4
    .line 5
    iput-object p2, p0, Lni;->l:Landroidx/media3/exoplayer/DecoderCounters;

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
    iget v0, p0, Lni;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lni;->k:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 7
    .line 8
    iget-object p0, p0, Lni;->l:Landroidx/media3/exoplayer/DecoderCounters;

    .line 9
    .line 10
    monitor-enter p0

    .line 11
    monitor-exit p0

    .line 12
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 13
    .line 14
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->g(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lni;->k:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 21
    .line 22
    iget-object p0, p0, Lni;->l:Landroidx/media3/exoplayer/DecoderCounters;

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 25
    .line 26
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->s(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
