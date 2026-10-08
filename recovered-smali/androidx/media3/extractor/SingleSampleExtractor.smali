.class public final Landroidx/media3/extractor/SingleSampleExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Landroidx/media3/extractor/ExtractorOutput;

.field public g:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->a:I

    .line 5
    .line 6
    iput p3, p0, Landroidx/media3/extractor/SingleSampleExtractor;->b:I

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->b:I

    .line 4
    .line 5
    iget p0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->a:I

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    if-eq p0, v3, :cond_0

    .line 9
    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    move v3, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v1

    .line 15
    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    .line 19
    .line 20
    invoke-direct {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 24
    .line 25
    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    .line 26
    .line 27
    invoke-virtual {p1, v4, v1, v2, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-ne p1, p0, :cond_1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    return v1
.end method

.method public final c(JJ)V
    .locals 0

    .line 1
    const-wide/16 p3, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, p3

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->e:I

    .line 9
    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    iput p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->e:I

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->d:I

    .line 18
    .line 19
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    const/16 v0, 0x400

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 13
    .line 14
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Landroidx/media3/common/Format;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v1}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 40
    .line 41
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 45
    .line 46
    new-instance v0, Landroidx/media3/extractor/SingleSampleSeekMap;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput p1, p0, Landroidx/media3/extractor/SingleSampleExtractor;->e:I

    .line 56
    .line 57
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 10

    .line 1
    iget p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->e:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, -0x1

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eq p2, v3, :cond_1

    .line 8
    .line 9
    if-ne p2, v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 13
    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget-object p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const/16 v4, 0x400

    .line 22
    .line 23
    invoke-interface {p2, p1, v4, v3}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-ne p1, v1, :cond_2

    .line 28
    .line 29
    iput v2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->e:I

    .line 30
    .line 31
    iget-object v3, p0, Landroidx/media3/extractor/SingleSampleExtractor;->g:Landroidx/media3/extractor/TrackOutput;

    .line 32
    .line 33
    iget v7, p0, Landroidx/media3/extractor/SingleSampleExtractor;->d:I

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v9, 0x0

    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 41
    .line 42
    .line 43
    iput v0, p0, Landroidx/media3/extractor/SingleSampleExtractor;->d:I

    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    iget p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->d:I

    .line 47
    .line 48
    add-int/2addr p2, p1

    .line 49
    iput p2, p0, Landroidx/media3/extractor/SingleSampleExtractor;->d:I

    .line 50
    .line 51
    return v0
.end method
