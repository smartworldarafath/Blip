.class public final synthetic Lr3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:J

.field public final synthetic m:J

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;JJI)V
    .locals 0

    .line 1
    iput p7, p0, Lr3;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lr3;->n:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lr3;->k:Ljava/lang/String;

    .line 6
    .line 7
    iput-wide p3, p0, Lr3;->l:J

    .line 8
    .line 9
    iput-wide p5, p0, Lr3;->m:J

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lr3;->j:I

    .line 2
    .line 3
    iget-object v1, p0, Lr3;->n:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 11
    .line 12
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 13
    .line 14
    iget-wide v3, p0, Lr3;->l:J

    .line 15
    .line 16
    iget-wide v5, p0, Lr3;->m:J

    .line 17
    .line 18
    iget-object v7, p0, Lr3;->k:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->C(JJLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    check-cast v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 25
    .line 26
    iget-object v2, v1, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 27
    .line 28
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 29
    .line 30
    iget-wide v3, p0, Lr3;->l:J

    .line 31
    .line 32
    iget-wide v5, p0, Lr3;->m:J

    .line 33
    .line 34
    iget-object v7, p0, Lr3;->k:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->F(JJLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
