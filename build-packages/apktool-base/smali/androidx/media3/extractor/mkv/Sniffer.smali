.class final Landroidx/media3/extractor/mkv/Sniffer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/DefaultExtractorInput;)J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-virtual {p1, v1, v2, v3, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 11
    .line 12
    aget-byte v1, v1, v2

    .line 13
    .line 14
    and-int/lit16 v1, v1, 0xff

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-wide/high16 p0, -0x8000000000000000L

    .line 19
    .line 20
    return-wide p0

    .line 21
    :cond_0
    const/16 v4, 0x80

    .line 22
    .line 23
    move v5, v2

    .line 24
    :goto_0
    and-int v6, v1, v4

    .line 25
    .line 26
    if-nez v6, :cond_1

    .line 27
    .line 28
    shr-int/lit8 v4, v4, 0x1

    .line 29
    .line 30
    add-int/lit8 v5, v5, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    not-int v4, v4

    .line 34
    and-int/2addr v1, v4

    .line 35
    iget-object v4, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 36
    .line 37
    invoke-virtual {p1, v4, v3, v5, v2}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 38
    .line 39
    .line 40
    :goto_1
    if-ge v2, v5, :cond_2

    .line 41
    .line 42
    shl-int/lit8 p1, v1, 0x8

    .line 43
    .line 44
    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    aget-byte v1, v1, v2

    .line 49
    .line 50
    and-int/lit16 v1, v1, 0xff

    .line 51
    .line 52
    add-int/2addr v1, p1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iget p1, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    .line 55
    .line 56
    add-int/2addr v5, v3

    .line 57
    add-int/2addr v5, p1

    .line 58
    iput v5, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    .line 59
    .line 60
    int-to-long p0, v1

    .line 61
    return-wide p0
.end method
