.class public final Landroidx/media3/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/TsExtractor$PatReader;,
        Landroidx/media3/extractor/ts/TsExtractor$PmtReader;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Landroid/util/SparseIntArray;

.field public final e:Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

.field public final f:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final g:Landroid/util/SparseArray;

.field public final h:Landroid/util/SparseBooleanArray;

.field public final i:Landroid/util/SparseBooleanArray;

.field public final j:Landroidx/media3/extractor/ts/TsDurationReader;

.field public k:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

.field public l:Landroidx/media3/extractor/ExtractorOutput;

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->e:Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    .line 5
    .line 6
    iput p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->a:I

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->f:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 9
    .line 10
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->b:Ljava/util/List;

    .line 15
    .line 16
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 17
    .line 18
    const/16 p2, 0x24b8

    .line 19
    .line 20
    new-array p2, p2, [B

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    invoke-direct {p1, p3, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I[B)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 27
    .line 28
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->h:Landroid/util/SparseBooleanArray;

    .line 34
    .line 35
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->i:Landroid/util/SparseBooleanArray;

    .line 41
    .line 42
    new-instance p2, Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->g:Landroid/util/SparseArray;

    .line 48
    .line 49
    new-instance p4, Landroid/util/SparseIntArray;

    .line 50
    .line 51
    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->d:Landroid/util/SparseIntArray;

    .line 55
    .line 56
    new-instance p4, Landroidx/media3/extractor/ts/TsDurationReader;

    .line 57
    .line 58
    invoke-direct {p4}, Landroidx/media3/extractor/ts/TsDurationReader;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->j:Landroidx/media3/extractor/ts/TsDurationReader;

    .line 62
    .line 63
    sget-object p4, Landroidx/media3/extractor/ExtractorOutput;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 64
    .line 65
    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->l:Landroidx/media3/extractor/ExtractorOutput;

    .line 66
    .line 67
    const/4 p4, -0x1

    .line 68
    iput p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->q:I

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 74
    .line 75
    .line 76
    new-instance p1, Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    move v0, p3

    .line 86
    :goto_0
    if-ge v0, p4, :cond_0

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 97
    .line 98
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v0, v0, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    new-instance p1, Landroidx/media3/extractor/ts/SectionReader;

    .line 105
    .line 106
    new-instance p4, Landroidx/media3/extractor/ts/TsExtractor$PatReader;

    .line 107
    .line 108
    invoke-direct {p4, p0}, Landroidx/media3/extractor/ts/TsExtractor$PatReader;-><init>(Landroidx/media3/extractor/ts/TsExtractor;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p1, p4}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
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
    iget-object p0, p0, Landroidx/media3/extractor/ts/TsExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 4
    .line 5
    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0x3ac

    .line 9
    .line 10
    invoke-virtual {p1, p0, v0, v1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 11
    .line 12
    .line 13
    move v1, v0

    .line 14
    :goto_0
    const/16 v2, 0xbc

    .line 15
    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    move v2, v0

    .line 19
    :goto_1
    const/4 v3, 0x5

    .line 20
    if-ge v2, v3, :cond_1

    .line 21
    .line 22
    mul-int/lit16 v3, v2, 0xbc

    .line 23
    .line 24
    add-int/2addr v3, v1

    .line 25
    aget-byte v3, p0, v3

    .line 26
    .line 27
    const/16 v4, 0x47

    .line 28
    .line 29
    if-eq v3, v4, :cond_0

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1, v1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->c(IZ)Z

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_2
    return v0
.end method

.method public final c(JJ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p3

    .line 4
    .line 5
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->g:Landroid/util/SparseArray;

    .line 6
    .line 7
    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->b:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v5

    .line 13
    const/4 v6, 0x0

    .line 14
    move v7, v6

    .line 15
    :goto_0
    const-wide/16 v8, 0x0

    .line 16
    .line 17
    if-ge v7, v5, :cond_4

    .line 18
    .line 19
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v10

    .line 23
    check-cast v10, Landroidx/media3/common/util/TimestampAdjuster;

    .line 24
    .line 25
    monitor-enter v10

    .line 26
    :try_start_0
    iget-wide v11, v10, Landroidx/media3/common/util/TimestampAdjuster;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit v10

    .line 29
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmp-long v11, v11, v13

    .line 35
    .line 36
    const/4 v12, 0x1

    .line 37
    if-nez v11, :cond_0

    .line 38
    .line 39
    move v11, v12

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    move v11, v6

    .line 42
    :goto_1
    if-nez v11, :cond_2

    .line 43
    .line 44
    invoke-virtual {v10}, Landroidx/media3/common/util/TimestampAdjuster;->d()J

    .line 45
    .line 46
    .line 47
    move-result-wide v15

    .line 48
    cmp-long v11, v15, v13

    .line 49
    .line 50
    if-eqz v11, :cond_1

    .line 51
    .line 52
    cmp-long v8, v15, v8

    .line 53
    .line 54
    if-eqz v8, :cond_1

    .line 55
    .line 56
    cmp-long v8, v15, v1

    .line 57
    .line 58
    if-eqz v8, :cond_1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    move v12, v6

    .line 62
    :goto_2
    move v11, v12

    .line 63
    :cond_2
    if-eqz v11, :cond_3

    .line 64
    .line 65
    invoke-virtual {v10, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;->e(J)V

    .line 66
    .line 67
    .line 68
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw v0

    .line 74
    :cond_4
    cmp-long v4, v1, v8

    .line 75
    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->k:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    .line 79
    .line 80
    if-eqz v4, :cond_5

    .line 81
    .line 82
    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->c(J)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-object v1, v0, Landroidx/media3/extractor/ts/TsExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 86
    .line 87
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, v0, Landroidx/media3/extractor/ts/TsExtractor;->d:Landroid/util/SparseIntArray;

    .line 91
    .line 92
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 93
    .line 94
    .line 95
    :goto_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-ge v6, v0, :cond_6

    .line 100
    .line 101
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 106
    .line 107
    invoke-interface {v0}, Landroidx/media3/extractor/ts/TsPayloadReader;->a()V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_6
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->f:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->l:Landroidx/media3/extractor/ExtractorOutput;

    .line 16
    .line 17
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 8
    .line 9
    .line 10
    move-result-wide v12

    .line 11
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->n:Z

    .line 12
    .line 13
    const/16 v4, 0x47

    .line 14
    .line 15
    const-wide/16 v17, -0x1

    .line 16
    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x0

    .line 19
    if-eqz v3, :cond_14

    .line 20
    .line 21
    cmp-long v3, v12, v17

    .line 22
    .line 23
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor;->j:Landroidx/media3/extractor/ts/TsDurationReader;

    .line 29
    .line 30
    const-wide/16 v10, 0x0

    .line 31
    .line 32
    if-eqz v3, :cond_f

    .line 33
    .line 34
    iget-boolean v3, v9, Landroidx/media3/extractor/ts/TsDurationReader;->c:Z

    .line 35
    .line 36
    if-nez v3, :cond_f

    .line 37
    .line 38
    iget v0, v0, Landroidx/media3/extractor/ts/TsExtractor;->q:I

    .line 39
    .line 40
    iget-object v3, v9, Landroidx/media3/extractor/ts/TsDurationReader;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 41
    .line 42
    iget-object v12, v9, Landroidx/media3/extractor/ts/TsDurationReader;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 43
    .line 44
    if-gtz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/TsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    .line 47
    .line 48
    .line 49
    return v6

    .line 50
    :cond_0
    iget-boolean v13, v9, Landroidx/media3/extractor/ts/TsDurationReader;->e:Z

    .line 51
    .line 52
    const-wide/32 v14, 0x1b8a0

    .line 53
    .line 54
    .line 55
    if-nez v13, :cond_7

    .line 56
    .line 57
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 58
    .line 59
    .line 60
    move-result-wide v10

    .line 61
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 62
    .line 63
    .line 64
    move-result-wide v13

    .line 65
    long-to-int v3, v13

    .line 66
    int-to-long v13, v3

    .line 67
    sub-long/2addr v10, v13

    .line 68
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 69
    .line 70
    .line 71
    move-result-wide v13

    .line 72
    cmp-long v13, v13, v10

    .line 73
    .line 74
    if-eqz v13, :cond_1

    .line 75
    .line 76
    iput-wide v10, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 77
    .line 78
    return v5

    .line 79
    :cond_1
    invoke-virtual {v12, v3}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 83
    .line 84
    .line 85
    iget-object v2, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 86
    .line 87
    invoke-interface {v1, v2, v6, v3}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 88
    .line 89
    .line 90
    iget v1, v12, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 91
    .line 92
    iget v2, v12, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 93
    .line 94
    add-int/lit16 v3, v2, -0xbc

    .line 95
    .line 96
    :goto_0
    if-lt v3, v1, :cond_6

    .line 97
    .line 98
    iget-object v10, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 99
    .line 100
    const/4 v11, -0x4

    .line 101
    move v13, v6

    .line 102
    :goto_1
    const/4 v14, 0x4

    .line 103
    if-gt v11, v14, :cond_5

    .line 104
    .line 105
    mul-int/lit16 v14, v11, 0xbc

    .line 106
    .line 107
    add-int/2addr v14, v3

    .line 108
    if-lt v14, v1, :cond_3

    .line 109
    .line 110
    if-ge v14, v2, :cond_3

    .line 111
    .line 112
    aget-byte v14, v10, v14

    .line 113
    .line 114
    if-eq v14, v4, :cond_2

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_2
    add-int/2addr v13, v5

    .line 118
    const/4 v14, 0x5

    .line 119
    if-ne v13, v14, :cond_4

    .line 120
    .line 121
    invoke-static {v12, v3, v0}, Landroidx/media3/extractor/ts/TsUtil;->a(Landroidx/media3/common/util/ParsableByteArray;II)J

    .line 122
    .line 123
    .line 124
    move-result-wide v10

    .line 125
    cmp-long v13, v10, v7

    .line 126
    .line 127
    if-eqz v13, :cond_5

    .line 128
    .line 129
    move-wide v7, v10

    .line 130
    goto :goto_3

    .line 131
    :cond_3
    :goto_2
    move v13, v6

    .line 132
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_6
    :goto_3
    iput-wide v7, v9, Landroidx/media3/extractor/ts/TsDurationReader;->g:J

    .line 139
    .line 140
    iput-boolean v5, v9, Landroidx/media3/extractor/ts/TsDurationReader;->e:Z

    .line 141
    .line 142
    return v6

    .line 143
    :cond_7
    move-wide/from16 v19, v7

    .line 144
    .line 145
    iget-wide v7, v9, Landroidx/media3/extractor/ts/TsDurationReader;->g:J

    .line 146
    .line 147
    cmp-long v7, v7, v19

    .line 148
    .line 149
    if-nez v7, :cond_8

    .line 150
    .line 151
    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/TsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    .line 152
    .line 153
    .line 154
    return v6

    .line 155
    :cond_8
    iget-boolean v7, v9, Landroidx/media3/extractor/ts/TsDurationReader;->d:Z

    .line 156
    .line 157
    if-nez v7, :cond_d

    .line 158
    .line 159
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 160
    .line 161
    .line 162
    move-result-wide v7

    .line 163
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 164
    .line 165
    .line 166
    move-result-wide v7

    .line 167
    long-to-int v3, v7

    .line 168
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 169
    .line 170
    .line 171
    move-result-wide v7

    .line 172
    cmp-long v7, v7, v10

    .line 173
    .line 174
    if-eqz v7, :cond_9

    .line 175
    .line 176
    iput-wide v10, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 177
    .line 178
    return v5

    .line 179
    :cond_9
    invoke-virtual {v12, v3}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 183
    .line 184
    .line 185
    iget-object v2, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 186
    .line 187
    invoke-interface {v1, v2, v6, v3}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 188
    .line 189
    .line 190
    iget v1, v12, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 191
    .line 192
    iget v2, v12, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 193
    .line 194
    :goto_4
    if-ge v1, v2, :cond_c

    .line 195
    .line 196
    iget-object v3, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 197
    .line 198
    aget-byte v3, v3, v1

    .line 199
    .line 200
    if-eq v3, v4, :cond_a

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_a
    invoke-static {v12, v1, v0}, Landroidx/media3/extractor/ts/TsUtil;->a(Landroidx/media3/common/util/ParsableByteArray;II)J

    .line 204
    .line 205
    .line 206
    move-result-wide v7

    .line 207
    cmp-long v3, v7, v19

    .line 208
    .line 209
    if-eqz v3, :cond_b

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_b
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_c
    move-wide/from16 v7, v19

    .line 216
    .line 217
    :goto_6
    iput-wide v7, v9, Landroidx/media3/extractor/ts/TsDurationReader;->f:J

    .line 218
    .line 219
    iput-boolean v5, v9, Landroidx/media3/extractor/ts/TsDurationReader;->d:Z

    .line 220
    .line 221
    return v6

    .line 222
    :cond_d
    iget-wide v4, v9, Landroidx/media3/extractor/ts/TsDurationReader;->f:J

    .line 223
    .line 224
    cmp-long v0, v4, v19

    .line 225
    .line 226
    if-nez v0, :cond_e

    .line 227
    .line 228
    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/TsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    .line 229
    .line 230
    .line 231
    return v6

    .line 232
    :cond_e
    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v4

    .line 236
    iget-wide v7, v9, Landroidx/media3/extractor/ts/TsDurationReader;->g:J

    .line 237
    .line 238
    invoke-virtual {v3, v7, v8}, Landroidx/media3/common/util/TimestampAdjuster;->c(J)J

    .line 239
    .line 240
    .line 241
    move-result-wide v2

    .line 242
    sub-long/2addr v2, v4

    .line 243
    iput-wide v2, v9, Landroidx/media3/extractor/ts/TsDurationReader;->h:J

    .line 244
    .line 245
    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/TsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    .line 246
    .line 247
    .line 248
    return v6

    .line 249
    :cond_f
    move-wide/from16 v19, v7

    .line 250
    .line 251
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->o:Z

    .line 252
    .line 253
    if-nez v3, :cond_11

    .line 254
    .line 255
    iput-boolean v5, v0, Landroidx/media3/extractor/ts/TsExtractor;->o:Z

    .line 256
    .line 257
    move v3, v6

    .line 258
    iget-wide v6, v9, Landroidx/media3/extractor/ts/TsDurationReader;->h:J

    .line 259
    .line 260
    cmp-long v8, v6, v19

    .line 261
    .line 262
    if-eqz v8, :cond_10

    .line 263
    .line 264
    move v8, v3

    .line 265
    new-instance v3, Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    .line 266
    .line 267
    iget-object v9, v9, Landroidx/media3/extractor/ts/TsDurationReader;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 268
    .line 269
    iget v14, v0, Landroidx/media3/extractor/ts/TsExtractor;->q:I

    .line 270
    .line 271
    move v15, v4

    .line 272
    new-instance v4, Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    .line 273
    .line 274
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 275
    .line 276
    .line 277
    move/from16 v16, v5

    .line 278
    .line 279
    new-instance v5, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;

    .line 280
    .line 281
    invoke-direct {v5, v14, v9}, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;)V

    .line 282
    .line 283
    .line 284
    const-wide/16 v19, 0x1

    .line 285
    .line 286
    add-long v19, v6, v19

    .line 287
    .line 288
    move v9, v15

    .line 289
    const-wide/16 v14, 0xbc

    .line 290
    .line 291
    move/from16 v21, v16

    .line 292
    .line 293
    const/16 v16, 0x3ac

    .line 294
    .line 295
    move-wide/from16 v22, v10

    .line 296
    .line 297
    const-wide/16 v10, 0x0

    .line 298
    .line 299
    move v1, v8

    .line 300
    move-wide/from16 v8, v19

    .line 301
    .line 302
    invoke-direct/range {v3 .. v16}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    .line 303
    .line 304
    .line 305
    iput-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->k:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    .line 306
    .line 307
    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->l:Landroidx/media3/extractor/ExtractorOutput;

    .line 308
    .line 309
    iget-object v3, v3, Landroidx/media3/extractor/BinarySearchSeeker;->a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 310
    .line 311
    invoke-interface {v4, v3}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_10
    move v1, v3

    .line 316
    move/from16 v21, v5

    .line 317
    .line 318
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->l:Landroidx/media3/extractor/ExtractorOutput;

    .line 319
    .line 320
    new-instance v4, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 321
    .line 322
    invoke-direct {v4, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 323
    .line 324
    .line 325
    invoke-interface {v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 326
    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_11
    move/from16 v21, v5

    .line 330
    .line 331
    move v1, v6

    .line 332
    :goto_7
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->p:Z

    .line 333
    .line 334
    if-eqz v3, :cond_12

    .line 335
    .line 336
    iput-boolean v1, v0, Landroidx/media3/extractor/ts/TsExtractor;->p:Z

    .line 337
    .line 338
    const-wide/16 v3, 0x0

    .line 339
    .line 340
    invoke-virtual {v0, v3, v4, v3, v4}, Landroidx/media3/extractor/ts/TsExtractor;->c(JJ)V

    .line 341
    .line 342
    .line 343
    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 344
    .line 345
    .line 346
    move-result-wide v5

    .line 347
    cmp-long v5, v5, v3

    .line 348
    .line 349
    if-eqz v5, :cond_12

    .line 350
    .line 351
    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 352
    .line 353
    return v21

    .line 354
    :cond_12
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->k:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    .line 355
    .line 356
    if-eqz v3, :cond_13

    .line 357
    .line 358
    iget-object v4, v3, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 359
    .line 360
    if-eqz v4, :cond_13

    .line 361
    .line 362
    move-object/from16 v4, p1

    .line 363
    .line 364
    invoke-virtual {v3, v4, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    return v0

    .line 369
    :cond_13
    move-object/from16 v4, p1

    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_14
    move-object v4, v1

    .line 373
    move/from16 v21, v5

    .line 374
    .line 375
    move v1, v6

    .line 376
    :goto_8
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 377
    .line 378
    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 379
    .line 380
    iget v5, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 381
    .line 382
    rsub-int v5, v5, 0x24b8

    .line 383
    .line 384
    const/16 v6, 0xbc

    .line 385
    .line 386
    if-ge v5, v6, :cond_16

    .line 387
    .line 388
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    if-lez v5, :cond_15

    .line 393
    .line 394
    iget v7, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 395
    .line 396
    invoke-static {v3, v7, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    .line 398
    .line 399
    :cond_15
    invoke-virtual {v2, v5, v3}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 400
    .line 401
    .line 402
    :cond_16
    :goto_9
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    iget-object v7, v0, Landroidx/media3/extractor/ts/TsExtractor;->g:Landroid/util/SparseArray;

    .line 407
    .line 408
    if-ge v5, v6, :cond_1c

    .line 409
    .line 410
    iget v5, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 411
    .line 412
    rsub-int v8, v5, 0x24b8

    .line 413
    .line 414
    invoke-interface {v4, v3, v5, v8}, Landroidx/media3/common/DataReader;->read([BII)I

    .line 415
    .line 416
    .line 417
    move-result v8

    .line 418
    const/4 v9, -0x1

    .line 419
    if-ne v8, v9, :cond_1b

    .line 420
    .line 421
    move v6, v1

    .line 422
    :goto_a
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-ge v6, v0, :cond_1a

    .line 427
    .line 428
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    check-cast v0, Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 433
    .line 434
    instance-of v1, v0, Landroidx/media3/extractor/ts/PesReader;

    .line 435
    .line 436
    if-eqz v1, :cond_19

    .line 437
    .line 438
    check-cast v0, Landroidx/media3/extractor/ts/PesReader;

    .line 439
    .line 440
    iget v1, v0, Landroidx/media3/extractor/ts/PesReader;->c:I

    .line 441
    .line 442
    const/4 v2, 0x3

    .line 443
    if-ne v1, v2, :cond_17

    .line 444
    .line 445
    iget v2, v0, Landroidx/media3/extractor/ts/PesReader;->j:I

    .line 446
    .line 447
    if-eq v2, v9, :cond_18

    .line 448
    .line 449
    :cond_17
    move/from16 v2, v21

    .line 450
    .line 451
    goto :goto_b

    .line 452
    :cond_18
    move/from16 v2, v21

    .line 453
    .line 454
    goto :goto_c

    .line 455
    :goto_b
    if-ne v1, v2, :cond_19

    .line 456
    .line 457
    :goto_c
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    .line 458
    .line 459
    invoke-direct {v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0, v2, v1}, Landroidx/media3/extractor/ts/PesReader;->b(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 463
    .line 464
    .line 465
    :cond_19
    add-int/lit8 v6, v6, 0x1

    .line 466
    .line 467
    const/16 v21, 0x1

    .line 468
    .line 469
    goto :goto_a

    .line 470
    :cond_1a
    return v9

    .line 471
    :cond_1b
    add-int/2addr v5, v8

    .line 472
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 473
    .line 474
    .line 475
    const/16 v21, 0x1

    .line 476
    .line 477
    goto :goto_9

    .line 478
    :cond_1c
    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 479
    .line 480
    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 481
    .line 482
    iget-object v5, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 483
    .line 484
    :goto_d
    if-ge v3, v4, :cond_1d

    .line 485
    .line 486
    aget-byte v8, v5, v3

    .line 487
    .line 488
    const/16 v15, 0x47

    .line 489
    .line 490
    if-eq v8, v15, :cond_1d

    .line 491
    .line 492
    add-int/lit8 v3, v3, 0x1

    .line 493
    .line 494
    goto :goto_d

    .line 495
    :cond_1d
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 496
    .line 497
    .line 498
    add-int/2addr v3, v6

    .line 499
    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 500
    .line 501
    if-le v3, v4, :cond_1e

    .line 502
    .line 503
    return v1

    .line 504
    :cond_1e
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 505
    .line 506
    .line 507
    move-result v5

    .line 508
    const/high16 v6, 0x800000

    .line 509
    .line 510
    and-int/2addr v6, v5

    .line 511
    if-eqz v6, :cond_1f

    .line 512
    .line 513
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 514
    .line 515
    .line 516
    return v1

    .line 517
    :cond_1f
    const/high16 v6, 0x400000

    .line 518
    .line 519
    and-int/2addr v6, v5

    .line 520
    if-eqz v6, :cond_20

    .line 521
    .line 522
    const/4 v6, 0x1

    .line 523
    goto :goto_e

    .line 524
    :cond_20
    move v6, v1

    .line 525
    :goto_e
    const v8, 0x1fff00

    .line 526
    .line 527
    .line 528
    and-int/2addr v8, v5

    .line 529
    shr-int/lit8 v8, v8, 0x8

    .line 530
    .line 531
    and-int/lit8 v9, v5, 0x20

    .line 532
    .line 533
    if-eqz v9, :cond_21

    .line 534
    .line 535
    const/4 v9, 0x1

    .line 536
    goto :goto_f

    .line 537
    :cond_21
    move v9, v1

    .line 538
    :goto_f
    and-int/lit8 v10, v5, 0x10

    .line 539
    .line 540
    if-eqz v10, :cond_22

    .line 541
    .line 542
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v7

    .line 546
    check-cast v7, Landroidx/media3/extractor/ts/TsPayloadReader;

    .line 547
    .line 548
    goto :goto_10

    .line 549
    :cond_22
    const/4 v7, 0x0

    .line 550
    :goto_10
    if-nez v7, :cond_23

    .line 551
    .line 552
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 553
    .line 554
    .line 555
    return v1

    .line 556
    :cond_23
    and-int/lit8 v5, v5, 0xf

    .line 557
    .line 558
    add-int/lit8 v10, v5, -0x1

    .line 559
    .line 560
    iget-object v11, v0, Landroidx/media3/extractor/ts/TsExtractor;->d:Landroid/util/SparseIntArray;

    .line 561
    .line 562
    invoke-virtual {v11, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    .line 563
    .line 564
    .line 565
    move-result v10

    .line 566
    invoke-virtual {v11, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 567
    .line 568
    .line 569
    if-ne v10, v5, :cond_24

    .line 570
    .line 571
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 572
    .line 573
    .line 574
    return v1

    .line 575
    :cond_24
    const/16 v21, 0x1

    .line 576
    .line 577
    add-int/lit8 v10, v10, 0x1

    .line 578
    .line 579
    and-int/lit8 v10, v10, 0xf

    .line 580
    .line 581
    if-eq v5, v10, :cond_25

    .line 582
    .line 583
    invoke-interface {v7}, Landroidx/media3/extractor/ts/TsPayloadReader;->a()V

    .line 584
    .line 585
    .line 586
    :cond_25
    if-eqz v9, :cond_27

    .line 587
    .line 588
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 589
    .line 590
    .line 591
    move-result v5

    .line 592
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 593
    .line 594
    .line 595
    move-result v9

    .line 596
    and-int/lit8 v9, v9, 0x40

    .line 597
    .line 598
    if-eqz v9, :cond_26

    .line 599
    .line 600
    const/4 v9, 0x2

    .line 601
    goto :goto_11

    .line 602
    :cond_26
    move v9, v1

    .line 603
    :goto_11
    or-int/2addr v6, v9

    .line 604
    const/16 v21, 0x1

    .line 605
    .line 606
    add-int/lit8 v5, v5, -0x1

    .line 607
    .line 608
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 609
    .line 610
    .line 611
    :cond_27
    iget-boolean v5, v0, Landroidx/media3/extractor/ts/TsExtractor;->n:Z

    .line 612
    .line 613
    if-nez v5, :cond_28

    .line 614
    .line 615
    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor;->i:Landroid/util/SparseBooleanArray;

    .line 616
    .line 617
    invoke-virtual {v9, v8, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 618
    .line 619
    .line 620
    move-result v8

    .line 621
    if-nez v8, :cond_29

    .line 622
    .line 623
    :cond_28
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 624
    .line 625
    .line 626
    invoke-interface {v7, v6, v2}, Landroidx/media3/extractor/ts/TsPayloadReader;->b(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 630
    .line 631
    .line 632
    :cond_29
    if-nez v5, :cond_2a

    .line 633
    .line 634
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->n:Z

    .line 635
    .line 636
    if-eqz v4, :cond_2a

    .line 637
    .line 638
    cmp-long v4, v12, v17

    .line 639
    .line 640
    if-eqz v4, :cond_2a

    .line 641
    .line 642
    const/4 v4, 0x1

    .line 643
    iput-boolean v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->p:Z

    .line 644
    .line 645
    :cond_2a
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 646
    .line 647
    .line 648
    return v1
.end method
