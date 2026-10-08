.class public final Landroidx/media3/extractor/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# instance fields
.field public final j:J

.field public final k:Landroidx/media3/extractor/ExtractorOutput;


# direct methods
.method public constructor <init>(JLandroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->j:J

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->k:Landroidx/media3/extractor/ExtractorOutput;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Landroidx/media3/extractor/SeekMap;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p1}, Landroidx/media3/extractor/StartOffsetExtractorOutput$1;-><init>(Landroidx/media3/extractor/StartOffsetExtractorOutput;Landroidx/media3/extractor/SeekMap;Landroidx/media3/extractor/SeekMap;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->k:Landroidx/media3/extractor/ExtractorOutput;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final n()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->k:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/StartOffsetExtractorOutput;->k:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
