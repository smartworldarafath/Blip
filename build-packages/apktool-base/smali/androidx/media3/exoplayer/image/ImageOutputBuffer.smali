.class public abstract Landroidx/media3/exoplayer/image/ImageOutputBuffer;
.super Landroidx/media3/decoder/DecoderOutputBuffer;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public m:Landroid/graphics/Bitmap;


# virtual methods
.method public final f()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageOutputBuffer;->m:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/media3/decoder/Buffer;->j:I

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->k:J

    .line 10
    .line 11
    iput-boolean v0, p0, Landroidx/media3/decoder/DecoderOutputBuffer;->l:Z

    .line 12
    .line 13
    return-void
.end method
