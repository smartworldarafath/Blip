.class public final Landroidx/media3/decoder/CryptoInfo;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/media/MediaCodec$CryptoInfo;

.field public final j:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 10
    .line 11
    new-instance v1, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/media3/decoder/CryptoInfo;->j:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(I[I[I[B[BIII)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/media3/decoder/CryptoInfo;->f:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/decoder/CryptoInfo;->d:[I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/media3/decoder/CryptoInfo;->e:[I

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/media3/decoder/CryptoInfo;->b:[B

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/media3/decoder/CryptoInfo;->a:[B

    .line 10
    .line 11
    iput p6, p0, Landroidx/media3/decoder/CryptoInfo;->c:I

    .line 12
    .line 13
    iput p7, p0, Landroidx/media3/decoder/CryptoInfo;->g:I

    .line 14
    .line 15
    iput p8, p0, Landroidx/media3/decoder/CryptoInfo;->h:I

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/decoder/CryptoInfo;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 18
    .line 19
    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 20
    .line 21
    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 22
    .line 23
    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 24
    .line 25
    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 26
    .line 27
    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 28
    .line 29
    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 30
    .line 31
    iget-object p0, p0, Landroidx/media3/decoder/CryptoInfo;->j:Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 37
    .line 38
    invoke-virtual {p1, p7, p8}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Landroidx/media3/decoder/CryptoInfo$PatternHolderV24;->a:Landroid/media/MediaCodec$CryptoInfo;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
