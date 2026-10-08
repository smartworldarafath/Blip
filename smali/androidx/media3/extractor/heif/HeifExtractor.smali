.class public final Landroidx/media3/extractor/heif/HeifExtractor;
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
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/extractor/SingleSampleExtractor;

    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    const-string v2, "image/heif"

    .line 8
    .line 9
    invoke-direct {v0, v2, v1, v1}, Landroidx/media3/extractor/SingleSampleExtractor;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 13
    .line 14
    new-instance v0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;

    .line 15
    .line 16
    invoke-direct {v0}, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->b:Landroidx/media3/extractor/Extractor;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->b:Landroidx/media3/extractor/Extractor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/extractor/heif/HeicMotionPhotoExtractor;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->b:Landroidx/media3/extractor/Extractor;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    invoke-static {p1, p0}, Landroidx/media3/extractor/heif/HeifSniffer;->a(Landroidx/media3/extractor/ExtractorInput;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    move-object p0, p1

    .line 14
    check-cast p0, Landroidx/media3/extractor/DefaultExtractorInput;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    .line 18
    .line 19
    invoke-static {p1, v0}, Landroidx/media3/extractor/heif/HeifSniffer;->a(Landroidx/media3/extractor/ExtractorInput;Z)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public final c(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->d:Landroidx/media3/extractor/Extractor;

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
    iput-object p1, p0, Landroidx/media3/extractor/heif/HeifExtractor;->e:Landroid/util/Pair;

    .line 22
    .line 23
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/heif/HeifExtractor;->c:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->b:Landroidx/media3/extractor/Extractor;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->d:Landroidx/media3/extractor/Extractor;

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
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->b:Landroidx/media3/extractor/Extractor;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Landroidx/media3/extractor/heif/HeifSniffer;->a(Landroidx/media3/extractor/ExtractorInput;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->a:Landroidx/media3/extractor/SingleSampleExtractor;

    .line 27
    .line 28
    :goto_1
    iput-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 29
    .line 30
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->e:Landroid/util/Pair;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/extractor/heif/HeifExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 38
    .line 39
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->e:Landroid/util/Pair;

    .line 48
    .line 49
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Ljava/lang/Long;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/media3/extractor/Extractor;->c(JJ)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->e:Landroid/util/Pair;

    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/media3/extractor/heif/HeifExtractor;->c:Landroidx/media3/extractor/ExtractorOutput;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v1}, Landroidx/media3/extractor/Extractor;->d(Landroidx/media3/extractor/ExtractorOutput;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object p0, p0, Landroidx/media3/extractor/heif/HeifExtractor;->d:Landroidx/media3/extractor/Extractor;

    .line 74
    .line 75
    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/Extractor;->f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    return p0
.end method
