.class Landroidx/media3/extractor/StartOffsetExtractorOutput$1;
.super Landroidx/media3/extractor/ForwardingSeekMap;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic b:Landroidx/media3/extractor/SeekMap;

.field public final synthetic c:Landroidx/media3/extractor/StartOffsetExtractorOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/StartOffsetExtractorOutput;Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;->c:Landroidx/media3/extractor/StartOffsetExtractorOutput;

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;->b:Landroidx/media3/extractor/SeekMap;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroidx/media3/extractor/ForwardingSeekMap;-><init>(Landroidx/media3/extractor/SeekMap;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final e(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;->b:Landroidx/media3/extractor/SeekMap;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/SeekMap;->e(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 8
    .line 9
    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    .line 10
    .line 11
    iget-object v1, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->a:Landroidx/media3/extractor/SeekPoint;

    .line 12
    .line 13
    iget-wide v2, v1, Landroidx/media3/extractor/SeekPoint;->a:J

    .line 14
    .line 15
    iget-wide v4, v1, Landroidx/media3/extractor/SeekPoint;->b:J

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;->c:Landroidx/media3/extractor/StartOffsetExtractorOutput;

    .line 18
    .line 19
    iget-wide v6, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->j:J

    .line 20
    .line 21
    add-long/2addr v4, v6

    .line 22
    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Landroidx/media3/extractor/SeekPoint;

    .line 26
    .line 27
    iget-object p1, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->b:Landroidx/media3/extractor/SeekPoint;

    .line 28
    .line 29
    iget-wide v1, p1, Landroidx/media3/extractor/SeekPoint;->a:J

    .line 30
    .line 31
    iget-wide v3, p1, Landroidx/media3/extractor/SeekPoint;->b:J

    .line 32
    .line 33
    add-long/2addr v3, v6

    .line 34
    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p2, v0, p0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    .line 38
    .line 39
    .line 40
    return-object p2
.end method
