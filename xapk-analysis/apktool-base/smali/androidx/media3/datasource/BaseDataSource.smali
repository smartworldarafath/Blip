.class public abstract Landroidx/media3/datasource/BaseDataSource;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public c:I

.field public d:Landroidx/media3/datasource/DataSpec;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/media3/datasource/BaseDataSource;->a:Z

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Landroidx/media3/datasource/BaseDataSource;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget p1, p0, Landroidx/media3/datasource/BaseDataSource;->c:I

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    iput p1, p0, Landroidx/media3/datasource/BaseDataSource;->c:I

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final p(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->d:Landroidx/media3/datasource/DataSpec;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    iget v3, p0, Landroidx/media3/datasource/BaseDataSource;->c:I

    .line 8
    .line 9
    if-ge v2, v3, :cond_2

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/media3/datasource/BaseDataSource;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/media3/datasource/TransferListener;

    .line 18
    .line 19
    iget-boolean v4, p0, Landroidx/media3/datasource/BaseDataSource;->a:Z

    .line 20
    .line 21
    check-cast v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 22
    .line 23
    monitor-enter v3

    .line 24
    :try_start_0
    sget-object v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->p:Lcom/google/common/collect/ImmutableList;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    iget v4, v0, Landroidx/media3/datasource/DataSpec;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    const/4 v4, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v4, v1

    .line 33
    :goto_1
    if-nez v4, :cond_1

    .line 34
    .line 35
    monitor-exit v3

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :try_start_1
    iget-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->i:J

    .line 38
    .line 39
    int-to-long v6, p1

    .line 40
    add-long/2addr v4, v6

    .line 41
    iput-wide v4, v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->i:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    monitor-exit v3

    .line 44
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw p0

    .line 50
    :cond_2
    return-void
.end method

.method public final q()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->d:Landroidx/media3/datasource/DataSpec;

    .line 2
    .line 3
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    iget v3, p0, Landroidx/media3/datasource/BaseDataSource;->c:I

    .line 8
    .line 9
    if-ge v2, v3, :cond_6

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/media3/datasource/BaseDataSource;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/media3/datasource/TransferListener;

    .line 18
    .line 19
    iget-boolean v4, p0, Landroidx/media3/datasource/BaseDataSource;->a:Z

    .line 20
    .line 21
    move-object v5, v3

    .line 22
    check-cast v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 23
    .line 24
    monitor-enter v5

    .line 25
    :try_start_0
    sget-object v3, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->p:Lcom/google/common/collect/ImmutableList;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    iget v4, v0, Landroidx/media3/datasource/DataSpec;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    move v4, v3

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v4, v1

    .line 35
    :goto_1
    if-nez v4, :cond_1

    .line 36
    .line 37
    monitor-exit v5

    .line 38
    goto :goto_4

    .line 39
    :cond_1
    :try_start_1
    iget v4, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->g:I

    .line 40
    .line 41
    if-lez v4, :cond_2

    .line 42
    .line 43
    move v4, v3

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move v4, v1

    .line 46
    :goto_2
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v4, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->d:Landroidx/media3/common/util/Clock;

    .line 50
    .line 51
    check-cast v4, Landroidx/media3/common/util/SystemClock;

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 57
    .line 58
    .line 59
    move-result-wide v11

    .line 60
    iget-wide v6, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->h:J

    .line 61
    .line 62
    sub-long v6, v11, v6

    .line 63
    .line 64
    long-to-int v6, v6

    .line 65
    iget-wide v7, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->j:J

    .line 66
    .line 67
    int-to-long v9, v6

    .line 68
    add-long/2addr v7, v9

    .line 69
    iput-wide v7, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->j:J

    .line 70
    .line 71
    iget-wide v7, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->k:J

    .line 72
    .line 73
    iget-wide v9, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->i:J

    .line 74
    .line 75
    add-long/2addr v7, v9

    .line 76
    iput-wide v7, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->k:J

    .line 77
    .line 78
    if-lez v6, :cond_5

    .line 79
    .line 80
    long-to-float v4, v9

    .line 81
    const/high16 v7, 0x45fa0000    # 8000.0f

    .line 82
    .line 83
    mul-float/2addr v4, v7

    .line 84
    int-to-float v7, v6

    .line 85
    div-float/2addr v4, v7

    .line 86
    iget-object v7, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->f:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    .line 87
    .line 88
    long-to-double v8, v9

    .line 89
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    double-to-int v8, v8

    .line 94
    invoke-virtual {v7, v8, v4}, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->a(IF)V

    .line 95
    .line 96
    .line 97
    iget-wide v7, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->j:J

    .line 98
    .line 99
    const-wide/16 v9, 0x7d0

    .line 100
    .line 101
    cmp-long v4, v7, v9

    .line 102
    .line 103
    if-gez v4, :cond_3

    .line 104
    .line 105
    iget-wide v7, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->k:J

    .line 106
    .line 107
    const-wide/32 v9, 0x80000

    .line 108
    .line 109
    .line 110
    cmp-long v4, v7, v9

    .line 111
    .line 112
    if-ltz v4, :cond_4

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    goto :goto_5

    .line 118
    :cond_3
    :goto_3
    iget-object v4, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->f:Landroidx/media3/exoplayer/upstream/SlidingPercentile;

    .line 119
    .line 120
    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->b()F

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    float-to-long v7, v4

    .line 125
    iput-wide v7, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->l:J

    .line 126
    .line 127
    :cond_4
    iget-wide v7, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->i:J

    .line 128
    .line 129
    iget-wide v9, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->l:J

    .line 130
    .line 131
    invoke-virtual/range {v5 .. v10}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->e(IJJ)V

    .line 132
    .line 133
    .line 134
    iput-wide v11, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->h:J

    .line 135
    .line 136
    const-wide/16 v6, 0x0

    .line 137
    .line 138
    iput-wide v6, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->i:J

    .line 139
    .line 140
    :cond_5
    iget v4, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->g:I

    .line 141
    .line 142
    sub-int/2addr v4, v3

    .line 143
    iput v4, v5, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    monitor-exit v5

    .line 146
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :goto_5
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    throw p0

    .line 152
    :cond_6
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Landroidx/media3/datasource/BaseDataSource;->d:Landroidx/media3/datasource/DataSpec;

    .line 154
    .line 155
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/media3/datasource/BaseDataSource;->c:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/media3/datasource/BaseDataSource;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroidx/media3/datasource/TransferListener;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method public final s(Landroidx/media3/datasource/DataSpec;)V
    .locals 7

    .line 1
    iput-object p1, p0, Landroidx/media3/datasource/BaseDataSource;->d:Landroidx/media3/datasource/DataSpec;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    iget v2, p0, Landroidx/media3/datasource/BaseDataSource;->c:I

    .line 6
    .line 7
    if-ge v1, v2, :cond_3

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/media3/datasource/BaseDataSource;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Landroidx/media3/datasource/TransferListener;

    .line 16
    .line 17
    iget-boolean v3, p0, Landroidx/media3/datasource/BaseDataSource;->a:Z

    .line 18
    .line 19
    check-cast v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    sget-object v4, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->p:Lcom/google/common/collect/ImmutableList;

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    iget v3, p1, Landroidx/media3/datasource/DataSpec;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    move v3, v4

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v3, v0

    .line 32
    :goto_1
    if-nez v3, :cond_1

    .line 33
    .line 34
    monitor-exit v2

    .line 35
    goto :goto_3

    .line 36
    :cond_1
    :try_start_1
    iget v3, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->g:I

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    iget-object v3, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->d:Landroidx/media3/common/util/Clock;

    .line 41
    .line 42
    check-cast v3, Landroidx/media3/common/util/SystemClock;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    iput-wide v5, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->h:J

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_4

    .line 56
    :cond_2
    :goto_2
    iget v3, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->g:I

    .line 57
    .line 58
    add-int/2addr v3, v4

    .line 59
    iput v3, v2, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    monitor-exit v2

    .line 62
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_4
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_3
    return-void
.end method
