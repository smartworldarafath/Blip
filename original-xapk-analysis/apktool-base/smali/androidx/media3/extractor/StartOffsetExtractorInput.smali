.class public final Landroidx/media3/extractor/StartOffsetExtractorInput;
.super Landroidx/media3/extractor/ForwardingExtractorInput;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final b:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorInput;J)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ForwardingExtractorInput;-><init>(Landroidx/media3/extractor/ExtractorInput;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    cmp-long p1, v0, p2

    .line 9
    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 16
    .line 17
    .line 18
    iput-wide p2, p0, Landroidx/media3/extractor/StartOffsetExtractorInput;->b:J

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final e()J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->e()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Landroidx/media3/extractor/StartOffsetExtractorInput;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final g()J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Landroidx/media3/extractor/StartOffsetExtractorInput;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final getPosition()J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/ForwardingExtractorInput;->a:Landroidx/media3/extractor/ExtractorInput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Landroidx/media3/extractor/StartOffsetExtractorInput;->b:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method
