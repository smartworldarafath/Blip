.class final Landroidx/media3/extractor/mkv/DefaultEbmlReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Landroidx/media3/extractor/mkv/VarintReader;

.field public d:Landroidx/media3/extractor/mkv/EbmlProcessor;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->a:[B

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayDeque;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/ArrayDeque;

    .line 16
    .line 17
    new-instance v0, Landroidx/media3/extractor/mkv/VarintReader;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/media3/extractor/mkv/VarintReader;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->c:Landroidx/media3/extractor/mkv/VarintReader;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    :goto_0
    iget-object v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    const v6, 0x1549a966

    const/4 v7, -0x1

    const v10, 0x1654ae6b

    const v11, 0x1c53bb6b

    const/4 v15, 0x2

    const-wide/16 v16, 0x0

    const/4 v5, 0x0

    const-wide/16 v18, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_ab

    .line 4
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v20

    const/16 v22, 0x8

    .line 5
    iget-wide v12, v3, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;->b:J

    cmp-long v3, v20, v12

    if-ltz v3, :cond_aa

    .line 6
    iget-object v0, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    .line 7
    iget v1, v1, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;->a:I

    .line 8
    check-cast v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 9
    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    .line 10
    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v0:Ljava/util/Map;

    .line 11
    iget-object v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->E:Landroid/util/SparseArray;

    .line 12
    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    .line 13
    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p0:Landroidx/media3/extractor/ExtractorOutput;

    .line 14
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v13, 0x80

    if-eq v1, v13, :cond_a8

    const/16 v13, 0xa0

    .line 15
    const-string v4, "A_OPUS"

    if-eq v1, v13, :cond_a2

    const/16 v13, 0xae

    const-string v14, "video/webm"

    if-eq v1, v13, :cond_25

    const/16 v2, 0x45b9

    if-eq v1, v2, :cond_24

    const/16 v2, 0x4dbb

    if-eq v1, v2, :cond_21

    const/16 v2, 0x6240

    if-eq v1, v2, :cond_1f

    const/16 v2, 0x6d80

    if-eq v1, v2, :cond_1d

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v6, :cond_1b

    if-eq v1, v10, :cond_c

    if-eq v1, v11, :cond_5

    const/16 v2, 0xb6

    if-eq v1, v2, :cond_3

    const/16 v2, 0xb7

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_1
    move v3, v9

    goto/16 :goto_45

    .line 16
    :cond_1
    iget-boolean v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    if-nez v2, :cond_0

    .line 17
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g(I)V

    .line 18
    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    cmp-long v1, v1, v13

    if-eqz v1, :cond_0

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:I

    if-eq v1, v7, :cond_0

    iget-wide v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:J

    cmp-long v2, v4, v18

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:I

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    :cond_2
    new-instance v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;

    iget-wide v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    iget-wide v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    iget-wide v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:J

    add-long/2addr v5, v7

    iget-wide v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->J:J

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap$CuePointData;-><init>(JJJ)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v9

    .line 23
    :cond_3
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    iget-wide v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->a:J

    cmp-long v4, v2, v16

    if-eqz v4, :cond_4

    .line 26
    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 27
    :cond_4
    iput-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    return v9

    .line 28
    :cond_5
    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    if-nez v1, :cond_0

    move v1, v8

    .line 29
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 30
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 31
    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->w:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v8

    .line 32
    :goto_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 33
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 34
    :cond_7
    new-instance v24, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;

    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->w:J

    iget v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:I

    iget-wide v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    iget-wide v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s:J

    move-wide/from16 v26, v1

    move-object/from16 v25, v3

    move/from16 v28, v4

    move-wide/from16 v29, v5

    move-wide/from16 v31, v10

    invoke-direct/range {v24 .. v32}, Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;-><init>(Landroid/util/SparseArray;JIJJ)V

    move-object/from16 v1, v24

    .line 35
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p0:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_5

    :cond_8
    move-object/from16 v25, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 36
    :cond_9
    :goto_4
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p0:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v2, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->w:J

    invoke-direct {v2, v3, v4}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 37
    :goto_5
    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    .line 38
    iput-boolean v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F:Z

    .line 39
    :goto_6
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_b

    .line 40
    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 41
    iget-boolean v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->X:Z

    if-nez v2, :cond_a

    .line 42
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)V

    .line 43
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-interface {v2, v1}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 48
    :cond_b
    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l()V

    return v9

    .line 49
    :cond_c
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 50
    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e:Z

    if-eqz v1, :cond_e

    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->M:J

    cmp-long v1, v1, v18

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->B:Z

    if-eqz v1, :cond_d

    goto :goto_7

    :cond_d
    move v1, v8

    goto :goto_8

    :cond_e
    :goto_7
    move v1, v9

    :goto_8
    move v3, v7

    move v4, v3

    move v5, v4

    move v6, v5

    move v2, v8

    .line 51
    :goto_9
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v2, v10, :cond_14

    .line 52
    invoke-virtual {v12, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 53
    iget v11, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    if-ne v11, v15, :cond_10

    .line 54
    iget-boolean v11, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Z

    if-eqz v11, :cond_f

    .line 55
    iget v3, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    :cond_f
    if-ne v4, v7, :cond_12

    .line 56
    iget v4, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    goto :goto_a

    :cond_10
    if-ne v11, v9, :cond_12

    .line 57
    iget-boolean v11, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Z

    if-eqz v11, :cond_11

    .line 58
    iget v5, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    :cond_11
    if-ne v6, v7, :cond_12

    .line 59
    iget v6, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    :cond_12
    :goto_a
    if-eqz v1, :cond_13

    .line 60
    iget-boolean v11, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->X:Z

    if-nez v11, :cond_13

    .line 61
    invoke-virtual {v0, v10}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)V

    .line 62
    iget-object v11, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 63
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    iget-object v11, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    iget-object v10, v10, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    .line 65
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-interface {v11, v10}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_14
    if-eq v3, v7, :cond_15

    .line 67
    iput v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:I

    goto :goto_b

    :cond_15
    if-eq v4, v7, :cond_16

    .line 68
    iput v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:I

    goto :goto_b

    :cond_16
    if-eq v5, v7, :cond_17

    .line 69
    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:I

    goto :goto_b

    :cond_17
    if-eq v6, v7, :cond_18

    .line 70
    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:I

    goto :goto_b

    .line 71
    :cond_18
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget v7, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    :cond_19
    iput v7, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:I

    .line 72
    :goto_b
    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->R:Z

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l()V

    return v9

    .line 74
    :cond_1a
    const-string v0, "No valid tracks were found"

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 75
    :cond_1b
    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->u:J

    cmp-long v1, v1, v13

    if-nez v1, :cond_1c

    const-wide/32 v1, 0xf4240

    .line 76
    iput-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->u:J

    .line 77
    :cond_1c
    iget-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v:J

    cmp-long v3, v1, v13

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->w:J

    return v9

    .line 79
    :cond_1d
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 80
    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->j:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->k:[B

    if-nez v0, :cond_1e

    goto/16 :goto_1

    .line 81
    :cond_1e
    const-string v0, "Combining encryption and compression is not supported"

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 82
    :cond_1f
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 83
    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->j:Z

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->l:Landroidx/media3/extractor/TrackOutput$CryptoData;

    if-eqz v1, :cond_20

    .line 85
    new-instance v2, Landroidx/media3/common/DrmInitData;

    new-instance v3, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object v4, Landroidx/media3/common/C;->a:Ljava/util/UUID;

    iget-object v1, v1, Landroidx/media3/extractor/TrackOutput$CryptoData;->b:[B

    .line 86
    invoke-direct {v3, v4, v5, v14, v1}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 87
    filled-new-array {v3}, [Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v1

    .line 88
    invoke-direct {v2, v5, v9, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media3/common/DrmInitData$SchemeData;)V

    .line 89
    iput-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->n:Landroidx/media3/common/DrmInitData;

    return v9

    .line 90
    :cond_20
    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 91
    :cond_21
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->C:I

    if-eq v1, v7, :cond_23

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->D:J

    cmp-long v4, v2, v18

    if-eqz v4, :cond_23

    if-ne v1, v11, :cond_22

    .line 92
    iput-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->M:J

    return v9

    :cond_22
    if-ne v1, v10, :cond_0

    .line 93
    iput-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:J

    return v9

    .line 94
    :cond_23
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 95
    :cond_24
    :goto_c
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 96
    invoke-virtual {v12, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 97
    :cond_25
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    if-eqz v3, :cond_a1

    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v11, "A_MPEG/L3"

    const-string v13, "A_MPEG/L2"

    const-string v10, "A_VORBIS"

    const-string v7, "A_TRUEHD"

    const-string v15, "A_MS/ACM"

    const-string v9, "V_MPEG4/ISO/SP"

    const-string v8, "V_MPEG4/ISO/AP"

    const/16 v16, 0x12

    const/16 v17, 0x14

    sparse-switch v6, :sswitch_data_0

    :goto_d
    const/4 v6, -0x1

    goto/16 :goto_e

    :sswitch_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_d

    :cond_26
    const/16 v6, 0x22

    goto/16 :goto_e

    :sswitch_1
    const-string v6, "A_FLAC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_d

    :cond_27
    const/16 v6, 0x21

    goto/16 :goto_e

    :sswitch_2
    const-string v6, "A_EAC3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_d

    :cond_28
    const/16 v6, 0x20

    goto/16 :goto_e

    :sswitch_3
    const-string v6, "A_ALAC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_d

    :cond_29
    const/16 v6, 0x1f

    goto/16 :goto_e

    :sswitch_4
    const-string v6, "V_MPEG2"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    goto :goto_d

    :cond_2a
    const/16 v6, 0x1e

    goto/16 :goto_e

    :sswitch_5
    const-string v6, "S_TEXT/UTF8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_d

    :cond_2b
    const/16 v6, 0x1d

    goto/16 :goto_e

    :sswitch_6
    const-string v6, "S_TEXT/WEBVTT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    goto :goto_d

    :cond_2c
    const/16 v6, 0x1c

    goto/16 :goto_e

    :sswitch_7
    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    goto :goto_d

    :cond_2d
    const/16 v6, 0x1b

    goto/16 :goto_e

    :sswitch_8
    const-string v6, "S_TEXT/SSA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    goto :goto_d

    :cond_2e
    const/16 v6, 0x1a

    goto/16 :goto_e

    :sswitch_9
    const-string v6, "S_TEXT/ASS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    goto :goto_d

    :cond_2f
    const/16 v6, 0x19

    goto/16 :goto_e

    :sswitch_a
    const-string v6, "A_PCM/INT/LIT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    goto/16 :goto_d

    :cond_30
    const/16 v6, 0x18

    goto/16 :goto_e

    :sswitch_b
    const-string v6, "A_PCM/INT/BIG"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    goto/16 :goto_d

    :cond_31
    const/16 v6, 0x17

    goto/16 :goto_e

    :sswitch_c
    const-string v6, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    goto/16 :goto_d

    :cond_32
    const/16 v6, 0x16

    goto/16 :goto_e

    :sswitch_d
    const-string v6, "A_DTS/EXPRESS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    goto/16 :goto_d

    :cond_33
    const/16 v6, 0x15

    goto/16 :goto_e

    :sswitch_e
    const-string v6, "V_THEORA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    goto/16 :goto_d

    :cond_34
    move/from16 v6, v17

    goto/16 :goto_e

    :sswitch_f
    const-string v6, "S_HDMV/PGS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    goto/16 :goto_d

    :cond_35
    const/16 v6, 0x13

    goto/16 :goto_e

    :sswitch_10
    const-string v6, "V_VP9"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    goto/16 :goto_d

    :cond_36
    move/from16 v6, v16

    goto/16 :goto_e

    :sswitch_11
    const-string v6, "V_VP8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    goto/16 :goto_d

    :cond_37
    const/16 v6, 0x11

    goto/16 :goto_e

    :sswitch_12
    const-string v6, "V_AV1"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    goto/16 :goto_d

    :cond_38
    const/16 v6, 0x10

    goto/16 :goto_e

    :sswitch_13
    const-string v6, "A_DTS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    goto/16 :goto_d

    :cond_39
    const/16 v6, 0xf

    goto/16 :goto_e

    :sswitch_14
    const-string v6, "A_AC3"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    goto/16 :goto_d

    :cond_3a
    const/16 v6, 0xe

    goto/16 :goto_e

    :sswitch_15
    const-string v6, "A_AAC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    goto/16 :goto_d

    :cond_3b
    const/16 v6, 0xd

    goto/16 :goto_e

    :sswitch_16
    const-string v6, "A_DTS/LOSSLESS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    goto/16 :goto_d

    :cond_3c
    const/16 v6, 0xc

    goto/16 :goto_e

    :sswitch_17
    const-string v6, "S_VOBSUB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    goto/16 :goto_d

    :cond_3d
    const/16 v6, 0xb

    goto/16 :goto_e

    :sswitch_18
    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    goto/16 :goto_d

    :cond_3e
    const/16 v6, 0xa

    goto/16 :goto_e

    :sswitch_19
    const-string v6, "V_MPEG4/ISO/ASP"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto/16 :goto_d

    :cond_3f
    const/16 v6, 0x9

    goto/16 :goto_e

    :sswitch_1a
    const-string v6, "S_DVBSUB"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    goto/16 :goto_d

    :cond_40
    move/from16 v6, v22

    goto :goto_e

    :sswitch_1b
    const-string v6, "V_MS/VFW/FOURCC"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    goto/16 :goto_d

    :cond_41
    const/4 v6, 0x7

    goto :goto_e

    :sswitch_1c
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_42

    goto/16 :goto_d

    :cond_42
    const/4 v6, 0x6

    goto :goto_e

    :sswitch_1d
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    goto/16 :goto_d

    :cond_43
    const/4 v6, 0x5

    goto :goto_e

    :sswitch_1e
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    goto/16 :goto_d

    :cond_44
    const/4 v6, 0x4

    goto :goto_e

    :sswitch_1f
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    goto/16 :goto_d

    :cond_45
    const/4 v6, 0x3

    goto :goto_e

    :sswitch_20
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_46

    goto/16 :goto_d

    :cond_46
    const/4 v6, 0x2

    goto :goto_e

    :sswitch_21
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    goto/16 :goto_d

    :cond_47
    const/4 v6, 0x1

    goto :goto_e

    :sswitch_22
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_48

    goto/16 :goto_d

    :cond_48
    const/4 v6, 0x0

    :goto_e
    packed-switch v6, :pswitch_data_0

    :goto_f
    const/4 v5, 0x0

    goto/16 :goto_41

    .line 101
    :pswitch_0
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    .line 102
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v19

    sparse-switch v19, :sswitch_data_1

    :goto_10
    const/4 v4, -0x1

    goto/16 :goto_11

    :sswitch_23
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    goto :goto_10

    :cond_49
    const/16 v4, 0x22

    goto/16 :goto_11

    :sswitch_24
    const-string v4, "A_FLAC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4a

    goto :goto_10

    :cond_4a
    const/16 v4, 0x21

    goto/16 :goto_11

    :sswitch_25
    const-string v4, "A_EAC3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_10

    :cond_4b
    const/16 v4, 0x20

    goto/16 :goto_11

    :sswitch_26
    const-string v4, "A_ALAC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    goto :goto_10

    :cond_4c
    const/16 v4, 0x1f

    goto/16 :goto_11

    :sswitch_27
    const-string v4, "V_MPEG2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_10

    :cond_4d
    const/16 v4, 0x1e

    goto/16 :goto_11

    :sswitch_28
    const-string v4, "S_TEXT/UTF8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_10

    :cond_4e
    const/16 v4, 0x1d

    goto/16 :goto_11

    :sswitch_29
    const-string v4, "S_TEXT/WEBVTT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_10

    :cond_4f
    const/16 v4, 0x1c

    goto/16 :goto_11

    :sswitch_2a
    const-string v4, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_10

    :cond_50
    const/16 v4, 0x1b

    goto/16 :goto_11

    :sswitch_2b
    const-string v4, "S_TEXT/SSA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_10

    :cond_51
    const/16 v4, 0x1a

    goto/16 :goto_11

    :sswitch_2c
    const-string v4, "S_TEXT/ASS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto :goto_10

    :cond_52
    const/16 v4, 0x19

    goto/16 :goto_11

    :sswitch_2d
    const-string v4, "A_PCM/INT/LIT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    goto/16 :goto_10

    :cond_53
    const/16 v4, 0x18

    goto/16 :goto_11

    :sswitch_2e
    const-string v4, "A_PCM/INT/BIG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_54

    goto/16 :goto_10

    :cond_54
    const/16 v4, 0x17

    goto/16 :goto_11

    :sswitch_2f
    const-string v4, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    goto/16 :goto_10

    :cond_55
    const/16 v4, 0x16

    goto/16 :goto_11

    :sswitch_30
    const-string v4, "A_DTS/EXPRESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    goto/16 :goto_10

    :cond_56
    const/16 v4, 0x15

    goto/16 :goto_11

    :sswitch_31
    const-string v4, "V_THEORA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    goto/16 :goto_10

    :cond_57
    move/from16 v4, v17

    goto/16 :goto_11

    :sswitch_32
    const-string v4, "S_HDMV/PGS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    goto/16 :goto_10

    :cond_58
    const/16 v4, 0x13

    goto/16 :goto_11

    :sswitch_33
    const-string v4, "V_VP9"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    goto/16 :goto_10

    :cond_59
    move/from16 v4, v16

    goto/16 :goto_11

    :sswitch_34
    const-string v4, "V_VP8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    goto/16 :goto_10

    :cond_5a
    const/16 v4, 0x11

    goto/16 :goto_11

    :sswitch_35
    const-string v4, "V_AV1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    goto/16 :goto_10

    :cond_5b
    const/16 v4, 0x10

    goto/16 :goto_11

    :sswitch_36
    const-string v4, "A_DTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5c

    goto/16 :goto_10

    :cond_5c
    const/16 v4, 0xf

    goto/16 :goto_11

    :sswitch_37
    const-string v4, "A_AC3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    goto/16 :goto_10

    :cond_5d
    const/16 v4, 0xe

    goto/16 :goto_11

    :sswitch_38
    const-string v4, "A_AAC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    goto/16 :goto_10

    :cond_5e
    const/16 v4, 0xd

    goto/16 :goto_11

    :sswitch_39
    const-string v4, "A_DTS/LOSSLESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto/16 :goto_10

    :cond_5f
    const/16 v4, 0xc

    goto/16 :goto_11

    :sswitch_3a
    const-string v4, "S_VOBSUB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    goto/16 :goto_10

    :cond_60
    const/16 v4, 0xb

    goto/16 :goto_11

    :sswitch_3b
    const-string v4, "V_MPEG4/ISO/AVC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    goto/16 :goto_10

    :cond_61
    const/16 v4, 0xa

    goto/16 :goto_11

    :sswitch_3c
    const-string v4, "V_MPEG4/ISO/ASP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    goto/16 :goto_10

    :cond_62
    const/16 v4, 0x9

    goto/16 :goto_11

    :sswitch_3d
    const-string v4, "S_DVBSUB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_63

    goto/16 :goto_10

    :cond_63
    move/from16 v4, v22

    goto :goto_11

    :sswitch_3e
    const-string v4, "V_MS/VFW/FOURCC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    goto/16 :goto_10

    :cond_64
    const/4 v4, 0x7

    goto :goto_11

    :sswitch_3f
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    goto/16 :goto_10

    :cond_65
    const/4 v4, 0x6

    goto :goto_11

    :sswitch_40
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_66

    goto/16 :goto_10

    :cond_66
    const/4 v4, 0x5

    goto :goto_11

    :sswitch_41
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    goto/16 :goto_10

    :cond_67
    const/4 v4, 0x4

    goto :goto_11

    :sswitch_42
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_68

    goto/16 :goto_10

    :cond_68
    const/4 v4, 0x3

    goto :goto_11

    :sswitch_43
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    goto/16 :goto_10

    :cond_69
    const/4 v4, 0x2

    goto :goto_11

    :sswitch_44
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    goto/16 :goto_10

    :cond_6a
    const/4 v4, 0x1

    goto :goto_11

    :sswitch_45
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    goto/16 :goto_10

    :cond_6b
    const/4 v4, 0x0

    .line 103
    :goto_11
    const-string v8, "application/dvbsubs"

    const-string v9, "application/vobsub"

    const-string v10, "application/pgs"

    const-string v11, "video/x-unknown"

    const-string v13, "text/x-ssa"

    const-string v15, "text/vtt"

    const-string v7, "application/x-subrip"

    const-string v5, ". Setting mimeType to audio/x-unknown"

    const-string v19, "audio/raw"

    const-string v27, "audio/x-unknown"

    move/from16 v28, v4

    const-string v4, "MatroskaExtractor"

    packed-switch v28, :pswitch_data_1

    const-string v0, "Unrecognized codec identifier."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 104
    :pswitch_1
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v28, v12

    iget-wide v11, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->U:J

    invoke-virtual {v4, v11, v12}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v11, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->V:J

    invoke-virtual {v4, v11, v12}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 109
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const-string v11, "audio/opus"

    const/16 v4, 0x1680

    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move/from16 v18, v6

    move-object/from16 v16, v11

    move-object/from16 p0, v14

    :goto_12
    const/4 v3, -0x1

    :goto_13
    const/4 v5, -0x1

    :goto_14
    const/4 v6, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v14, -0x1

    const/16 v17, 0x0

    goto/16 :goto_30

    :pswitch_2
    move-object/from16 v28, v12

    .line 111
    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 112
    iget v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 113
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->t(ILjava/nio/ByteOrder;)I

    move-result v4

    .line 114
    const-string v11, "audio/flac"

    if-nez v4, :cond_6c

    :goto_15
    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move/from16 v18, v6

    move-object/from16 v16, v11

    :goto_16
    move-object/from16 p0, v14

    :goto_17
    const/4 v3, -0x1

    const/4 v4, -0x1

    goto :goto_13

    :cond_6c
    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move v5, v4

    move/from16 v18, v6

    move-object/from16 v16, v11

    move-object/from16 p0, v14

    const/4 v3, -0x1

    const/4 v4, -0x1

    goto :goto_14

    :pswitch_3
    move-object/from16 v28, v12

    .line 115
    const-string v11, "audio/eac3"

    :goto_18
    move-object/from16 v21, v0

    move/from16 v18, v6

    move-object/from16 v16, v11

    :goto_19
    move-object/from16 p0, v14

    :goto_1a
    const/4 v3, -0x1

    const/4 v4, -0x1

    :goto_1b
    const/4 v5, -0x1

    :goto_1c
    const/4 v6, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v14, -0x1

    const/16 v17, 0x0

    const/16 v19, 0x0

    goto/16 :goto_30

    :pswitch_4
    move-object/from16 v28, v12

    .line 116
    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 117
    iget v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 118
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->t(ILjava/nio/ByteOrder;)I

    move-result v4

    .line 119
    const-string v11, "audio/alac"

    if-nez v4, :cond_6c

    goto :goto_15

    :pswitch_5
    move-object/from16 v28, v12

    .line 120
    const-string v11, "video/mpeg2"

    goto :goto_18

    :pswitch_6
    move-object/from16 v28, v12

    move-object/from16 v21, v0

    move/from16 v18, v6

    move-object/from16 v16, v7

    goto :goto_19

    :pswitch_7
    move-object/from16 v28, v12

    move-object/from16 v21, v0

    move/from16 v18, v6

    move-object/from16 p0, v14

    move-object/from16 v16, v15

    goto :goto_1a

    :pswitch_8
    move-object/from16 v28, v12

    .line 121
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 122
    invoke-static {v3, v5, v4}, Landroidx/media3/extractor/HevcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v3

    .line 123
    iget-object v4, v3, Landroidx/media3/extractor/HevcConfig;->a:Ljava/util/List;

    .line 124
    iget v5, v3, Landroidx/media3/extractor/HevcConfig;->b:I

    iput v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f0:I

    .line 125
    iget-object v5, v3, Landroidx/media3/extractor/HevcConfig;->n:Ljava/lang/String;

    .line 126
    iget v11, v3, Landroidx/media3/extractor/HevcConfig;->h:I

    .line 127
    iget v12, v3, Landroidx/media3/extractor/HevcConfig;->j:I

    move-object/from16 v16, v4

    .line 128
    iget v4, v3, Landroidx/media3/extractor/HevcConfig;->i:I

    move/from16 v17, v4

    .line 129
    iget v4, v3, Landroidx/media3/extractor/HevcConfig;->f:I

    .line 130
    iget v3, v3, Landroidx/media3/extractor/HevcConfig;->g:I

    .line 131
    const-string v18, "video/hevc"

    :goto_1d
    move-object/from16 v21, v0

    move-object/from16 p0, v14

    move-object/from16 v19, v16

    move/from16 v14, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v5

    move/from16 v18, v6

    move v6, v11

    const/4 v5, -0x1

    move v11, v3

    move v3, v4

    const/4 v4, -0x1

    goto/16 :goto_30

    :pswitch_9
    move-object/from16 v28, v12

    .line 132
    sget-object v4, Landroidx/media3/extractor/mkv/MatroskaExtractor;->r0:[B

    .line 133
    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableList;->u(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move/from16 v18, v6

    move-object/from16 v16, v13

    goto/16 :goto_16

    :pswitch_a
    move-object/from16 v28, v12

    .line 134
    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 135
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v11}, Landroidx/media3/common/util/Util;->t(ILjava/nio/ByteOrder;)I

    move-result v3

    if-nez v3, :cond_6d

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported little endian PCM bit depth: "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    move-object/from16 v21, v0

    move/from16 v18, v6

    move-object/from16 p0, v14

    :goto_1f
    move-object/from16 v16, v27

    goto/16 :goto_1a

    :cond_6d
    move-object/from16 v21, v0

    move v5, v3

    move/from16 v18, v6

    move-object/from16 p0, v14

    :goto_20
    move-object/from16 v16, v19

    const/4 v3, -0x1

    const/4 v4, -0x1

    goto/16 :goto_1c

    :pswitch_b
    move-object/from16 v28, v12

    .line 137
    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v11}, Landroidx/media3/common/util/Util;->t(ILjava/nio/ByteOrder;)I

    move-result v3

    if-nez v3, :cond_6d

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported big endian PCM bit depth: "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :pswitch_c
    move-object/from16 v28, v12

    .line 139
    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 140
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v11}, Landroidx/media3/common/util/Util;->r(ILjava/nio/ByteOrder;)I

    move-result v3

    if-nez v3, :cond_6d

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported floating point PCM bit depth: "

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :pswitch_d
    move-object/from16 v28, v12

    .line 142
    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_18

    :pswitch_e
    move-object/from16 v28, v12

    goto/16 :goto_18

    :pswitch_f
    move-object/from16 v28, v12

    move-object/from16 v21, v0

    move/from16 v18, v6

    move-object/from16 v16, v10

    goto/16 :goto_19

    :pswitch_10
    move-object/from16 v28, v12

    .line 143
    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->m:[B

    if-nez v3, :cond_6e

    const/4 v3, 0x0

    goto :goto_21

    :cond_6e
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 144
    :goto_21
    const-string v11, "video/x-vnd.on2.vp9"

    goto/16 :goto_15

    :pswitch_11
    move-object/from16 v28, v12

    .line 145
    const-string v11, "video/x-vnd.on2.vp8"

    goto/16 :goto_18

    :pswitch_12
    move-object/from16 v28, v12

    .line 146
    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->m:[B

    const-string v11, "video/av01"

    if-nez v3, :cond_6f

    goto/16 :goto_18

    .line 147
    :cond_6f
    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 148
    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->m:[B

    invoke-static {v4}, Landroidx/media3/extractor/Av1Config;->b([B)Landroidx/media3/extractor/Av1Config;

    move-result-object v4

    if-nez v4, :cond_70

    goto/16 :goto_15

    .line 149
    :cond_70
    iget v5, v4, Landroidx/media3/extractor/Av1Config;->b:I

    .line 150
    iget v12, v4, Landroidx/media3/extractor/Av1Config;->d:I

    move-object/from16 p0, v3

    .line 151
    iget v3, v4, Landroidx/media3/extractor/Av1Config;->c:I

    move/from16 v16, v3

    .line 152
    iget v3, v4, Landroidx/media3/extractor/Av1Config;->a:I

    .line 153
    iget-object v4, v4, Landroidx/media3/extractor/Av1Config;->e:Ljava/lang/String;

    move-object/from16 v19, p0

    move-object/from16 v21, v0

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 p0, v14

    move/from16 v14, v16

    const/4 v4, -0x1

    move v6, v5

    move-object/from16 v16, v11

    const/4 v5, -0x1

    move v11, v3

    goto/16 :goto_30

    :pswitch_13
    move-object/from16 v28, v12

    const/4 v3, 0x1

    .line 154
    iput-boolean v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->X:Z

    .line 155
    const-string v11, "audio/vnd.dts"

    goto/16 :goto_18

    :pswitch_14
    move-object/from16 v28, v12

    .line 156
    const-string v11, "audio/ac3"

    goto/16 :goto_18

    :pswitch_15
    move-object/from16 v28, v12

    .line 157
    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 158
    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->m:[B

    .line 159
    new-instance v5, Landroidx/media3/common/util/ParsableBitArray;

    .line 160
    array-length v11, v4

    invoke-direct {v5, v11, v4}, Landroidx/media3/common/util/ParsableBitArray;-><init>(I[B)V

    const/4 v4, 0x0

    .line 161
    invoke-static {v5, v4}, Landroidx/media3/extractor/AacUtil;->b(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v5

    .line 162
    iget v4, v5, Landroidx/media3/extractor/AacUtil$Config;->a:I

    iput v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->T:I

    .line 163
    iget v4, v5, Landroidx/media3/extractor/AacUtil$Config;->b:I

    iput v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Q:I

    .line 164
    iget-object v4, v5, Landroidx/media3/extractor/AacUtil$Config;->c:Ljava/lang/String;

    .line 165
    const-string v11, "audio/mp4a-latm"

    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v16, v11

    move-object/from16 p0, v14

    :goto_22
    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v14, -0x1

    goto/16 :goto_30

    :pswitch_16
    move-object/from16 v28, v12

    .line 166
    const-string v11, "audio/vnd.dts.hd"

    goto/16 :goto_18

    :pswitch_17
    move-object/from16 v28, v12

    .line 167
    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move/from16 v18, v6

    move-object/from16 v16, v9

    goto/16 :goto_16

    :pswitch_18
    move-object/from16 v28, v12

    .line 168
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-static {v3}, Landroidx/media3/extractor/AvcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v3

    .line 169
    iget-object v4, v3, Landroidx/media3/extractor/AvcConfig;->a:Ljava/util/ArrayList;

    .line 170
    iget v5, v3, Landroidx/media3/extractor/AvcConfig;->b:I

    iput v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f0:I

    .line 171
    iget-object v5, v3, Landroidx/media3/extractor/AvcConfig;->l:Ljava/lang/String;

    .line 172
    iget v11, v3, Landroidx/media3/extractor/AvcConfig;->g:I

    .line 173
    iget v12, v3, Landroidx/media3/extractor/AvcConfig;->i:I

    move-object/from16 v16, v4

    .line 174
    iget v4, v3, Landroidx/media3/extractor/AvcConfig;->h:I

    move/from16 v17, v4

    .line 175
    iget v4, v3, Landroidx/media3/extractor/AvcConfig;->e:I

    .line 176
    iget v3, v3, Landroidx/media3/extractor/AvcConfig;->f:I

    .line 177
    const-string v18, "video/avc"

    goto/16 :goto_1d

    :pswitch_19
    move-object/from16 v28, v12

    const/4 v4, 0x4

    .line 178
    new-array v5, v4, [B

    .line 179
    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v11, 0x0

    invoke-static {v3, v11, v5, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move/from16 v18, v6

    move-object/from16 v16, v8

    goto/16 :goto_16

    :pswitch_1a
    move-object/from16 v28, v12

    .line 181
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    .line 182
    invoke-virtual {v1, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/16 v5, 0x10

    .line 183
    :try_start_0
    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 184
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->q()J

    move-result-wide v18

    const-wide/32 v29, 0x58564944

    cmp-long v5, v18, v29

    if-nez v5, :cond_71

    .line 185
    new-instance v3, Landroid/util/Pair;

    const-string v4, "video/divx"
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    :try_start_1
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_23
    const/4 v5, 0x0

    goto :goto_25

    :catch_0
    const/4 v5, 0x0

    goto/16 :goto_26

    :cond_71
    const-wide/32 v29, 0x33363248

    cmp-long v5, v18, v29

    if-nez v5, :cond_72

    .line 186
    :try_start_2
    new-instance v3, Landroid/util/Pair;

    const-string v4, "video/3gpp"
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v5, 0x0

    :try_start_3
    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_23

    :cond_72
    const-wide/32 v29, 0x31435657

    cmp-long v5, v18, v29

    if-nez v5, :cond_76

    .line 187
    :try_start_4
    iget v4, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    add-int/lit8 v4, v4, 0x14

    .line 188
    iget-object v3, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 189
    :goto_24
    array-length v5, v3

    const/16 v20, 0x4

    add-int/lit8 v5, v5, -0x4

    if-ge v4, v5, :cond_75

    .line 190
    aget-byte v5, v3, v4

    if-nez v5, :cond_73

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v3, v5

    if-nez v5, :cond_73

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v3, v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_73

    add-int/lit8 v5, v4, 0x3

    aget-byte v5, v3, v5

    const/16 v11, 0xf

    if-ne v5, v11, :cond_74

    .line 191
    array-length v5, v3

    invoke-static {v3, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 192
    new-instance v4, Landroid/util/Pair;

    const-string v5, "video/wvc1"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_23

    :cond_73
    const/16 v11, 0xf

    :cond_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 193
    :cond_75
    const-string v0, "Failed to find FourCC VC1 initialization data"
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v5, 0x0

    :try_start_5
    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 194
    :cond_76
    const-string v3, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v3, Landroid/util/Pair;

    const/4 v5, 0x0

    invoke-direct {v3, v11, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    :goto_25
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 197
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v26, v3

    check-cast v26, Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v16, v11

    move-object/from16 p0, v14

    move-object/from16 v19, v26

    goto/16 :goto_22

    .line 198
    :catch_1
    :goto_26
    const-string v0, "Error parsing FourCC private data"

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1b
    move-object/from16 v28, v12

    .line 199
    const-string v11, "audio/mpeg"

    :goto_27
    move-object/from16 v21, v0

    move/from16 v18, v6

    move-object/from16 v16, v11

    move-object/from16 p0, v14

    const/4 v3, -0x1

    const/16 v4, 0x1000

    goto/16 :goto_1b

    :pswitch_1c
    move-object/from16 v28, v12

    .line 200
    const-string v11, "audio/mpeg-L2"

    goto :goto_27

    :pswitch_1d
    move-object/from16 v28, v12

    .line 201
    invoke-virtual {v1, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 202
    const-string v4, "Error parsing vorbis codec private"

    const/16 v32, 0x0

    :try_start_7
    aget-byte v5, v3, v32

    const/4 v11, 0x2

    if-ne v5, v11, :cond_7c

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 203
    :goto_28
    aget-byte v12, v3, v5

    move/from16 p0, v5

    const/16 v5, 0xff

    and-int/2addr v12, v5

    if-ne v12, v5, :cond_77

    add-int/lit16 v11, v11, 0xff

    add-int/lit8 v5, p0, 0x1

    goto :goto_28

    :cond_77
    const/16 v31, 0x1

    add-int/lit8 v16, p0, 0x1

    add-int/2addr v11, v12

    move/from16 v18, v6

    const/4 v12, 0x0

    .line 204
    :goto_29
    aget-byte v6, v3, v16

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_78

    add-int/lit16 v12, v12, 0xff

    add-int/lit8 v16, v16, 0x1

    goto :goto_29

    :cond_78
    const/16 v31, 0x1

    add-int/lit8 v5, v16, 0x1

    add-int/2addr v12, v6

    .line 205
    aget-byte v6, v3, v5

    move/from16 p0, v12

    move/from16 v12, v31

    if-ne v6, v12, :cond_7b

    .line 206
    new-array v6, v11, [B

    const/4 v12, 0x0

    .line 207
    invoke-static {v3, v5, v6, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v11

    .line 208
    aget-byte v11, v3, v5

    const/4 v12, 0x3

    if-ne v11, v12, :cond_7a

    add-int v5, v5, p0

    .line 209
    aget-byte v11, v3, v5

    const/4 v12, 0x5

    if-ne v11, v12, :cond_79

    .line 210
    array-length v11, v3

    sub-int/2addr v11, v5

    new-array v11, v11, [B

    .line 211
    array-length v12, v3

    sub-int/2addr v12, v5

    move-object/from16 p0, v14

    const/4 v14, 0x0

    invoke-static {v3, v5, v11, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    new-instance v3, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2

    .line 215
    const-string v11, "audio/vorbis"

    const/16 v4, 0x2000

    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move-object/from16 v16, v11

    goto/16 :goto_12

    :catch_2
    const/4 v5, 0x0

    goto :goto_2a

    :cond_79
    const/4 v5, 0x0

    .line 216
    :try_start_8
    invoke-static {v5, v4}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_7a
    const/4 v5, 0x0

    .line 217
    invoke-static {v5, v4}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_7b
    const/4 v5, 0x0

    .line 218
    invoke-static {v5, v4}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_7c
    const/4 v5, 0x0

    .line 219
    invoke-static {v5, v4}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3

    .line 220
    :catch_3
    :goto_2a
    invoke-static {v5, v4}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_1e
    move/from16 v18, v6

    move-object/from16 v28, v12

    move-object/from16 p0, v14

    .line 221
    new-instance v3, Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-direct {v3}, Landroidx/media3/extractor/TrueHdSampleRechunker;-><init>()V

    iput-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 222
    const-string v11, "audio/true-hd"

    move-object/from16 v21, v0

    move-object/from16 v16, v11

    goto/16 :goto_1a

    :pswitch_1f
    move/from16 v18, v6

    move-object/from16 v28, v12

    move-object/from16 p0, v14

    .line 223
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 224
    :try_start_9
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->s()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_7d

    goto :goto_2d

    :cond_7d
    const v11, 0xfffe

    if-ne v6, v11, :cond_83

    move/from16 v6, v17

    .line 225
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 226
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->r()I

    move-result v6

    .line 227
    iget v11, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Q:I

    shr-int/lit8 v12, v6, 0x12

    if-nez v12, :cond_7f

    if-eqz v6, :cond_7e

    .line 228
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v12

    if-ne v12, v11, :cond_7f

    :cond_7e
    const/4 v11, 0x1

    goto :goto_2b

    :cond_7f
    const/4 v11, 0x0

    :goto_2b
    if-eqz v11, :cond_81

    if-nez v6, :cond_80

    const/4 v6, -0x1

    goto :goto_2c

    :cond_80
    const/16 v25, 0x2

    shl-int/lit8 v6, v6, 0x2

    .line 229
    :goto_2c
    iput v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->S:I

    .line 230
    :cond_81
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    move-result-wide v11

    .line 231
    sget-object v6, Landroidx/media3/extractor/mkv/MatroskaExtractor;->u0:Ljava/util/UUID;

    .line 232
    invoke-virtual {v6}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v16

    cmp-long v11, v11, v16

    if-nez v11, :cond_83

    .line 233
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->t()J

    move-result-wide v11

    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v16
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_4

    cmp-long v3, v11, v16

    if-nez v3, :cond_83

    .line 234
    :goto_2d
    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    sget-object v6, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 235
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v3, v6}, Landroidx/media3/common/util/Util;->t(ILjava/nio/ByteOrder;)I

    move-result v3

    if-nez v3, :cond_82

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Unsupported PCM bit depth: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->R:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    move-object/from16 v21, v0

    goto/16 :goto_1f

    :cond_82
    move-object/from16 v21, v0

    move v5, v3

    goto/16 :goto_20

    .line 237
    :cond_83
    const-string v3, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 238
    :catch_4
    const-string v0, "Error parsing MS/ACM codec private"

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_20
    move/from16 v18, v6

    move-object/from16 v28, v12

    move-object/from16 p0, v14

    .line 239
    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->m:[B

    if-nez v3, :cond_84

    const/4 v3, 0x0

    goto :goto_2f

    :cond_84
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 240
    :goto_2f
    const-string v11, "video/mp4v-es"

    move-object/from16 v21, v0

    move-object/from16 v19, v3

    move-object/from16 v16, v11

    goto/16 :goto_17

    .line 241
    :goto_30
    iget-object v0, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->P:[B

    if-eqz v0, :cond_85

    .line 242
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    move/from16 v20, v4

    iget-object v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->P:[B

    invoke-direct {v0, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 243
    invoke-static {v0}, Landroidx/media3/container/DolbyVisionConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/DolbyVisionConfig;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 244
    iget-object v0, v0, Landroidx/media3/container/DolbyVisionConfig;->a:Ljava/lang/String;

    .line 245
    const-string v4, "video/dolby-vision"

    move-object/from16 v16, v0

    goto :goto_31

    :cond_85
    move/from16 v20, v4

    :cond_86
    move-object/from16 v4, v16

    move-object/from16 v16, v17

    .line 246
    :goto_31
    iget-boolean v0, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Z

    move/from16 v17, v0

    .line 247
    iget-boolean v0, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Z

    if-eqz v0, :cond_87

    const/16 v25, 0x2

    goto :goto_32

    :cond_87
    const/16 v25, 0x0

    :goto_32
    or-int v0, v17, v25

    move/from16 v17, v0

    .line 248
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 249
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->h(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_88

    .line 250
    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->Q:I

    .line 251
    iput v3, v0, Landroidx/media3/common/Format$Builder;->I:I

    .line 252
    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->S:I

    .line 253
    iput v3, v0, Landroidx/media3/common/Format$Builder;->J:I

    .line 254
    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->T:I

    .line 255
    iput v3, v0, Landroidx/media3/common/Format$Builder;->K:I

    .line 256
    iput v5, v0, Landroidx/media3/common/Format$Builder;->L:I

    goto/16 :goto_3f

    .line 257
    :cond_88
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 258
    iget v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->t:I

    if-nez v5, :cond_8b

    .line 259
    iget v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->r:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_89

    iget v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o:I

    :cond_89
    iput v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->r:I

    .line 260
    iget v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->s:I

    if-ne v5, v7, :cond_8a

    iget v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->p:I

    :cond_8a
    iput v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->s:I

    goto :goto_33

    :cond_8b
    const/4 v7, -0x1

    .line 261
    :goto_33
    iget v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->r:I

    const/high16 v8, -0x40800000    # -1.0f

    if-eq v5, v7, :cond_8c

    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->s:I

    if-eq v9, v7, :cond_8c

    .line 262
    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->p:I

    mul-int/2addr v7, v5

    int-to-float v5, v7

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o:I

    mul-int/2addr v7, v9

    int-to-float v7, v7

    div-float/2addr v5, v7

    :goto_34
    const/4 v7, -0x1

    goto :goto_35

    :cond_8c
    move v5, v8

    goto :goto_34

    :goto_35
    if-ne v6, v7, :cond_8e

    if-eq v12, v7, :cond_8d

    goto :goto_36

    :cond_8d
    if-eq v14, v7, :cond_8f

    .line 263
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->C:I

    if-ne v6, v7, :cond_8f

    .line 264
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->A:I

    .line 265
    iget v12, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->B:I

    :cond_8e
    :goto_36
    const/4 v7, -0x1

    goto :goto_37

    .line 266
    :cond_8f
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->A:I

    .line 267
    iget v12, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->B:I

    .line 268
    iget v14, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->C:I

    goto :goto_36

    :goto_37
    if-eq v3, v7, :cond_90

    goto :goto_38

    .line 269
    :cond_90
    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->q:I

    if-eq v3, v7, :cond_91

    goto :goto_38

    :cond_91
    move/from16 v3, v22

    :goto_38
    if-eq v11, v7, :cond_92

    move v9, v11

    goto :goto_39

    .line 270
    :cond_92
    iget v9, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->q:I

    if-eq v9, v7, :cond_93

    goto :goto_39

    :cond_93
    move/from16 v9, v22

    .line 271
    :goto_39
    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->F:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_95

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->G:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_95

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->H:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_95

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->I:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_95

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->J:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_95

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->K:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_95

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->L:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_95

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->M:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_95

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->N:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_95

    iget v7, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->O:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_94

    goto/16 :goto_3a

    :cond_94
    const/16 v7, 0x19

    .line 272
    new-array v7, v7, [B

    .line 273
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v11, 0x0

    .line 274
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 275
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->F:F

    const v11, 0x47435000    # 50000.0f

    mul-float/2addr v10, v11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v10, v13

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 276
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->G:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 277
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->H:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 278
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->I:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 279
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->J:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 280
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->K:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 281
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->L:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 282
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->M:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v13

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 283
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->N:F

    add-float/2addr v10, v13

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 284
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->O:F

    add-float/2addr v10, v13

    float-to-int v10, v10

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 285
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->D:I

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 286
    iget v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->E:I

    int-to-short v10, v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_3b

    :cond_95
    :goto_3a
    const/4 v7, 0x0

    .line 287
    :goto_3b
    new-instance v8, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v8}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 288
    iput v6, v8, Landroidx/media3/common/ColorInfo$Builder;->a:I

    .line 289
    iput v14, v8, Landroidx/media3/common/ColorInfo$Builder;->b:I

    .line 290
    iput v12, v8, Landroidx/media3/common/ColorInfo$Builder;->c:I

    .line 291
    iput-object v7, v8, Landroidx/media3/common/ColorInfo$Builder;->d:[B

    .line 292
    iput v3, v8, Landroidx/media3/common/ColorInfo$Builder;->e:I

    .line 293
    iput v9, v8, Landroidx/media3/common/ColorInfo$Builder;->f:I

    .line 294
    invoke-virtual {v8}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v3

    .line 295
    iget-object v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b:Ljava/lang/String;

    if-eqz v6, :cond_96

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 296
    iget-object v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_3c

    :cond_96
    const/4 v7, -0x1

    .line 297
    :goto_3c
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->u:I

    if-nez v6, :cond_9b

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->v:F

    const/4 v8, 0x0

    .line 298
    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_9b

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->w:F

    .line 299
    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_9b

    .line 300
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->x:F

    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_97

    const/4 v8, 0x0

    goto :goto_3e

    .line 301
    :cond_97
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->x:F

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_98

    const/16 v8, 0x5a

    goto :goto_3e

    .line 302
    :cond_98
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->x:F

    const/high16 v8, -0x3ccc0000    # -180.0f

    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_9a

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->x:F

    const/high16 v8, 0x43340000    # 180.0f

    .line 303
    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_99

    goto :goto_3d

    .line 304
    :cond_99
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->x:F

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-static {v6, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_9b

    const/16 v8, 0x10e

    goto :goto_3e

    :cond_9a
    :goto_3d
    const/16 v8, 0xb4

    goto :goto_3e

    :cond_9b
    move v8, v7

    .line 305
    :goto_3e
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->o:I

    .line 306
    iput v6, v0, Landroidx/media3/common/Format$Builder;->v:I

    .line 307
    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->p:I

    .line 308
    iput v6, v0, Landroidx/media3/common/Format$Builder;->w:I

    .line 309
    iput v5, v0, Landroidx/media3/common/Format$Builder;->D:F

    .line 310
    iput v8, v0, Landroidx/media3/common/Format$Builder;->B:I

    .line 311
    iget-object v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->y:[B

    .line 312
    iput-object v5, v0, Landroidx/media3/common/Format$Builder;->E:[B

    .line 313
    iget v5, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->z:I

    .line 314
    iput v5, v0, Landroidx/media3/common/Format$Builder;->F:I

    .line 315
    iput-object v3, v0, Landroidx/media3/common/Format$Builder;->G:Landroidx/media3/common/ColorInfo;

    goto :goto_3f

    .line 316
    :cond_9c
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 317
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 318
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 319
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 320
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 321
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    goto :goto_3f

    .line 322
    :cond_9d
    const-string v0, "Unexpected MIME type."

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 323
    :cond_9e
    :goto_3f
    iget-object v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b:Ljava/lang/String;

    if-eqz v3, :cond_9f

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 324
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b:Ljava/lang/String;

    .line 325
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    .line 326
    :cond_9f
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 327
    iget-boolean v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a:Z

    if-eqz v2, :cond_a0

    move-object/from16 v14, p0

    goto :goto_40

    :cond_a0
    const-string v14, "video/x-matroska"

    .line 328
    :goto_40
    invoke-static {v14}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 329
    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    move/from16 v4, v20

    .line 330
    iput v4, v0, Landroidx/media3/common/Format$Builder;->p:I

    .line 331
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c0:Ljava/lang/String;

    .line 332
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    move/from16 v2, v17

    .line 333
    iput v2, v0, Landroidx/media3/common/Format$Builder;->e:I

    move-object/from16 v3, v19

    .line 334
    iput-object v3, v0, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    move-object/from16 v2, v16

    .line 335
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->k:Ljava/lang/String;

    .line 336
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->n:Landroidx/media3/common/DrmInitData;

    .line 337
    iput-object v2, v0, Landroidx/media3/common/Format$Builder;->s:Landroidx/media3/common/DrmInitData;

    .line 338
    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 339
    iput-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->e0:Landroidx/media3/common/Format;

    move-object/from16 v0, v21

    .line 340
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p0:Landroidx/media3/extractor/ExtractorOutput;

    iget v3, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    iget v4, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->f:I

    invoke-interface {v2, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 341
    iget v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d:I

    move-object/from16 v3, v28

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_f

    .line 342
    :goto_41
    iput-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    :goto_42
    const/16 v31, 0x1

    return v31

    .line 343
    :cond_a1
    const-string v0, "CodecId is missing in TrackEntry element"

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_a2
    move-object v3, v12

    .line 344
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    const/4 v5, 0x2

    if-eq v1, v5, :cond_a3

    const/4 v3, 0x1

    goto/16 :goto_45

    .line 345
    :cond_a3
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    .line 346
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->d0:Landroidx/media3/extractor/TrackOutput;

    .line 347
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 348
    iget-wide v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f0:J

    cmp-long v2, v2, v16

    if-lez v2, :cond_a4

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 349
    iget-object v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Landroidx/media3/common/util/ParsableByteArray;

    .line 350
    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 351
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f0:J

    .line 352
    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 353
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 354
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 355
    array-length v4, v3

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    :cond_a4
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 356
    :goto_43
    iget v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    if-ge v2, v4, :cond_a5

    .line 357
    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_a5
    const/4 v2, 0x0

    .line 358
    :goto_44
    iget v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Y:I

    if-ge v2, v4, :cond_a7

    .line 359
    iget-wide v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->V:J

    iget v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g:I

    mul-int/2addr v6, v2

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long v26, v4, v6

    .line 360
    iget v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    if-nez v2, :cond_a6

    .line 361
    iget-boolean v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e0:Z

    if-nez v5, :cond_a6

    or-int/lit8 v4, v4, 0x1

    :cond_a6
    move/from16 v28, v4

    .line 362
    iget-object v4, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Z:[I

    aget v29, v4, v2

    sub-int v30, v3, v29

    move-object/from16 v24, v0

    move-object/from16 v25, v1

    .line 363
    invoke-virtual/range {v24 .. v30}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v30

    goto :goto_44

    :cond_a7
    const/4 v11, 0x0

    .line 364
    iput v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->U:I

    const/4 v3, 0x1

    return v3

    :cond_a8
    move v3, v9

    .line 365
    iget-object v0, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;

    .line 366
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 367
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->f:Ljava/lang/String;

    if-nez v1, :cond_a9

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->h:Ljava/lang/String;

    if-eqz v1, :cond_a9

    .line 368
    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->f:Ljava/lang/String;

    .line 369
    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->i:Ljava/lang/String;

    if-eqz v1, :cond_a9

    .line 370
    iput-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$ChapterEntry;->g:Ljava/lang/String;

    :cond_a9
    :goto_45
    return v3

    :cond_aa
    :goto_46
    move v3, v9

    goto :goto_47

    :cond_ab
    const/16 v22, 0x8

    goto :goto_46

    .line 371
    :goto_47
    iget v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    iget-object v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->c:Landroidx/media3/extractor/mkv/VarintReader;

    if-nez v4, :cond_b2

    const/4 v4, 0x4

    const/4 v14, 0x0

    .line 372
    invoke-virtual {v5, v1, v3, v14, v4}, Landroidx/media3/extractor/mkv/VarintReader;->b(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v7

    const-wide/16 v12, -0x2

    cmp-long v3, v7, v12

    if-nez v3, :cond_b0

    .line 373
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 374
    :goto_48
    iget-object v3, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->a:[B

    invoke-interface {v1, v3, v14, v4}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 375
    aget-byte v4, v3, v14

    move/from16 v8, v22

    const/4 v7, 0x0

    :goto_49
    if-ge v7, v8, :cond_ad

    .line 376
    sget-object v8, Landroidx/media3/extractor/mkv/VarintReader;->d:[J

    aget-wide v8, v8, v7

    int-to-long v12, v4

    and-long/2addr v8, v12

    cmp-long v8, v8, v16

    if-eqz v8, :cond_ac

    add-int/lit8 v7, v7, 0x1

    :goto_4a
    const/4 v4, -0x1

    goto :goto_4b

    :cond_ac
    add-int/lit8 v7, v7, 0x1

    const/16 v8, 0x8

    goto :goto_49

    :cond_ad
    const/4 v7, -0x1

    goto :goto_4a

    :goto_4b
    if-eq v7, v4, :cond_ae

    const/4 v8, 0x4

    if-gt v7, v8, :cond_ae

    const/4 v14, 0x0

    .line 377
    invoke-static {v3, v7, v14}, Landroidx/media3/extractor/mkv/VarintReader;->a([BIZ)J

    move-result-wide v8

    long-to-int v3, v8

    .line 378
    iget-object v8, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    check-cast v8, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 379
    iget-object v8, v8, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    if-eq v3, v6, :cond_af

    const v8, 0x1043a770

    if-eq v3, v8, :cond_af

    const v8, 0x1f43b675

    if-eq v3, v8, :cond_af

    if-eq v3, v11, :cond_af

    if-ne v3, v10, :cond_ae

    goto :goto_4c

    :cond_ae
    const/4 v3, 0x1

    goto :goto_4d

    .line 380
    :cond_af
    :goto_4c
    invoke-interface {v1, v7}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    int-to-long v7, v3

    :cond_b0
    const/4 v3, 0x1

    goto :goto_4e

    .line 381
    :goto_4d
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    const/4 v4, 0x4

    const/4 v14, 0x0

    const/16 v22, 0x8

    goto :goto_48

    :goto_4e
    cmp-long v4, v7, v18

    if-nez v4, :cond_b1

    const/4 v14, 0x0

    return v14

    :cond_b1
    const/4 v14, 0x0

    long-to-int v4, v7

    .line 382
    iput v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    .line 383
    iput v3, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto :goto_4f

    :cond_b2
    const/4 v14, 0x0

    .line 384
    :goto_4f
    iget v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    if-ne v4, v3, :cond_b3

    const/16 v8, 0x8

    .line 385
    invoke-virtual {v5, v1, v14, v3, v8}, Landroidx/media3/extractor/mkv/VarintReader;->b(Landroidx/media3/extractor/ExtractorInput;ZZI)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    const/4 v5, 0x2

    .line 386
    iput v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    .line 387
    :cond_b3
    iget-object v3, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v4, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    move-object v5, v3

    check-cast v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 388
    iget-object v5, v5, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    sparse-switch v4, :sswitch_data_2

    const/4 v5, 0x0

    goto :goto_50

    :sswitch_46
    const/4 v5, 0x5

    goto :goto_50

    :sswitch_47
    const/4 v5, 0x4

    goto :goto_50

    :sswitch_48
    const/4 v5, 0x3

    goto :goto_50

    :sswitch_49
    const/4 v5, 0x2

    goto :goto_50

    :sswitch_4a
    const/4 v5, 0x1

    :goto_50
    if-eqz v5, :cond_c2

    const/4 v11, 0x1

    if-eq v5, v11, :cond_c1

    const-wide/16 v6, 0x8

    const/4 v11, 0x2

    if-eq v5, v11, :cond_bf

    const/4 v12, 0x3

    if-eq v5, v12, :cond_bb

    const/4 v8, 0x4

    if-eq v5, v8, :cond_ba

    const/4 v12, 0x5

    if-ne v5, v12, :cond_b9

    .line 389
    iget-wide v8, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    const-wide/16 v10, 0x4

    cmp-long v2, v8, v10

    if-eqz v2, :cond_b5

    cmp-long v2, v8, v6

    if-nez v2, :cond_b4

    goto :goto_51

    .line 390
    :cond_b4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid float size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_b5
    :goto_51
    long-to-int v2, v8

    .line 391
    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->b(Landroidx/media3/extractor/ExtractorInput;I)J

    move-result-wide v5

    const/4 v8, 0x4

    if-ne v2, v8, :cond_b6

    long-to-int v1, v5

    .line 392
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    float-to-double v1, v1

    goto :goto_52

    .line 393
    :cond_b6
    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 394
    :goto_52
    check-cast v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    .line 395
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a:Landroidx/media3/extractor/mkv/MatroskaExtractor;

    const/16 v5, 0xb5

    if-eq v4, v5, :cond_b8

    const/16 v5, 0x4489

    if-eq v4, v5, :cond_b7

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    :goto_53
    const/4 v14, 0x0

    goto/16 :goto_54

    .line 396
    :pswitch_21
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 397
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 398
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->x:F

    goto :goto_53

    .line 399
    :pswitch_22
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 400
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 401
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->w:F

    goto :goto_53

    .line 402
    :pswitch_23
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 403
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 404
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->v:F

    goto :goto_53

    .line 405
    :pswitch_24
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 406
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 407
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->O:F

    goto :goto_53

    .line 408
    :pswitch_25
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 409
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 410
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->N:F

    goto :goto_53

    .line 411
    :pswitch_26
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 412
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 413
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->M:F

    goto :goto_53

    .line 414
    :pswitch_27
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 415
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 416
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->L:F

    goto :goto_53

    .line 417
    :pswitch_28
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 418
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 419
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->K:F

    goto :goto_53

    .line 420
    :pswitch_29
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 421
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 422
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->J:F

    goto :goto_53

    .line 423
    :pswitch_2a
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 424
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 425
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->I:F

    goto :goto_53

    .line 426
    :pswitch_2b
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 427
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 428
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->H:F

    goto :goto_53

    .line 429
    :pswitch_2c
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 430
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 431
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->G:F

    goto :goto_53

    .line 432
    :pswitch_2d
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 433
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-float v1, v1

    .line 434
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->F:F

    goto :goto_53

    :cond_b7
    double-to-long v1, v1

    .line 435
    iput-wide v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v:J

    goto :goto_53

    .line 436
    :cond_b8
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h(I)V

    .line 437
    iget-object v3, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor;->A:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    double-to-int v1, v1

    .line 438
    iput v1, v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->T:I

    goto/16 :goto_53

    .line 439
    :goto_54
    iput v14, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_42

    .line 440
    :cond_b9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid element type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 441
    :cond_ba
    iget-wide v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    long-to-int v2, v5

    check-cast v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-virtual {v3, v4, v2, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->a(IILandroidx/media3/extractor/ExtractorInput;)V

    const/4 v14, 0x0

    .line 442
    iput v14, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_42

    :cond_bb
    const/4 v14, 0x0

    .line 443
    iget-wide v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v2, v5, v7

    if-gtz v2, :cond_be

    long-to-int v2, v5

    if-nez v2, :cond_bc

    .line 444
    const-string v1, ""

    goto :goto_56

    .line 445
    :cond_bc
    new-array v5, v2, [B

    .line 446
    invoke-interface {v1, v5, v14, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    :goto_55
    if-lez v2, :cond_bd

    add-int/lit8 v1, v2, -0x1

    .line 447
    aget-byte v1, v5, v1

    if-nez v1, :cond_bd

    add-int/lit8 v2, v2, -0x1

    goto :goto_55

    .line 448
    :cond_bd
    new-instance v1, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v1, v5, v14, v2}, Ljava/lang/String;-><init>([BII)V

    .line 449
    :goto_56
    check-cast v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-virtual {v3, v4, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->d(ILjava/lang/String;)V

    .line 450
    iput v14, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_42

    .line 451
    :cond_be
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String element size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 452
    :cond_bf
    iget-wide v8, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    cmp-long v2, v8, v6

    if-gtz v2, :cond_c0

    long-to-int v2, v8

    .line 453
    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->b(Landroidx/media3/extractor/ExtractorInput;I)J

    move-result-wide v1

    check-cast v3, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-virtual {v3, v4, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->b(IJ)V

    const/4 v14, 0x0

    .line 454
    iput v14, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_42

    .line 455
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid integer size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v5, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    .line 456
    :cond_c1
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    .line 457
    iget-wide v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    add-long/2addr v5, v3

    .line 458
    new-instance v1, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;

    iget v7, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    invoke-direct {v1, v7, v5, v6}, Landroidx/media3/extractor/mkv/DefaultEbmlReader$MasterElement;-><init>(IJ)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 459
    iget-object v1, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iget v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->f:I

    iget-wide v5, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    check-cast v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;->c(IJJ)V

    const/4 v14, 0x0

    .line 460
    iput v14, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_42

    :cond_c2
    const/4 v14, 0x0

    .line 461
    iget-wide v2, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->g:J

    long-to-int v2, v2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 462
    iput v14, v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_22
        -0x7ce7f3b0 -> :sswitch_21
        -0x76567dc0 -> :sswitch_20
        -0x6a615338 -> :sswitch_1f
        -0x672350af -> :sswitch_1e
        -0x585f4fce -> :sswitch_1d
        -0x585f4fcd -> :sswitch_1c
        -0x51dc40b2 -> :sswitch_1b
        -0x37a9c464 -> :sswitch_1a
        -0x2016c535 -> :sswitch_19
        -0x2016c4e5 -> :sswitch_18
        -0x19552dbd -> :sswitch_17
        -0x1538b2ba -> :sswitch_16
        0x3c02325 -> :sswitch_15
        0x3c02353 -> :sswitch_14
        0x3c030c5 -> :sswitch_13
        0x4e81333 -> :sswitch_12
        0x4e86155 -> :sswitch_11
        0x4e86156 -> :sswitch_10
        0x5e8da3e -> :sswitch_f
        0x1a8350d6 -> :sswitch_e
        0x2056f406 -> :sswitch_d
        0x25e26ee2 -> :sswitch_c
        0x2b45174d -> :sswitch_b
        0x2b453ce4 -> :sswitch_a
        0x2c0618eb -> :sswitch_9
        0x2c065c6b -> :sswitch_8
        0x32fdf009 -> :sswitch_7
        0x3e4ca2d8 -> :sswitch_6
        0x54c61e47 -> :sswitch_5
        0x6bd6c624 -> :sswitch_4
        0x74446acb -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_45
        -0x7ce7f3b0 -> :sswitch_44
        -0x76567dc0 -> :sswitch_43
        -0x6a615338 -> :sswitch_42
        -0x672350af -> :sswitch_41
        -0x585f4fce -> :sswitch_40
        -0x585f4fcd -> :sswitch_3f
        -0x51dc40b2 -> :sswitch_3e
        -0x37a9c464 -> :sswitch_3d
        -0x2016c535 -> :sswitch_3c
        -0x2016c4e5 -> :sswitch_3b
        -0x19552dbd -> :sswitch_3a
        -0x1538b2ba -> :sswitch_39
        0x3c02325 -> :sswitch_38
        0x3c02353 -> :sswitch_37
        0x3c030c5 -> :sswitch_36
        0x4e81333 -> :sswitch_35
        0x4e86155 -> :sswitch_34
        0x4e86156 -> :sswitch_33
        0x5e8da3e -> :sswitch_32
        0x1a8350d6 -> :sswitch_31
        0x2056f406 -> :sswitch_30
        0x25e26ee2 -> :sswitch_2f
        0x2b45174d -> :sswitch_2e
        0x2b453ce4 -> :sswitch_2d
        0x2c0618eb -> :sswitch_2c
        0x2c065c6b -> :sswitch_2b
        0x32fdf009 -> :sswitch_2a
        0x3e4ca2d8 -> :sswitch_29
        0x54c61e47 -> :sswitch_28
        0x6bd6c624 -> :sswitch_27
        0x74446acb -> :sswitch_26
        0x7446132a -> :sswitch_25
        0x7446b0a6 -> :sswitch_24
        0x744ad97d -> :sswitch_23
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_20
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_20
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x80 -> :sswitch_4a
        0x83 -> :sswitch_49
        0x85 -> :sswitch_48
        0x86 -> :sswitch_48
        0x88 -> :sswitch_49
        0x89 -> :sswitch_49
        0x8f -> :sswitch_4a
        0x91 -> :sswitch_49
        0x92 -> :sswitch_49
        0x98 -> :sswitch_49
        0x9b -> :sswitch_49
        0x9f -> :sswitch_49
        0xa0 -> :sswitch_4a
        0xa1 -> :sswitch_47
        0xa3 -> :sswitch_47
        0xa5 -> :sswitch_47
        0xa6 -> :sswitch_4a
        0xae -> :sswitch_4a
        0xb0 -> :sswitch_49
        0xb3 -> :sswitch_49
        0xb5 -> :sswitch_46
        0xb6 -> :sswitch_4a
        0xb7 -> :sswitch_4a
        0xba -> :sswitch_49
        0xbb -> :sswitch_4a
        0xd7 -> :sswitch_49
        0xe0 -> :sswitch_4a
        0xe1 -> :sswitch_4a
        0xe7 -> :sswitch_49
        0xee -> :sswitch_49
        0xf0 -> :sswitch_49
        0xf1 -> :sswitch_49
        0xf7 -> :sswitch_49
        0xfb -> :sswitch_49
        0x41e4 -> :sswitch_4a
        0x41e7 -> :sswitch_49
        0x41ed -> :sswitch_47
        0x4254 -> :sswitch_49
        0x4255 -> :sswitch_47
        0x4282 -> :sswitch_48
        0x4285 -> :sswitch_49
        0x42f7 -> :sswitch_49
        0x437c -> :sswitch_48
        0x4489 -> :sswitch_46
        0x45b9 -> :sswitch_4a
        0x47e1 -> :sswitch_49
        0x47e2 -> :sswitch_47
        0x47e7 -> :sswitch_4a
        0x47e8 -> :sswitch_49
        0x4dbb -> :sswitch_4a
        0x5031 -> :sswitch_49
        0x5032 -> :sswitch_49
        0x5034 -> :sswitch_4a
        0x5035 -> :sswitch_4a
        0x536e -> :sswitch_48
        0x53ab -> :sswitch_47
        0x53ac -> :sswitch_49
        0x53b8 -> :sswitch_49
        0x54b0 -> :sswitch_49
        0x54b2 -> :sswitch_49
        0x54ba -> :sswitch_49
        0x55aa -> :sswitch_49
        0x55b0 -> :sswitch_4a
        0x55b2 -> :sswitch_49
        0x55b9 -> :sswitch_49
        0x55ba -> :sswitch_49
        0x55bb -> :sswitch_49
        0x55bc -> :sswitch_49
        0x55bd -> :sswitch_49
        0x55d0 -> :sswitch_4a
        0x55d1 -> :sswitch_46
        0x55d2 -> :sswitch_46
        0x55d3 -> :sswitch_46
        0x55d4 -> :sswitch_46
        0x55d5 -> :sswitch_46
        0x55d6 -> :sswitch_46
        0x55d7 -> :sswitch_46
        0x55d8 -> :sswitch_46
        0x55d9 -> :sswitch_46
        0x55da -> :sswitch_46
        0x55ee -> :sswitch_49
        0x56aa -> :sswitch_49
        0x56bb -> :sswitch_49
        0x6240 -> :sswitch_4a
        0x6264 -> :sswitch_49
        0x63a2 -> :sswitch_47
        0x6d80 -> :sswitch_4a
        0x73c4 -> :sswitch_49
        0x73c5 -> :sswitch_49
        0x75a1 -> :sswitch_4a
        0x75a2 -> :sswitch_49
        0x7670 -> :sswitch_4a
        0x7671 -> :sswitch_49
        0x7672 -> :sswitch_47
        0x7673 -> :sswitch_46
        0x7674 -> :sswitch_46
        0x7675 -> :sswitch_46
        0x22b59c -> :sswitch_48
        0x23e383 -> :sswitch_49
        0x2ad7b1 -> :sswitch_49
        0x1043a770 -> :sswitch_4a
        0x114d9b74 -> :sswitch_4a
        0x1549a966 -> :sswitch_4a
        0x1654ae6b -> :sswitch_4a
        0x18538067 -> :sswitch_4a
        0x1a45dfa3 -> :sswitch_4a
        0x1c53bb6b -> :sswitch_4a
        0x1f43b675 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x55d1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7673
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;I)J
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->a:[B

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, p0, v0, p2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    :goto_0
    if-ge v0, p2, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x8

    .line 12
    .line 13
    shl-long/2addr v1, p1

    .line 14
    aget-byte p1, p0, v0

    .line 15
    .line 16
    and-int/lit16 p1, p1, 0xff

    .line 17
    .line 18
    int-to-long v3, p1

    .line 19
    or-long/2addr v1, v3

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-wide v1
.end method
