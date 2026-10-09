.class public final Landroidx/media3/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/TimestampAdjuster;

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Landroidx/media3/extractor/ts/PsDurationReader;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

.field public j:Landroidx/media3/extractor/ExtractorOutput;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 12
    .line 13
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 14
    .line 15
    const/16 v1, 0x1000

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->b:Landroid/util/SparseArray;

    .line 28
    .line 29
    new-instance v0, Landroidx/media3/extractor/ts/PsDurationReader;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/media3/extractor/ts/PsDurationReader;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/media3/extractor/ts/PsExtractor;->d:Landroidx/media3/extractor/ts/PsDurationReader;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    .line 1
    const/16 p0, 0xe

    .line 2
    .line 3
    new-array v0, p0, [B

    .line 4
    .line 5
    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, v1, p0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 9
    .line 10
    .line 11
    aget-byte p0, v0, v1

    .line 12
    .line 13
    and-int/lit16 p0, p0, 0xff

    .line 14
    .line 15
    shl-int/lit8 p0, p0, 0x18

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aget-byte v3, v0, v2

    .line 19
    .line 20
    and-int/lit16 v3, v3, 0xff

    .line 21
    .line 22
    shl-int/lit8 v3, v3, 0x10

    .line 23
    .line 24
    or-int/2addr p0, v3

    .line 25
    const/4 v3, 0x2

    .line 26
    aget-byte v4, v0, v3

    .line 27
    .line 28
    and-int/lit16 v4, v4, 0xff

    .line 29
    .line 30
    const/16 v5, 0x8

    .line 31
    .line 32
    shl-int/2addr v4, v5

    .line 33
    or-int/2addr p0, v4

    .line 34
    const/4 v4, 0x3

    .line 35
    aget-byte v6, v0, v4

    .line 36
    .line 37
    and-int/lit16 v6, v6, 0xff

    .line 38
    .line 39
    or-int/2addr p0, v6

    .line 40
    const/16 v6, 0x1ba

    .line 41
    .line 42
    if-eq v6, p0, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p0, 0x4

    .line 46
    aget-byte v6, v0, p0

    .line 47
    .line 48
    and-int/lit16 v6, v6, 0xc4

    .line 49
    .line 50
    const/16 v7, 0x44

    .line 51
    .line 52
    if-eq v6, v7, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 v6, 0x6

    .line 56
    aget-byte v6, v0, v6

    .line 57
    .line 58
    and-int/2addr v6, p0

    .line 59
    if-eq v6, p0, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    aget-byte v6, v0, v5

    .line 63
    .line 64
    and-int/2addr v6, p0

    .line 65
    if-eq v6, p0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/16 p0, 0x9

    .line 69
    .line 70
    aget-byte p0, v0, p0

    .line 71
    .line 72
    and-int/2addr p0, v2

    .line 73
    if-eq p0, v2, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const/16 p0, 0xc

    .line 77
    .line 78
    aget-byte p0, v0, p0

    .line 79
    .line 80
    and-int/2addr p0, v4

    .line 81
    if-eq p0, v4, :cond_5

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/16 p0, 0xd

    .line 85
    .line 86
    aget-byte p0, v0, p0

    .line 87
    .line 88
    and-int/lit8 p0, p0, 0x7

    .line 89
    .line 90
    invoke-virtual {p1, p0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->p(IZ)Z

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v0, v1, v4, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->d([BIIZ)Z

    .line 94
    .line 95
    .line 96
    aget-byte p0, v0, v1

    .line 97
    .line 98
    and-int/lit16 p0, p0, 0xff

    .line 99
    .line 100
    shl-int/lit8 p0, p0, 0x10

    .line 101
    .line 102
    aget-byte p1, v0, v2

    .line 103
    .line 104
    and-int/lit16 p1, p1, 0xff

    .line 105
    .line 106
    shl-int/2addr p1, v5

    .line 107
    or-int/2addr p0, p1

    .line 108
    aget-byte p1, v0, v3

    .line 109
    .line 110
    and-int/lit16 p1, p1, 0xff

    .line 111
    .line 112
    or-int/2addr p0, p1

    .line 113
    if-ne v2, p0, :cond_6

    .line 114
    .line 115
    return v2

    .line 116
    :cond_6
    :goto_0
    return v1
.end method

.method public final c(JJ)V
    .locals 7

    .line 1
    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->b:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    iget-wide v0, p2, Landroidx/media3/common/util/TimestampAdjuster;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    monitor-exit p2

    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v4

    .line 23
    :goto_0
    if-nez v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/media3/common/util/TimestampAdjuster;->d()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    cmp-long v0, v5, v2

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    cmp-long v0, v5, v2

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    cmp-long v0, v5, p3

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v1, v4

    .line 45
    :goto_1
    move v0, v1

    .line 46
    :cond_2
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p2, p3, p4}, Landroidx/media3/common/util/TimestampAdjuster;->e(J)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object p0, p0, Landroidx/media3/extractor/ts/PsExtractor;->i:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    .line 52
    .line 53
    if-eqz p0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, p3, p4}, Landroidx/media3/extractor/BinarySearchSeeker;->c(J)V

    .line 56
    .line 57
    .line 58
    :cond_4
    move p0, v4

    .line 59
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-ge p0, p2, :cond_5

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    check-cast p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    .line 70
    .line 71
    iput-boolean v4, p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->f:Z

    .line 72
    .line 73
    iget-object p2, p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 74
    .line 75
    invoke-interface {p2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->a()V

    .line 76
    .line 77
    .line 78
    add-int/lit8 p0, p0, 0x1

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    return-void

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p0
.end method

.method public final d(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    .line 2
    .line 3
    return-void
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 28

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
    iget-object v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 13
    .line 14
    .line 15
    move-result-wide v13

    .line 16
    const-wide/16 v18, -0x1

    .line 17
    .line 18
    cmp-long v3, v13, v18

    .line 19
    .line 20
    const-wide/16 v5, 0x0

    .line 21
    .line 22
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    const/16 v9, 0x1ba

    .line 28
    .line 29
    iget-object v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->d:Landroidx/media3/extractor/ts/PsDurationReader;

    .line 30
    .line 31
    const/4 v11, 0x4

    .line 32
    const/4 v12, 0x1

    .line 33
    const/4 v15, 0x0

    .line 34
    if-eqz v3, :cond_b

    .line 35
    .line 36
    const/16 v16, 0x3

    .line 37
    .line 38
    iget-boolean v4, v10, Landroidx/media3/extractor/ts/PsDurationReader;->c:Z

    .line 39
    .line 40
    if-nez v4, :cond_a

    .line 41
    .line 42
    iget-object v0, v10, Landroidx/media3/extractor/ts/PsDurationReader;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 43
    .line 44
    iget-object v3, v10, Landroidx/media3/extractor/ts/PsDurationReader;->b:Landroidx/media3/common/util/ParsableByteArray;

    .line 45
    .line 46
    iget-boolean v4, v10, Landroidx/media3/extractor/ts/PsDurationReader;->e:Z

    .line 47
    .line 48
    const-wide/16 v13, 0x4e20

    .line 49
    .line 50
    if-nez v4, :cond_3

    .line 51
    .line 52
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 57
    .line 58
    .line 59
    move-result-wide v13

    .line 60
    long-to-int v0, v13

    .line 61
    int-to-long v13, v0

    .line 62
    sub-long/2addr v4, v13

    .line 63
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 64
    .line 65
    .line 66
    move-result-wide v13

    .line 67
    cmp-long v6, v13, v4

    .line 68
    .line 69
    if-eqz v6, :cond_0

    .line 70
    .line 71
    iput-wide v4, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 72
    .line 73
    return v12

    .line 74
    :cond_0
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 78
    .line 79
    .line 80
    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 81
    .line 82
    invoke-interface {v1, v2, v15, v0}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 83
    .line 84
    .line 85
    iget v0, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 86
    .line 87
    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 88
    .line 89
    sub-int/2addr v1, v11

    .line 90
    :goto_0
    if-lt v1, v0, :cond_2

    .line 91
    .line 92
    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 93
    .line 94
    invoke-static {v1, v2}, Landroidx/media3/extractor/ts/PsDurationReader;->b(I[B)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-ne v2, v9, :cond_1

    .line 99
    .line 100
    add-int/lit8 v2, v1, 0x4

    .line 101
    .line 102
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 103
    .line 104
    .line 105
    invoke-static {v3}, Landroidx/media3/extractor/ts/PsDurationReader;->c(Landroidx/media3/common/util/ParsableByteArray;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    cmp-long v2, v4, v7

    .line 110
    .line 111
    if-eqz v2, :cond_1

    .line 112
    .line 113
    move-wide v7, v4

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    :goto_1
    iput-wide v7, v10, Landroidx/media3/extractor/ts/PsDurationReader;->g:J

    .line 119
    .line 120
    iput-boolean v12, v10, Landroidx/media3/extractor/ts/PsDurationReader;->e:Z

    .line 121
    .line 122
    return v15

    .line 123
    :cond_3
    move-wide/from16 v20, v7

    .line 124
    .line 125
    iget-wide v7, v10, Landroidx/media3/extractor/ts/PsDurationReader;->g:J

    .line 126
    .line 127
    cmp-long v4, v7, v20

    .line 128
    .line 129
    if-nez v4, :cond_4

    .line 130
    .line 131
    invoke-virtual {v10, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    .line 132
    .line 133
    .line 134
    return v15

    .line 135
    :cond_4
    iget-boolean v4, v10, Landroidx/media3/extractor/ts/PsDurationReader;->d:Z

    .line 136
    .line 137
    if-nez v4, :cond_8

    .line 138
    .line 139
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()J

    .line 140
    .line 141
    .line 142
    move-result-wide v7

    .line 143
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 144
    .line 145
    .line 146
    move-result-wide v7

    .line 147
    long-to-int v0, v7

    .line 148
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 149
    .line 150
    .line 151
    move-result-wide v7

    .line 152
    cmp-long v4, v7, v5

    .line 153
    .line 154
    if-eqz v4, :cond_5

    .line 155
    .line 156
    iput-wide v5, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 157
    .line 158
    return v12

    .line 159
    :cond_5
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 163
    .line 164
    .line 165
    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 166
    .line 167
    invoke-interface {v1, v2, v15, v0}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 168
    .line 169
    .line 170
    iget v0, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 171
    .line 172
    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 173
    .line 174
    :goto_2
    add-int/lit8 v2, v1, -0x3

    .line 175
    .line 176
    if-ge v0, v2, :cond_7

    .line 177
    .line 178
    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 179
    .line 180
    invoke-static {v0, v2}, Landroidx/media3/extractor/ts/PsDurationReader;->b(I[B)I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-ne v2, v9, :cond_6

    .line 185
    .line 186
    add-int/lit8 v2, v0, 0x4

    .line 187
    .line 188
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 189
    .line 190
    .line 191
    invoke-static {v3}, Landroidx/media3/extractor/ts/PsDurationReader;->c(Landroidx/media3/common/util/ParsableByteArray;)J

    .line 192
    .line 193
    .line 194
    move-result-wide v4

    .line 195
    cmp-long v2, v4, v20

    .line 196
    .line 197
    if-eqz v2, :cond_6

    .line 198
    .line 199
    move-wide v7, v4

    .line 200
    goto :goto_3

    .line 201
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_7
    move-wide/from16 v7, v20

    .line 205
    .line 206
    :goto_3
    iput-wide v7, v10, Landroidx/media3/extractor/ts/PsDurationReader;->f:J

    .line 207
    .line 208
    iput-boolean v12, v10, Landroidx/media3/extractor/ts/PsDurationReader;->d:Z

    .line 209
    .line 210
    return v15

    .line 211
    :cond_8
    iget-wide v2, v10, Landroidx/media3/extractor/ts/PsDurationReader;->f:J

    .line 212
    .line 213
    cmp-long v4, v2, v20

    .line 214
    .line 215
    if-nez v4, :cond_9

    .line 216
    .line 217
    invoke-virtual {v10, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    .line 218
    .line 219
    .line 220
    return v15

    .line 221
    :cond_9
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    .line 222
    .line 223
    .line 224
    move-result-wide v2

    .line 225
    iget-wide v4, v10, Landroidx/media3/extractor/ts/PsDurationReader;->g:J

    .line 226
    .line 227
    invoke-virtual {v0, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->c(J)J

    .line 228
    .line 229
    .line 230
    move-result-wide v4

    .line 231
    sub-long/2addr v4, v2

    .line 232
    iput-wide v4, v10, Landroidx/media3/extractor/ts/PsDurationReader;->h:J

    .line 233
    .line 234
    invoke-virtual {v10, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    .line 235
    .line 236
    .line 237
    return v15

    .line 238
    :cond_a
    :goto_4
    move-wide/from16 v20, v7

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_b
    const/16 v16, 0x3

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :goto_5
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->k:Z

    .line 245
    .line 246
    if-nez v4, :cond_d

    .line 247
    .line 248
    iput-boolean v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->k:Z

    .line 249
    .line 250
    iget-wide v7, v10, Landroidx/media3/extractor/ts/PsDurationReader;->h:J

    .line 251
    .line 252
    cmp-long v4, v7, v20

    .line 253
    .line 254
    if-eqz v4, :cond_c

    .line 255
    .line 256
    new-instance v4, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    .line 257
    .line 258
    iget-object v10, v10, Landroidx/media3/extractor/ts/PsDurationReader;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 259
    .line 260
    move-wide/from16 v20, v5

    .line 261
    .line 262
    new-instance v5, Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    .line 263
    .line 264
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 265
    .line 266
    .line 267
    new-instance v6, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;

    .line 268
    .line 269
    invoke-direct {v6, v10}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;-><init>(Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 270
    .line 271
    .line 272
    const-wide/16 v22, 0x1

    .line 273
    .line 274
    add-long v22, v7, v22

    .line 275
    .line 276
    move/from16 v17, v15

    .line 277
    .line 278
    move/from16 v10, v16

    .line 279
    .line 280
    const-wide/16 v15, 0xbc

    .line 281
    .line 282
    move/from16 v24, v17

    .line 283
    .line 284
    const/16 v17, 0x3e8

    .line 285
    .line 286
    move/from16 v25, v11

    .line 287
    .line 288
    move/from16 v26, v12

    .line 289
    .line 290
    const-wide/16 v11, 0x0

    .line 291
    .line 292
    move/from16 v27, v3

    .line 293
    .line 294
    move-wide/from16 v9, v22

    .line 295
    .line 296
    move/from16 v3, v25

    .line 297
    .line 298
    invoke-direct/range {v4 .. v17}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJI)V

    .line 299
    .line 300
    .line 301
    iput-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->i:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    .line 302
    .line 303
    iget-object v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    .line 304
    .line 305
    iget-object v4, v4, Landroidx/media3/extractor/BinarySearchSeeker;->a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    .line 306
    .line 307
    invoke-interface {v5, v4}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 308
    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_c
    move/from16 v27, v3

    .line 312
    .line 313
    move v3, v11

    .line 314
    iget-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    .line 315
    .line 316
    new-instance v5, Landroidx/media3/extractor/SeekMap$Unseekable;

    .line 317
    .line 318
    invoke-direct {v5, v7, v8}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    .line 319
    .line 320
    .line 321
    invoke-interface {v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->f(Landroidx/media3/extractor/SeekMap;)V

    .line 322
    .line 323
    .line 324
    goto :goto_6

    .line 325
    :cond_d
    move/from16 v27, v3

    .line 326
    .line 327
    move v3, v11

    .line 328
    :goto_6
    iget-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->i:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    .line 329
    .line 330
    if-eqz v4, :cond_e

    .line 331
    .line 332
    iget-object v5, v4, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 333
    .line 334
    if-eqz v5, :cond_e

    .line 335
    .line 336
    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    return v0

    .line 341
    :cond_e
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()V

    .line 342
    .line 343
    .line 344
    if-eqz v27, :cond_f

    .line 345
    .line 346
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->e()J

    .line 347
    .line 348
    .line 349
    move-result-wide v4

    .line 350
    sub-long/2addr v13, v4

    .line 351
    goto :goto_7

    .line 352
    :cond_f
    move-wide/from16 v13, v18

    .line 353
    .line 354
    :goto_7
    cmp-long v2, v13, v18

    .line 355
    .line 356
    const/4 v4, -0x1

    .line 357
    if-eqz v2, :cond_10

    .line 358
    .line 359
    const-wide/16 v5, 0x4

    .line 360
    .line 361
    cmp-long v2, v13, v5

    .line 362
    .line 363
    if-gez v2, :cond_10

    .line 364
    .line 365
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/PsExtractor;->g()V

    .line 366
    .line 367
    .line 368
    return v4

    .line 369
    :cond_10
    iget-object v2, v0, Landroidx/media3/extractor/ts/PsExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 370
    .line 371
    iget-object v5, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 372
    .line 373
    const/4 v6, 0x1

    .line 374
    const/4 v7, 0x0

    .line 375
    invoke-interface {v1, v5, v7, v3, v6}, Landroidx/media3/extractor/ExtractorInput;->d([BIIZ)Z

    .line 376
    .line 377
    .line 378
    move-result v5

    .line 379
    if-nez v5, :cond_11

    .line 380
    .line 381
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/PsExtractor;->g()V

    .line 382
    .line 383
    .line 384
    return v4

    .line 385
    :cond_11
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    .line 389
    .line 390
    .line 391
    move-result v5

    .line 392
    const/16 v8, 0x1b9

    .line 393
    .line 394
    if-ne v5, v8, :cond_12

    .line 395
    .line 396
    invoke-virtual {v0}, Landroidx/media3/extractor/ts/PsExtractor;->g()V

    .line 397
    .line 398
    .line 399
    return v4

    .line 400
    :cond_12
    const/16 v4, 0x1ba

    .line 401
    .line 402
    if-ne v5, v4, :cond_13

    .line 403
    .line 404
    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 405
    .line 406
    const/16 v3, 0xa

    .line 407
    .line 408
    invoke-interface {v1, v0, v7, v3}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 409
    .line 410
    .line 411
    const/16 v0, 0x9

    .line 412
    .line 413
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    and-int/lit8 v0, v0, 0x7

    .line 421
    .line 422
    add-int/lit8 v0, v0, 0xe

    .line 423
    .line 424
    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 425
    .line 426
    .line 427
    return v7

    .line 428
    :cond_13
    const/16 v4, 0x1bb

    .line 429
    .line 430
    const/4 v8, 0x2

    .line 431
    const/4 v9, 0x6

    .line 432
    if-ne v5, v4, :cond_14

    .line 433
    .line 434
    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 435
    .line 436
    invoke-interface {v1, v0, v7, v8}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    add-int/2addr v0, v9

    .line 447
    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 448
    .line 449
    .line 450
    return v7

    .line 451
    :cond_14
    and-int/lit16 v4, v5, -0x100

    .line 452
    .line 453
    const/16 v10, 0x8

    .line 454
    .line 455
    shr-int/2addr v4, v10

    .line 456
    if-eq v4, v6, :cond_15

    .line 457
    .line 458
    invoke-interface {v1, v6}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 459
    .line 460
    .line 461
    return v7

    .line 462
    :cond_15
    and-int/lit16 v4, v5, 0xff

    .line 463
    .line 464
    iget-object v11, v0, Landroidx/media3/extractor/ts/PsExtractor;->b:Landroid/util/SparseArray;

    .line 465
    .line 466
    invoke-virtual {v11, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v12

    .line 470
    check-cast v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    .line 471
    .line 472
    iget-boolean v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->e:Z

    .line 473
    .line 474
    if-nez v13, :cond_1b

    .line 475
    .line 476
    if-nez v12, :cond_19

    .line 477
    .line 478
    const/16 v13, 0xbd

    .line 479
    .line 480
    const-string v14, "video/mp2p"

    .line 481
    .line 482
    if-ne v4, v13, :cond_16

    .line 483
    .line 484
    new-instance v5, Landroidx/media3/extractor/ts/Ac3Reader;

    .line 485
    .line 486
    invoke-direct {v5, v14}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iput-boolean v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->f:Z

    .line 490
    .line 491
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 492
    .line 493
    .line 494
    move-result-wide v13

    .line 495
    iput-wide v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->h:J

    .line 496
    .line 497
    goto :goto_8

    .line 498
    :cond_16
    and-int/lit16 v13, v5, 0xe0

    .line 499
    .line 500
    const/16 v15, 0xc0

    .line 501
    .line 502
    const/4 v3, 0x0

    .line 503
    if-ne v13, v15, :cond_17

    .line 504
    .line 505
    new-instance v5, Landroidx/media3/extractor/ts/MpegAudioReader;

    .line 506
    .line 507
    invoke-direct {v5, v3, v7, v14}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 508
    .line 509
    .line 510
    iput-boolean v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->f:Z

    .line 511
    .line 512
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 513
    .line 514
    .line 515
    move-result-wide v13

    .line 516
    iput-wide v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->h:J

    .line 517
    .line 518
    goto :goto_8

    .line 519
    :cond_17
    and-int/lit16 v5, v5, 0xf0

    .line 520
    .line 521
    const/16 v13, 0xe0

    .line 522
    .line 523
    if-ne v5, v13, :cond_18

    .line 524
    .line 525
    new-instance v5, Landroidx/media3/extractor/ts/H262Reader;

    .line 526
    .line 527
    invoke-direct {v5, v3, v14}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Landroidx/media3/extractor/ts/UserDataReader;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    iput-boolean v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->g:Z

    .line 531
    .line 532
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 533
    .line 534
    .line 535
    move-result-wide v13

    .line 536
    iput-wide v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->h:J

    .line 537
    .line 538
    goto :goto_8

    .line 539
    :cond_18
    move-object v5, v3

    .line 540
    :goto_8
    if-eqz v5, :cond_19

    .line 541
    .line 542
    new-instance v3, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    .line 543
    .line 544
    const/16 v12, 0x100

    .line 545
    .line 546
    invoke-direct {v3, v4, v12}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    .line 547
    .line 548
    .line 549
    iget-object v12, v0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    .line 550
    .line 551
    invoke-interface {v5, v12, v3}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->f(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 552
    .line 553
    .line 554
    new-instance v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    .line 555
    .line 556
    iget-object v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->a:Landroidx/media3/common/util/TimestampAdjuster;

    .line 557
    .line 558
    invoke-direct {v12, v5, v3}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;Landroidx/media3/common/util/TimestampAdjuster;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v11, v4, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    :cond_19
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->f:Z

    .line 565
    .line 566
    if-eqz v3, :cond_1a

    .line 567
    .line 568
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->g:Z

    .line 569
    .line 570
    if-eqz v3, :cond_1a

    .line 571
    .line 572
    iget-wide v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->h:J

    .line 573
    .line 574
    const-wide/16 v13, 0x2000

    .line 575
    .line 576
    add-long/2addr v3, v13

    .line 577
    goto :goto_9

    .line 578
    :cond_1a
    const-wide/32 v3, 0x100000

    .line 579
    .line 580
    .line 581
    :goto_9
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    .line 582
    .line 583
    .line 584
    move-result-wide v13

    .line 585
    cmp-long v3, v13, v3

    .line 586
    .line 587
    if-lez v3, :cond_1b

    .line 588
    .line 589
    iput-boolean v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->e:Z

    .line 590
    .line 591
    iget-object v0, v0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    .line 592
    .line 593
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    .line 594
    .line 595
    .line 596
    :cond_1b
    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 597
    .line 598
    invoke-interface {v1, v0, v7, v8}, Landroidx/media3/extractor/ExtractorInput;->n([BII)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()I

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    add-int/2addr v0, v9

    .line 609
    if-nez v12, :cond_1c

    .line 610
    .line 611
    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    .line 612
    .line 613
    .line 614
    return v7

    .line 615
    :cond_1c
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->J(I)V

    .line 616
    .line 617
    .line 618
    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 619
    .line 620
    invoke-interface {v1, v3, v7, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    .line 621
    .line 622
    .line 623
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 624
    .line 625
    .line 626
    iget-object v0, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 627
    .line 628
    iget-object v1, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->c:Landroidx/media3/common/util/ParsableBitArray;

    .line 629
    .line 630
    iget-object v3, v1, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 631
    .line 632
    const/4 v4, 0x3

    .line 633
    invoke-virtual {v2, v3, v7, v4}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 643
    .line 644
    .line 645
    move-result v3

    .line 646
    iput-boolean v3, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->d:Z

    .line 647
    .line 648
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    .line 649
    .line 650
    .line 651
    move-result v3

    .line 652
    iput-boolean v3, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->e:Z

    .line 653
    .line 654
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 658
    .line 659
    .line 660
    move-result v3

    .line 661
    iget-object v4, v1, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    .line 662
    .line 663
    invoke-virtual {v2, v4, v7, v3}, Landroidx/media3/common/util/ParsableByteArray;->k([BII)V

    .line 664
    .line 665
    .line 666
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    .line 667
    .line 668
    .line 669
    iget-object v3, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->b:Landroidx/media3/common/util/TimestampAdjuster;

    .line 670
    .line 671
    const-wide/16 v4, 0x0

    .line 672
    .line 673
    iput-wide v4, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->g:J

    .line 674
    .line 675
    iget-boolean v4, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->d:Z

    .line 676
    .line 677
    if-eqz v4, :cond_1e

    .line 678
    .line 679
    const/4 v4, 0x4

    .line 680
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 681
    .line 682
    .line 683
    const/4 v4, 0x3

    .line 684
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 685
    .line 686
    .line 687
    move-result v5

    .line 688
    int-to-long v4, v5

    .line 689
    const/16 v8, 0x1e

    .line 690
    .line 691
    shl-long/2addr v4, v8

    .line 692
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 693
    .line 694
    .line 695
    const/16 v9, 0xf

    .line 696
    .line 697
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 698
    .line 699
    .line 700
    move-result v10

    .line 701
    shl-int/2addr v10, v9

    .line 702
    int-to-long v10, v10

    .line 703
    or-long/2addr v4, v10

    .line 704
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 708
    .line 709
    .line 710
    move-result v10

    .line 711
    int-to-long v10, v10

    .line 712
    or-long/2addr v4, v10

    .line 713
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 714
    .line 715
    .line 716
    iget-boolean v10, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->f:Z

    .line 717
    .line 718
    if-nez v10, :cond_1d

    .line 719
    .line 720
    iget-boolean v10, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->e:Z

    .line 721
    .line 722
    if-eqz v10, :cond_1d

    .line 723
    .line 724
    const/4 v10, 0x4

    .line 725
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 726
    .line 727
    .line 728
    const/4 v10, 0x3

    .line 729
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 730
    .line 731
    .line 732
    move-result v10

    .line 733
    int-to-long v10, v10

    .line 734
    shl-long/2addr v10, v8

    .line 735
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 739
    .line 740
    .line 741
    move-result v8

    .line 742
    shl-int/2addr v8, v9

    .line 743
    int-to-long v13, v8

    .line 744
    or-long/2addr v10, v13

    .line 745
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 746
    .line 747
    .line 748
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    .line 749
    .line 750
    .line 751
    move-result v8

    .line 752
    int-to-long v8, v8

    .line 753
    or-long/2addr v8, v10

    .line 754
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {v3, v8, v9}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    .line 758
    .line 759
    .line 760
    iput-boolean v6, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->f:Z

    .line 761
    .line 762
    :cond_1d
    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    .line 763
    .line 764
    .line 765
    move-result-wide v3

    .line 766
    iput-wide v3, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->g:J

    .line 767
    .line 768
    :cond_1e
    iget-wide v3, v12, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->g:J

    .line 769
    .line 770
    const/4 v10, 0x4

    .line 771
    invoke-interface {v0, v10, v3, v4}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->e(IJ)V

    .line 772
    .line 773
    .line 774
    invoke-interface {v0, v2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->b(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 775
    .line 776
    .line 777
    invoke-interface {v0}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->c()V

    .line 778
    .line 779
    .line 780
    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 781
    .line 782
    array-length v0, v0

    .line 783
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->L(I)V

    .line 784
    .line 785
    .line 786
    return v7
.end method

.method public final g()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/ts/PsExtractor;->b:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    .line 17
    .line 18
    invoke-interface {v1}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->d()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method
