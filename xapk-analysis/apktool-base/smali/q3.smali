.class public final synthetic Lq3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic l:Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;I)V
    .locals 0

    .line 1
    iput p3, p0, Lq3;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lq3;->k:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 4
    .line 5
    iput-object p2, p0, Lq3;->l:Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

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
    iget v0, p0, Lq3;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lq3;->l:Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 4
    .line 5
    iget-object p0, p0, Lq3;->k:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 11
    .line 12
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->k(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 19
    .line 20
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->m(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
