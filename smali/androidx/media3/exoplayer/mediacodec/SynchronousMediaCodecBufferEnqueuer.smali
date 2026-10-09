.class Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;


# instance fields
.field public final a:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;->a:Landroid/media/MediaCodec;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(ILandroidx/media3/decoder/CryptoInfo;JI)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    iget-object v3, p2, Landroidx/media3/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v1, p1

    .line 7
    move-wide v4, p3

    .line 8
    move v6, p5

    .line 9
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;->a:Landroid/media/MediaCodec;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(IIIJ)V
    .locals 7

    .line 1
    const/4 v2, 0x0

    .line 2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;->a:Landroid/media/MediaCodec;

    .line 3
    .line 4
    move v1, p1

    .line 5
    move v3, p2

    .line 6
    move v6, p3

    .line 7
    move-wide v4, p4

    .line 8
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public final shutdown()V
    .locals 0

    .line 1
    return-void
.end method

.method public final start()V
    .locals 0

    .line 1
    return-void
.end method
