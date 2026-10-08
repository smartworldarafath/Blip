.class final Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/wav/WavHeaderReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkHeader"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->a:I

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;->b:J

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {p0, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->q()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    new-instance p1, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;

    .line 21
    .line 22
    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/extractor/wav/WavHeaderReader$ChunkHeader;-><init>(IJ)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method
