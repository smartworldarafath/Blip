.class public final Landroidx/media3/extractor/bmp/BmpExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:Landroidx/media3/extractor/SingleSampleExtractor;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/extractor/SingleSampleExtractor;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const-string v2, "image/bmp"

    .line 8
    .line 9
    const/16 v3, 0x424d

    .line 10
    .line 11
    invoke-direct {v0, v2, v3, v1}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(Ljava/lang/String;II)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final c(JJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/SingleSampleExtractor;->c(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->d(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/bmp/BmpExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/SingleSampleExtractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
