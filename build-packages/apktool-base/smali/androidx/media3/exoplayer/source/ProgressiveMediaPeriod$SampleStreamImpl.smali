.class final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/source/SampleStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final synthetic c:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->c:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->a:I

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->b:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->c:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 10
    .line 11
    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->a:I

    .line 12
    .line 13
    aget-object p0, v1, p0

    .line 14
    .line 15
    iget-boolean v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->m(Z)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final b()I
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->b:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x4

    .line 6
    return p0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->c:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 6
    .line 7
    aget-object v0, v1, v0

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, v0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 22
    .line 23
    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->f()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 32
    .line 33
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 34
    .line 35
    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    .line 36
    .line 37
    check-cast v1, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x7

    .line 43
    if-ne p0, v1, :cond_2

    .line 44
    .line 45
    const/4 p0, 0x6

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 p0, 0x3

    .line 48
    :goto_1
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/upstream/Loader;->b(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final d(J)I
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->c:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 2
    .line 3
    iget p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->a:I

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 17
    .line 18
    aget-object v3, v1, p0

    .line 19
    .line 20
    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 21
    .line 22
    monitor-enter v3

    .line 23
    :try_start_0
    iget v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->k(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget v5, v3, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 30
    .line 31
    iget v6, v3, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 32
    .line 33
    const/4 v9, 0x1

    .line 34
    if-eq v5, v6, :cond_1

    .line 35
    .line 36
    move v7, v9

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v7, v2

    .line 39
    :goto_0
    if-eqz v7, :cond_5

    .line 40
    .line 41
    iget-object v7, v3, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 42
    .line 43
    aget-wide v7, v7, v4

    .line 44
    .line 45
    cmp-long v7, p1, v7

    .line 46
    .line 47
    if-gez v7, :cond_2

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iget-wide v7, v3, Landroidx/media3/exoplayer/source/SampleQueue;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    cmp-long v7, p1, v7

    .line 53
    .line 54
    if-lez v7, :cond_3

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    sub-int/2addr v6, v5

    .line 59
    monitor-exit v3

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    sub-int v5, v6, v5

    .line 62
    .line 63
    const/4 v8, 0x1

    .line 64
    move-wide v6, p1

    .line 65
    :try_start_1
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->j(IIJZ)I

    .line 66
    .line 67
    .line 68
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    const/4 p1, -0x1

    .line 70
    if-ne v6, p1, :cond_4

    .line 71
    .line 72
    monitor-exit v3

    .line 73
    :goto_1
    move v6, v2

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    monitor-exit v3

    .line 76
    goto :goto_3

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    move-object p0, v0

    .line 79
    goto :goto_6

    .line 80
    :cond_5
    :goto_2
    monitor-exit v3

    .line 81
    goto :goto_1

    .line 82
    :goto_3
    monitor-enter v3

    .line 83
    if-ltz v6, :cond_6

    .line 84
    .line 85
    :try_start_2
    iget p1, v3, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 86
    .line 87
    add-int/2addr p1, v6

    .line 88
    iget p2, v3, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 89
    .line 90
    if-gt p1, p2, :cond_6

    .line 91
    .line 92
    move v2, v9

    .line 93
    goto :goto_4

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    move-object p0, v0

    .line 96
    goto :goto_5

    .line 97
    :cond_6
    :goto_4
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 98
    .line 99
    .line 100
    iget p1, v3, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 101
    .line 102
    add-int/2addr p1, v6

    .line 103
    iput p1, v3, Landroidx/media3/exoplayer/source/SampleQueue;->s:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    .line 105
    monitor-exit v3

    .line 106
    if-nez v6, :cond_7

    .line 107
    .line 108
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C(I)V

    .line 109
    .line 110
    .line 111
    :cond_7
    return v6

    .line 112
    :goto_5
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    throw p0

    .line 114
    :goto_6
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    throw p0
.end method

.method public final e(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 18

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
    iget-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->c:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 8
    .line 9
    iget v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->a:I

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F()Z

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, -0x3

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    return v5

    .line 19
    :cond_0
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B(I)V

    .line 20
    .line 21
    .line 22
    iget-object v4, v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 23
    .line 24
    aget-object v4, v4, v0

    .line 25
    .line 26
    iget-boolean v6, v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    and-int/lit8 v7, p3, 0x2

    .line 32
    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v7, 0x0

    .line 38
    :goto_0
    iget-object v10, v4, Landroidx/media3/exoplayer/source/SampleQueue;->b:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    .line 39
    .line 40
    monitor-enter v4

    .line 41
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget v11, v4, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 45
    .line 46
    iget v12, v4, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 47
    .line 48
    add-int v13, v11, v12

    .line 49
    .line 50
    iget v14, v4, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    .line 51
    .line 52
    const/4 v15, -0x1

    .line 53
    if-eq v14, v15, :cond_2

    .line 54
    .line 55
    if-lt v13, v14, :cond_2

    .line 56
    .line 57
    const/16 v16, 0x1

    .line 58
    .line 59
    :goto_1
    const/16 p0, 0x1

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v16, 0x0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_2
    iget v8, v4, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 66
    .line 67
    if-eq v12, v8, :cond_3

    .line 68
    .line 69
    move/from16 v8, p0

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/4 v8, 0x0

    .line 73
    :goto_3
    const/4 v9, -0x4

    .line 74
    const/4 v5, 0x4

    .line 75
    const/16 v17, -0x5

    .line 76
    .line 77
    if-eqz v8, :cond_b

    .line 78
    .line 79
    if-ne v14, v15, :cond_4

    .line 80
    .line 81
    iget v8, v4, Landroidx/media3/exoplayer/source/SampleQueue;->y:I

    .line 82
    .line 83
    if-eq v8, v15, :cond_4

    .line 84
    .line 85
    add-int/2addr v11, v12

    .line 86
    if-lt v11, v8, :cond_4

    .line 87
    .line 88
    move/from16 v8, p0

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    goto/16 :goto_e

    .line 93
    .line 94
    :cond_4
    const/4 v8, 0x0

    .line 95
    :goto_4
    if-nez v8, :cond_b

    .line 96
    .line 97
    if-eqz v16, :cond_5

    .line 98
    .line 99
    goto :goto_9

    .line 100
    :cond_5
    iget-object v8, v4, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    .line 101
    .line 102
    invoke-virtual {v8, v13}, Landroidx/media3/exoplayer/source/SpannedData;->a(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    check-cast v8, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    .line 107
    .line 108
    iget-object v8, v8, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    .line 109
    .line 110
    if-nez v7, :cond_a

    .line 111
    .line 112
    iget-object v7, v4, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    .line 113
    .line 114
    if-eq v8, v7, :cond_6

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_6
    iget v1, v4, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 118
    .line 119
    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->k(I)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->n(I)Z

    .line 124
    .line 125
    .line 126
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-nez v7, :cond_7

    .line 128
    .line 129
    monitor-exit v4

    .line 130
    :goto_5
    const/4 v1, -0x3

    .line 131
    goto :goto_b

    .line 132
    :cond_7
    :try_start_1
    iget-object v7, v4, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    .line 133
    .line 134
    aget v7, v7, v1

    .line 135
    .line 136
    iput v7, v2, Landroidx/media3/decoder/Buffer;->j:I

    .line 137
    .line 138
    iget v8, v4, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 139
    .line 140
    iget v11, v4, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 141
    .line 142
    add-int/lit8 v11, v11, -0x1

    .line 143
    .line 144
    if-ne v8, v11, :cond_9

    .line 145
    .line 146
    if-nez v6, :cond_8

    .line 147
    .line 148
    iget-boolean v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->z:Z

    .line 149
    .line 150
    if-eqz v6, :cond_9

    .line 151
    .line 152
    :cond_8
    const/high16 v6, 0x20000000

    .line 153
    .line 154
    or-int/2addr v6, v7

    .line 155
    iput v6, v2, Landroidx/media3/decoder/Buffer;->j:I

    .line 156
    .line 157
    :cond_9
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 158
    .line 159
    aget-wide v6, v6, v1

    .line 160
    .line 161
    iput-wide v6, v2, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 162
    .line 163
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    .line 164
    .line 165
    aget v6, v6, v1

    .line 166
    .line 167
    iput v6, v10, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    .line 168
    .line 169
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    .line 170
    .line 171
    aget-wide v6, v6, v1

    .line 172
    .line 173
    iput-wide v6, v10, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    .line 174
    .line 175
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 176
    .line 177
    aget-object v1, v6, v1

    .line 178
    .line 179
    iput-object v1, v10, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->c:Landroidx/media3/extractor/TrackOutput$CryptoData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .line 181
    monitor-exit v4

    .line 182
    :goto_6
    move v1, v9

    .line 183
    goto :goto_b

    .line 184
    :cond_a
    :goto_7
    :try_start_2
    invoke-virtual {v4, v8, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->o(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    .line 186
    .line 187
    monitor-exit v4

    .line 188
    :goto_8
    move/from16 v1, v17

    .line 189
    .line 190
    goto :goto_b

    .line 191
    :cond_b
    :goto_9
    if-nez v6, :cond_f

    .line 192
    .line 193
    :try_start_3
    iget-boolean v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->z:Z

    .line 194
    .line 195
    if-nez v6, :cond_f

    .line 196
    .line 197
    if-eqz v16, :cond_c

    .line 198
    .line 199
    goto :goto_a

    .line 200
    :cond_c
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    .line 201
    .line 202
    if-eqz v6, :cond_e

    .line 203
    .line 204
    if-nez v7, :cond_d

    .line 205
    .line 206
    iget-object v7, v4, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    .line 207
    .line 208
    if-eq v6, v7, :cond_e

    .line 209
    .line 210
    :cond_d
    invoke-virtual {v4, v6, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->o(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    .line 212
    .line 213
    monitor-exit v4

    .line 214
    goto :goto_8

    .line 215
    :cond_e
    monitor-exit v4

    .line 216
    goto :goto_5

    .line 217
    :cond_f
    :goto_a
    :try_start_4
    iput v5, v2, Landroidx/media3/decoder/Buffer;->j:I

    .line 218
    .line 219
    const-wide/high16 v6, -0x8000000000000000L

    .line 220
    .line 221
    iput-wide v6, v2, Landroidx/media3/decoder/DecoderInputBuffer;->n:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    .line 223
    monitor-exit v4

    .line 224
    goto :goto_6

    .line 225
    :goto_b
    if-ne v1, v9, :cond_13

    .line 226
    .line 227
    invoke-virtual {v2, v5}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 228
    .line 229
    .line 230
    move-result v6

    .line 231
    if-nez v6, :cond_13

    .line 232
    .line 233
    and-int/lit8 v6, p3, 0x1

    .line 234
    .line 235
    if-eqz v6, :cond_10

    .line 236
    .line 237
    move/from16 v9, p0

    .line 238
    .line 239
    goto :goto_c

    .line 240
    :cond_10
    const/4 v9, 0x0

    .line 241
    :goto_c
    and-int/lit8 v5, p3, 0x4

    .line 242
    .line 243
    if-nez v5, :cond_12

    .line 244
    .line 245
    iget-object v5, v4, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 246
    .line 247
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->b:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    .line 248
    .line 249
    if-eqz v9, :cond_11

    .line 250
    .line 251
    iget-object v7, v5, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 252
    .line 253
    iget-object v5, v5, Landroidx/media3/exoplayer/source/SampleDataQueue;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 254
    .line 255
    invoke-static {v7, v2, v6, v5}, Landroidx/media3/exoplayer/source/SampleDataQueue;->e(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 256
    .line 257
    .line 258
    goto :goto_d

    .line 259
    :cond_11
    iget-object v7, v5, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 260
    .line 261
    iget-object v8, v5, Landroidx/media3/exoplayer/source/SampleDataQueue;->c:Landroidx/media3/common/util/ParsableByteArray;

    .line 262
    .line 263
    invoke-static {v7, v2, v6, v8}, Landroidx/media3/exoplayer/source/SampleDataQueue;->e(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    iput-object v2, v5, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 268
    .line 269
    :cond_12
    :goto_d
    if-nez v9, :cond_13

    .line 270
    .line 271
    iget v2, v4, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 272
    .line 273
    add-int/lit8 v2, v2, 0x1

    .line 274
    .line 275
    iput v2, v4, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 276
    .line 277
    :cond_13
    const/4 v2, -0x3

    .line 278
    if-ne v1, v2, :cond_14

    .line 279
    .line 280
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C(I)V

    .line 281
    .line 282
    .line 283
    :cond_14
    return v1

    .line 284
    :goto_e
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    throw v0
.end method
