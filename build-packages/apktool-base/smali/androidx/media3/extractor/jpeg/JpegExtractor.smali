.class public final Landroidx/media3/extractor/jpeg/JpegExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public final a:Landroidx/media3/extractor/SingleSampleExtractor;

.field public final b:Landroidx/media3/extractor/Extractor;

.field public c:Landroidx/media3/extractor/ExtractorOutput;

.field public d:Landroidx/media3/extractor/Extractor;

.field public e:Landroid/util/Pair;


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
    const-string v2, "image/jpeg"

    .line 8
    .line 9
    const v3, 0xffd8

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v2, v3, v1}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(Ljava/lang/String;II)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 16
    .line 17
    new-instance v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->b:Landroidx/media3/extractor/Extractor;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->b:Landroidx/media3/extractor/Extractor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->b:Landroidx/media3/extractor/Extractor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    move-object v0, p1

    .line 16
    check-cast v0, Landroidx/media3/extractor/DefaultExtractorInput;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, v0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public final c(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/extractor/Extractor;->c(JJ)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->e:Landroid/util/Pair;

    .line 22
    .line 23
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->c:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->b:Landroidx/media3/extractor/Extractor;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/media3/extractor/SingleSampleExtractor;->d(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->b:Landroidx/media3/extractor/Extractor;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-object v1, v0

    .line 19
    check-cast v1, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroidx/media3/extractor/jpeg/JpegMotionPhotoExtractor;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 29
    .line 30
    :goto_1
    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 31
    .line 32
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->e:Landroid/util/Pair;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 40
    .line 41
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->e:Landroid/util/Pair;

    .line 50
    .line 51
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/media3/extractor/Extractor;->c(JJ)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->e:Landroid/util/Pair;

    .line 64
    .line 65
    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 66
    .line 67
    iget-object v1, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->c:Landroidx/media3/extractor/ExtractorOutput;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1}, Landroidx/media3/extractor/Extractor;->d(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object p0, p0, Landroidx/media3/extractor/jpeg/JpegExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 76
    .line 77
    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/Extractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    return p0
.end method
