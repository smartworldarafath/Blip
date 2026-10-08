.class public final synthetic Ln3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic l:Landroidx/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;I)V
    .locals 0

    .line 1
    iput p3, p0, Ln3;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Ln3;->k:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 4
    .line 5
    iput-object p2, p0, Ln3;->l:Landroidx/media3/exoplayer/DecoderCounters;

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
    iget v0, p0, Ln3;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ln3;->k:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 7
    .line 8
    iget-object p0, p0, Ln3;->l:Landroidx/media3/exoplayer/DecoderCounters;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 11
    .line 12
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->q(Landroidx/media3/exoplayer/DecoderCounters;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Ln3;->k:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 19
    .line 20
    iget-object p0, p0, Ln3;->l:Landroidx/media3/exoplayer/DecoderCounters;

    .line 21
    .line 22
    monitor-enter p0

    .line 23
    monitor-exit p0

    .line 24
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 25
    .line 26
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->E(Landroidx/media3/exoplayer/DecoderCounters;)V

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
