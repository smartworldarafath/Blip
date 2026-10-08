.class public interface abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract b(ILandroidx/media3/decoder/CryptoInfo;JI)V
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public abstract d(IIIJ)V
.end method

.method public e(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract f(I)V
.end method

.method public abstract flush()V
.end method

.method public abstract g(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
.end method

.method public abstract h()Landroid/media/MediaFormat;
.end method

.method public abstract i()V
.end method

.method public abstract j(IJ)V
.end method

.method public abstract k()I
.end method

.method public l(Lf3;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lf3;->run()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public abstract m(Landroid/media/MediaCodec$BufferInfo;)I
.end method

.method public abstract n(I)V
.end method

.method public abstract o(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract p(Landroid/view/Surface;)V
.end method

.method public abstract q(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract r(Ljava/util/ArrayList;)V
.end method

.method public abstract s(Ljava/util/ArrayList;)V
.end method
