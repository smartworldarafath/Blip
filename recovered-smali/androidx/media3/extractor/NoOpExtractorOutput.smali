.class public final Landroidx/media3/extractor/NoOpExtractorOutput;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# virtual methods
.method public final f(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final n()V
    .locals 0

    .line 1
    return-void
.end method

.method public final s(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    .line 1
    new-instance p0, Landroidx/media3/extractor/DiscardingTrackOutput;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
