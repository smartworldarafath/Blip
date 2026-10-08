.class final Landroidx/media3/extractor/mp3/XingFrame;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field public final b:J

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/MpegAudioUtil$Header;JJ[JLandroidx/media3/extractor/mp3/Mp3InfoReplayGain;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p4, Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 5
    .line 6
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iget p5, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->a:I

    .line 10
    .line 11
    iput p5, p4, Landroidx/media3/extractor/MpegAudioUtil$Header;->a:I

    .line 12
    .line 13
    iget-object p5, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->b:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p4, Landroidx/media3/extractor/MpegAudioUtil$Header;->b:Ljava/lang/String;

    .line 16
    .line 17
    iget p5, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 18
    .line 19
    iput p5, p4, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    .line 20
    .line 21
    iget p5, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    .line 22
    .line 23
    iput p5, p4, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    .line 24
    .line 25
    iget p5, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->e:I

    .line 26
    .line 27
    iput p5, p4, Landroidx/media3/extractor/MpegAudioUtil$Header;->e:I

    .line 28
    .line 29
    iget p5, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->f:I

    .line 30
    .line 31
    iput p5, p4, Landroidx/media3/extractor/MpegAudioUtil$Header;->f:I

    .line 32
    .line 33
    iget p1, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->g:I

    .line 34
    .line 35
    iput p1, p4, Landroidx/media3/extractor/MpegAudioUtil$Header;->g:I

    .line 36
    .line 37
    iput-object p4, p0, Landroidx/media3/extractor/mp3/XingFrame;->a:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 38
    .line 39
    iput-wide p2, p0, Landroidx/media3/extractor/mp3/XingFrame;->b:J

    .line 40
    .line 41
    iput p8, p0, Landroidx/media3/extractor/mp3/XingFrame;->c:I

    .line 42
    .line 43
    iput p9, p0, Landroidx/media3/extractor/mp3/XingFrame;->d:I

    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 7

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/media3/extractor/mp3/XingFrame;->b:J

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    cmp-long v4, v2, v0

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v4, p0, Landroidx/media3/extractor/mp3/XingFrame;->a:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 17
    .line 18
    iget v5, v4, Landroidx/media3/extractor/MpegAudioUtil$Header;->g:I

    .line 19
    .line 20
    int-to-long v5, v5

    .line 21
    mul-long/2addr v2, v5

    .line 22
    const/4 v5, -0x1

    .line 23
    iget v6, p0, Landroidx/media3/extractor/mp3/XingFrame;->c:I

    .line 24
    .line 25
    if-eq v6, v5, :cond_1

    .line 26
    .line 27
    iget p0, p0, Landroidx/media3/extractor/mp3/XingFrame;->d:I

    .line 28
    .line 29
    if-eq p0, v5, :cond_1

    .line 30
    .line 31
    add-int/2addr v6, p0

    .line 32
    int-to-long v5, v6

    .line 33
    sub-long/2addr v2, v5

    .line 34
    :cond_1
    cmp-long p0, v2, v0

    .line 35
    .line 36
    if-gtz p0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const-wide/16 v0, 0x1

    .line 40
    .line 41
    sub-long/2addr v2, v0

    .line 42
    iget p0, v4, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    .line 43
    .line 44
    invoke-static {p0, v2, v3}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    return-wide v0

    .line 49
    :cond_3
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    return-wide v0
.end method
