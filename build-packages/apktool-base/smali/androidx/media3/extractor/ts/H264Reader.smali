.class public final Landroidx/media3/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/extractor/ts/SeiReader;

.field public final b:Z

.field public final c:Z

.field public final d:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Landroidx/media3/extractor/TrackOutput;

.field public k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/SeiReader;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader;->c:Z

    .line 9
    .line 10
    const/4 p1, 0x3

    .line 11
    new-array p1, p1, [Z

    .line 12
    .line 13
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->h:[Z

    .line 14
    .line 15
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 16
    .line 17
    const/4 p2, 0x7

    .line 18
    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->d:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 22
    .line 23
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 24
    .line 25
    const/16 p2, 0x8

    .line 26
    .line 27
    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 31
    .line 32
    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 33
    .line 34
    const/4 p2, 0x6

    .line 35
    invoke-direct {p1, p2}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 39
    .line 40
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader;->m:J

    .line 46
    .line 47
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    .line 48
    .line 49
    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->o:Landroidx/media3/common/util/ParsableByteArray;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader;->g:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->n:Z

    .line 7
    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    iput-wide v1, p0, Landroidx/media3/extractor/ts/H264Reader;->m:J

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->h:[Z

    .line 16
    .line 17
    invoke-static {v1}, Landroidx/media3/container/NalUnitUtil;->a([Z)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->d:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/media3/extractor/ts/SeiReader;->c:Landroidx/media3/container/ReorderingBufferQueue;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 43
    .line 44
    if-eqz p0, :cond_0

    .line 45
    .line 46
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->o:Z

    .line 49
    .line 50
    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 51
    .line 52
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public final b(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->j:Landroidx/media3/extractor/TrackOutput;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 9
    .line 10
    iget v1, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 11
    .line 12
    iget-object v2, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 13
    .line 14
    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->g:J

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    int-to-long v5, v5

    .line 21
    add-long/2addr v3, v5

    .line 22
    iput-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->g:J

    .line 23
    .line 24
    iget-object v3, p0, Landroidx/media3/extractor/ts/H264Reader;->j:Landroidx/media3/extractor/TrackOutput;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-interface {v3, v4, p1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->h:[Z

    .line 34
    .line 35
    invoke-static {v2, v0, v1, p1}, Landroidx/media3/container/NalUnitUtil;->b([BII[Z)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0, v2, v0, v1}, Landroidx/media3/extractor/ts/H264Reader;->h([BII)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    add-int/lit8 v3, p1, 0x3

    .line 46
    .line 47
    aget-byte v3, v2, v3

    .line 48
    .line 49
    and-int/lit8 v5, v3, 0x1f

    .line 50
    .line 51
    if-lez p1, :cond_1

    .line 52
    .line 53
    add-int/lit8 v3, p1, -0x1

    .line 54
    .line 55
    aget-byte v3, v2, v3

    .line 56
    .line 57
    if-nez v3, :cond_1

    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x1

    .line 60
    .line 61
    const/4 v3, 0x4

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 v3, 0x3

    .line 64
    :goto_1
    sub-int v4, p1, v0

    .line 65
    .line 66
    if-lez v4, :cond_2

    .line 67
    .line 68
    invoke-virtual {p0, v2, v0, p1}, Landroidx/media3/extractor/ts/H264Reader;->h([BII)V

    .line 69
    .line 70
    .line 71
    :cond_2
    sub-int v7, v1, p1

    .line 72
    .line 73
    iget-wide v8, p0, Landroidx/media3/extractor/ts/H264Reader;->g:J

    .line 74
    .line 75
    int-to-long v10, v7

    .line 76
    sub-long v9, v8, v10

    .line 77
    .line 78
    if-gez v4, :cond_3

    .line 79
    .line 80
    neg-int v0, v4

    .line 81
    :goto_2
    move v8, v0

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    const/4 v0, 0x0

    .line 84
    goto :goto_2

    .line 85
    :goto_3
    iget-wide v11, p0, Landroidx/media3/extractor/ts/H264Reader;->m:J

    .line 86
    .line 87
    move-object v6, p0

    .line 88
    invoke-virtual/range {v6 .. v12}, Landroidx/media3/extractor/ts/H264Reader;->g(IIJJ)V

    .line 89
    .line 90
    .line 91
    move-object v4, v6

    .line 92
    move-wide v6, v9

    .line 93
    iget-wide v8, v4, Landroidx/media3/extractor/ts/H264Reader;->m:J

    .line 94
    .line 95
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/extractor/ts/H264Reader;->i(IJJ)V

    .line 96
    .line 97
    .line 98
    add-int v0, p1, v3

    .line 99
    .line 100
    move-object p0, v4

    .line 101
    goto :goto_0
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->j:Landroidx/media3/extractor/TrackOutput;

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/media3/extractor/ts/SeiReader;->c:Landroidx/media3/container/ReorderingBufferQueue;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    .line 14
    .line 15
    .line 16
    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->g:J

    .line 17
    .line 18
    iget-wide v5, p0, Landroidx/media3/extractor/ts/H264Reader;->m:J

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    move-object v0, p0

    .line 22
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H264Reader;->g(IIJJ)V

    .line 23
    .line 24
    .line 25
    iget-wide v2, p0, Landroidx/media3/extractor/ts/H264Reader;->g:J

    .line 26
    .line 27
    const/16 v1, 0x9

    .line 28
    .line 29
    iget-wide v4, p0, Landroidx/media3/extractor/ts/H264Reader;->m:J

    .line 30
    .line 31
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/ts/H264Reader;->i(IJJ)V

    .line 32
    .line 33
    .line 34
    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->g:J

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iget-wide v5, p0, Landroidx/media3/extractor/ts/H264Reader;->m:J

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H264Reader;->g(IIJJ)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final e(IJ)V
    .locals 0

    .line 1
    iput-wide p2, p0, Landroidx/media3/extractor/ts/H264Reader;->m:J

    .line 2
    .line 3
    iget-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader;->n:Z

    .line 4
    .line 5
    and-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    or-int/2addr p1, p2

    .line 13
    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader;->n:Z

    .line 14
    .line 15
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->i:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    .line 12
    .line 13
    .line 14
    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->j:Landroidx/media3/extractor/TrackOutput;

    .line 22
    .line 23
    new-instance v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 24
    .line 25
    iget-boolean v2, p0, Landroidx/media3/extractor/ts/H264Reader;->b:Z

    .line 26
    .line 27
    iget-boolean v3, p0, Landroidx/media3/extractor/ts/H264Reader;->c:Z

    .line 28
    .line 29
    invoke-direct {v1, v0, v2, v3}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;ZZ)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    .line 35
    .line 36
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ts/SeiReader;->a(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final g(IIJJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/media3/extractor/ts/SeiReader;->c:Landroidx/media3/container/ReorderingBufferQueue;

    .line 8
    .line 9
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/H264Reader;->l:Z

    .line 10
    .line 11
    const/4 v4, 0x4

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 16
    .line 17
    iget-boolean v3, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    .line 18
    .line 19
    if-eqz v3, :cond_3

    .line 20
    .line 21
    :cond_0
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader;->d:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    .line 24
    .line 25
    .line 26
    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader;->e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 27
    .line 28
    invoke-virtual {v6, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    .line 29
    .line 30
    .line 31
    iget-boolean v7, v0, Landroidx/media3/extractor/ts/H264Reader;->l:Z

    .line 32
    .line 33
    iget-boolean v8, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c:Z

    .line 34
    .line 35
    const/4 v9, 0x3

    .line 36
    if-nez v7, :cond_1

    .line 37
    .line 38
    if-eqz v8, :cond_3

    .line 39
    .line 40
    iget-boolean v7, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c:Z

    .line 41
    .line 42
    if-eqz v7, :cond_3

    .line 43
    .line 44
    new-instance v7, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v8, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    .line 50
    .line 51
    iget v10, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    .line 52
    .line 53
    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    iget-object v8, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    .line 61
    .line 62
    iget v10, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    .line 63
    .line 64
    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    iget-object v8, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    .line 72
    .line 73
    iget v10, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    .line 74
    .line 75
    invoke-static {v8, v9, v10}, Landroidx/media3/container/NalUnitUtil;->k([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    iget v9, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->s:I

    .line 80
    .line 81
    iget-object v10, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    .line 82
    .line 83
    iget v11, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    .line 84
    .line 85
    new-instance v12, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 86
    .line 87
    invoke-direct {v12, v10, v4, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    invoke-virtual {v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    invoke-virtual {v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    new-instance v13, Landroidx/media3/container/NalUnitUtil$PpsData;

    .line 106
    .line 107
    invoke-direct {v13, v10, v11, v12}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    .line 108
    .line 109
    .line 110
    iget v11, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->a:I

    .line 111
    .line 112
    iget v12, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->b:I

    .line 113
    .line 114
    iget v14, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->c:I

    .line 115
    .line 116
    sget-object v15, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    .line 117
    .line 118
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v14

    .line 130
    filled-new-array {v11, v12, v14}, [Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    const-string v12, "avc1.%02X%02X%02X"

    .line 135
    .line 136
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    iget-object v12, v0, Landroidx/media3/extractor/ts/H264Reader;->j:Landroidx/media3/extractor/TrackOutput;

    .line 141
    .line 142
    new-instance v14, Landroidx/media3/common/Format$Builder;

    .line 143
    .line 144
    invoke-direct {v14}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v15, v0, Landroidx/media3/extractor/ts/H264Reader;->i:Ljava/lang/String;

    .line 148
    .line 149
    iput-object v15, v14, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 150
    .line 151
    const-string v15, "video/mp2t"

    .line 152
    .line 153
    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v15

    .line 157
    iput-object v15, v14, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 158
    .line 159
    const-string v15, "video/avc"

    .line 160
    .line 161
    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v15

    .line 165
    iput-object v15, v14, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 166
    .line 167
    iput-object v11, v14, Landroidx/media3/common/Format$Builder;->k:Ljava/lang/String;

    .line 168
    .line 169
    iget v11, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->e:I

    .line 170
    .line 171
    iput v11, v14, Landroidx/media3/common/Format$Builder;->v:I

    .line 172
    .line 173
    iget v11, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->f:I

    .line 174
    .line 175
    iput v11, v14, Landroidx/media3/common/Format$Builder;->w:I

    .line 176
    .line 177
    new-instance v11, Landroidx/media3/common/ColorInfo$Builder;

    .line 178
    .line 179
    invoke-direct {v11}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    .line 180
    .line 181
    .line 182
    iget v15, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->p:I

    .line 183
    .line 184
    iput v15, v11, Landroidx/media3/common/ColorInfo$Builder;->a:I

    .line 185
    .line 186
    iget v15, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->q:I

    .line 187
    .line 188
    iput v15, v11, Landroidx/media3/common/ColorInfo$Builder;->b:I

    .line 189
    .line 190
    iget v15, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->r:I

    .line 191
    .line 192
    iput v15, v11, Landroidx/media3/common/ColorInfo$Builder;->c:I

    .line 193
    .line 194
    iget v15, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->h:I

    .line 195
    .line 196
    add-int/lit8 v15, v15, 0x8

    .line 197
    .line 198
    iput v15, v11, Landroidx/media3/common/ColorInfo$Builder;->e:I

    .line 199
    .line 200
    iget v15, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->i:I

    .line 201
    .line 202
    add-int/lit8 v15, v15, 0x8

    .line 203
    .line 204
    iput v15, v11, Landroidx/media3/common/ColorInfo$Builder;->f:I

    .line 205
    .line 206
    invoke-virtual {v11}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    iput-object v11, v14, Landroidx/media3/common/Format$Builder;->G:Landroidx/media3/common/ColorInfo;

    .line 211
    .line 212
    iget v11, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->g:F

    .line 213
    .line 214
    iput v11, v14, Landroidx/media3/common/Format$Builder;->D:F

    .line 215
    .line 216
    iput-object v7, v14, Landroidx/media3/common/Format$Builder;->r:Ljava/util/List;

    .line 217
    .line 218
    iput v9, v14, Landroidx/media3/common/Format$Builder;->q:I

    .line 219
    .line 220
    new-instance v7, Landroidx/media3/common/Format;

    .line 221
    .line 222
    invoke-direct {v7, v14}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v12, v7}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 226
    .line 227
    .line 228
    iput-boolean v5, v0, Landroidx/media3/extractor/ts/H264Reader;->l:Z

    .line 229
    .line 230
    invoke-virtual {v2, v9}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    .line 231
    .line 232
    .line 233
    iget-object v7, v0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 234
    .line 235
    iget-object v7, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->d:Landroid/util/SparseArray;

    .line 236
    .line 237
    iget v9, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->d:I

    .line 238
    .line 239
    invoke-virtual {v7, v9, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iget-object v7, v0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 243
    .line 244
    iget-object v7, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->e:Landroid/util/SparseArray;

    .line 245
    .line 246
    invoke-virtual {v7, v10, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_1
    if-eqz v8, :cond_2

    .line 257
    .line 258
    iget-object v6, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    .line 259
    .line 260
    iget v7, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    .line 261
    .line 262
    invoke-static {v6, v9, v7}, Landroidx/media3/container/NalUnitUtil;->k([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    iget v7, v6, Landroidx/media3/container/NalUnitUtil$SpsData;->s:I

    .line 267
    .line 268
    invoke-virtual {v2, v7}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    .line 269
    .line 270
    .line 271
    iget-object v7, v0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 272
    .line 273
    iget-object v7, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->d:Landroid/util/SparseArray;

    .line 274
    .line 275
    iget v8, v6, Landroidx/media3/container/NalUnitUtil$SpsData;->d:I

    .line 276
    .line 277
    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    .line 281
    .line 282
    .line 283
    goto :goto_0

    .line 284
    :cond_2
    iget-boolean v3, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c:Z

    .line 285
    .line 286
    if-eqz v3, :cond_3

    .line 287
    .line 288
    iget-object v3, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    .line 289
    .line 290
    iget v7, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    .line 291
    .line 292
    new-instance v8, Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 293
    .line 294
    invoke-direct {v8, v3, v4, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    .line 298
    .line 299
    .line 300
    move-result v3

    .line 301
    invoke-virtual {v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    .line 302
    .line 303
    .line 304
    move-result v7

    .line 305
    invoke-virtual {v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    .line 309
    .line 310
    .line 311
    move-result v8

    .line 312
    new-instance v9, Landroidx/media3/container/NalUnitUtil$PpsData;

    .line 313
    .line 314
    invoke-direct {v9, v3, v7, v8}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    .line 315
    .line 316
    .line 317
    iget-object v7, v0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 318
    .line 319
    iget-object v7, v7, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->e:Landroid/util/SparseArray;

    .line 320
    .line 321
    invoke-virtual {v7, v3, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    .line 325
    .line 326
    .line 327
    :cond_3
    :goto_0
    iget-object v3, v0, Landroidx/media3/extractor/ts/H264Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 328
    .line 329
    invoke-virtual {v3, v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-eqz v1, :cond_4

    .line 334
    .line 335
    iget-object v1, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    .line 336
    .line 337
    iget v6, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    .line 338
    .line 339
    invoke-static {v6, v1}, Landroidx/media3/container/NalUnitUtil;->m(I[B)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    iget-object v3, v3, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    .line 344
    .line 345
    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader;->o:Landroidx/media3/common/util/ParsableByteArray;

    .line 346
    .line 347
    invoke-virtual {v6, v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 351
    .line 352
    .line 353
    move-wide/from16 v3, p5

    .line 354
    .line 355
    invoke-virtual {v2, v3, v4, v6}, Landroidx/media3/container/ReorderingBufferQueue;->a(JLandroidx/media3/common/util/ParsableByteArray;)V

    .line 356
    .line 357
    .line 358
    :cond_4
    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 359
    .line 360
    iget-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader;->l:Z

    .line 361
    .line 362
    iget v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->i:I

    .line 363
    .line 364
    const/16 v4, 0x9

    .line 365
    .line 366
    const/4 v6, 0x0

    .line 367
    if-eq v3, v4, :cond_b

    .line 368
    .line 369
    iget-boolean v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    .line 370
    .line 371
    if-eqz v3, :cond_e

    .line 372
    .line 373
    iget-object v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 374
    .line 375
    iget-object v4, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->m:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 376
    .line 377
    iget-boolean v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    .line 378
    .line 379
    if-nez v7, :cond_5

    .line 380
    .line 381
    goto/16 :goto_3

    .line 382
    .line 383
    :cond_5
    iget-boolean v7, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    .line 384
    .line 385
    if-nez v7, :cond_6

    .line 386
    .line 387
    goto :goto_1

    .line 388
    :cond_6
    iget-object v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->c:Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 389
    .line 390
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    iget-object v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->c:Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 394
    .line 395
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    .line 397
    .line 398
    iget v8, v8, Landroidx/media3/container/NalUnitUtil$SpsData;->m:I

    .line 399
    .line 400
    iget v9, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->f:I

    .line 401
    .line 402
    iget v10, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->f:I

    .line 403
    .line 404
    if-ne v9, v10, :cond_b

    .line 405
    .line 406
    iget v9, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->g:I

    .line 407
    .line 408
    iget v10, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->g:I

    .line 409
    .line 410
    if-ne v9, v10, :cond_b

    .line 411
    .line 412
    iget-boolean v9, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->h:Z

    .line 413
    .line 414
    iget-boolean v10, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->h:Z

    .line 415
    .line 416
    if-ne v9, v10, :cond_b

    .line 417
    .line 418
    iget-boolean v9, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->i:Z

    .line 419
    .line 420
    if-eqz v9, :cond_7

    .line 421
    .line 422
    iget-boolean v9, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->i:Z

    .line 423
    .line 424
    if-eqz v9, :cond_7

    .line 425
    .line 426
    iget-boolean v9, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->j:Z

    .line 427
    .line 428
    iget-boolean v10, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->j:Z

    .line 429
    .line 430
    if-ne v9, v10, :cond_b

    .line 431
    .line 432
    :cond_7
    iget v9, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->d:I

    .line 433
    .line 434
    iget v10, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->d:I

    .line 435
    .line 436
    if-eq v9, v10, :cond_8

    .line 437
    .line 438
    if-eqz v9, :cond_b

    .line 439
    .line 440
    if-eqz v10, :cond_b

    .line 441
    .line 442
    :cond_8
    iget v7, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->m:I

    .line 443
    .line 444
    if-nez v7, :cond_9

    .line 445
    .line 446
    if-nez v8, :cond_9

    .line 447
    .line 448
    iget v9, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->m:I

    .line 449
    .line 450
    iget v10, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->m:I

    .line 451
    .line 452
    if-ne v9, v10, :cond_b

    .line 453
    .line 454
    iget v9, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->n:I

    .line 455
    .line 456
    iget v10, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->n:I

    .line 457
    .line 458
    if-ne v9, v10, :cond_b

    .line 459
    .line 460
    :cond_9
    if-ne v7, v5, :cond_a

    .line 461
    .line 462
    if-ne v8, v5, :cond_a

    .line 463
    .line 464
    iget v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->o:I

    .line 465
    .line 466
    iget v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->o:I

    .line 467
    .line 468
    if-ne v7, v8, :cond_b

    .line 469
    .line 470
    iget v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->p:I

    .line 471
    .line 472
    iget v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->p:I

    .line 473
    .line 474
    if-ne v7, v8, :cond_b

    .line 475
    .line 476
    :cond_a
    iget-boolean v7, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->k:Z

    .line 477
    .line 478
    iget-boolean v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->k:Z

    .line 479
    .line 480
    if-ne v7, v8, :cond_b

    .line 481
    .line 482
    if-eqz v7, :cond_e

    .line 483
    .line 484
    iget v3, v3, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->l:I

    .line 485
    .line 486
    iget v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->l:I

    .line 487
    .line 488
    if-eq v3, v4, :cond_e

    .line 489
    .line 490
    :cond_b
    :goto_1
    if-eqz v2, :cond_d

    .line 491
    .line 492
    iget-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->o:Z

    .line 493
    .line 494
    if-eqz v2, :cond_d

    .line 495
    .line 496
    iget-wide v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->j:J

    .line 497
    .line 498
    sub-long v7, p3, v2

    .line 499
    .line 500
    long-to-int v4, v7

    .line 501
    add-int v12, p1, v4

    .line 502
    .line 503
    iget-wide v8, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->q:J

    .line 504
    .line 505
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    cmp-long v4, v8, v10

    .line 511
    .line 512
    if-eqz v4, :cond_d

    .line 513
    .line 514
    iget-wide v10, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->p:J

    .line 515
    .line 516
    cmp-long v4, v2, v10

    .line 517
    .line 518
    if-nez v4, :cond_c

    .line 519
    .line 520
    goto :goto_2

    .line 521
    :cond_c
    move-wide v13, v10

    .line 522
    iget-boolean v10, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->r:Z

    .line 523
    .line 524
    sub-long/2addr v2, v13

    .line 525
    long-to-int v11, v2

    .line 526
    iget-object v7, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->a:Landroidx/media3/extractor/TrackOutput;

    .line 527
    .line 528
    const/4 v13, 0x0

    .line 529
    invoke-interface/range {v7 .. v13}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 530
    .line 531
    .line 532
    :cond_d
    :goto_2
    iget-wide v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->j:J

    .line 533
    .line 534
    iput-wide v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->p:J

    .line 535
    .line 536
    iget-wide v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->l:J

    .line 537
    .line 538
    iput-wide v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->q:J

    .line 539
    .line 540
    iput-boolean v6, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->r:Z

    .line 541
    .line 542
    iput-boolean v5, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->o:Z

    .line 543
    .line 544
    :cond_e
    :goto_3
    iget-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->b:Z

    .line 545
    .line 546
    if-eqz v2, :cond_11

    .line 547
    .line 548
    iget-object v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 549
    .line 550
    iget-boolean v3, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    .line 551
    .line 552
    if-eqz v3, :cond_10

    .line 553
    .line 554
    iget v2, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->e:I

    .line 555
    .line 556
    const/4 v3, 0x7

    .line 557
    if-eq v2, v3, :cond_f

    .line 558
    .line 559
    const/4 v3, 0x2

    .line 560
    if-ne v2, v3, :cond_10

    .line 561
    .line 562
    :cond_f
    move v2, v5

    .line 563
    goto :goto_4

    .line 564
    :cond_10
    move v2, v6

    .line 565
    goto :goto_4

    .line 566
    :cond_11
    iget-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->s:Z

    .line 567
    .line 568
    :goto_4
    iget-boolean v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->r:Z

    .line 569
    .line 570
    iget v4, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->i:I

    .line 571
    .line 572
    const/4 v7, 0x5

    .line 573
    if-eq v4, v7, :cond_13

    .line 574
    .line 575
    if-eqz v2, :cond_12

    .line 576
    .line 577
    if-ne v4, v5, :cond_12

    .line 578
    .line 579
    goto :goto_5

    .line 580
    :cond_12
    move v5, v6

    .line 581
    :cond_13
    :goto_5
    or-int v2, v3, v5

    .line 582
    .line 583
    iput-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->r:Z

    .line 584
    .line 585
    const/16 v3, 0x18

    .line 586
    .line 587
    iput v3, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->i:I

    .line 588
    .line 589
    if-eqz v2, :cond_14

    .line 590
    .line 591
    iput-boolean v6, v0, Landroidx/media3/extractor/ts/H264Reader;->n:Z

    .line 592
    .line 593
    :cond_14
    return-void
.end method

.method public final h([BII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H264Reader;->l:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 14
    .line 15
    iget-boolean v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->d:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 20
    .line 21
    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a([BII)V

    .line 22
    .line 23
    .line 24
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 25
    .line 26
    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a([BII)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 30
    .line 31
    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a([BII)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 35
    .line 36
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->e:Landroid/util/SparseArray;

    .line 37
    .line 38
    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->f:Landroidx/media3/container/ParsableNalUnitBitArray;

    .line 39
    .line 40
    iget-boolean v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    .line 41
    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_2
    sub-int/2addr v3, v2

    .line 47
    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->g:[B

    .line 48
    .line 49
    array-length v7, v6

    .line 50
    iget v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h:I

    .line 51
    .line 52
    add-int/2addr v8, v3

    .line 53
    const/4 v9, 0x2

    .line 54
    if-ge v7, v8, :cond_3

    .line 55
    .line 56
    mul-int/2addr v8, v9

    .line 57
    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iput-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->g:[B

    .line 62
    .line 63
    :cond_3
    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->g:[B

    .line 64
    .line 65
    iget v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h:I

    .line 66
    .line 67
    invoke-static {v1, v2, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    iget v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h:I

    .line 71
    .line 72
    add-int/2addr v1, v3

    .line 73
    iput v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h:I

    .line 74
    .line 75
    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->g:[B

    .line 76
    .line 77
    iput-object v2, v5, Landroidx/media3/container/ParsableNalUnitBitArray;->a:[B

    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    iput v2, v5, Landroidx/media3/container/ParsableNalUnitBitArray;->c:I

    .line 81
    .line 82
    iput v2, v5, Landroidx/media3/container/ParsableNalUnitBitArray;->d:I

    .line 83
    .line 84
    iput v1, v5, Landroidx/media3/container/ParsableNalUnitBitArray;->b:I

    .line 85
    .line 86
    iput v2, v5, Landroidx/media3/container/ParsableNalUnitBitArray;->e:I

    .line 87
    .line 88
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->a()V

    .line 89
    .line 90
    .line 91
    const/16 v1, 0x8

    .line 92
    .line 93
    invoke-virtual {v5, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_4

    .line 98
    .line 99
    goto/16 :goto_7

    .line 100
    .line 101
    :cond_4
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    const/4 v3, 0x5

    .line 109
    invoke-virtual {v5, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-nez v6, :cond_5

    .line 117
    .line 118
    goto/16 :goto_7

    .line 119
    .line 120
    :cond_5
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-nez v6, :cond_6

    .line 128
    .line 129
    goto/16 :goto_7

    .line 130
    .line 131
    :cond_6
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    iget-boolean v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    .line 136
    .line 137
    const/4 v8, 0x1

    .line 138
    if-nez v7, :cond_7

    .line 139
    .line 140
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    .line 141
    .line 142
    iget-object v0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 143
    .line 144
    iput v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->e:I

    .line 145
    .line 146
    iput-boolean v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    .line 147
    .line 148
    return-void

    .line 149
    :cond_7
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-nez v7, :cond_8

    .line 154
    .line 155
    goto/16 :goto_7

    .line 156
    .line 157
    :cond_8
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-gez v10, :cond_9

    .line 166
    .line 167
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    .line 168
    .line 169
    return-void

    .line 170
    :cond_9
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    check-cast v4, Landroidx/media3/container/NalUnitUtil$PpsData;

    .line 175
    .line 176
    iget-object v10, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->d:Landroid/util/SparseArray;

    .line 177
    .line 178
    iget v11, v4, Landroidx/media3/container/NalUnitUtil$PpsData;->a:I

    .line 179
    .line 180
    iget-boolean v4, v4, Landroidx/media3/container/NalUnitUtil$PpsData;->b:Z

    .line 181
    .line 182
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    check-cast v10, Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 187
    .line 188
    iget-boolean v11, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->j:Z

    .line 189
    .line 190
    iget v12, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->n:I

    .line 191
    .line 192
    iget v13, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->l:I

    .line 193
    .line 194
    if-eqz v11, :cond_b

    .line 195
    .line 196
    invoke-virtual {v5, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    if-nez v11, :cond_a

    .line 201
    .line 202
    goto/16 :goto_7

    .line 203
    .line 204
    :cond_a
    invoke-virtual {v5, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    .line 205
    .line 206
    .line 207
    :cond_b
    invoke-virtual {v5, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-nez v9, :cond_c

    .line 212
    .line 213
    goto/16 :goto_7

    .line 214
    .line 215
    :cond_c
    invoke-virtual {v5, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    iget-boolean v11, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->k:Z

    .line 220
    .line 221
    if-nez v11, :cond_10

    .line 222
    .line 223
    invoke-virtual {v5, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    .line 224
    .line 225
    .line 226
    move-result v11

    .line 227
    if-nez v11, :cond_d

    .line 228
    .line 229
    goto/16 :goto_7

    .line 230
    .line 231
    :cond_d
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    if-eqz v11, :cond_f

    .line 236
    .line 237
    invoke-virtual {v5, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    .line 238
    .line 239
    .line 240
    move-result v13

    .line 241
    if-nez v13, :cond_e

    .line 242
    .line 243
    goto/16 :goto_7

    .line 244
    .line 245
    :cond_e
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    .line 246
    .line 247
    .line 248
    move-result v13

    .line 249
    move v14, v8

    .line 250
    goto :goto_1

    .line 251
    :cond_f
    move v13, v2

    .line 252
    :goto_0
    move v14, v13

    .line 253
    goto :goto_1

    .line 254
    :cond_10
    move v11, v2

    .line 255
    move v13, v11

    .line 256
    goto :goto_0

    .line 257
    :goto_1
    iget v15, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->i:I

    .line 258
    .line 259
    if-ne v15, v3, :cond_11

    .line 260
    .line 261
    move v3, v8

    .line 262
    goto :goto_2

    .line 263
    :cond_11
    move v3, v2

    .line 264
    :goto_2
    if-eqz v3, :cond_13

    .line 265
    .line 266
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    .line 267
    .line 268
    .line 269
    move-result v15

    .line 270
    if-nez v15, :cond_12

    .line 271
    .line 272
    goto :goto_7

    .line 273
    :cond_12
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    .line 274
    .line 275
    .line 276
    move-result v15

    .line 277
    goto :goto_3

    .line 278
    :cond_13
    move v15, v2

    .line 279
    :goto_3
    iget v2, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->m:I

    .line 280
    .line 281
    if-nez v2, :cond_17

    .line 282
    .line 283
    invoke-virtual {v5, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-nez v2, :cond_14

    .line 288
    .line 289
    goto :goto_7

    .line 290
    :cond_14
    invoke-virtual {v5, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v4, :cond_16

    .line 295
    .line 296
    if-nez v11, :cond_16

    .line 297
    .line 298
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-nez v4, :cond_15

    .line 303
    .line 304
    goto :goto_7

    .line 305
    :cond_15
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    move v5, v4

    .line 310
    const/4 v4, 0x0

    .line 311
    :goto_4
    const/4 v12, 0x0

    .line 312
    goto :goto_8

    .line 313
    :cond_16
    :goto_5
    const/4 v4, 0x0

    .line 314
    :goto_6
    const/4 v5, 0x0

    .line 315
    goto :goto_4

    .line 316
    :cond_17
    if-ne v2, v8, :cond_1b

    .line 317
    .line 318
    iget-boolean v2, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->o:Z

    .line 319
    .line 320
    if-nez v2, :cond_1b

    .line 321
    .line 322
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-nez v2, :cond_18

    .line 327
    .line 328
    goto :goto_7

    .line 329
    :cond_18
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v4, :cond_1a

    .line 334
    .line 335
    if-nez v11, :cond_1a

    .line 336
    .line 337
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-nez v4, :cond_19

    .line 342
    .line 343
    :goto_7
    return-void

    .line 344
    :cond_19
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    move v12, v4

    .line 349
    const/4 v5, 0x0

    .line 350
    move v4, v2

    .line 351
    const/4 v2, 0x0

    .line 352
    goto :goto_8

    .line 353
    :cond_1a
    move v4, v2

    .line 354
    const/4 v2, 0x0

    .line 355
    goto :goto_6

    .line 356
    :cond_1b
    const/4 v2, 0x0

    .line 357
    goto :goto_5

    .line 358
    :goto_8
    iget-object v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 359
    .line 360
    iput-object v10, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->c:Landroidx/media3/container/NalUnitUtil$SpsData;

    .line 361
    .line 362
    iput v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->d:I

    .line 363
    .line 364
    iput v6, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->e:I

    .line 365
    .line 366
    iput v9, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->f:I

    .line 367
    .line 368
    iput v7, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->g:I

    .line 369
    .line 370
    iput-boolean v11, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->h:Z

    .line 371
    .line 372
    iput-boolean v14, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->i:Z

    .line 373
    .line 374
    iput-boolean v13, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->j:Z

    .line 375
    .line 376
    iput-boolean v3, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->k:Z

    .line 377
    .line 378
    iput v15, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->l:I

    .line 379
    .line 380
    iput v2, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->m:I

    .line 381
    .line 382
    iput v5, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->n:I

    .line 383
    .line 384
    iput v4, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->o:I

    .line 385
    .line 386
    iput v12, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->p:I

    .line 387
    .line 388
    const/4 v1, 0x1

    .line 389
    iput-boolean v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    .line 390
    .line 391
    iput-boolean v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    .line 392
    .line 393
    const/4 v1, 0x0

    .line 394
    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    .line 395
    .line 396
    return-void
.end method

.method public final i(IJJ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 6
    .line 7
    iget-boolean v0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->d:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    .line 27
    .line 28
    iget-boolean p0, p0, Landroidx/media3/extractor/ts/H264Reader;->n:Z

    .line 29
    .line 30
    iput p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->i:I

    .line 31
    .line 32
    iput-wide p4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->l:J

    .line 33
    .line 34
    iput-wide p2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->j:J

    .line 35
    .line 36
    iput-boolean p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->s:Z

    .line 37
    .line 38
    iget-boolean p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->b:Z

    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    if-eq p1, p2, :cond_3

    .line 44
    .line 45
    :cond_2
    iget-boolean p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    .line 46
    .line 47
    if-eqz p0, :cond_4

    .line 48
    .line 49
    const/4 p0, 0x5

    .line 50
    if-eq p1, p0, :cond_3

    .line 51
    .line 52
    if-eq p1, p2, :cond_3

    .line 53
    .line 54
    const/4 p0, 0x2

    .line 55
    if-ne p1, p0, :cond_4

    .line 56
    .line 57
    :cond_3
    iget-object p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->m:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 58
    .line 59
    iget-object p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 60
    .line 61
    iput-object p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->m:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 62
    .line 63
    iput-object p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    .line 67
    .line 68
    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    .line 69
    .line 70
    iput p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h:I

    .line 71
    .line 72
    iput-boolean p2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    .line 73
    .line 74
    :cond_4
    return-void
.end method
