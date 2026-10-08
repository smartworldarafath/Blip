.class public final Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# instance fields
.field public final j:Landroidx/media3/extractor/ExtractorOutput;

.field public final k:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final l:Landroid/util/SparseArray;

.field public m:Z


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->j:Landroidx/media3/extractor/ExtractorOutput;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->k:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 7
    .line 8
    new-instance p1, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->l:Landroid/util/SparseArray;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final f(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->j:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->j:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->m:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->l:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v0, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, v1, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->i:Z

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final s(II)Landroidx/media3/extractor/TrackOutput;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    const/4 v1, 0x5

    .line 5
    if-eq p2, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->m:Z

    .line 9
    .line 10
    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->j:Landroidx/media3/extractor/ExtractorOutput;

    .line 11
    .line 12
    if-eq p2, v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v1, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->l:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_2
    new-instance v2, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    .line 31
    .line 32
    invoke-interface {v1, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    iget-object p0, p0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;->k:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 37
    .line 38
    invoke-direct {v2, p2, p0}, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object v2
.end method
