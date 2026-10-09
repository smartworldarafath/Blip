.class public final Landroidx/media3/extractor/mp4/Mp4Extractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;,
        Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;
    }
.end annotation


# static fields
.field public static final synthetic I:I


# instance fields
.field public A:Z

.field public B:I

.field public C:I

.field public D:J

.field public E:Landroidx/media3/extractor/ExtractorOutput;

.field public F:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

.field public G:[[J

.field public H:I

.field public final a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final b:I

.field public final c:Z

.field public final d:Landroidx/media3/common/util/ParsableByteArray;

.field public final e:Landroidx/media3/common/util/ParsableByteArray;

.field public final f:Landroidx/media3/common/util/ParsableByteArray;

.field public final g:Landroidx/media3/common/util/ParsableByteArray;

.field public final h:Ljava/util/ArrayDeque;

.field public final i:Landroidx/media3/extractor/mp4/SefReader;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public m:Lcom/google/common/collect/ImmutableList;

.field public n:I

.field public o:I

.field public p:J

.field public q:I

.field public r:Landroidx/media3/common/util/ParsableByteArray;

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->b:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->c:Z

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:Lcom/google/common/collect/ImmutableList;

    .line 16
    .line 17
    iput p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 18
    .line 19
    new-instance p2, Landroidx/media3/extractor/mp4/SefReader;

    .line 20
    .line 21
    invoke-direct {p2}, Landroidx/media3/extractor/mp4/SefReader;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->i:Landroidx/media3/extractor/mp4/SefReader;

    .line 25
    .line 26
    new-instance p2, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->j:Ljava/util/ArrayList;

    .line 32
    .line 33
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 34
    .line 35
    const/16 v0, 0x10

    .line 36
    .line 37
    invoke-direct {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 41
    .line 42
    new-instance p2, Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->h:Ljava/util/ArrayDeque;

    .line 48
    .line 49
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 50
    .line 51
    sget-object v0, Landroidx/media3/container/NalUnitUtil;->a:[B

    .line 52
    .line 53
    invoke-direct {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 57
    .line 58
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 59
    .line 60
    const/4 v0, 0x6

    .line 61
    invoke-direct {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 65
    .line 66
    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    .line 67
    .line 68
    invoke-direct {p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->f:Landroidx/media3/common/util/ParsableByteArray;

    .line 72
    .line 73
    const/4 p2, -0x1

    .line 74
    iput p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    .line 75
    .line 76
    sget-object p2, Landroidx/media3/extractor/ExtractorOutput;->f:Landroidx/media3/extractor/ExtractorOutput;

    .line 77
    .line 78
    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->E:Landroidx/media3/extractor/ExtractorOutput;

    .line 79
    .line 80
    new-array p1, p1, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 81
    .line 82
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->F:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 83
    .line 84
    new-instance p1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->k:Ljava/util/ArrayList;

    .line 90
    .line 91
    new-instance p1, Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:Ljava/util/ArrayList;

    .line 97
    .line 98
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Landroidx/media3/extractor/mp4/Sniffer;->a(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/SniffFailure;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_0
    iput-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:Lcom/google/common/collect/ImmutableList;

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    return v0
.end method

.method public final c(JJ)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->h:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    .line 11
    .line 12
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    .line 13
    .line 14
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 15
    .line 16
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->v:I

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->w:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->A:Z

    .line 21
    .line 22
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:I

    .line 23
    .line 24
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:I

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->k:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    cmp-long p1, p1, v2

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    iget p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 43
    .line 44
    const/4 p2, 0x3

    .line 45
    if-eq p1, p2, :cond_0

    .line 46
    .line 47
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 48
    .line 49
    iput v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->i:Landroidx/media3/extractor/mp4/SefReader;

    .line 53
    .line 54
    iget-object p2, p1, Landroidx/media3/extractor/mp4/SefReader;->a:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 57
    .line 58
    .line 59
    iput v0, p1, Landroidx/media3/extractor/mp4/SefReader;->b:I

    .line 60
    .line 61
    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->j:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->F:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 68
    .line 69
    array-length p1, p0

    .line 70
    move p2, v0

    .line 71
    :goto_0
    if-ge p2, p1, :cond_4

    .line 72
    .line 73
    aget-object v2, p0, p2

    .line 74
    .line 75
    iget-object v3, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 76
    .line 77
    invoke-virtual {v3, p3, p4}, Landroidx/media3/extractor/mp4/TrackSampleTable;->a(J)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ne v4, v1, :cond_2

    .line 82
    .line 83
    invoke-virtual {v3, p3, p4}, Landroidx/media3/extractor/mp4/TrackSampleTable;->b(J)I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    :cond_2
    iput v4, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->g:I

    .line 88
    .line 89
    iget-object v2, v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->d:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    iput-boolean v0, v2, Landroidx/media3/extractor/TrueHdSampleRechunker;->b:Z

    .line 94
    .line 95
    iput v0, v2, Landroidx/media3/extractor/TrueHdSampleRechunker;->c:I

    .line 96
    .line 97
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    .line 12
    .line 13
    .line 14
    move-object p1, v0

    .line 15
    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->E:Landroidx/media3/extractor/ExtractorOutput;

    .line 16
    .line 17
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/Mp4Extractor;->m:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 41

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
    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->c:Z

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    iget-boolean v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->A:Z

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    :goto_0
    const/16 v25, -0x1

    .line 16
    .line 17
    goto/16 :goto_34

    .line 18
    .line 19
    :cond_0
    :goto_1
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 20
    .line 21
    const v5, 0x66747970

    .line 22
    .line 23
    .line 24
    iget-object v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->h:Ljava/util/ArrayDeque;

    .line 25
    .line 26
    iget-object v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->f:Landroidx/media3/common/util/ParsableByteArray;

    .line 27
    .line 28
    const/4 v13, 0x0

    .line 29
    const/4 v14, 0x0

    .line 30
    const/4 v15, 0x1

    .line 31
    if-eqz v3, :cond_59

    .line 32
    .line 33
    const-wide/32 v16, 0x40000

    .line 34
    .line 35
    .line 36
    const-wide/16 v18, -0x1

    .line 37
    .line 38
    const/4 v7, 0x4

    .line 39
    const/4 v8, 0x2

    .line 40
    if-eq v3, v15, :cond_4b

    .line 41
    .line 42
    const-wide/16 v20, 0x8

    .line 43
    .line 44
    const-string v5, "audio/mpeg"

    .line 45
    .line 46
    if-eq v3, v8, :cond_25

    .line 47
    .line 48
    const/4 v6, 0x3

    .line 49
    if-eq v3, v6, :cond_e

    .line 50
    .line 51
    if-ne v3, v7, :cond_d

    .line 52
    .line 53
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:I

    .line 54
    .line 55
    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->k:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 62
    .line 63
    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:I

    .line 64
    .line 65
    iget v7, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    .line 66
    .line 67
    iget-object v9, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    .line 68
    .line 69
    iget-object v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->l:Ljava/util/ArrayList;

    .line 70
    .line 71
    if-ge v6, v7, :cond_3

    .line 72
    .line 73
    iget-object v4, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    .line 74
    .line 75
    aget-wide v4, v4, v6

    .line 76
    .line 77
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    cmp-long v6, v6, v4

    .line 82
    .line 83
    if-eqz v6, :cond_1

    .line 84
    .line 85
    iput-wide v4, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 86
    .line 87
    return v15

    .line 88
    :cond_1
    iget-object v2, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->d:[I

    .line 89
    .line 90
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:I

    .line 91
    .line 92
    aget v2, v2, v4

    .line 93
    .line 94
    invoke-virtual {v12, v2}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 95
    .line 96
    .line 97
    iget-object v4, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 98
    .line 99
    invoke-interface {v1, v4, v14, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 115
    .line 116
    invoke-virtual {v12, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:I

    .line 121
    .line 122
    aget-wide v4, v9, v2

    .line 123
    .line 124
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->N(J)J

    .line 125
    .line 126
    .line 127
    move-result-wide v4

    .line 128
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:I

    .line 129
    .line 130
    add-int/2addr v2, v15

    .line 131
    iget v6, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    .line 132
    .line 133
    if-ge v2, v6, :cond_2

    .line 134
    .line 135
    aget-wide v2, v9, v2

    .line 136
    .line 137
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->N(J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v2

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    iget-wide v2, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->i:J

    .line 143
    .line 144
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->N(J)J

    .line 145
    .line 146
    .line 147
    move-result-wide v2

    .line 148
    :goto_2
    new-instance v6, Landroidx/media3/extractor/metadata/Chapter$Builder;

    .line 149
    .line 150
    invoke-direct {v6}, Landroidx/media3/extractor/metadata/Chapter$Builder;-><init>()V

    .line 151
    .line 152
    .line 153
    iput-wide v4, v6, Landroidx/media3/extractor/metadata/Chapter$Builder;->a:J

    .line 154
    .line 155
    iput-wide v2, v6, Landroidx/media3/extractor/metadata/Chapter$Builder;->b:J

    .line 156
    .line 157
    new-instance v2, Landroidx/media3/common/Label;

    .line 158
    .line 159
    invoke-direct {v2, v13, v1}, Landroidx/media3/common/Label;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iput-object v2, v6, Landroidx/media3/extractor/metadata/Chapter$Builder;->d:Landroidx/media3/common/Label;

    .line 163
    .line 164
    invoke-virtual {v6}, Landroidx/media3/extractor/metadata/Chapter$Builder;->a()Landroidx/media3/extractor/metadata/Chapter;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    iget v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:I

    .line 172
    .line 173
    add-int/2addr v1, v15

    .line 174
    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:I

    .line 175
    .line 176
    return v14

    .line 177
    :cond_3
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->F:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 178
    .line 179
    array-length v2, v1

    .line 180
    move v6, v14

    .line 181
    :goto_3
    if-ge v6, v2, :cond_b

    .line 182
    .line 183
    aget-object v7, v1, v6

    .line 184
    .line 185
    iget-object v9, v7, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->a:Landroidx/media3/extractor/mp4/Track;

    .line 186
    .line 187
    iget v9, v9, Landroidx/media3/extractor/mp4/Track;->l:I

    .line 188
    .line 189
    iget-object v11, v3, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 190
    .line 191
    iget v11, v11, Landroidx/media3/extractor/mp4/Track;->a:I

    .line 192
    .line 193
    if-ne v9, v11, :cond_a

    .line 194
    .line 195
    iget-object v9, v7, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->h:Landroidx/media3/common/Format;

    .line 196
    .line 197
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    iget-object v11, v9, Landroidx/media3/common/Format;->m:Landroidx/media3/common/Metadata;

    .line 201
    .line 202
    new-instance v12, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    if-eqz v11, :cond_7

    .line 208
    .line 209
    move/from16 v22, v15

    .line 210
    .line 211
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 212
    .line 213
    .line 214
    move-result-object v15

    .line 215
    iget-object v11, v11, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    .line 216
    .line 217
    array-length v8, v11

    .line 218
    :goto_4
    if-ge v14, v8, :cond_6

    .line 219
    .line 220
    aget-object v13, v11, v14

    .line 221
    .line 222
    move-object/from16 v16, v1

    .line 223
    .line 224
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    move/from16 v17, v2

    .line 229
    .line 230
    const-class v2, Landroidx/media3/common/Metadata$Entry;

    .line 231
    .line 232
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_4

    .line 237
    .line 238
    invoke-virtual {v2, v13}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    check-cast v1, Landroidx/media3/common/Metadata$Entry;

    .line 243
    .line 244
    instance-of v2, v1, Landroidx/media3/extractor/metadata/Chapter;

    .line 245
    .line 246
    if-nez v2, :cond_4

    .line 247
    .line 248
    goto :goto_5

    .line 249
    :cond_4
    const/4 v1, 0x0

    .line 250
    :goto_5
    if-eqz v1, :cond_5

    .line 251
    .line 252
    invoke-virtual {v15, v1}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 256
    .line 257
    move-object/from16 v1, v16

    .line 258
    .line 259
    move/from16 v2, v17

    .line 260
    .line 261
    const/4 v13, 0x0

    .line 262
    goto :goto_4

    .line 263
    :cond_6
    move-object/from16 v16, v1

    .line 264
    .line 265
    move/from16 v17, v2

    .line 266
    .line 267
    invoke-virtual {v15}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_7
    move-object/from16 v16, v1

    .line 276
    .line 277
    move/from16 v17, v2

    .line 278
    .line 279
    move/from16 v22, v15

    .line 280
    .line 281
    :goto_6
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    new-instance v2, Landroidx/media3/common/Metadata;

    .line 289
    .line 290
    invoke-direct {v2, v12}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 291
    .line 292
    .line 293
    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->l:Landroidx/media3/common/Metadata;

    .line 294
    .line 295
    new-instance v2, Landroidx/media3/common/Format;

    .line 296
    .line 297
    invoke-direct {v2, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    if-nez v8, :cond_9

    .line 307
    .line 308
    invoke-static {v1}, Landroidx/media3/extractor/DtsUtil;->e(Ljava/lang/String;)Z

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    if-eqz v1, :cond_8

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_8
    iget-object v1, v7, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->c:Landroidx/media3/extractor/TrackOutput;

    .line 316
    .line 317
    invoke-interface {v1, v2}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 318
    .line 319
    .line 320
    const/4 v1, 0x0

    .line 321
    iput-object v1, v7, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->h:Landroidx/media3/common/Format;

    .line 322
    .line 323
    goto :goto_8

    .line 324
    :cond_9
    :goto_7
    iput-object v2, v7, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->h:Landroidx/media3/common/Format;

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_a
    move-object/from16 v16, v1

    .line 328
    .line 329
    move/from16 v17, v2

    .line 330
    .line 331
    move/from16 v22, v15

    .line 332
    .line 333
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 334
    .line 335
    move-object/from16 v1, v16

    .line 336
    .line 337
    move/from16 v2, v17

    .line 338
    .line 339
    move/from16 v15, v22

    .line 340
    .line 341
    const/4 v8, 0x2

    .line 342
    const/4 v13, 0x0

    .line 343
    const/4 v14, 0x0

    .line 344
    goto/16 :goto_3

    .line 345
    .line 346
    :cond_b
    move/from16 v22, v15

    .line 347
    .line 348
    iget v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:I

    .line 349
    .line 350
    add-int/lit8 v1, v1, 0x1

    .line 351
    .line 352
    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:I

    .line 353
    .line 354
    const/4 v1, 0x0

    .line 355
    iput v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->C:I

    .line 356
    .line 357
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 358
    .line 359
    .line 360
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->B:I

    .line 361
    .line 362
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    if-ne v2, v3, :cond_c

    .line 367
    .line 368
    const/4 v2, 0x2

    .line 369
    iput v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 370
    .line 371
    :cond_c
    return v1

    .line 372
    :cond_d
    move v1, v14

    .line 373
    invoke-static {}, Lio/sentry/d;->d()V

    .line 374
    .line 375
    .line 376
    return v1

    .line 377
    :cond_e
    move/from16 v22, v15

    .line 378
    .line 379
    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->i:Landroidx/media3/extractor/mp4/SefReader;

    .line 380
    .line 381
    iget-object v5, v3, Landroidx/media3/extractor/mp4/SefReader;->a:Ljava/util/ArrayList;

    .line 382
    .line 383
    iget v8, v3, Landroidx/media3/extractor/mp4/SefReader;->b:I

    .line 384
    .line 385
    if-eqz v8, :cond_22

    .line 386
    .line 387
    move/from16 v12, v22

    .line 388
    .line 389
    if-eq v8, v12, :cond_20

    .line 390
    .line 391
    const/16 v12, 0xb01

    .line 392
    .line 393
    const/16 v13, 0xb04

    .line 394
    .line 395
    const/16 v14, 0xb00

    .line 396
    .line 397
    const/16 v15, 0xb03

    .line 398
    .line 399
    const/16 v4, 0x890

    .line 400
    .line 401
    const/4 v11, 0x2

    .line 402
    const/16 v26, 0x8

    .line 403
    .line 404
    if-eq v8, v11, :cond_1b

    .line 405
    .line 406
    if-ne v8, v6, :cond_1a

    .line 407
    .line 408
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 409
    .line 410
    .line 411
    move-result-wide v16

    .line 412
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 413
    .line 414
    .line 415
    move-result-wide v18

    .line 416
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 417
    .line 418
    .line 419
    move-result-wide v20

    .line 420
    sub-long v18, v18, v20

    .line 421
    .line 422
    iget v3, v3, Landroidx/media3/extractor/mp4/SefReader;->c:I

    .line 423
    .line 424
    int-to-long v9, v3

    .line 425
    sub-long v8, v18, v9

    .line 426
    .line 427
    long-to-int v3, v8

    .line 428
    new-instance v8, Landroidx/media3/common/util/ParsableByteArray;

    .line 429
    .line 430
    invoke-direct {v8, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 431
    .line 432
    .line 433
    iget-object v9, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 434
    .line 435
    const/4 v10, 0x0

    .line 436
    invoke-interface {v1, v9, v10, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 437
    .line 438
    .line 439
    const/4 v1, 0x0

    .line 440
    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    if-ge v1, v3, :cond_19

    .line 445
    .line 446
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    check-cast v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    .line 451
    .line 452
    iget-wide v9, v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;->a:J

    .line 453
    .line 454
    sub-long v9, v9, v16

    .line 455
    .line 456
    long-to-int v9, v9

    .line 457
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 464
    .line 465
    .line 466
    move-result v9

    .line 467
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 468
    .line 469
    invoke-virtual {v8, v9, v10}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v11

    .line 473
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 474
    .line 475
    .line 476
    move-result v18

    .line 477
    sparse-switch v18, :sswitch_data_0

    .line 478
    .line 479
    .line 480
    :goto_a
    const/4 v7, -0x1

    .line 481
    goto :goto_b

    .line 482
    :sswitch_0
    const-string v7, "Super_SlowMotion_BGM"

    .line 483
    .line 484
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v7

    .line 488
    if-nez v7, :cond_f

    .line 489
    .line 490
    goto :goto_a

    .line 491
    :cond_f
    const/4 v7, 0x4

    .line 492
    goto :goto_b

    .line 493
    :sswitch_1
    const-string v7, "Super_SlowMotion_Deflickering_On"

    .line 494
    .line 495
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 496
    .line 497
    .line 498
    move-result v7

    .line 499
    if-nez v7, :cond_10

    .line 500
    .line 501
    goto :goto_a

    .line 502
    :cond_10
    move v7, v6

    .line 503
    goto :goto_b

    .line 504
    :sswitch_2
    const-string v7, "Super_SlowMotion_Data"

    .line 505
    .line 506
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v7

    .line 510
    if-nez v7, :cond_11

    .line 511
    .line 512
    goto :goto_a

    .line 513
    :cond_11
    const/4 v7, 0x2

    .line 514
    goto :goto_b

    .line 515
    :sswitch_3
    const-string v7, "Super_SlowMotion_Edit_Data"

    .line 516
    .line 517
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    if-nez v7, :cond_12

    .line 522
    .line 523
    goto :goto_a

    .line 524
    :cond_12
    const/4 v7, 0x1

    .line 525
    goto :goto_b

    .line 526
    :sswitch_4
    const-string v7, "SlowMotion_Data"

    .line 527
    .line 528
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v7

    .line 532
    if-nez v7, :cond_13

    .line 533
    .line 534
    goto :goto_a

    .line 535
    :cond_13
    const/4 v7, 0x0

    .line 536
    :goto_b
    packed-switch v7, :pswitch_data_0

    .line 537
    .line 538
    .line 539
    const-string v0, "Invalid SEF name"

    .line 540
    .line 541
    const/4 v1, 0x0

    .line 542
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    throw v0

    .line 547
    :pswitch_0
    move v7, v12

    .line 548
    goto :goto_c

    .line 549
    :pswitch_1
    move v7, v13

    .line 550
    goto :goto_c

    .line 551
    :pswitch_2
    move v7, v14

    .line 552
    goto :goto_c

    .line 553
    :pswitch_3
    move v7, v15

    .line 554
    goto :goto_c

    .line 555
    :pswitch_4
    move v7, v4

    .line 556
    :goto_c
    iget v3, v3, Landroidx/media3/extractor/mp4/SefReader$DataReference;->b:I

    .line 557
    .line 558
    add-int/lit8 v9, v9, 0x8

    .line 559
    .line 560
    sub-int/2addr v3, v9

    .line 561
    if-eq v7, v4, :cond_15

    .line 562
    .line 563
    if-eq v7, v14, :cond_18

    .line 564
    .line 565
    if-eq v7, v12, :cond_18

    .line 566
    .line 567
    if-eq v7, v15, :cond_18

    .line 568
    .line 569
    if-ne v7, v13, :cond_14

    .line 570
    .line 571
    goto/16 :goto_e

    .line 572
    .line 573
    :cond_14
    invoke-static {}, Lio/sentry/d;->d()V

    .line 574
    .line 575
    .line 576
    const/16 v24, 0x0

    .line 577
    .line 578
    return v24

    .line 579
    :cond_15
    new-instance v7, Ljava/util/ArrayList;

    .line 580
    .line 581
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v8, v3, v10}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    sget-object v9, Landroidx/media3/extractor/mp4/SefReader;->e:Lcom/google/common/base/Splitter;

    .line 589
    .line 590
    invoke-virtual {v9, v3}, Lcom/google/common/base/Splitter;->c(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    const/4 v9, 0x0

    .line 595
    :goto_d
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 596
    .line 597
    .line 598
    move-result v10

    .line 599
    if-ge v9, v10, :cond_17

    .line 600
    .line 601
    sget-object v10, Landroidx/media3/extractor/mp4/SefReader;->d:Lcom/google/common/base/Splitter;

    .line 602
    .line 603
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v11

    .line 607
    check-cast v11, Ljava/lang/CharSequence;

    .line 608
    .line 609
    invoke-virtual {v10, v11}, Lcom/google/common/base/Splitter;->c(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 610
    .line 611
    .line 612
    move-result-object v10

    .line 613
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 614
    .line 615
    .line 616
    move-result v11

    .line 617
    if-ne v11, v6, :cond_16

    .line 618
    .line 619
    const/4 v11, 0x0

    .line 620
    :try_start_0
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v18

    .line 624
    check-cast v18, Ljava/lang/String;

    .line 625
    .line 626
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 627
    .line 628
    .line 629
    move-result-wide v31

    .line 630
    const/4 v11, 0x1

    .line 631
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object v18

    .line 635
    check-cast v18, Ljava/lang/String;

    .line 636
    .line 637
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 638
    .line 639
    .line 640
    move-result-wide v33

    .line 641
    const/4 v11, 0x2

    .line 642
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 643
    .line 644
    .line 645
    move-result-object v10

    .line 646
    check-cast v10, Ljava/lang/String;

    .line 647
    .line 648
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 649
    .line 650
    .line 651
    move-result v10

    .line 652
    const/16 v22, 0x1

    .line 653
    .line 654
    add-int/lit8 v10, v10, -0x1

    .line 655
    .line 656
    shl-int v30, v22, v10

    .line 657
    .line 658
    new-instance v29, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    .line 659
    .line 660
    invoke-direct/range {v29 .. v34}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;-><init>(IJJ)V

    .line 661
    .line 662
    .line 663
    move-object/from16 v10, v29

    .line 664
    .line 665
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .line 667
    .line 668
    add-int/lit8 v9, v9, 0x1

    .line 669
    .line 670
    goto :goto_d

    .line 671
    :catch_0
    move-exception v0

    .line 672
    const/4 v1, 0x0

    .line 673
    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    throw v0

    .line 678
    :cond_16
    const/4 v1, 0x0

    .line 679
    invoke-static {v1, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    throw v0

    .line 684
    :cond_17
    new-instance v3, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;

    .line 685
    .line 686
    invoke-direct {v3, v7}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData;-><init>(Ljava/util/ArrayList;)V

    .line 687
    .line 688
    .line 689
    iget-object v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->j:Ljava/util/ArrayList;

    .line 690
    .line 691
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    :cond_18
    :goto_e
    add-int/lit8 v1, v1, 0x1

    .line 695
    .line 696
    const/4 v7, 0x4

    .line 697
    goto/16 :goto_9

    .line 698
    .line 699
    :cond_19
    const-wide/16 v9, 0x0

    .line 700
    .line 701
    iput-wide v9, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 702
    .line 703
    :goto_f
    const/4 v11, 0x1

    .line 704
    goto/16 :goto_14

    .line 705
    .line 706
    :cond_1a
    invoke-static {}, Lio/sentry/d;->d()V

    .line 707
    .line 708
    .line 709
    const/4 v10, 0x0

    .line 710
    return v10

    .line 711
    :cond_1b
    const/4 v10, 0x0

    .line 712
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 713
    .line 714
    .line 715
    move-result-wide v7

    .line 716
    iget v9, v3, Landroidx/media3/extractor/mp4/SefReader;->c:I

    .line 717
    .line 718
    add-int/lit8 v9, v9, -0x14

    .line 719
    .line 720
    new-instance v11, Landroidx/media3/common/util/ParsableByteArray;

    .line 721
    .line 722
    invoke-direct {v11, v9}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 723
    .line 724
    .line 725
    iget-object v6, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 726
    .line 727
    invoke-interface {v1, v6, v10, v9}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 728
    .line 729
    .line 730
    const/4 v1, 0x0

    .line 731
    :goto_10
    div-int/lit8 v6, v9, 0xc

    .line 732
    .line 733
    if-ge v1, v6, :cond_1e

    .line 734
    .line 735
    const/4 v6, 0x2

    .line 736
    invoke-virtual {v11, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v11, v6}, Landroidx/media3/common/util/ParsableByteArray;->f(I)V

    .line 740
    .line 741
    .line 742
    iget-object v10, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 743
    .line 744
    move/from16 v23, v6

    .line 745
    .line 746
    iget v6, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 747
    .line 748
    add-int/lit8 v13, v6, 0x1

    .line 749
    .line 750
    iput v13, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 751
    .line 752
    aget-byte v15, v10, v6

    .line 753
    .line 754
    and-int/lit16 v15, v15, 0xff

    .line 755
    .line 756
    add-int/lit8 v6, v6, 0x2

    .line 757
    .line 758
    iput v6, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 759
    .line 760
    aget-byte v6, v10, v13

    .line 761
    .line 762
    and-int/lit16 v6, v6, 0xff

    .line 763
    .line 764
    shl-int/lit8 v6, v6, 0x8

    .line 765
    .line 766
    or-int/2addr v6, v15

    .line 767
    int-to-short v6, v6

    .line 768
    if-eq v6, v4, :cond_1c

    .line 769
    .line 770
    if-eq v6, v14, :cond_1c

    .line 771
    .line 772
    if-eq v6, v12, :cond_1c

    .line 773
    .line 774
    const/16 v10, 0xb03

    .line 775
    .line 776
    const/16 v13, 0xb04

    .line 777
    .line 778
    if-eq v6, v10, :cond_1d

    .line 779
    .line 780
    if-eq v6, v13, :cond_1d

    .line 781
    .line 782
    move/from16 v6, v26

    .line 783
    .line 784
    invoke-virtual {v11, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 785
    .line 786
    .line 787
    move-object v15, v11

    .line 788
    goto :goto_11

    .line 789
    :cond_1c
    const/16 v10, 0xb03

    .line 790
    .line 791
    const/16 v13, 0xb04

    .line 792
    .line 793
    :cond_1d
    iget v6, v3, Landroidx/media3/extractor/mp4/SefReader;->c:I

    .line 794
    .line 795
    move-object v15, v11

    .line 796
    int-to-long v10, v6

    .line 797
    sub-long v10, v7, v10

    .line 798
    .line 799
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 800
    .line 801
    .line 802
    move-result v6

    .line 803
    int-to-long v12, v6

    .line 804
    sub-long/2addr v10, v12

    .line 805
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 806
    .line 807
    .line 808
    move-result v6

    .line 809
    new-instance v12, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    .line 810
    .line 811
    invoke-direct {v12, v6, v10, v11}, Landroidx/media3/extractor/mp4/SefReader$DataReference;-><init>(IJ)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 818
    .line 819
    move-object v11, v15

    .line 820
    const/16 v12, 0xb01

    .line 821
    .line 822
    const/16 v13, 0xb04

    .line 823
    .line 824
    const/16 v15, 0xb03

    .line 825
    .line 826
    const/16 v26, 0x8

    .line 827
    .line 828
    goto :goto_10

    .line 829
    :cond_1e
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    if-eqz v1, :cond_1f

    .line 834
    .line 835
    const-wide/16 v9, 0x0

    .line 836
    .line 837
    iput-wide v9, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 838
    .line 839
    const/4 v10, 0x0

    .line 840
    goto/16 :goto_f

    .line 841
    .line 842
    :cond_1f
    const/4 v1, 0x3

    .line 843
    iput v1, v3, Landroidx/media3/extractor/mp4/SefReader;->b:I

    .line 844
    .line 845
    const/4 v10, 0x0

    .line 846
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v1

    .line 850
    check-cast v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;

    .line 851
    .line 852
    iget-wide v3, v1, Landroidx/media3/extractor/mp4/SefReader$DataReference;->a:J

    .line 853
    .line 854
    iput-wide v3, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 855
    .line 856
    goto/16 :goto_f

    .line 857
    .line 858
    :cond_20
    const/4 v10, 0x0

    .line 859
    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    .line 860
    .line 861
    const/16 v6, 0x8

    .line 862
    .line 863
    invoke-direct {v4, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 864
    .line 865
    .line 866
    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 867
    .line 868
    invoke-interface {v1, v5, v10, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->o()I

    .line 872
    .line 873
    .line 874
    move-result v5

    .line 875
    add-int/2addr v5, v6

    .line 876
    iput v5, v3, Landroidx/media3/extractor/mp4/SefReader;->c:I

    .line 877
    .line 878
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 879
    .line 880
    .line 881
    move-result v4

    .line 882
    const v5, 0x53454654

    .line 883
    .line 884
    .line 885
    if-eq v4, v5, :cond_21

    .line 886
    .line 887
    const-wide/16 v9, 0x0

    .line 888
    .line 889
    iput-wide v9, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 890
    .line 891
    goto/16 :goto_f

    .line 892
    .line 893
    :cond_21
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 894
    .line 895
    .line 896
    move-result-wide v4

    .line 897
    iget v1, v3, Landroidx/media3/extractor/mp4/SefReader;->c:I

    .line 898
    .line 899
    add-int/lit8 v1, v1, -0xc

    .line 900
    .line 901
    int-to-long v6, v1

    .line 902
    sub-long/2addr v4, v6

    .line 903
    iput-wide v4, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 904
    .line 905
    const/4 v11, 0x2

    .line 906
    iput v11, v3, Landroidx/media3/extractor/mp4/SefReader;->b:I

    .line 907
    .line 908
    goto/16 :goto_f

    .line 909
    .line 910
    :cond_22
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 911
    .line 912
    .line 913
    move-result-wide v4

    .line 914
    cmp-long v1, v4, v18

    .line 915
    .line 916
    if-eqz v1, :cond_24

    .line 917
    .line 918
    cmp-long v1, v4, v20

    .line 919
    .line 920
    if-gez v1, :cond_23

    .line 921
    .line 922
    goto :goto_12

    .line 923
    :cond_23
    sub-long v4, v4, v20

    .line 924
    .line 925
    goto :goto_13

    .line 926
    :cond_24
    :goto_12
    const-wide/16 v4, 0x0

    .line 927
    .line 928
    :goto_13
    iput-wide v4, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 929
    .line 930
    const/4 v11, 0x1

    .line 931
    iput v11, v3, Landroidx/media3/extractor/mp4/SefReader;->b:I

    .line 932
    .line 933
    :goto_14
    iget-wide v1, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 934
    .line 935
    const-wide/16 v27, 0x0

    .line 936
    .line 937
    cmp-long v1, v1, v27

    .line 938
    .line 939
    if-nez v1, :cond_58

    .line 940
    .line 941
    const/4 v10, 0x0

    .line 942
    iput v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 943
    .line 944
    iput v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 945
    .line 946
    return v11

    .line 947
    :cond_25
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 948
    .line 949
    .line 950
    move-result-wide v3

    .line 951
    iget v6, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    .line 952
    .line 953
    const/4 v7, -0x1

    .line 954
    if-ne v6, v7, :cond_33

    .line 955
    .line 956
    const-wide v6, 0x7fffffffffffffffL

    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    const/4 v8, 0x1

    .line 962
    const/4 v9, 0x1

    .line 963
    const/4 v10, 0x0

    .line 964
    const/4 v11, -0x1

    .line 965
    const/4 v13, -0x1

    .line 966
    const/4 v14, -0x1

    .line 967
    const-wide v18, 0x7fffffffffffffffL

    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    const-wide v29, 0x7fffffffffffffffL

    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    const-wide v31, 0x7fffffffffffffffL

    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    const-wide v33, 0x7fffffffffffffffL

    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    const-wide v35, 0x7fffffffffffffffL

    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    :goto_15
    iget-object v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->F:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 993
    .line 994
    move-wide/from16 v37, v3

    .line 995
    .line 996
    array-length v3, v15

    .line 997
    if-ge v10, v3, :cond_2f

    .line 998
    .line 999
    aget-object v3, v15, v10

    .line 1000
    .line 1001
    iget v4, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->g:I

    .line 1002
    .line 1003
    iget-object v15, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1004
    .line 1005
    move/from16 v26, v8

    .line 1006
    .line 1007
    iget v8, v15, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    .line 1008
    .line 1009
    if-ne v4, v8, :cond_26

    .line 1010
    .line 1011
    move/from16 v8, v26

    .line 1012
    .line 1013
    goto/16 :goto_1a

    .line 1014
    .line 1015
    :cond_26
    iget-object v8, v15, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    .line 1016
    .line 1017
    move/from16 v39, v13

    .line 1018
    .line 1019
    move/from16 v40, v14

    .line 1020
    .line 1021
    aget-wide v13, v8, v4

    .line 1022
    .line 1023
    iget-boolean v8, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->e:Z

    .line 1024
    .line 1025
    if-eqz v8, :cond_27

    .line 1026
    .line 1027
    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 1028
    .line 1029
    .line 1030
    move-result-wide v6

    .line 1031
    goto :goto_16

    .line 1032
    :cond_27
    iget-boolean v3, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->f:Z

    .line 1033
    .line 1034
    if-eqz v3, :cond_28

    .line 1035
    .line 1036
    cmp-long v3, v13, v29

    .line 1037
    .line 1038
    if-gez v3, :cond_28

    .line 1039
    .line 1040
    move v11, v10

    .line 1041
    move-wide/from16 v29, v13

    .line 1042
    .line 1043
    :cond_28
    :goto_16
    iget-object v3, v15, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    .line 1044
    .line 1045
    aget-wide v13, v3, v4

    .line 1046
    .line 1047
    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->G:[[J

    .line 1048
    .line 1049
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1050
    .line 1051
    .line 1052
    aget-object v3, v3, v10

    .line 1053
    .line 1054
    aget-wide v3, v3, v4

    .line 1055
    .line 1056
    sub-long v13, v13, v37

    .line 1057
    .line 1058
    const-wide/16 v27, 0x0

    .line 1059
    .line 1060
    cmp-long v8, v13, v27

    .line 1061
    .line 1062
    if-ltz v8, :cond_2a

    .line 1063
    .line 1064
    cmp-long v8, v13, v16

    .line 1065
    .line 1066
    if-ltz v8, :cond_29

    .line 1067
    .line 1068
    goto :goto_17

    .line 1069
    :cond_29
    const/4 v8, 0x0

    .line 1070
    goto :goto_18

    .line 1071
    :cond_2a
    :goto_17
    const/4 v8, 0x1

    .line 1072
    :goto_18
    if-nez v8, :cond_2b

    .line 1073
    .line 1074
    if-nez v9, :cond_2c

    .line 1075
    .line 1076
    :cond_2b
    if-ne v8, v9, :cond_2d

    .line 1077
    .line 1078
    cmp-long v15, v13, v35

    .line 1079
    .line 1080
    if-gez v15, :cond_2d

    .line 1081
    .line 1082
    :cond_2c
    move-wide/from16 v31, v3

    .line 1083
    .line 1084
    move v9, v8

    .line 1085
    move-wide/from16 v35, v13

    .line 1086
    .line 1087
    move v14, v10

    .line 1088
    goto :goto_19

    .line 1089
    :cond_2d
    move/from16 v14, v40

    .line 1090
    .line 1091
    :goto_19
    cmp-long v13, v3, v33

    .line 1092
    .line 1093
    if-gez v13, :cond_2e

    .line 1094
    .line 1095
    move-wide/from16 v33, v3

    .line 1096
    .line 1097
    move v13, v10

    .line 1098
    goto :goto_1a

    .line 1099
    :cond_2e
    move/from16 v8, v26

    .line 1100
    .line 1101
    move/from16 v13, v39

    .line 1102
    .line 1103
    :goto_1a
    add-int/lit8 v10, v10, 0x1

    .line 1104
    .line 1105
    move-wide/from16 v3, v37

    .line 1106
    .line 1107
    goto :goto_15

    .line 1108
    :cond_2f
    move/from16 v26, v8

    .line 1109
    .line 1110
    move/from16 v39, v13

    .line 1111
    .line 1112
    move/from16 v40, v14

    .line 1113
    .line 1114
    cmp-long v3, v6, v18

    .line 1115
    .line 1116
    if-eqz v3, :cond_30

    .line 1117
    .line 1118
    const/4 v3, -0x1

    .line 1119
    if-eq v11, v3, :cond_30

    .line 1120
    .line 1121
    cmp-long v3, v29, v6

    .line 1122
    .line 1123
    if-gtz v3, :cond_30

    .line 1124
    .line 1125
    goto :goto_1c

    .line 1126
    :cond_30
    cmp-long v3, v33, v18

    .line 1127
    .line 1128
    if-eqz v3, :cond_32

    .line 1129
    .line 1130
    if-eqz v26, :cond_32

    .line 1131
    .line 1132
    const-wide/32 v3, 0xa00000

    .line 1133
    .line 1134
    .line 1135
    add-long v33, v33, v3

    .line 1136
    .line 1137
    cmp-long v3, v31, v33

    .line 1138
    .line 1139
    if-gez v3, :cond_31

    .line 1140
    .line 1141
    goto :goto_1b

    .line 1142
    :cond_31
    move/from16 v11, v39

    .line 1143
    .line 1144
    goto :goto_1c

    .line 1145
    :cond_32
    :goto_1b
    move/from16 v11, v40

    .line 1146
    .line 1147
    :goto_1c
    iput v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    .line 1148
    .line 1149
    const/4 v3, -0x1

    .line 1150
    if-ne v11, v3, :cond_34

    .line 1151
    .line 1152
    move/from16 v25, v3

    .line 1153
    .line 1154
    goto/16 :goto_34

    .line 1155
    .line 1156
    :cond_33
    move-wide/from16 v37, v3

    .line 1157
    .line 1158
    :cond_34
    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->F:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 1159
    .line 1160
    iget v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    .line 1161
    .line 1162
    aget-object v3, v3, v4

    .line 1163
    .line 1164
    iget-object v4, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->c:Landroidx/media3/extractor/TrackOutput;

    .line 1165
    .line 1166
    iget-object v6, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1167
    .line 1168
    iget-object v7, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->a:Landroidx/media3/extractor/mp4/Track;

    .line 1169
    .line 1170
    iget v8, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->g:I

    .line 1171
    .line 1172
    iget-object v9, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    .line 1173
    .line 1174
    iget-object v10, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->d:[I

    .line 1175
    .line 1176
    aget-wide v13, v9, v8

    .line 1177
    .line 1178
    move v11, v8

    .line 1179
    iget-wide v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->D:J

    .line 1180
    .line 1181
    add-long/2addr v13, v8

    .line 1182
    aget v8, v10, v11

    .line 1183
    .line 1184
    iget-object v9, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->d:Landroidx/media3/extractor/TrueHdSampleRechunker;

    .line 1185
    .line 1186
    sub-long v18, v13, v37

    .line 1187
    .line 1188
    iget v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    .line 1189
    .line 1190
    move-object/from16 v26, v10

    .line 1191
    .line 1192
    move/from16 v37, v11

    .line 1193
    .line 1194
    int-to-long v10, v15

    .line 1195
    add-long v18, v18, v10

    .line 1196
    .line 1197
    const-wide/16 v27, 0x0

    .line 1198
    .line 1199
    cmp-long v10, v18, v27

    .line 1200
    .line 1201
    if-ltz v10, :cond_35

    .line 1202
    .line 1203
    cmp-long v10, v18, v16

    .line 1204
    .line 1205
    if-ltz v10, :cond_36

    .line 1206
    .line 1207
    :cond_35
    const/16 v22, 0x1

    .line 1208
    .line 1209
    goto/16 :goto_25

    .line 1210
    .line 1211
    :cond_36
    iget v2, v7, Landroidx/media3/extractor/mp4/Track;->h:I

    .line 1212
    .line 1213
    iget v10, v7, Landroidx/media3/extractor/mp4/Track;->k:I

    .line 1214
    .line 1215
    iget-object v7, v7, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    .line 1216
    .line 1217
    const/4 v11, 0x1

    .line 1218
    if-ne v2, v11, :cond_37

    .line 1219
    .line 1220
    add-long v18, v18, v20

    .line 1221
    .line 1222
    add-int/lit8 v8, v8, -0x8

    .line 1223
    .line 1224
    :cond_37
    move-wide/from16 v13, v18

    .line 1225
    .line 1226
    long-to-int v2, v13

    .line 1227
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 1228
    .line 1229
    .line 1230
    iget-object v2, v7, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 1231
    .line 1232
    iget-object v11, v7, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 1233
    .line 1234
    const-string v13, "video/avc"

    .line 1235
    .line 1236
    invoke-static {v2, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1237
    .line 1238
    .line 1239
    move-result v13

    .line 1240
    iget v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->b:I

    .line 1241
    .line 1242
    if-eqz v13, :cond_39

    .line 1243
    .line 1244
    and-int/lit8 v2, v14, 0x20

    .line 1245
    .line 1246
    if-eqz v2, :cond_38

    .line 1247
    .line 1248
    :goto_1d
    const/4 v2, 0x1

    .line 1249
    goto :goto_1e

    .line 1250
    :cond_38
    const/4 v2, 0x0

    .line 1251
    goto :goto_1e

    .line 1252
    :cond_39
    const-string v13, "video/hevc"

    .line 1253
    .line 1254
    invoke-static {v2, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1255
    .line 1256
    .line 1257
    move-result v13

    .line 1258
    if-eqz v13, :cond_3a

    .line 1259
    .line 1260
    and-int/lit16 v2, v14, 0x80

    .line 1261
    .line 1262
    if-eqz v2, :cond_38

    .line 1263
    .line 1264
    goto :goto_1d

    .line 1265
    :cond_3a
    const-string v13, "video/apv"

    .line 1266
    .line 1267
    invoke-static {v2, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v2

    .line 1271
    :goto_1e
    if-nez v2, :cond_3b

    .line 1272
    .line 1273
    const/4 v2, 0x1

    .line 1274
    iput-boolean v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->w:Z

    .line 1275
    .line 1276
    goto :goto_1f

    .line 1277
    :cond_3b
    const/4 v2, 0x1

    .line 1278
    :goto_1f
    if-eqz v10, :cond_41

    .line 1279
    .line 1280
    iget-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->e:Landroidx/media3/common/util/ParsableByteArray;

    .line 1281
    .line 1282
    iget-object v11, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1283
    .line 1284
    const/16 v24, 0x0

    .line 1285
    .line 1286
    aput-byte v24, v11, v24

    .line 1287
    .line 1288
    aput-byte v24, v11, v2

    .line 1289
    .line 1290
    const/16 v23, 0x2

    .line 1291
    .line 1292
    aput-byte v24, v11, v23

    .line 1293
    .line 1294
    rsub-int/lit8 v2, v10, 0x4

    .line 1295
    .line 1296
    add-int/2addr v8, v2

    .line 1297
    :cond_3c
    :goto_20
    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1298
    .line 1299
    if-ge v12, v8, :cond_40

    .line 1300
    .line 1301
    iget v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->v:I

    .line 1302
    .line 1303
    if-nez v12, :cond_3f

    .line 1304
    .line 1305
    iget-boolean v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->w:Z

    .line 1306
    .line 1307
    if-nez v12, :cond_3d

    .line 1308
    .line 1309
    invoke-static {v7}, Landroidx/media3/container/NalUnitUtil;->e(Landroidx/media3/common/Format;)I

    .line 1310
    .line 1311
    .line 1312
    move-result v12

    .line 1313
    add-int/2addr v12, v10

    .line 1314
    aget v13, v26, v37

    .line 1315
    .line 1316
    iget v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    .line 1317
    .line 1318
    sub-int/2addr v13, v14

    .line 1319
    if-gt v12, v13, :cond_3d

    .line 1320
    .line 1321
    invoke-static {v7}, Landroidx/media3/container/NalUnitUtil;->e(Landroidx/media3/common/Format;)I

    .line 1322
    .line 1323
    .line 1324
    move-result v12

    .line 1325
    add-int v13, v10, v12

    .line 1326
    .line 1327
    goto :goto_21

    .line 1328
    :cond_3d
    move v13, v10

    .line 1329
    const/4 v12, 0x0

    .line 1330
    :goto_21
    invoke-interface {v1, v11, v2, v13}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1331
    .line 1332
    .line 1333
    iget v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    .line 1334
    .line 1335
    add-int/2addr v14, v13

    .line 1336
    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    .line 1337
    .line 1338
    const/4 v13, 0x0

    .line 1339
    invoke-virtual {v5, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1343
    .line 1344
    .line 1345
    move-result v14

    .line 1346
    if-ltz v14, :cond_3e

    .line 1347
    .line 1348
    sub-int/2addr v14, v12

    .line 1349
    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->v:I

    .line 1350
    .line 1351
    iget-object v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->d:Landroidx/media3/common/util/ParsableByteArray;

    .line 1352
    .line 1353
    invoke-virtual {v14, v13}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1354
    .line 1355
    .line 1356
    const/4 v13, 0x4

    .line 1357
    invoke-interface {v4, v13, v14}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 1358
    .line 1359
    .line 1360
    iget v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1361
    .line 1362
    add-int/2addr v14, v13

    .line 1363
    iput v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1364
    .line 1365
    if-lez v12, :cond_3c

    .line 1366
    .line 1367
    invoke-interface {v4, v12, v5}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 1368
    .line 1369
    .line 1370
    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1371
    .line 1372
    add-int/2addr v13, v12

    .line 1373
    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1374
    .line 1375
    invoke-static {v11, v12, v7}, Landroidx/media3/container/NalUnitUtil;->d([BILandroidx/media3/common/Format;)Z

    .line 1376
    .line 1377
    .line 1378
    move-result v12

    .line 1379
    if-eqz v12, :cond_3c

    .line 1380
    .line 1381
    const/4 v12, 0x1

    .line 1382
    iput-boolean v12, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->w:Z

    .line 1383
    .line 1384
    goto :goto_20

    .line 1385
    :cond_3e
    const-string v0, "Invalid NAL length"

    .line 1386
    .line 1387
    const/4 v1, 0x0

    .line 1388
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1389
    .line 1390
    .line 1391
    move-result-object v0

    .line 1392
    throw v0

    .line 1393
    :cond_3f
    const/4 v13, 0x0

    .line 1394
    invoke-interface {v4, v1, v12, v13}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    .line 1395
    .line 1396
    .line 1397
    move-result v12

    .line 1398
    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    .line 1399
    .line 1400
    add-int/2addr v13, v12

    .line 1401
    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    .line 1402
    .line 1403
    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1404
    .line 1405
    add-int/2addr v13, v12

    .line 1406
    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1407
    .line 1408
    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->v:I

    .line 1409
    .line 1410
    sub-int/2addr v13, v12

    .line 1411
    iput v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->v:I

    .line 1412
    .line 1413
    goto :goto_20

    .line 1414
    :cond_40
    move/from16 v33, v8

    .line 1415
    .line 1416
    goto/16 :goto_23

    .line 1417
    .line 1418
    :cond_41
    iget-object v2, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->h:Landroidx/media3/common/Format;

    .line 1419
    .line 1420
    const-string v7, "audio/ac4"

    .line 1421
    .line 1422
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1423
    .line 1424
    .line 1425
    move-result v7

    .line 1426
    if-eqz v7, :cond_43

    .line 1427
    .line 1428
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1429
    .line 1430
    if-nez v2, :cond_42

    .line 1431
    .line 1432
    invoke-static {v8, v12}, Landroidx/media3/extractor/Ac4Util;->a(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 1433
    .line 1434
    .line 1435
    const/4 v2, 0x7

    .line 1436
    invoke-interface {v4, v2, v12}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 1437
    .line 1438
    .line 1439
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1440
    .line 1441
    add-int/2addr v5, v2

    .line 1442
    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1443
    .line 1444
    :cond_42
    add-int/lit8 v8, v8, 0x7

    .line 1445
    .line 1446
    goto :goto_22

    .line 1447
    :cond_43
    if-eqz v2, :cond_45

    .line 1448
    .line 1449
    invoke-static {v11, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1450
    .line 1451
    .line 1452
    move-result v5

    .line 1453
    if-eqz v5, :cond_45

    .line 1454
    .line 1455
    const/4 v13, 0x4

    .line 1456
    invoke-virtual {v12, v13}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 1457
    .line 1458
    .line 1459
    iget-object v5, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1460
    .line 1461
    const/4 v10, 0x0

    .line 1462
    invoke-interface {v1, v5, v10, v13}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 1463
    .line 1464
    .line 1465
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 1466
    .line 1467
    .line 1468
    new-instance v5, Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 1469
    .line 1470
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1474
    .line 1475
    .line 1476
    move-result v7

    .line 1477
    invoke-virtual {v5, v7}, Landroidx/media3/extractor/MpegAudioUtil$Header;->a(I)Z

    .line 1478
    .line 1479
    .line 1480
    move-result v7

    .line 1481
    if-eqz v7, :cond_44

    .line 1482
    .line 1483
    iget-object v7, v2, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 1484
    .line 1485
    iget-object v10, v5, Landroidx/media3/extractor/MpegAudioUtil$Header;->b:Ljava/lang/String;

    .line 1486
    .line 1487
    invoke-static {v7, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v7

    .line 1491
    if-nez v7, :cond_44

    .line 1492
    .line 1493
    invoke-virtual {v2}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v2

    .line 1497
    iget-object v5, v5, Landroidx/media3/extractor/MpegAudioUtil$Header;->b:Ljava/lang/String;

    .line 1498
    .line 1499
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1500
    .line 1501
    .line 1502
    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 1503
    .line 1504
    .line 1505
    move-result-object v5

    .line 1506
    iput-object v5, v2, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 1507
    .line 1508
    new-instance v5, Landroidx/media3/common/Format;

    .line 1509
    .line 1510
    invoke-direct {v5, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 1511
    .line 1512
    .line 1513
    move-object v2, v5

    .line 1514
    :cond_44
    invoke-interface {v4, v2}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 1515
    .line 1516
    .line 1517
    const/4 v5, 0x0

    .line 1518
    iput-object v5, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->h:Landroidx/media3/common/Format;

    .line 1519
    .line 1520
    goto :goto_22

    .line 1521
    :cond_45
    const/4 v5, 0x0

    .line 1522
    if-eqz v2, :cond_46

    .line 1523
    .line 1524
    invoke-static {v11}, Landroidx/media3/extractor/DtsUtil;->e(Ljava/lang/String;)Z

    .line 1525
    .line 1526
    .line 1527
    move-result v7

    .line 1528
    if-eqz v7, :cond_46

    .line 1529
    .line 1530
    invoke-static {v1, v8, v2}, Landroidx/media3/extractor/DtsUtil;->h(Landroidx/media3/extractor/ExtractorInput;ILandroidx/media3/common/Format;)Landroidx/media3/common/Format;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v2

    .line 1534
    invoke-interface {v4, v2}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 1535
    .line 1536
    .line 1537
    iput-object v5, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->h:Landroidx/media3/common/Format;

    .line 1538
    .line 1539
    goto :goto_22

    .line 1540
    :cond_46
    if-eqz v9, :cond_47

    .line 1541
    .line 1542
    invoke-virtual {v9, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->c(Landroidx/media3/extractor/ExtractorInput;)V

    .line 1543
    .line 1544
    .line 1545
    :cond_47
    :goto_22
    iget v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1546
    .line 1547
    if-ge v2, v8, :cond_40

    .line 1548
    .line 1549
    sub-int v2, v8, v2

    .line 1550
    .line 1551
    const/4 v10, 0x0

    .line 1552
    invoke-interface {v4, v1, v2, v10}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    .line 1553
    .line 1554
    .line 1555
    move-result v2

    .line 1556
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    .line 1557
    .line 1558
    add-int/2addr v5, v2

    .line 1559
    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    .line 1560
    .line 1561
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1562
    .line 1563
    add-int/2addr v5, v2

    .line 1564
    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1565
    .line 1566
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->v:I

    .line 1567
    .line 1568
    sub-int/2addr v5, v2

    .line 1569
    iput v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->v:I

    .line 1570
    .line 1571
    goto :goto_22

    .line 1572
    :goto_23
    iget-object v1, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    .line 1573
    .line 1574
    aget-wide v30, v1, v37

    .line 1575
    .line 1576
    iget-object v1, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->g:[I

    .line 1577
    .line 1578
    aget v1, v1, v37

    .line 1579
    .line 1580
    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->w:Z

    .line 1581
    .line 1582
    if-nez v2, :cond_48

    .line 1583
    .line 1584
    const/high16 v2, 0x4000000

    .line 1585
    .line 1586
    or-int/2addr v1, v2

    .line 1587
    :cond_48
    move/from16 v32, v1

    .line 1588
    .line 1589
    if-eqz v9, :cond_49

    .line 1590
    .line 1591
    const/16 v35, 0x0

    .line 1592
    .line 1593
    const/16 v36, 0x0

    .line 1594
    .line 1595
    move-object/from16 v29, v9

    .line 1596
    .line 1597
    move/from16 v34, v33

    .line 1598
    .line 1599
    move/from16 v33, v32

    .line 1600
    .line 1601
    move-wide/from16 v31, v30

    .line 1602
    .line 1603
    move-object/from16 v30, v4

    .line 1604
    .line 1605
    invoke-virtual/range {v29 .. v36}, Landroidx/media3/extractor/TrueHdSampleRechunker;->b(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1606
    .line 1607
    .line 1608
    move-object/from16 v2, v29

    .line 1609
    .line 1610
    move-object/from16 v1, v30

    .line 1611
    .line 1612
    const/16 v22, 0x1

    .line 1613
    .line 1614
    add-int/lit8 v8, v37, 0x1

    .line 1615
    .line 1616
    iget v4, v6, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    .line 1617
    .line 1618
    if-ne v8, v4, :cond_4a

    .line 1619
    .line 1620
    const/4 v5, 0x0

    .line 1621
    invoke-virtual {v2, v1, v5}, Landroidx/media3/extractor/TrueHdSampleRechunker;->a(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1622
    .line 1623
    .line 1624
    goto :goto_24

    .line 1625
    :cond_49
    move-object v1, v4

    .line 1626
    const/16 v22, 0x1

    .line 1627
    .line 1628
    const/16 v34, 0x0

    .line 1629
    .line 1630
    const/16 v35, 0x0

    .line 1631
    .line 1632
    move-object/from16 v29, v1

    .line 1633
    .line 1634
    invoke-interface/range {v29 .. v35}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    .line 1635
    .line 1636
    .line 1637
    :cond_4a
    :goto_24
    iget v1, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->g:I

    .line 1638
    .line 1639
    add-int/lit8 v1, v1, 0x1

    .line 1640
    .line 1641
    iput v1, v3, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->g:I

    .line 1642
    .line 1643
    const/4 v3, -0x1

    .line 1644
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->s:I

    .line 1645
    .line 1646
    const/4 v10, 0x0

    .line 1647
    iput v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->t:I

    .line 1648
    .line 1649
    iput v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->u:I

    .line 1650
    .line 1651
    iput v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->v:I

    .line 1652
    .line 1653
    iput-boolean v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->w:Z

    .line 1654
    .line 1655
    return v10

    .line 1656
    :goto_25
    iput-wide v13, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 1657
    .line 1658
    return v22

    .line 1659
    :cond_4b
    iget-wide v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 1660
    .line 1661
    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 1662
    .line 1663
    int-to-long v7, v7

    .line 1664
    sub-long/2addr v3, v7

    .line 1665
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 1666
    .line 1667
    .line 1668
    move-result-wide v7

    .line 1669
    add-long/2addr v7, v3

    .line 1670
    iget-object v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:Landroidx/media3/common/util/ParsableByteArray;

    .line 1671
    .line 1672
    if-eqz v9, :cond_52

    .line 1673
    .line 1674
    iget-object v10, v9, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1675
    .line 1676
    iget v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 1677
    .line 1678
    long-to-int v3, v3

    .line 1679
    invoke-interface {v1, v10, v11, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1680
    .line 1681
    .line 1682
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    .line 1683
    .line 1684
    if-ne v3, v5, :cond_51

    .line 1685
    .line 1686
    const/4 v11, 0x1

    .line 1687
    iput-boolean v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->x:Z

    .line 1688
    .line 1689
    const/16 v6, 0x8

    .line 1690
    .line 1691
    invoke-virtual {v9, v6}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1692
    .line 1693
    .line 1694
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1695
    .line 1696
    .line 1697
    move-result v3

    .line 1698
    const v4, 0x71742020

    .line 1699
    .line 1700
    .line 1701
    if-eq v3, v4, :cond_4c

    .line 1702
    .line 1703
    const/4 v3, 0x0

    .line 1704
    goto :goto_26

    .line 1705
    :cond_4c
    const/4 v3, 0x1

    .line 1706
    :goto_26
    if-eqz v3, :cond_4d

    .line 1707
    .line 1708
    goto :goto_28

    .line 1709
    :cond_4d
    const/4 v13, 0x4

    .line 1710
    invoke-virtual {v9, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    .line 1711
    .line 1712
    .line 1713
    :cond_4e
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 1714
    .line 1715
    .line 1716
    move-result v3

    .line 1717
    if-lez v3, :cond_50

    .line 1718
    .line 1719
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1720
    .line 1721
    .line 1722
    move-result v3

    .line 1723
    if-eq v3, v4, :cond_4f

    .line 1724
    .line 1725
    const/4 v3, 0x0

    .line 1726
    goto :goto_27

    .line 1727
    :cond_4f
    const/4 v3, 0x1

    .line 1728
    :goto_27
    if-eqz v3, :cond_4e

    .line 1729
    .line 1730
    goto :goto_28

    .line 1731
    :cond_50
    const/4 v3, 0x0

    .line 1732
    :goto_28
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->H:I

    .line 1733
    .line 1734
    goto :goto_29

    .line 1735
    :cond_51
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1736
    .line 1737
    .line 1738
    move-result v3

    .line 1739
    if-nez v3, :cond_54

    .line 1740
    .line 1741
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v3

    .line 1745
    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 1746
    .line 1747
    new-instance v4, Landroidx/media3/container/Mp4Box$LeafBox;

    .line 1748
    .line 1749
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    .line 1750
    .line 1751
    invoke-direct {v4, v5, v9}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    .line 1752
    .line 1753
    .line 1754
    iget-object v3, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->c:Ljava/util/ArrayList;

    .line 1755
    .line 1756
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    .line 1758
    .line 1759
    goto :goto_29

    .line 1760
    :cond_52
    iget-boolean v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->x:Z

    .line 1761
    .line 1762
    if-nez v5, :cond_53

    .line 1763
    .line 1764
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    .line 1765
    .line 1766
    const v6, 0x6d646174

    .line 1767
    .line 1768
    .line 1769
    if-ne v5, v6, :cond_53

    .line 1770
    .line 1771
    const/4 v11, 0x1

    .line 1772
    iput v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->H:I

    .line 1773
    .line 1774
    :cond_53
    cmp-long v5, v3, v16

    .line 1775
    .line 1776
    if-gez v5, :cond_55

    .line 1777
    .line 1778
    long-to-int v3, v3

    .line 1779
    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 1780
    .line 1781
    .line 1782
    :cond_54
    :goto_29
    const/4 v3, 0x0

    .line 1783
    goto :goto_2a

    .line 1784
    :cond_55
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 1785
    .line 1786
    .line 1787
    move-result-wide v5

    .line 1788
    add-long/2addr v5, v3

    .line 1789
    iput-wide v5, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 1790
    .line 1791
    const/4 v3, 0x1

    .line 1792
    :goto_2a
    invoke-virtual {v0, v7, v8}, Landroidx/media3/extractor/mp4/Mp4Extractor;->g(J)V

    .line 1793
    .line 1794
    .line 1795
    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->y:Z

    .line 1796
    .line 1797
    if-eqz v4, :cond_56

    .line 1798
    .line 1799
    const/4 v11, 0x1

    .line 1800
    iput-boolean v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->z:Z

    .line 1801
    .line 1802
    const-wide/16 v9, 0x0

    .line 1803
    .line 1804
    iput-wide v9, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 1805
    .line 1806
    const/4 v10, 0x0

    .line 1807
    iput-boolean v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->y:Z

    .line 1808
    .line 1809
    const/4 v3, 0x1

    .line 1810
    :cond_56
    if-eqz v3, :cond_57

    .line 1811
    .line 1812
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 1813
    .line 1814
    const/4 v11, 0x2

    .line 1815
    if-eq v3, v11, :cond_57

    .line 1816
    .line 1817
    const/4 v14, 0x1

    .line 1818
    goto :goto_2b

    .line 1819
    :cond_57
    const/4 v14, 0x0

    .line 1820
    :goto_2b
    if-eqz v14, :cond_0

    .line 1821
    .line 1822
    const/4 v11, 0x1

    .line 1823
    :cond_58
    return v11

    .line 1824
    :cond_59
    move v11, v15

    .line 1825
    const-wide/16 v18, -0x1

    .line 1826
    .line 1827
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 1828
    .line 1829
    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->g:Landroidx/media3/common/util/ParsableByteArray;

    .line 1830
    .line 1831
    if-nez v3, :cond_5b

    .line 1832
    .line 1833
    iget-object v3, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1834
    .line 1835
    const/16 v7, 0x8

    .line 1836
    .line 1837
    const/4 v10, 0x0

    .line 1838
    invoke-interface {v1, v3, v10, v7, v11}, Landroidx/media3/extractor/ExtractorInput;->a([BIIZ)Z

    .line 1839
    .line 1840
    .line 1841
    move-result v3

    .line 1842
    if-nez v3, :cond_5a

    .line 1843
    .line 1844
    move v14, v10

    .line 1845
    goto/16 :goto_33

    .line 1846
    .line 1847
    :cond_5a
    iput v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 1848
    .line 1849
    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 1850
    .line 1851
    .line 1852
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->B()J

    .line 1853
    .line 1854
    .line 1855
    move-result-wide v7

    .line 1856
    iput-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 1857
    .line 1858
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 1859
    .line 1860
    .line 1861
    move-result v3

    .line 1862
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    .line 1863
    .line 1864
    :cond_5b
    iget-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 1865
    .line 1866
    const-wide/16 v9, 0x1

    .line 1867
    .line 1868
    cmp-long v3, v7, v9

    .line 1869
    .line 1870
    if-nez v3, :cond_5c

    .line 1871
    .line 1872
    iget-object v3, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 1873
    .line 1874
    const/16 v7, 0x8

    .line 1875
    .line 1876
    invoke-interface {v1, v3, v7, v7}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 1877
    .line 1878
    .line 1879
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 1880
    .line 1881
    add-int/2addr v3, v7

    .line 1882
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 1883
    .line 1884
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->F()J

    .line 1885
    .line 1886
    .line 1887
    move-result-wide v7

    .line 1888
    iput-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 1889
    .line 1890
    goto :goto_2c

    .line 1891
    :cond_5c
    const-wide/16 v27, 0x0

    .line 1892
    .line 1893
    cmp-long v3, v7, v27

    .line 1894
    .line 1895
    if-nez v3, :cond_5e

    .line 1896
    .line 1897
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 1898
    .line 1899
    .line 1900
    move-result-wide v7

    .line 1901
    cmp-long v3, v7, v18

    .line 1902
    .line 1903
    if-nez v3, :cond_5d

    .line 1904
    .line 1905
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v3

    .line 1909
    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 1910
    .line 1911
    if-eqz v3, :cond_5d

    .line 1912
    .line 1913
    iget-wide v7, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->b:J

    .line 1914
    .line 1915
    :cond_5d
    cmp-long v3, v7, v18

    .line 1916
    .line 1917
    if-eqz v3, :cond_5e

    .line 1918
    .line 1919
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 1920
    .line 1921
    .line 1922
    move-result-wide v9

    .line 1923
    sub-long/2addr v7, v9

    .line 1924
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 1925
    .line 1926
    int-to-long v9, v3

    .line 1927
    add-long/2addr v7, v9

    .line 1928
    iput-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 1929
    .line 1930
    :cond_5e
    :goto_2c
    iget-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 1931
    .line 1932
    iget v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 1933
    .line 1934
    int-to-long v9, v3

    .line 1935
    cmp-long v7, v7, v9

    .line 1936
    .line 1937
    if-gez v7, :cond_60

    .line 1938
    .line 1939
    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    .line 1940
    .line 1941
    const v8, 0x66726565

    .line 1942
    .line 1943
    .line 1944
    if-ne v7, v8, :cond_5f

    .line 1945
    .line 1946
    const/16 v7, 0x8

    .line 1947
    .line 1948
    if-ne v3, v7, :cond_5f

    .line 1949
    .line 1950
    iput-wide v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 1951
    .line 1952
    goto :goto_2d

    .line 1953
    :cond_5f
    const-string v0, "Atom size less than header length (unsupported)."

    .line 1954
    .line 1955
    invoke-static {v0}, Landroidx/media3/common/ParserException;->b(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v0

    .line 1959
    throw v0

    .line 1960
    :cond_60
    :goto_2d
    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    .line 1961
    .line 1962
    const v8, 0x6d6f6f76

    .line 1963
    .line 1964
    .line 1965
    const v9, 0x6d657461

    .line 1966
    .line 1967
    .line 1968
    if-eq v7, v8, :cond_61

    .line 1969
    .line 1970
    const v8, 0x7472616b

    .line 1971
    .line 1972
    .line 1973
    if-eq v7, v8, :cond_61

    .line 1974
    .line 1975
    const v8, 0x6d646961

    .line 1976
    .line 1977
    .line 1978
    if-eq v7, v8, :cond_61

    .line 1979
    .line 1980
    const v8, 0x6d696e66

    .line 1981
    .line 1982
    .line 1983
    if-eq v7, v8, :cond_61

    .line 1984
    .line 1985
    const v8, 0x7374626c

    .line 1986
    .line 1987
    .line 1988
    if-eq v7, v8, :cond_61

    .line 1989
    .line 1990
    const v8, 0x65647473

    .line 1991
    .line 1992
    .line 1993
    if-eq v7, v8, :cond_61

    .line 1994
    .line 1995
    if-eq v7, v9, :cond_61

    .line 1996
    .line 1997
    const v8, 0x61787465

    .line 1998
    .line 1999
    .line 2000
    if-eq v7, v8, :cond_61

    .line 2001
    .line 2002
    const v8, 0x74726566

    .line 2003
    .line 2004
    .line 2005
    if-ne v7, v8, :cond_62

    .line 2006
    .line 2007
    :cond_61
    const/4 v11, 0x1

    .line 2008
    goto/16 :goto_31

    .line 2009
    .line 2010
    :cond_62
    const v6, 0x6d646864

    .line 2011
    .line 2012
    .line 2013
    if-eq v7, v6, :cond_63

    .line 2014
    .line 2015
    const v6, 0x6d766864

    .line 2016
    .line 2017
    .line 2018
    if-eq v7, v6, :cond_63

    .line 2019
    .line 2020
    const v6, 0x68646c72    # 4.3148E24f

    .line 2021
    .line 2022
    .line 2023
    if-eq v7, v6, :cond_63

    .line 2024
    .line 2025
    const v6, 0x73747364

    .line 2026
    .line 2027
    .line 2028
    if-eq v7, v6, :cond_63

    .line 2029
    .line 2030
    const v6, 0x73747473

    .line 2031
    .line 2032
    .line 2033
    if-eq v7, v6, :cond_63

    .line 2034
    .line 2035
    const v6, 0x73747373

    .line 2036
    .line 2037
    .line 2038
    if-eq v7, v6, :cond_63

    .line 2039
    .line 2040
    const v6, 0x63747473

    .line 2041
    .line 2042
    .line 2043
    if-eq v7, v6, :cond_63

    .line 2044
    .line 2045
    const v6, 0x656c7374

    .line 2046
    .line 2047
    .line 2048
    if-eq v7, v6, :cond_63

    .line 2049
    .line 2050
    const v6, 0x73747363

    .line 2051
    .line 2052
    .line 2053
    if-eq v7, v6, :cond_63

    .line 2054
    .line 2055
    const v6, 0x7374737a

    .line 2056
    .line 2057
    .line 2058
    if-eq v7, v6, :cond_63

    .line 2059
    .line 2060
    const v6, 0x73747a32

    .line 2061
    .line 2062
    .line 2063
    if-eq v7, v6, :cond_63

    .line 2064
    .line 2065
    const v6, 0x7374636f

    .line 2066
    .line 2067
    .line 2068
    if-eq v7, v6, :cond_63

    .line 2069
    .line 2070
    const v6, 0x636f3634

    .line 2071
    .line 2072
    .line 2073
    if-eq v7, v6, :cond_63

    .line 2074
    .line 2075
    const v6, 0x746b6864

    .line 2076
    .line 2077
    .line 2078
    if-eq v7, v6, :cond_63

    .line 2079
    .line 2080
    if-eq v7, v5, :cond_63

    .line 2081
    .line 2082
    const v5, 0x75647461

    .line 2083
    .line 2084
    .line 2085
    if-eq v7, v5, :cond_63

    .line 2086
    .line 2087
    const v5, 0x6b657973

    .line 2088
    .line 2089
    .line 2090
    if-eq v7, v5, :cond_63

    .line 2091
    .line 2092
    const v5, 0x696c7374

    .line 2093
    .line 2094
    .line 2095
    if-eq v7, v5, :cond_63

    .line 2096
    .line 2097
    const v5, 0x63686170

    .line 2098
    .line 2099
    .line 2100
    if-ne v7, v5, :cond_64

    .line 2101
    .line 2102
    :cond_63
    const/16 v6, 0x8

    .line 2103
    .line 2104
    goto :goto_2e

    .line 2105
    :cond_64
    const/4 v5, 0x0

    .line 2106
    iput-object v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:Landroidx/media3/common/util/ParsableByteArray;

    .line 2107
    .line 2108
    const/4 v11, 0x1

    .line 2109
    iput v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 2110
    .line 2111
    goto/16 :goto_32

    .line 2112
    .line 2113
    :goto_2e
    if-ne v3, v6, :cond_65

    .line 2114
    .line 2115
    const/4 v3, 0x1

    .line 2116
    goto :goto_2f

    .line 2117
    :cond_65
    const/4 v3, 0x0

    .line 2118
    :goto_2f
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 2119
    .line 2120
    .line 2121
    iget-wide v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 2122
    .line 2123
    const-wide/32 v7, 0x7fffffff

    .line 2124
    .line 2125
    .line 2126
    cmp-long v3, v5, v7

    .line 2127
    .line 2128
    if-gtz v3, :cond_66

    .line 2129
    .line 2130
    const/4 v3, 0x1

    .line 2131
    goto :goto_30

    .line 2132
    :cond_66
    const/4 v3, 0x0

    .line 2133
    :goto_30
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 2134
    .line 2135
    .line 2136
    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    .line 2137
    .line 2138
    iget-wide v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 2139
    .line 2140
    long-to-int v5, v5

    .line 2141
    invoke-direct {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 2142
    .line 2143
    .line 2144
    iget-object v4, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2145
    .line 2146
    iget-object v5, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2147
    .line 2148
    const/16 v6, 0x8

    .line 2149
    .line 2150
    const/4 v10, 0x0

    .line 2151
    invoke-static {v4, v10, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2152
    .line 2153
    .line 2154
    iput-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->r:Landroidx/media3/common/util/ParsableByteArray;

    .line 2155
    .line 2156
    const/4 v11, 0x1

    .line 2157
    iput v11, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 2158
    .line 2159
    goto :goto_32

    .line 2160
    :goto_31
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 2161
    .line 2162
    .line 2163
    move-result-wide v3

    .line 2164
    iget-wide v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 2165
    .line 2166
    add-long/2addr v3, v7

    .line 2167
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 2168
    .line 2169
    int-to-long v13, v5

    .line 2170
    sub-long/2addr v3, v13

    .line 2171
    cmp-long v5, v7, v13

    .line 2172
    .line 2173
    if-eqz v5, :cond_67

    .line 2174
    .line 2175
    iget v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    .line 2176
    .line 2177
    if-ne v5, v9, :cond_67

    .line 2178
    .line 2179
    const/16 v7, 0x8

    .line 2180
    .line 2181
    invoke-virtual {v12, v7}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 2182
    .line 2183
    .line 2184
    iget-object v5, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 2185
    .line 2186
    const/4 v10, 0x0

    .line 2187
    invoke-interface {v1, v5, v10, v7}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 2188
    .line 2189
    .line 2190
    invoke-static {v12}, Landroidx/media3/extractor/mp4/BoxParser;->a(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 2191
    .line 2192
    .line 2193
    iget v5, v12, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 2194
    .line 2195
    invoke-interface {v1, v5}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 2196
    .line 2197
    .line 2198
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 2199
    .line 2200
    .line 2201
    :cond_67
    new-instance v5, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 2202
    .line 2203
    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->o:I

    .line 2204
    .line 2205
    invoke-direct {v5, v7, v3, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    .line 2206
    .line 2207
    .line 2208
    invoke-virtual {v6, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 2209
    .line 2210
    .line 2211
    iget-wide v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->p:J

    .line 2212
    .line 2213
    iget v7, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 2214
    .line 2215
    int-to-long v7, v7

    .line 2216
    cmp-long v5, v5, v7

    .line 2217
    .line 2218
    if-nez v5, :cond_68

    .line 2219
    .line 2220
    invoke-virtual {v0, v3, v4}, Landroidx/media3/extractor/mp4/Mp4Extractor;->g(J)V

    .line 2221
    .line 2222
    .line 2223
    goto :goto_32

    .line 2224
    :cond_68
    const/4 v10, 0x0

    .line 2225
    iput v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 2226
    .line 2227
    iput v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 2228
    .line 2229
    :goto_32
    move v14, v11

    .line 2230
    :goto_33
    if-nez v14, :cond_69

    .line 2231
    .line 2232
    goto/16 :goto_0

    .line 2233
    .line 2234
    :goto_34
    return v25

    .line 2235
    :cond_69
    const/16 v25, -0x1

    .line 2236
    .line 2237
    goto/16 :goto_1

    .line 2238
    .line 2239
    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch

    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(J)V
    .locals 45

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    :goto_0
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->h:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    if-nez v2, :cond_3c

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 18
    .line 19
    iget-wide v6, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->b:J

    .line 20
    .line 21
    cmp-long v2, v6, p1

    .line 22
    .line 23
    if-nez v2, :cond_3c

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    move-object v6, v2

    .line 30
    check-cast v6, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 31
    .line 32
    iget v2, v6, Landroidx/media3/container/Mp4Box;->a:I

    .line 33
    .line 34
    const v7, 0x6d6f6f76

    .line 35
    .line 36
    .line 37
    if-ne v2, v7, :cond_3b

    .line 38
    .line 39
    const v2, 0x6d657461

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    const-wide/16 v15, 0x0

    .line 52
    .line 53
    const/16 v17, 0x0

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    if-eqz v2, :cond_d

    .line 57
    .line 58
    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->e(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-boolean v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->z:Z

    .line 63
    .line 64
    if-eqz v9, :cond_e

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v7, v2, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    .line 70
    .line 71
    array-length v9, v7

    .line 72
    move v10, v3

    .line 73
    :goto_1
    const-class v11, Landroidx/media3/container/MdtaMetadataEntry;

    .line 74
    .line 75
    if-ge v10, v9, :cond_3

    .line 76
    .line 77
    aget-object v12, v7, v10

    .line 78
    .line 79
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    invoke-virtual {v11, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    if-eqz v13, :cond_1

    .line 88
    .line 89
    invoke-virtual {v11, v12}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    check-cast v12, Landroidx/media3/common/Metadata$Entry;

    .line 94
    .line 95
    move-object v13, v12

    .line 96
    check-cast v13, Landroidx/media3/container/MdtaMetadataEntry;

    .line 97
    .line 98
    iget-object v13, v13, Landroidx/media3/container/MdtaMetadataEntry;->a:Ljava/lang/String;

    .line 99
    .line 100
    const-string v14, "auxiliary.tracks.interleaved"

    .line 101
    .line 102
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    if-eqz v13, :cond_1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_1
    move-object/from16 v12, v17

    .line 110
    .line 111
    :goto_2
    if-eqz v12, :cond_2

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move-object/from16 v12, v17

    .line 118
    .line 119
    :goto_3
    check-cast v12, Landroidx/media3/container/MdtaMetadataEntry;

    .line 120
    .line 121
    if-eqz v12, :cond_4

    .line 122
    .line 123
    iget-object v9, v12, Landroidx/media3/container/MdtaMetadataEntry;->b:[B

    .line 124
    .line 125
    aget-byte v9, v9, v3

    .line 126
    .line 127
    if-nez v9, :cond_4

    .line 128
    .line 129
    const-wide/16 v9, 0x10

    .line 130
    .line 131
    add-long/2addr v9, v15

    .line 132
    iput-wide v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->D:J

    .line 133
    .line 134
    :cond_4
    array-length v9, v7

    .line 135
    move v10, v3

    .line 136
    :goto_4
    if-ge v10, v9, :cond_7

    .line 137
    .line 138
    aget-object v12, v7, v10

    .line 139
    .line 140
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-result-object v13

    .line 144
    invoke-virtual {v11, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    if-eqz v13, :cond_5

    .line 149
    .line 150
    invoke-virtual {v11, v12}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    check-cast v12, Landroidx/media3/common/Metadata$Entry;

    .line 155
    .line 156
    move-object v13, v12

    .line 157
    check-cast v13, Landroidx/media3/container/MdtaMetadataEntry;

    .line 158
    .line 159
    iget-object v13, v13, Landroidx/media3/container/MdtaMetadataEntry;->a:Ljava/lang/String;

    .line 160
    .line 161
    const-string v14, "auxiliary.tracks.map"

    .line 162
    .line 163
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v13

    .line 167
    if-eqz v13, :cond_5

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_5
    move-object/from16 v12, v17

    .line 171
    .line 172
    :goto_5
    if-eqz v12, :cond_6

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_7
    move-object/from16 v12, v17

    .line 179
    .line 180
    :goto_6
    check-cast v12, Landroidx/media3/container/MdtaMetadataEntry;

    .line 181
    .line 182
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v12}, Landroidx/media3/container/MdtaMetadataEntry;->d()Ljava/util/ArrayList;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    new-instance v9, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .line 197
    .line 198
    move v10, v3

    .line 199
    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 200
    .line 201
    .line 202
    move-result v11

    .line 203
    if-ge v10, v11, :cond_c

    .line 204
    .line 205
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    check-cast v11, Ljava/lang/Integer;

    .line 210
    .line 211
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 212
    .line 213
    .line 214
    move-result v11

    .line 215
    if-eqz v11, :cond_a

    .line 216
    .line 217
    if-eq v11, v8, :cond_9

    .line 218
    .line 219
    const/4 v12, 0x3

    .line 220
    if-eq v11, v5, :cond_b

    .line 221
    .line 222
    if-eq v11, v12, :cond_8

    .line 223
    .line 224
    move v12, v3

    .line 225
    goto :goto_8

    .line 226
    :cond_8
    const/4 v12, 0x4

    .line 227
    goto :goto_8

    .line 228
    :cond_9
    move v12, v5

    .line 229
    goto :goto_8

    .line 230
    :cond_a
    move v12, v8

    .line 231
    :cond_b
    :goto_8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    add-int/lit8 v10, v10, 0x1

    .line 239
    .line 240
    goto :goto_7

    .line 241
    :cond_c
    move-object v7, v9

    .line 242
    goto :goto_9

    .line 243
    :cond_d
    move-object/from16 v2, v17

    .line 244
    .line 245
    :cond_e
    :goto_9
    new-instance v9, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    iget v10, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->H:I

    .line 251
    .line 252
    if-ne v10, v8, :cond_f

    .line 253
    .line 254
    move v12, v8

    .line 255
    :goto_a
    move-object v10, v7

    .line 256
    goto :goto_b

    .line 257
    :cond_f
    move v12, v3

    .line 258
    goto :goto_a

    .line 259
    :goto_b
    new-instance v7, Landroidx/media3/extractor/GaplessInfoHolder;

    .line 260
    .line 261
    invoke-direct {v7}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    .line 262
    .line 263
    .line 264
    const v11, 0x75647461

    .line 265
    .line 266
    .line 267
    invoke-virtual {v6, v11}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    if-eqz v11, :cond_10

    .line 272
    .line 273
    invoke-static {v11, v3}, Landroidx/media3/extractor/mp4/BoxParser;->j(Landroidx/media3/container/Mp4Box$LeafBox;Z)Landroidx/media3/common/Metadata;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-virtual {v7, v11}, Landroidx/media3/extractor/GaplessInfoHolder;->b(Landroidx/media3/common/Metadata;)V

    .line 278
    .line 279
    .line 280
    goto :goto_c

    .line 281
    :cond_10
    move-object/from16 v11, v17

    .line 282
    .line 283
    :goto_c
    new-instance v13, Landroidx/media3/common/Metadata;

    .line 284
    .line 285
    const v14, 0x6d766864

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6, v14}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    iget-object v14, v14, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 296
    .line 297
    invoke-static {v14}, Landroidx/media3/extractor/mp4/BoxParser;->f(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    .line 298
    .line 299
    .line 300
    move-result-object v14

    .line 301
    move-wide/from16 v18, v15

    .line 302
    .line 303
    new-array v15, v8, [Landroidx/media3/common/Metadata$Entry;

    .line 304
    .line 305
    aput-object v14, v15, v3

    .line 306
    .line 307
    invoke-direct {v13, v15}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 308
    .line 309
    .line 310
    move-object v14, v13

    .line 311
    new-instance v13, Lk8;

    .line 312
    .line 313
    const/16 v15, 0x16

    .line 314
    .line 315
    invoke-direct {v13, v15}, Lk8;-><init>(I)V

    .line 316
    .line 317
    .line 318
    move-object v15, v14

    .line 319
    iget-boolean v14, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->c:Z

    .line 320
    .line 321
    move/from16 v20, v8

    .line 322
    .line 323
    move-object/from16 v16, v9

    .line 324
    .line 325
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    move-object/from16 v21, v10

    .line 331
    .line 332
    const/4 v10, 0x0

    .line 333
    move-object/from16 v22, v11

    .line 334
    .line 335
    const/4 v11, 0x0

    .line 336
    move-object/from16 v4, v22

    .line 337
    .line 338
    move/from16 v22, v3

    .line 339
    .line 340
    move-object v3, v15

    .line 341
    move/from16 v15, v20

    .line 342
    .line 343
    invoke-static/range {v6 .. v14}, Landroidx/media3/extractor/mp4/BoxParser;->i(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;Z)Ljava/util/ArrayList;

    .line 344
    .line 345
    .line 346
    move-result-object v6

    .line 347
    iget-boolean v8, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->z:Z

    .line 348
    .line 349
    if-eqz v8, :cond_12

    .line 350
    .line 351
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    .line 352
    .line 353
    .line 354
    move-result v8

    .line 355
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    if-ne v8, v9, :cond_11

    .line 360
    .line 361
    move v8, v15

    .line 362
    goto :goto_d

    .line 363
    :cond_11
    move/from16 v8, v22

    .line 364
    .line 365
    :goto_d
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 366
    .line 367
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    const-string v11, ") is not same as the number of auxiliary tracks ("

    .line 376
    .line 377
    const-string v12, ")"

    .line 378
    .line 379
    const-string v13, "The number of auxiliary track types from metadata ("

    .line 380
    .line 381
    invoke-static {v13, v9, v11, v10, v12}, Ljb;->e(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    invoke-static {v9, v8}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/String;Z)V

    .line 386
    .line 387
    .line 388
    :cond_12
    new-instance v8, Ljava/util/ArrayList;

    .line 389
    .line 390
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    :cond_13
    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 398
    .line 399
    .line 400
    move-result v10

    .line 401
    const/4 v11, -0x1

    .line 402
    if-eqz v10, :cond_14

    .line 403
    .line 404
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v10

    .line 408
    check-cast v10, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 409
    .line 410
    iget-object v12, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 411
    .line 412
    iget v12, v12, Landroidx/media3/extractor/mp4/Track;->l:I

    .line 413
    .line 414
    if-eq v12, v11, :cond_13

    .line 415
    .line 416
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v11

    .line 420
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v11

    .line 424
    if-nez v11, :cond_13

    .line 425
    .line 426
    iget-object v10, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 427
    .line 428
    iget v10, v10, Landroidx/media3/extractor/mp4/Track;->l:I

    .line 429
    .line 430
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v10

    .line 434
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    goto :goto_e

    .line 438
    :cond_14
    iget-object v9, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->k:Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 444
    .line 445
    .line 446
    move-result-object v10

    .line 447
    :cond_15
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 448
    .line 449
    .line 450
    move-result v12

    .line 451
    if-eqz v12, :cond_16

    .line 452
    .line 453
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v12

    .line 457
    check-cast v12, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 458
    .line 459
    iget-object v13, v12, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 460
    .line 461
    iget v13, v13, Landroidx/media3/extractor/mp4/Track;->a:I

    .line 462
    .line 463
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 464
    .line 465
    .line 466
    move-result-object v13

    .line 467
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    if-eqz v13, :cond_15

    .line 472
    .line 473
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    goto :goto_f

    .line 477
    :cond_16
    invoke-static {v6}, Landroidx/media3/extractor/mp4/MimeTypeResolver;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    move v15, v11

    .line 482
    move/from16 v10, v22

    .line 483
    .line 484
    move v14, v10

    .line 485
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    :goto_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 496
    .line 497
    .line 498
    move-result v11

    .line 499
    iget-boolean v5, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->c:Z

    .line 500
    .line 501
    if-ge v10, v11, :cond_33

    .line 502
    .line 503
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    move-result-object v11

    .line 507
    check-cast v11, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 508
    .line 509
    move-object/from16 v26, v1

    .line 510
    .line 511
    iget v1, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    .line 512
    .line 513
    move/from16 v27, v1

    .line 514
    .line 515
    iget-object v1, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    .line 516
    .line 517
    move/from16 v28, v5

    .line 518
    .line 519
    iget-object v5, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 520
    .line 521
    if-nez v27, :cond_17

    .line 522
    .line 523
    move-object/from16 v27, v6

    .line 524
    .line 525
    move-object/from16 v30, v8

    .line 526
    .line 527
    move-object/from16 v31, v9

    .line 528
    .line 529
    goto :goto_11

    .line 530
    :cond_17
    move-object/from16 v27, v6

    .line 531
    .line 532
    iget-boolean v6, v5, Landroidx/media3/extractor/mp4/Track;->m:Z

    .line 533
    .line 534
    move/from16 v29, v6

    .line 535
    .line 536
    iget-object v6, v5, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    .line 537
    .line 538
    move-object/from16 v30, v8

    .line 539
    .line 540
    iget v8, v5, Landroidx/media3/extractor/mp4/Track;->l:I

    .line 541
    .line 542
    move-object/from16 v31, v9

    .line 543
    .line 544
    iget v9, v5, Landroidx/media3/extractor/mp4/Track;->b:I

    .line 545
    .line 546
    if-nez v29, :cond_18

    .line 547
    .line 548
    :goto_11
    move-object v5, v2

    .line 549
    move/from16 v33, v14

    .line 550
    .line 551
    move-object/from16 v2, v16

    .line 552
    .line 553
    move-object/from16 v39, v21

    .line 554
    .line 555
    const/4 v1, -0x1

    .line 556
    move-object v14, v4

    .line 557
    move/from16 v21, v10

    .line 558
    .line 559
    move-object v4, v3

    .line 560
    goto/16 :goto_2c

    .line 561
    .line 562
    :cond_18
    move/from16 v29, v8

    .line 563
    .line 564
    new-instance v8, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 565
    .line 566
    move-object/from16 v32, v2

    .line 567
    .line 568
    iget-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->E:Landroidx/media3/extractor/ExtractorOutput;

    .line 569
    .line 570
    add-int/lit8 v33, v14, 0x1

    .line 571
    .line 572
    invoke-interface {v2, v14, v9}, Landroidx/media3/extractor/ExtractorOutput;->s(II)Landroidx/media3/extractor/TrackOutput;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-direct {v8, v5, v11, v2}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;-><init>(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/TrackOutput;)V

    .line 577
    .line 578
    .line 579
    move-object/from16 v34, v3

    .line 580
    .line 581
    move-object v14, v4

    .line 582
    iget-wide v3, v5, Landroidx/media3/extractor/mp4/Track;->e:J

    .line 583
    .line 584
    cmp-long v5, v3, v23

    .line 585
    .line 586
    if-eqz v5, :cond_19

    .line 587
    .line 588
    goto :goto_12

    .line 589
    :cond_19
    iget-wide v3, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->i:J

    .line 590
    .line 591
    :goto_12
    invoke-interface {v2, v3, v4}, Landroidx/media3/extractor/TrackOutput;->d(J)V

    .line 592
    .line 593
    .line 594
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 595
    .line 596
    .line 597
    move-result-wide v12

    .line 598
    iget-object v2, v6, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 599
    .line 600
    const-string v5, "audio/true-hd"

    .line 601
    .line 602
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v5

    .line 606
    move/from16 v35, v5

    .line 607
    .line 608
    iget v5, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->e:I

    .line 609
    .line 610
    if-eqz v35, :cond_1a

    .line 611
    .line 612
    mul-int/lit8 v5, v5, 0x10

    .line 613
    .line 614
    :goto_13
    move-wide/from16 v35, v12

    .line 615
    .line 616
    goto :goto_14

    .line 617
    :cond_1a
    add-int/lit8 v5, v5, 0x1e

    .line 618
    .line 619
    goto :goto_13

    .line 620
    :goto_14
    invoke-virtual {v6}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 621
    .line 622
    .line 623
    move-result-object v12

    .line 624
    iput v5, v12, Landroidx/media3/common/Format$Builder;->p:I

    .line 625
    .line 626
    const/4 v5, 0x2

    .line 627
    if-ne v9, v5, :cond_1e

    .line 628
    .line 629
    iget v5, v6, Landroidx/media3/common/Format;->f:I

    .line 630
    .line 631
    iget v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->b:I

    .line 632
    .line 633
    and-int/lit8 v13, v13, 0x8

    .line 634
    .line 635
    if-eqz v13, :cond_1c

    .line 636
    .line 637
    const/4 v13, -0x1

    .line 638
    if-ne v15, v13, :cond_1b

    .line 639
    .line 640
    const/4 v13, 0x1

    .line 641
    goto :goto_15

    .line 642
    :cond_1b
    const/4 v13, 0x2

    .line 643
    :goto_15
    or-int/2addr v5, v13

    .line 644
    :cond_1c
    iget-boolean v13, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->z:Z

    .line 645
    .line 646
    if-eqz v13, :cond_1d

    .line 647
    .line 648
    const v13, 0x8000

    .line 649
    .line 650
    .line 651
    or-int/2addr v5, v13

    .line 652
    move-object/from16 v13, v21

    .line 653
    .line 654
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v21

    .line 658
    check-cast v21, Ljava/lang/Integer;

    .line 659
    .line 660
    move/from16 v37, v5

    .line 661
    .line 662
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    .line 663
    .line 664
    .line 665
    move-result v5

    .line 666
    iput v5, v12, Landroidx/media3/common/Format$Builder;->h:I

    .line 667
    .line 668
    move/from16 v5, v37

    .line 669
    .line 670
    goto :goto_16

    .line 671
    :cond_1d
    move-object/from16 v13, v21

    .line 672
    .line 673
    :goto_16
    iput v5, v12, Landroidx/media3/common/Format$Builder;->f:I

    .line 674
    .line 675
    goto :goto_17

    .line 676
    :cond_1e
    move-object/from16 v13, v21

    .line 677
    .line 678
    :goto_17
    iget-object v5, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->h:[I

    .line 679
    .line 680
    move/from16 v21, v10

    .line 681
    .line 682
    iget-boolean v10, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->j:Z

    .line 683
    .line 684
    move/from16 v37, v10

    .line 685
    .line 686
    iget-object v10, v6, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 687
    .line 688
    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    .line 689
    .line 690
    .line 691
    move-result v10

    .line 692
    if-eqz v10, :cond_27

    .line 693
    .line 694
    array-length v10, v1

    .line 695
    if-lez v10, :cond_27

    .line 696
    .line 697
    if-eqz v37, :cond_1f

    .line 698
    .line 699
    iget v10, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    .line 700
    .line 701
    :goto_18
    move-object/from16 v38, v1

    .line 702
    .line 703
    goto :goto_19

    .line 704
    :cond_1f
    array-length v10, v5

    .line 705
    goto :goto_18

    .line 706
    :goto_19
    const/16 v1, 0x14

    .line 707
    .line 708
    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    .line 709
    .line 710
    .line 711
    move-result v1

    .line 712
    cmp-long v10, v3, v23

    .line 713
    .line 714
    if-eqz v10, :cond_20

    .line 715
    .line 716
    const/4 v10, 0x1

    .line 717
    goto :goto_1a

    .line 718
    :cond_20
    move/from16 v10, v22

    .line 719
    .line 720
    :goto_1a
    invoke-static {v10}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 721
    .line 722
    .line 723
    move-object/from16 v39, v13

    .line 724
    .line 725
    move-object v10, v14

    .line 726
    const-wide/32 v13, 0x989680

    .line 727
    .line 728
    .line 729
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 730
    .line 731
    .line 732
    move-result-wide v3

    .line 733
    move-wide/from16 v40, v3

    .line 734
    .line 735
    move/from16 v13, v22

    .line 736
    .line 737
    move v14, v13

    .line 738
    const/4 v3, -0x1

    .line 739
    :goto_1b
    if-ge v13, v1, :cond_22

    .line 740
    .line 741
    if-eqz v37, :cond_21

    .line 742
    .line 743
    move v4, v13

    .line 744
    goto :goto_1c

    .line 745
    :cond_21
    aget v4, v5, v13

    .line 746
    .line 747
    :goto_1c
    aget-wide v42, v38, v4

    .line 748
    .line 749
    cmp-long v44, v42, v40

    .line 750
    .line 751
    if-lez v44, :cond_23

    .line 752
    .line 753
    :cond_22
    const/4 v13, -0x1

    .line 754
    goto :goto_1e

    .line 755
    :cond_23
    cmp-long v42, v42, v18

    .line 756
    .line 757
    if-ltz v42, :cond_24

    .line 758
    .line 759
    move/from16 v42, v1

    .line 760
    .line 761
    iget-object v1, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->d:[I

    .line 762
    .line 763
    aget v1, v1, v4

    .line 764
    .line 765
    if-le v1, v14, :cond_25

    .line 766
    .line 767
    move v14, v1

    .line 768
    move v3, v4

    .line 769
    goto :goto_1d

    .line 770
    :cond_24
    move/from16 v42, v1

    .line 771
    .line 772
    :cond_25
    :goto_1d
    add-int/lit8 v13, v13, 0x1

    .line 773
    .line 774
    move/from16 v1, v42

    .line 775
    .line 776
    goto :goto_1b

    .line 777
    :goto_1e
    if-ne v3, v13, :cond_26

    .line 778
    .line 779
    :goto_1f
    move-wide/from16 v3, v23

    .line 780
    .line 781
    goto :goto_20

    .line 782
    :cond_26
    aget-wide v3, v38, v3

    .line 783
    .line 784
    goto :goto_20

    .line 785
    :cond_27
    move-object/from16 v39, v13

    .line 786
    .line 787
    move-object v10, v14

    .line 788
    goto :goto_1f

    .line 789
    :goto_20
    cmp-long v1, v3, v23

    .line 790
    .line 791
    if-eqz v1, :cond_28

    .line 792
    .line 793
    new-instance v1, Landroidx/media3/common/Metadata;

    .line 794
    .line 795
    new-instance v5, Landroidx/media3/extractor/metadata/ThumbnailMetadata;

    .line 796
    .line 797
    invoke-direct {v5, v3, v4}, Landroidx/media3/extractor/metadata/ThumbnailMetadata;-><init>(J)V

    .line 798
    .line 799
    .line 800
    const/4 v3, 0x1

    .line 801
    new-array v4, v3, [Landroidx/media3/common/Metadata$Entry;

    .line 802
    .line 803
    aput-object v5, v4, v22

    .line 804
    .line 805
    invoke-direct {v1, v4}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 806
    .line 807
    .line 808
    goto :goto_21

    .line 809
    :cond_28
    const/4 v3, 0x1

    .line 810
    move-object/from16 v1, v17

    .line 811
    .line 812
    :goto_21
    if-ne v9, v3, :cond_29

    .line 813
    .line 814
    iget v3, v7, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    .line 815
    .line 816
    const/4 v13, -0x1

    .line 817
    if-eq v3, v13, :cond_29

    .line 818
    .line 819
    iget v4, v7, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    .line 820
    .line 821
    if-eq v4, v13, :cond_29

    .line 822
    .line 823
    iput v3, v12, Landroidx/media3/common/Format$Builder;->M:I

    .line 824
    .line 825
    iput v4, v12, Landroidx/media3/common/Format$Builder;->N:I

    .line 826
    .line 827
    :cond_29
    iget-object v3, v6, Landroidx/media3/common/Format;->m:Landroidx/media3/common/Metadata;

    .line 828
    .line 829
    iget-object v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->j:Ljava/util/ArrayList;

    .line 830
    .line 831
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 832
    .line 833
    .line 834
    move-result v5

    .line 835
    if-eqz v5, :cond_2a

    .line 836
    .line 837
    move-object/from16 v5, v17

    .line 838
    .line 839
    :goto_22
    move-object v14, v10

    .line 840
    move-object/from16 v4, v34

    .line 841
    .line 842
    goto :goto_23

    .line 843
    :cond_2a
    new-instance v5, Landroidx/media3/common/Metadata;

    .line 844
    .line 845
    invoke-direct {v5, v4}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    .line 846
    .line 847
    .line 848
    goto :goto_22

    .line 849
    :goto_23
    filled-new-array {v5, v14, v4, v1}, [Landroidx/media3/common/Metadata;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    move-object/from16 v5, v32

    .line 854
    .line 855
    invoke-static {v9, v5, v12, v3, v1}, Landroidx/media3/extractor/mp4/MetadataUtil;->f(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Metadata;[Landroidx/media3/common/Metadata;)V

    .line 856
    .line 857
    .line 858
    invoke-static/range {v30 .. v30}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    iput-object v1, v12, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    .line 863
    .line 864
    new-instance v1, Landroidx/media3/common/Format;

    .line 865
    .line 866
    invoke-direct {v1, v12}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 867
    .line 868
    .line 869
    const-string v3, "audio/mpeg"

    .line 870
    .line 871
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    move-result v3

    .line 875
    if-nez v3, :cond_2c

    .line 876
    .line 877
    invoke-static {v2}, Landroidx/media3/extractor/DtsUtil;->e(Ljava/lang/String;)Z

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    if-eqz v2, :cond_2b

    .line 882
    .line 883
    goto :goto_24

    .line 884
    :cond_2b
    move/from16 v2, v22

    .line 885
    .line 886
    goto :goto_25

    .line 887
    :cond_2c
    :goto_24
    const/4 v2, 0x1

    .line 888
    :goto_25
    if-nez v28, :cond_2e

    .line 889
    .line 890
    move/from16 v3, v29

    .line 891
    .line 892
    const/4 v13, -0x1

    .line 893
    if-eq v3, v13, :cond_2e

    .line 894
    .line 895
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 896
    .line 897
    .line 898
    move-result-object v6

    .line 899
    :cond_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 900
    .line 901
    .line 902
    move-result v10

    .line 903
    if-eqz v10, :cond_2e

    .line 904
    .line 905
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 906
    .line 907
    .line 908
    move-result-object v10

    .line 909
    check-cast v10, Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 910
    .line 911
    iget-object v10, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    .line 912
    .line 913
    iget v10, v10, Landroidx/media3/extractor/mp4/Track;->a:I

    .line 914
    .line 915
    if-ne v10, v3, :cond_2d

    .line 916
    .line 917
    const/4 v3, 0x1

    .line 918
    goto :goto_26

    .line 919
    :cond_2e
    move/from16 v3, v22

    .line 920
    .line 921
    :goto_26
    if-nez v2, :cond_30

    .line 922
    .line 923
    if-eqz v3, :cond_2f

    .line 924
    .line 925
    goto :goto_28

    .line 926
    :cond_2f
    iget-object v2, v8, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->c:Landroidx/media3/extractor/TrackOutput;

    .line 927
    .line 928
    invoke-interface {v2, v1}, Landroidx/media3/extractor/TrackOutput;->e(Landroidx/media3/common/Format;)V

    .line 929
    .line 930
    .line 931
    :goto_27
    const/4 v1, 0x2

    .line 932
    goto :goto_29

    .line 933
    :cond_30
    :goto_28
    iput-object v1, v8, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->h:Landroidx/media3/common/Format;

    .line 934
    .line 935
    goto :goto_27

    .line 936
    :goto_29
    if-ne v9, v1, :cond_32

    .line 937
    .line 938
    const/4 v1, -0x1

    .line 939
    if-ne v15, v1, :cond_31

    .line 940
    .line 941
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    .line 942
    .line 943
    .line 944
    move-result v15

    .line 945
    :cond_31
    :goto_2a
    move-object/from16 v2, v16

    .line 946
    .line 947
    goto :goto_2b

    .line 948
    :cond_32
    const/4 v1, -0x1

    .line 949
    goto :goto_2a

    .line 950
    :goto_2b
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    .line 952
    .line 953
    move-wide/from16 v12, v35

    .line 954
    .line 955
    :goto_2c
    add-int/lit8 v10, v21, 0x1

    .line 956
    .line 957
    move-object/from16 v16, v2

    .line 958
    .line 959
    move-object v3, v4

    .line 960
    move-object v2, v5

    .line 961
    move-object v4, v14

    .line 962
    move-object/from16 v1, v26

    .line 963
    .line 964
    move-object/from16 v6, v27

    .line 965
    .line 966
    move-object/from16 v8, v30

    .line 967
    .line 968
    move-object/from16 v9, v31

    .line 969
    .line 970
    move/from16 v14, v33

    .line 971
    .line 972
    move-object/from16 v21, v39

    .line 973
    .line 974
    const/4 v5, 0x2

    .line 975
    goto/16 :goto_10

    .line 976
    .line 977
    :cond_33
    move-object/from16 v26, v1

    .line 978
    .line 979
    move/from16 v28, v5

    .line 980
    .line 981
    move-object/from16 v31, v9

    .line 982
    .line 983
    move-object/from16 v2, v16

    .line 984
    .line 985
    move/from16 v3, v22

    .line 986
    .line 987
    const/4 v1, -0x1

    .line 988
    new-array v4, v3, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 989
    .line 990
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
    move-result-object v2

    .line 994
    check-cast v2, [Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 995
    .line 996
    iput-object v2, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->F:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 997
    .line 998
    if-nez v28, :cond_38

    .line 999
    .line 1000
    array-length v3, v2

    .line 1001
    new-array v3, v3, [[J

    .line 1002
    .line 1003
    array-length v4, v2

    .line 1004
    new-array v4, v4, [I

    .line 1005
    .line 1006
    array-length v5, v2

    .line 1007
    new-array v5, v5, [J

    .line 1008
    .line 1009
    array-length v6, v2

    .line 1010
    new-array v6, v6, [Z

    .line 1011
    .line 1012
    const/4 v7, 0x0

    .line 1013
    :goto_2d
    array-length v8, v2

    .line 1014
    if-ge v7, v8, :cond_34

    .line 1015
    .line 1016
    aget-object v8, v2, v7

    .line 1017
    .line 1018
    iget-object v8, v8, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1019
    .line 1020
    iget v8, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    .line 1021
    .line 1022
    new-array v8, v8, [J

    .line 1023
    .line 1024
    aput-object v8, v3, v7

    .line 1025
    .line 1026
    aget-object v8, v2, v7

    .line 1027
    .line 1028
    iget-object v8, v8, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1029
    .line 1030
    iget-object v8, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    .line 1031
    .line 1032
    const/16 v22, 0x0

    .line 1033
    .line 1034
    aget-wide v8, v8, v22

    .line 1035
    .line 1036
    aput-wide v8, v5, v7

    .line 1037
    .line 1038
    add-int/lit8 v7, v7, 0x1

    .line 1039
    .line 1040
    goto :goto_2d

    .line 1041
    :cond_34
    const/4 v7, 0x0

    .line 1042
    :goto_2e
    array-length v8, v2

    .line 1043
    if-ge v7, v8, :cond_39

    .line 1044
    .line 1045
    const-wide v8, 0x7fffffffffffffffL

    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    move v11, v1

    .line 1051
    move-wide v9, v8

    .line 1052
    const/4 v8, 0x0

    .line 1053
    :goto_2f
    array-length v14, v2

    .line 1054
    if-ge v8, v14, :cond_36

    .line 1055
    .line 1056
    aget-boolean v14, v6, v8

    .line 1057
    .line 1058
    if-nez v14, :cond_35

    .line 1059
    .line 1060
    aget-wide v16, v5, v8

    .line 1061
    .line 1062
    cmp-long v14, v16, v9

    .line 1063
    .line 1064
    if-gtz v14, :cond_35

    .line 1065
    .line 1066
    move v11, v8

    .line 1067
    move-wide/from16 v9, v16

    .line 1068
    .line 1069
    :cond_35
    add-int/lit8 v8, v8, 0x1

    .line 1070
    .line 1071
    goto :goto_2f

    .line 1072
    :cond_36
    aget v8, v4, v11

    .line 1073
    .line 1074
    aget-object v9, v3, v11

    .line 1075
    .line 1076
    aput-wide v18, v9, v8

    .line 1077
    .line 1078
    aget-object v10, v2, v11

    .line 1079
    .line 1080
    iget-object v10, v10, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->b:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1081
    .line 1082
    iget-object v14, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->d:[I

    .line 1083
    .line 1084
    aget v14, v14, v8

    .line 1085
    .line 1086
    move-object/from16 v16, v2

    .line 1087
    .line 1088
    int-to-long v1, v14

    .line 1089
    add-long v18, v18, v1

    .line 1090
    .line 1091
    const/16 v25, 0x1

    .line 1092
    .line 1093
    add-int/lit8 v8, v8, 0x1

    .line 1094
    .line 1095
    aput v8, v4, v11

    .line 1096
    .line 1097
    array-length v1, v9

    .line 1098
    if-ge v8, v1, :cond_37

    .line 1099
    .line 1100
    iget-object v1, v10, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    .line 1101
    .line 1102
    aget-wide v1, v1, v8

    .line 1103
    .line 1104
    aput-wide v1, v5, v11

    .line 1105
    .line 1106
    goto :goto_30

    .line 1107
    :cond_37
    aput-boolean v25, v6, v11

    .line 1108
    .line 1109
    add-int/lit8 v7, v7, 0x1

    .line 1110
    .line 1111
    :goto_30
    move-object/from16 v2, v16

    .line 1112
    .line 1113
    const/4 v1, -0x1

    .line 1114
    goto :goto_2e

    .line 1115
    :cond_38
    move-object/from16 v3, v17

    .line 1116
    .line 1117
    :cond_39
    iput-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->G:[[J

    .line 1118
    .line 1119
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->E:Landroidx/media3/extractor/ExtractorOutput;

    .line 1120
    .line 1121
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 1122
    .line 1123
    .line 1124
    iget-object v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->E:Landroidx/media3/extractor/ExtractorOutput;

    .line 1125
    .line 1126
    new-instance v2, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;

    .line 1127
    .line 1128
    iget-object v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->F:[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;

    .line 1129
    .line 1130
    invoke-direct {v2, v12, v13, v3, v15}, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4SeekMap;-><init>(J[Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;I)V

    .line 1131
    .line 1132
    .line 1133
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayDeque;->clear()V

    .line 1137
    .line 1138
    .line 1139
    const/4 v15, 0x1

    .line 1140
    iput-boolean v15, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->A:Z

    .line 1141
    .line 1142
    iget-boolean v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->y:Z

    .line 1143
    .line 1144
    if-nez v1, :cond_0

    .line 1145
    .line 1146
    if-nez v28, :cond_0

    .line 1147
    .line 1148
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1149
    .line 1150
    .line 1151
    move-result v1

    .line 1152
    if-nez v1, :cond_3a

    .line 1153
    .line 1154
    const/4 v4, 0x4

    .line 1155
    goto :goto_31

    .line 1156
    :cond_3a
    const/4 v4, 0x2

    .line 1157
    :goto_31
    iput v4, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 1158
    .line 1159
    goto/16 :goto_0

    .line 1160
    .line 1161
    :cond_3b
    move-object/from16 v26, v1

    .line 1162
    .line 1163
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 1164
    .line 1165
    .line 1166
    move-result v1

    .line 1167
    if-nez v1, :cond_0

    .line 1168
    .line 1169
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    .line 1174
    .line 1175
    iget-object v1, v1, Landroidx/media3/container/Mp4Box$ContainerBox;->d:Ljava/util/ArrayList;

    .line 1176
    .line 1177
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    .line 1179
    .line 1180
    goto/16 :goto_0

    .line 1181
    .line 1182
    :cond_3c
    iget v1, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 1183
    .line 1184
    const/4 v2, 0x4

    .line 1185
    if-eq v1, v2, :cond_3d

    .line 1186
    .line 1187
    const/4 v5, 0x2

    .line 1188
    if-eq v1, v5, :cond_3d

    .line 1189
    .line 1190
    const/4 v3, 0x0

    .line 1191
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->n:I

    .line 1192
    .line 1193
    iput v3, v0, Landroidx/media3/extractor/mp4/Mp4Extractor;->q:I

    .line 1194
    .line 1195
    :cond_3d
    return-void
.end method
