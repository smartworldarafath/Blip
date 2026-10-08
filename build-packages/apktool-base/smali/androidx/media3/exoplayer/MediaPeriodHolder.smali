.class final Landroidx/media3/exoplayer/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

.field public final b:Ljava/lang/Object;

.field public final c:[Landroidx/media3/exoplayer/source/SampleStream;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Landroidx/media3/exoplayer/MediaPeriodInfo;

.field public final h:[Z

.field public final i:[Z

.field public final j:[Landroidx/media3/exoplayer/RendererCapabilities;

.field public final k:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field public final l:Landroidx/media3/exoplayer/MediaSourceList;

.field public m:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public n:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public p:J


# direct methods
.method public constructor <init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->j:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->k:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 9
    .line 10
    iput-object p6, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->l:Landroidx/media3/exoplayer/MediaSourceList;

    .line 11
    .line 12
    iget-object p2, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 13
    .line 14
    iget-object p3, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p7, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 19
    .line 20
    sget-object p3, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 21
    .line 22
    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 23
    .line 24
    iput-object p8, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 25
    .line 26
    array-length p3, p1

    .line 27
    new-array p3, p3, [Landroidx/media3/exoplayer/source/SampleStream;

    .line 28
    .line 29
    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 30
    .line 31
    array-length p3, p1

    .line 32
    new-array p3, p3, [Z

    .line 33
    .line 34
    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:[Z

    .line 35
    .line 36
    array-length p1, p1

    .line 37
    new-array p1, p1, [Z

    .line 38
    .line 39
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->i:[Z

    .line 40
    .line 41
    iget-wide p3, p7, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 42
    .line 43
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object p1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 47
    .line 48
    sget p7, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->d:I

    .line 49
    .line 50
    check-cast p1, Landroid/util/Pair;

    .line 51
    .line 52
    iget-object p7, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p2, p6, Landroidx/media3/exoplayer/MediaSourceList;->e:Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {p2, p7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    iget-object p7, p6, Landroidx/media3/exoplayer/MediaSourceList;->h:Ljava/util/HashSet;

    .line 72
    .line 73
    invoke-virtual {p7, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    iget-object p7, p6, Landroidx/media3/exoplayer/MediaSourceList;->g:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {p7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p7

    .line 82
    check-cast p7, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    .line 83
    .line 84
    if-eqz p7, :cond_0

    .line 85
    .line 86
    iget-object p8, p7, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    .line 87
    .line 88
    iget-object p7, p7, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->b:Landroidx/media3/exoplayer/r;

    .line 89
    .line 90
    check-cast p8, Landroidx/media3/exoplayer/source/BaseMediaSource;

    .line 91
    .line 92
    invoke-virtual {p8, p7}, Landroidx/media3/exoplayer/source/BaseMediaSource;->k(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    iget-object p7, p2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->c:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    iget-object p7, p2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 101
    .line 102
    invoke-virtual {p7, p1, p5, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->t(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iget-object p3, p6, Landroidx/media3/exoplayer/MediaSourceList;->d:Ljava/util/IdentityHashMap;

    .line 107
    .line 108
    invoke-virtual {p3, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p6}, Landroidx/media3/exoplayer/MediaSourceList;->c()V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 115
    .line 116
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    iget v4, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a:I

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    if-ge v3, v4, :cond_1

    .line 11
    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 15
    .line 16
    invoke-virtual {v1, v4, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move v5, v2

    .line 24
    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->i:[Z

    .line 25
    .line 26
    aput-boolean v5, v4, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v3, v2

    .line 32
    :goto_2
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->j:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 33
    .line 34
    array-length v6, v4

    .line 35
    const/4 v7, -0x2

    .line 36
    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 37
    .line 38
    if-ge v3, v6, :cond_3

    .line 39
    .line 40
    aget-object v4, v4, v3

    .line 41
    .line 42
    check-cast v4, Landroidx/media3/exoplayer/BaseRenderer;

    .line 43
    .line 44
    iget v4, v4, Landroidx/media3/exoplayer/BaseRenderer;->k:I

    .line 45
    .line 46
    if-ne v4, v7, :cond_2

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    aput-object v4, v8, v3

    .line 50
    .line 51
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->b()V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->c()V

    .line 60
    .line 61
    .line 62
    iget-object v10, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 63
    .line 64
    iget-object v11, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->i:[Z

    .line 65
    .line 66
    iget-object v12, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 67
    .line 68
    iget-object v9, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 69
    .line 70
    move-wide/from16 v14, p2

    .line 71
    .line 72
    move-object/from16 v13, p5

    .line 73
    .line 74
    invoke-virtual/range {v9 .. v15}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->k([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    .line 75
    .line 76
    .line 77
    move-result-wide v9

    .line 78
    move v3, v2

    .line 79
    :goto_3
    array-length v6, v4

    .line 80
    if-ge v3, v6, :cond_5

    .line 81
    .line 82
    aget-object v6, v4, v3

    .line 83
    .line 84
    check-cast v6, Landroidx/media3/exoplayer/BaseRenderer;

    .line 85
    .line 86
    iget v6, v6, Landroidx/media3/exoplayer/BaseRenderer;->k:I

    .line 87
    .line 88
    if-ne v6, v7, :cond_4

    .line 89
    .line 90
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 91
    .line 92
    invoke-virtual {v6, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_4

    .line 97
    .line 98
    new-instance v6, Landroidx/media3/exoplayer/source/EmptySampleStream;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    aput-object v6, v8, v3

    .line 104
    .line 105
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    iput-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    .line 109
    .line 110
    move v3, v2

    .line 111
    :goto_4
    array-length v6, v8

    .line 112
    if-ge v3, v6, :cond_9

    .line 113
    .line 114
    aget-object v6, v8, v3

    .line 115
    .line 116
    if-eqz v6, :cond_6

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    .line 119
    .line 120
    .line 121
    move-result v6

    .line 122
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 123
    .line 124
    .line 125
    aget-object v6, v4, v3

    .line 126
    .line 127
    check-cast v6, Landroidx/media3/exoplayer/BaseRenderer;

    .line 128
    .line 129
    iget v6, v6, Landroidx/media3/exoplayer/BaseRenderer;->k:I

    .line 130
    .line 131
    if-eq v6, v7, :cond_8

    .line 132
    .line 133
    iput-boolean v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_6
    iget-object v6, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 137
    .line 138
    aget-object v6, v6, v3

    .line 139
    .line 140
    if-nez v6, :cond_7

    .line 141
    .line 142
    move v6, v5

    .line 143
    goto :goto_5

    .line 144
    :cond_7
    move v6, v2

    .line 145
    :goto_5
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 146
    .line 147
    .line 148
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_9
    return-wide v9
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 7
    .line 8
    iget v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 18
    .line 19
    aget-object v1, v1, v0

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

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 7
    .line 8
    iget v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a:I

    .line 9
    .line 10
    if-ge v0, v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 18
    .line 19
    aget-object v1, v1, v0

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

.method public final d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 6
    .line 7
    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    .line 11
    .line 12
    const-wide/high16 v1, -0x8000000000000000L

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->t()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-wide v3, v1

    .line 24
    :goto_0
    cmp-long v0, v3, v1

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 29
    .line 30
    iget-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    .line 31
    .line 32
    return-wide v0

    .line 33
    :cond_2
    return-wide v3
.end method

.method public final e()J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 2
    .line 3
    iget-wide v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 4
    .line 5
    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final f(FLandroidx/media3/common/Timeline;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->q()Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j(FLandroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 17
    .line 18
    iget-wide v0, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 19
    .line 20
    iget-wide p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    .line 21
    .line 22
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmp-long v3, p1, v3

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    cmp-long v3, v0, p1

    .line 32
    .line 33
    if-ltz v3, :cond_0

    .line 34
    .line 35
    const-wide/16 v0, 0x1

    .line 36
    .line 37
    sub-long/2addr p1, v0

    .line 38
    const-wide/16 v0, 0x0

    .line 39
    .line 40
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    :cond_0
    move-wide v3, v0

    .line 45
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->j:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 46
    .line 47
    array-length p1, p1

    .line 48
    new-array v6, p1, [Z

    .line 49
    .line 50
    const/4 v5, 0x0

    .line 51
    move-object v1, p0

    .line 52
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    .line 53
    .line 54
    .line 55
    move-result-wide p0

    .line 56
    iget-wide v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 57
    .line 58
    iget-object p2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 59
    .line 60
    iget-wide v4, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 61
    .line 62
    sub-long/2addr v4, p0

    .line 63
    add-long/2addr v4, v2

    .line 64
    iput-wide v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 65
    .line 66
    iget-wide v2, p2, Landroidx/media3/exoplayer/MediaPeriodInfo;->c:J

    .line 67
    .line 68
    invoke-virtual {p2, p0, p1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodInfo;->b(JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    iput-object p0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 73
    .line 74
    return-void
.end method

.method public final g()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->t()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/high16 v2, -0x8000000000000000L

    .line 16
    .line 17
    cmp-long p0, v0, v2

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public final h()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 16
    .line 17
    iget-wide v2, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 18
    .line 19
    sub-long/2addr v0, v2

    .line 20
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long p0, v0, v2

    .line 26
    .line 27
    if-ltz p0, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    return p0
.end method

.method public final i()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->l:Landroidx/media3/exoplayer/MediaSourceList;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 7
    .line 8
    :try_start_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList;->d:Ljava/util/IdentityHashMap;

    .line 9
    .line 10
    invoke-virtual {v1, p0}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 20
    .line 21
    invoke-virtual {v3, p0}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->g(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->c:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->j:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 27
    .line 28
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->c()V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/MediaSourceList;->d(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_0
    move-exception p0

    .line 45
    const-string v0, "MediaPeriodHolder"

    .line 46
    .line 47
    const-string v1, "Period release failed."

    .line 48
    .line 49
    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final j(FLandroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->k:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->j:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 8
    .line 9
    check-cast v1, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    array-length v4, v2

    .line 15
    const/4 v5, 0x1

    .line 16
    add-int/2addr v4, v5

    .line 17
    new-array v4, v4, [I

    .line 18
    .line 19
    array-length v6, v2

    .line 20
    add-int/2addr v6, v5

    .line 21
    new-array v7, v6, [[Landroidx/media3/common/TrackGroup;

    .line 22
    .line 23
    array-length v8, v2

    .line 24
    add-int/2addr v8, v5

    .line 25
    new-array v13, v8, [[[I

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    :goto_0
    if-ge v9, v6, :cond_0

    .line 29
    .line 30
    iget v10, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    .line 31
    .line 32
    new-array v11, v10, [Landroidx/media3/common/TrackGroup;

    .line 33
    .line 34
    aput-object v11, v7, v9

    .line 35
    .line 36
    new-array v10, v10, [[I

    .line 37
    .line 38
    aput-object v10, v13, v9

    .line 39
    .line 40
    add-int/lit8 v9, v9, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    array-length v6, v2

    .line 44
    new-array v12, v6, [I

    .line 45
    .line 46
    const/4 v9, 0x0

    .line 47
    :goto_1
    if-ge v9, v6, :cond_1

    .line 48
    .line 49
    aget-object v10, v2, v9

    .line 50
    .line 51
    invoke-interface {v10}, Landroidx/media3/exoplayer/RendererCapabilities;->n()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    aput v10, v12, v9

    .line 56
    .line 57
    add-int/lit8 v9, v9, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v6, 0x0

    .line 61
    :goto_2
    iget v9, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    .line 62
    .line 63
    const/4 v15, 0x5

    .line 64
    if-ge v6, v9, :cond_a

    .line 65
    .line 66
    invoke-virtual {v3, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    iget v10, v9, Landroidx/media3/common/TrackGroup;->c:I

    .line 71
    .line 72
    if-ne v10, v15, :cond_2

    .line 73
    .line 74
    move v10, v5

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    const/4 v10, 0x0

    .line 77
    :goto_3
    array-length v11, v2

    .line 78
    move/from16 v16, v5

    .line 79
    .line 80
    const/16 p1, 0x0

    .line 81
    .line 82
    const/4 v14, 0x0

    .line 83
    const/4 v15, 0x0

    .line 84
    :goto_4
    array-length v8, v2

    .line 85
    if-ge v14, v8, :cond_7

    .line 86
    .line 87
    aget-object v8, v2, v14

    .line 88
    .line 89
    move-object/from16 v17, v1

    .line 90
    .line 91
    move-object/from16 v18, v3

    .line 92
    .line 93
    move/from16 p2, v5

    .line 94
    .line 95
    move/from16 v1, p1

    .line 96
    .line 97
    move v5, v1

    .line 98
    :goto_5
    iget v3, v9, Landroidx/media3/common/TrackGroup;->a:I

    .line 99
    .line 100
    if-ge v5, v3, :cond_3

    .line 101
    .line 102
    iget-object v3, v9, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 103
    .line 104
    aget-object v3, v3, v5

    .line 105
    .line 106
    invoke-interface {v8, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->f(Landroidx/media3/common/Format;)I

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    and-int/lit8 v3, v3, 0x7

    .line 111
    .line 112
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_3
    aget v3, v4, v14

    .line 120
    .line 121
    if-nez v3, :cond_4

    .line 122
    .line 123
    move/from16 v3, p2

    .line 124
    .line 125
    goto :goto_6

    .line 126
    :cond_4
    move/from16 v3, p1

    .line 127
    .line 128
    :goto_6
    if-gt v1, v15, :cond_5

    .line 129
    .line 130
    if-ne v1, v15, :cond_6

    .line 131
    .line 132
    if-eqz v10, :cond_6

    .line 133
    .line 134
    if-nez v16, :cond_6

    .line 135
    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    :cond_5
    move v15, v1

    .line 139
    move/from16 v16, v3

    .line 140
    .line 141
    move v11, v14

    .line 142
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 143
    .line 144
    move/from16 v5, p2

    .line 145
    .line 146
    move-object/from16 v1, v17

    .line 147
    .line 148
    move-object/from16 v3, v18

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_7
    move-object/from16 v17, v1

    .line 152
    .line 153
    move-object/from16 v18, v3

    .line 154
    .line 155
    move/from16 p2, v5

    .line 156
    .line 157
    array-length v1, v2

    .line 158
    if-ne v11, v1, :cond_8

    .line 159
    .line 160
    iget v1, v9, Landroidx/media3/common/TrackGroup;->a:I

    .line 161
    .line 162
    new-array v1, v1, [I

    .line 163
    .line 164
    goto :goto_8

    .line 165
    :cond_8
    aget-object v1, v2, v11

    .line 166
    .line 167
    iget v3, v9, Landroidx/media3/common/TrackGroup;->a:I

    .line 168
    .line 169
    new-array v3, v3, [I

    .line 170
    .line 171
    move/from16 v5, p1

    .line 172
    .line 173
    :goto_7
    iget v8, v9, Landroidx/media3/common/TrackGroup;->a:I

    .line 174
    .line 175
    if-ge v5, v8, :cond_9

    .line 176
    .line 177
    iget-object v8, v9, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 178
    .line 179
    aget-object v8, v8, v5

    .line 180
    .line 181
    invoke-interface {v1, v8}, Landroidx/media3/exoplayer/RendererCapabilities;->f(Landroidx/media3/common/Format;)I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    aput v8, v3, v5

    .line 186
    .line 187
    add-int/lit8 v5, v5, 0x1

    .line 188
    .line 189
    goto :goto_7

    .line 190
    :cond_9
    move-object v1, v3

    .line 191
    :goto_8
    aget v3, v4, v11

    .line 192
    .line 193
    aget-object v5, v7, v11

    .line 194
    .line 195
    aput-object v9, v5, v3

    .line 196
    .line 197
    aget-object v5, v13, v11

    .line 198
    .line 199
    aput-object v1, v5, v3

    .line 200
    .line 201
    add-int/lit8 v3, v3, 0x1

    .line 202
    .line 203
    aput v3, v4, v11

    .line 204
    .line 205
    add-int/lit8 v6, v6, 0x1

    .line 206
    .line 207
    move/from16 v5, p2

    .line 208
    .line 209
    move-object/from16 v1, v17

    .line 210
    .line 211
    move-object/from16 v3, v18

    .line 212
    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :cond_a
    move-object/from16 v17, v1

    .line 216
    .line 217
    move/from16 p2, v5

    .line 218
    .line 219
    const/16 p1, 0x0

    .line 220
    .line 221
    array-length v1, v2

    .line 222
    new-array v11, v1, [Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 223
    .line 224
    array-length v1, v2

    .line 225
    new-array v1, v1, [Ljava/lang/String;

    .line 226
    .line 227
    array-length v3, v2

    .line 228
    new-array v10, v3, [I

    .line 229
    .line 230
    move/from16 v3, p1

    .line 231
    .line 232
    :goto_9
    array-length v5, v2

    .line 233
    if-ge v3, v5, :cond_b

    .line 234
    .line 235
    aget v5, v4, v3

    .line 236
    .line 237
    new-instance v6, Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 238
    .line 239
    aget-object v8, v7, v3

    .line 240
    .line 241
    invoke-static {v5, v8}, Landroidx/media3/common/util/Util;->F(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    check-cast v8, [Landroidx/media3/common/TrackGroup;

    .line 246
    .line 247
    invoke-direct {v6, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    .line 248
    .line 249
    .line 250
    aput-object v6, v11, v3

    .line 251
    .line 252
    aget-object v6, v13, v3

    .line 253
    .line 254
    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->F(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    check-cast v5, [[I

    .line 259
    .line 260
    aput-object v5, v13, v3

    .line 261
    .line 262
    aget-object v5, v2, v3

    .line 263
    .line 264
    invoke-interface {v5}, Landroidx/media3/exoplayer/RendererCapabilities;->getName()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    aput-object v5, v1, v3

    .line 269
    .line 270
    aget-object v5, v2, v3

    .line 271
    .line 272
    check-cast v5, Landroidx/media3/exoplayer/BaseRenderer;

    .line 273
    .line 274
    iget v5, v5, Landroidx/media3/exoplayer/BaseRenderer;->k:I

    .line 275
    .line 276
    aput v5, v10, v3

    .line 277
    .line 278
    add-int/lit8 v3, v3, 0x1

    .line 279
    .line 280
    goto :goto_9

    .line 281
    :cond_b
    array-length v1, v2

    .line 282
    aget v1, v4, v1

    .line 283
    .line 284
    new-instance v14, Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 285
    .line 286
    array-length v2, v2

    .line 287
    aget-object v2, v7, v2

    .line 288
    .line 289
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->F(I[Ljava/lang/Object;)[Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    check-cast v1, [Landroidx/media3/common/TrackGroup;

    .line 294
    .line 295
    invoke-direct {v14, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    .line 296
    .line 297
    .line 298
    new-instance v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 299
    .line 300
    invoke-direct/range {v9 .. v14}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([I[Landroidx/media3/exoplayer/source/TrackGroupArray;[I[[[ILandroidx/media3/exoplayer/source/TrackGroupArray;)V

    .line 301
    .line 302
    .line 303
    move-object/from16 v1, v17

    .line 304
    .line 305
    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 306
    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    iput-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->g:Ljava/lang/Thread;

    .line 312
    .line 313
    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j:Ljava/lang/Boolean;

    .line 314
    .line 315
    if-nez v2, :cond_c

    .line 316
    .line 317
    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Landroid/content/Context;

    .line 318
    .line 319
    if-eqz v2, :cond_c

    .line 320
    .line 321
    invoke-static {v2}, Landroidx/media3/common/util/Util;->C(Landroid/content/Context;)Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    iput-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j:Ljava/lang/Boolean;

    .line 330
    .line 331
    :cond_c
    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 332
    .line 333
    iget-boolean v2, v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->B:Z

    .line 334
    .line 335
    if-eqz v2, :cond_d

    .line 336
    .line 337
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 338
    .line 339
    const/16 v3, 0x20

    .line 340
    .line 341
    if-lt v2, v3, :cond_d

    .line 342
    .line 343
    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 344
    .line 345
    if-nez v2, :cond_d

    .line 346
    .line 347
    new-instance v2, Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 348
    .line 349
    iget-object v3, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Landroid/content/Context;

    .line 350
    .line 351
    new-instance v4, Le;

    .line 352
    .line 353
    const/16 v5, 0x9

    .line 354
    .line 355
    invoke-direct {v4, v5, v1}, Le;-><init>(ILjava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    iget-object v5, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j:Ljava/lang/Boolean;

    .line 359
    .line 360
    invoke-direct {v2, v3, v4, v5}, Landroidx/media3/exoplayer/util/SpatializerWrapper;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Boolean;)V

    .line 361
    .line 362
    .line 363
    iput-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 364
    .line 365
    :cond_d
    iget v2, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    .line 366
    .line 367
    new-array v3, v2, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 368
    .line 369
    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 370
    .line 371
    invoke-static {v9, v4, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 372
    .line 373
    .line 374
    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 375
    .line 376
    invoke-static {v9, v4, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 377
    .line 378
    .line 379
    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 380
    .line 381
    invoke-static {v9, v4, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->d(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 382
    .line 383
    .line 384
    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 385
    .line 386
    iget-object v5, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c:Landroid/content/Context;

    .line 387
    .line 388
    iget v6, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    .line 389
    .line 390
    move/from16 v7, p2

    .line 391
    .line 392
    invoke-static {v3, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->g([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    .line 393
    .line 394
    .line 395
    move-result-object v8

    .line 396
    const/4 v7, 0x2

    .line 397
    if-nez v8, :cond_10

    .line 398
    .line 399
    move/from16 v8, p1

    .line 400
    .line 401
    :goto_a
    if-ge v8, v6, :cond_f

    .line 402
    .line 403
    aget v14, v10, v8

    .line 404
    .line 405
    if-ne v7, v14, :cond_e

    .line 406
    .line 407
    aget-object v14, v11, v8

    .line 408
    .line 409
    iget v14, v14, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    .line 410
    .line 411
    if-lez v14, :cond_e

    .line 412
    .line 413
    const/4 v8, 0x1

    .line 414
    goto :goto_b

    .line 415
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 416
    .line 417
    goto :goto_a

    .line 418
    :cond_f
    move/from16 v8, p1

    .line 419
    .line 420
    :goto_b
    new-instance v14, Landroidx/media3/exoplayer/trackselection/d;

    .line 421
    .line 422
    invoke-direct {v14, v1, v4, v8, v12}, Landroidx/media3/exoplayer/trackselection/d;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Z[I)V

    .line 423
    .line 424
    .line 425
    new-instance v8, Landroidx/media3/exoplayer/trackselection/b;

    .line 426
    .line 427
    invoke-direct {v8, v7}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    .line 428
    .line 429
    .line 430
    const/4 v15, 0x1

    .line 431
    invoke-static {v15, v9, v13, v14, v8}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    if-eqz v8, :cond_10

    .line 436
    .line 437
    iget-object v14, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 438
    .line 439
    check-cast v14, Ljava/lang/Integer;

    .line 440
    .line 441
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 442
    .line 443
    .line 444
    move-result v14

    .line 445
    iget-object v15, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 446
    .line 447
    check-cast v15, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 448
    .line 449
    aput-object v15, v3, v14

    .line 450
    .line 451
    :cond_10
    if-nez v8, :cond_11

    .line 452
    .line 453
    const/4 v8, 0x0

    .line 454
    goto :goto_c

    .line 455
    :cond_11
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v8, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 458
    .line 459
    iget-object v15, v8, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    .line 460
    .line 461
    iget-object v8, v8, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->b:[I

    .line 462
    .line 463
    aget v8, v8, p1

    .line 464
    .line 465
    iget-object v15, v15, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 466
    .line 467
    aget-object v8, v15, v8

    .line 468
    .line 469
    iget-object v8, v8, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    .line 470
    .line 471
    :goto_c
    invoke-static {v3, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->g([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    .line 472
    .line 473
    .line 474
    move-result-object v15

    .line 475
    const/4 v14, 0x4

    .line 476
    invoke-static {v3, v14}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->g([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    .line 477
    .line 478
    .line 479
    move-result-object v18

    .line 480
    if-nez v15, :cond_15

    .line 481
    .line 482
    if-nez v18, :cond_15

    .line 483
    .line 484
    iget-object v15, v4, Landroidx/media3/common/TrackSelectionParameters;->q:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 485
    .line 486
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 487
    .line 488
    .line 489
    iget-boolean v15, v4, Landroidx/media3/common/TrackSelectionParameters;->g:Z

    .line 490
    .line 491
    if-eqz v15, :cond_12

    .line 492
    .line 493
    if-eqz v5, :cond_12

    .line 494
    .line 495
    invoke-static {v5}, Landroidx/media3/common/util/Util;->o(Landroid/content/Context;)Landroid/graphics/Point;

    .line 496
    .line 497
    .line 498
    move-result-object v15

    .line 499
    goto :goto_d

    .line 500
    :cond_12
    const/4 v15, 0x0

    .line 501
    :goto_d
    new-instance v14, Landroidx/media3/exoplayer/trackselection/c;

    .line 502
    .line 503
    invoke-direct {v14, v4, v8, v12, v15}, Landroidx/media3/exoplayer/trackselection/c;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;[ILandroid/graphics/Point;)V

    .line 504
    .line 505
    .line 506
    new-instance v12, Landroidx/media3/exoplayer/trackselection/b;

    .line 507
    .line 508
    const/4 v15, 0x1

    .line 509
    invoke-direct {v12, v15}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    .line 510
    .line 511
    .line 512
    invoke-static {v7, v9, v13, v14, v12}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 513
    .line 514
    .line 515
    move-result-object v12

    .line 516
    if-nez v12, :cond_13

    .line 517
    .line 518
    iget-object v14, v4, Landroidx/media3/common/TrackSelectionParameters;->q:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 519
    .line 520
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    new-instance v14, Landroidx/media3/exoplayer/trackselection/a;

    .line 524
    .line 525
    invoke-direct {v14, v4}, Landroidx/media3/exoplayer/trackselection/a;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)V

    .line 526
    .line 527
    .line 528
    new-instance v15, Landroidx/media3/exoplayer/trackselection/b;

    .line 529
    .line 530
    move/from16 v7, p1

    .line 531
    .line 532
    invoke-direct {v15, v7}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    .line 533
    .line 534
    .line 535
    const/4 v7, 0x4

    .line 536
    invoke-static {v7, v9, v13, v14, v15}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 537
    .line 538
    .line 539
    move-result-object v14

    .line 540
    goto :goto_e

    .line 541
    :cond_13
    const/4 v14, 0x0

    .line 542
    :goto_e
    if-eqz v14, :cond_14

    .line 543
    .line 544
    iget-object v7, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v7, Ljava/lang/Integer;

    .line 547
    .line 548
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 549
    .line 550
    .line 551
    move-result v7

    .line 552
    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 553
    .line 554
    check-cast v12, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 555
    .line 556
    aput-object v12, v3, v7

    .line 557
    .line 558
    goto :goto_f

    .line 559
    :cond_14
    if-eqz v12, :cond_15

    .line 560
    .line 561
    iget-object v7, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v7, Ljava/lang/Integer;

    .line 564
    .line 565
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 566
    .line 567
    .line 568
    move-result v7

    .line 569
    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v12, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 572
    .line 573
    aput-object v12, v3, v7

    .line 574
    .line 575
    :cond_15
    :goto_f
    const/4 v7, 0x3

    .line 576
    invoke-static {v3, v7}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->g([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;I)Landroid/util/Pair;

    .line 577
    .line 578
    .line 579
    move-result-object v12

    .line 580
    if-nez v12, :cond_1a

    .line 581
    .line 582
    iget-object v12, v4, Landroidx/media3/common/TrackSelectionParameters;->q:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 583
    .line 584
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    .line 586
    .line 587
    iget-boolean v12, v4, Landroidx/media3/common/TrackSelectionParameters;->t:Z

    .line 588
    .line 589
    if-eqz v12, :cond_19

    .line 590
    .line 591
    if-nez v5, :cond_16

    .line 592
    .line 593
    goto :goto_10

    .line 594
    :cond_16
    const-string v12, "captioning"

    .line 595
    .line 596
    invoke-virtual {v5, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v5

    .line 600
    check-cast v5, Landroid/view/accessibility/CaptioningManager;

    .line 601
    .line 602
    if-eqz v5, :cond_19

    .line 603
    .line 604
    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    .line 605
    .line 606
    .line 607
    move-result v12

    .line 608
    if-nez v12, :cond_17

    .line 609
    .line 610
    goto :goto_10

    .line 611
    :cond_17
    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    if-nez v5, :cond_18

    .line 616
    .line 617
    goto :goto_10

    .line 618
    :cond_18
    sget-object v12, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 619
    .line 620
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v5

    .line 624
    goto :goto_11

    .line 625
    :cond_19
    :goto_10
    const/4 v5, 0x0

    .line 626
    :goto_11
    new-instance v12, Landroidx/media3/exoplayer/trackselection/e;

    .line 627
    .line 628
    invoke-direct {v12, v4, v8, v5}, Landroidx/media3/exoplayer/trackselection/e;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    new-instance v5, Landroidx/media3/exoplayer/trackselection/b;

    .line 632
    .line 633
    invoke-direct {v5, v7}, Landroidx/media3/exoplayer/trackselection/b;-><init>(I)V

    .line 634
    .line 635
    .line 636
    invoke-static {v7, v9, v13, v12, v5}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k(ILandroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory;Ljava/util/Comparator;)Landroid/util/Pair;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    if-eqz v5, :cond_1a

    .line 641
    .line 642
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast v8, Ljava/lang/Integer;

    .line 645
    .line 646
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 647
    .line 648
    .line 649
    move-result v8

    .line 650
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 651
    .line 652
    check-cast v5, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 653
    .line 654
    aput-object v5, v3, v8

    .line 655
    .line 656
    :cond_1a
    iget-object v5, v4, Landroidx/media3/common/TrackSelectionParameters;->q:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 657
    .line 658
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 659
    .line 660
    .line 661
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->j()Lcom/google/common/collect/ImmutableSet$Builder;

    .line 662
    .line 663
    .line 664
    move-result-object v5

    .line 665
    const/4 v8, 0x0

    .line 666
    invoke-static {v8, v8, v8, v8}, Landroidx/media3/exoplayer/RendererCapabilities;->j(IIII)I

    .line 667
    .line 668
    .line 669
    move-result v12

    .line 670
    const/4 v8, 0x0

    .line 671
    :goto_12
    if-ge v8, v2, :cond_1f

    .line 672
    .line 673
    aget-object v14, v3, v8

    .line 674
    .line 675
    if-eqz v14, :cond_1d

    .line 676
    .line 677
    iget-object v15, v14, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    .line 678
    .line 679
    iget-object v7, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->F:Landroid/util/SparseBooleanArray;

    .line 680
    .line 681
    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 682
    .line 683
    .line 684
    move-result v7

    .line 685
    if-nez v7, :cond_1d

    .line 686
    .line 687
    iget-object v7, v4, Landroidx/media3/common/TrackSelectionParameters;->w:Lcom/google/common/collect/ImmutableSet;

    .line 688
    .line 689
    move/from16 v21, v8

    .line 690
    .line 691
    iget v8, v15, Landroidx/media3/common/TrackGroup;->c:I

    .line 692
    .line 693
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 694
    .line 695
    .line 696
    move-result-object v8

    .line 697
    invoke-virtual {v7, v8}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    move-result v7

    .line 701
    if-nez v7, :cond_1c

    .line 702
    .line 703
    iget-object v7, v15, Landroidx/media3/common/TrackGroup;->b:Ljava/lang/String;

    .line 704
    .line 705
    invoke-virtual {v5, v7}, Lcom/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    .line 706
    .line 707
    .line 708
    const/4 v7, 0x0

    .line 709
    :goto_13
    iget-object v8, v14, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->b:[I

    .line 710
    .line 711
    move-object/from16 v22, v10

    .line 712
    .line 713
    array-length v10, v8

    .line 714
    if-ge v7, v10, :cond_1e

    .line 715
    .line 716
    aget v8, v8, v7

    .line 717
    .line 718
    iget-object v10, v15, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 719
    .line 720
    aget-object v8, v10, v8

    .line 721
    .line 722
    iget-object v8, v8, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    .line 723
    .line 724
    if-eqz v8, :cond_1b

    .line 725
    .line 726
    invoke-virtual {v5, v8}, Lcom/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    .line 727
    .line 728
    .line 729
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    .line 730
    .line 731
    move-object/from16 v10, v22

    .line 732
    .line 733
    goto :goto_13

    .line 734
    :cond_1c
    :goto_14
    move-object/from16 v22, v10

    .line 735
    .line 736
    goto :goto_15

    .line 737
    :cond_1d
    move/from16 v21, v8

    .line 738
    .line 739
    goto :goto_14

    .line 740
    :cond_1e
    :goto_15
    add-int/lit8 v8, v21, 0x1

    .line 741
    .line 742
    move-object/from16 v10, v22

    .line 743
    .line 744
    const/4 v7, 0x3

    .line 745
    goto :goto_12

    .line 746
    :cond_1f
    move-object/from16 v22, v10

    .line 747
    .line 748
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet$Builder;->j()Lcom/google/common/collect/ImmutableSet;

    .line 749
    .line 750
    .line 751
    move-result-object v5

    .line 752
    new-instance v7, Ljava/util/ArrayList;

    .line 753
    .line 754
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .line 756
    .line 757
    new-instance v8, Ljava/util/ArrayList;

    .line 758
    .line 759
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .line 761
    .line 762
    const/4 v10, 0x0

    .line 763
    :goto_16
    if-ge v10, v6, :cond_24

    .line 764
    .line 765
    aget v14, v22, v10

    .line 766
    .line 767
    const/4 v15, 0x5

    .line 768
    if-eq v14, v15, :cond_21

    .line 769
    .line 770
    move/from16 v21, v10

    .line 771
    .line 772
    :cond_20
    move-object/from16 v24, v11

    .line 773
    .line 774
    move-object/from16 v23, v13

    .line 775
    .line 776
    goto :goto_19

    .line 777
    :cond_21
    aget-object v14, v11, v10

    .line 778
    .line 779
    move/from16 v21, v10

    .line 780
    .line 781
    const/4 v15, 0x0

    .line 782
    :goto_17
    iget v10, v14, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    .line 783
    .line 784
    if-ge v15, v10, :cond_20

    .line 785
    .line 786
    invoke-virtual {v14, v15}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    .line 787
    .line 788
    .line 789
    move-result-object v10

    .line 790
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    aget-object v23, v13, v21

    .line 794
    .line 795
    aget-object v23, v23, v15

    .line 796
    .line 797
    invoke-virtual/range {v23 .. v23}, [I->clone()Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v23

    .line 801
    move-object/from16 v24, v11

    .line 802
    .line 803
    move-object/from16 v11, v23

    .line 804
    .line 805
    check-cast v11, [I

    .line 806
    .line 807
    move-object/from16 v23, v13

    .line 808
    .line 809
    move-object/from16 v25, v14

    .line 810
    .line 811
    const/4 v13, 0x0

    .line 812
    :goto_18
    array-length v14, v11

    .line 813
    if-ge v13, v14, :cond_23

    .line 814
    .line 815
    iget-object v14, v10, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 816
    .line 817
    aget-object v14, v14, v13

    .line 818
    .line 819
    iget-object v14, v14, Landroidx/media3/common/Format;->n:Ljava/lang/String;

    .line 820
    .line 821
    if-eqz v14, :cond_22

    .line 822
    .line 823
    invoke-virtual {v5, v14}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v14

    .line 827
    if-nez v14, :cond_22

    .line 828
    .line 829
    aput v12, v11, v13

    .line 830
    .line 831
    :cond_22
    add-int/lit8 v13, v13, 0x1

    .line 832
    .line 833
    goto :goto_18

    .line 834
    :cond_23
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    .line 836
    .line 837
    add-int/lit8 v15, v15, 0x1

    .line 838
    .line 839
    move-object/from16 v13, v23

    .line 840
    .line 841
    move-object/from16 v11, v24

    .line 842
    .line 843
    move-object/from16 v14, v25

    .line 844
    .line 845
    goto :goto_17

    .line 846
    :goto_19
    add-int/lit8 v10, v21, 0x1

    .line 847
    .line 848
    move-object/from16 v13, v23

    .line 849
    .line 850
    move-object/from16 v11, v24

    .line 851
    .line 852
    goto :goto_16

    .line 853
    :cond_24
    move-object/from16 v24, v11

    .line 854
    .line 855
    move-object/from16 v23, v13

    .line 856
    .line 857
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 858
    .line 859
    .line 860
    move-result v5

    .line 861
    new-array v10, v5, [Landroidx/media3/common/TrackGroup;

    .line 862
    .line 863
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 864
    .line 865
    .line 866
    move-result v11

    .line 867
    if-ne v11, v5, :cond_25

    .line 868
    .line 869
    const/4 v5, 0x1

    .line 870
    goto :goto_1a

    .line 871
    :cond_25
    const/4 v5, 0x0

    .line 872
    :goto_1a
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    new-instance v5, Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 879
    .line 880
    invoke-direct {v5, v10}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 884
    .line 885
    .line 886
    move-result v7

    .line 887
    new-array v10, v7, [[I

    .line 888
    .line 889
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 890
    .line 891
    .line 892
    move-result v11

    .line 893
    if-ne v11, v7, :cond_26

    .line 894
    .line 895
    const/4 v7, 0x1

    .line 896
    goto :goto_1b

    .line 897
    :cond_26
    const/4 v7, 0x0

    .line 898
    :goto_1b
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    const/4 v7, 0x0

    .line 905
    :goto_1c
    if-ge v7, v6, :cond_29

    .line 906
    .line 907
    aget v11, v22, v7

    .line 908
    .line 909
    const/4 v15, 0x5

    .line 910
    if-eq v11, v15, :cond_27

    .line 911
    .line 912
    goto :goto_1e

    .line 913
    :cond_27
    invoke-static {v5, v10, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j(Landroidx/media3/exoplayer/source/TrackGroupArray;[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 914
    .line 915
    .line 916
    move-result-object v11

    .line 917
    aput-object v11, v3, v7

    .line 918
    .line 919
    if-eqz v11, :cond_29

    .line 920
    .line 921
    iget-object v11, v11, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    .line 922
    .line 923
    iget-object v13, v5, Landroidx/media3/exoplayer/source/TrackGroupArray;->b:Lcom/google/common/collect/ImmutableList;

    .line 924
    .line 925
    invoke-virtual {v13, v11}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    .line 926
    .line 927
    .line 928
    move-result v11

    .line 929
    if-ltz v11, :cond_28

    .line 930
    .line 931
    move v8, v11

    .line 932
    goto :goto_1d

    .line 933
    :cond_28
    const/4 v8, -0x1

    .line 934
    :goto_1d
    aget-object v8, v10, v8

    .line 935
    .line 936
    invoke-static {v8, v12}, Ljava/util/Arrays;->fill([II)V

    .line 937
    .line 938
    .line 939
    :goto_1e
    add-int/lit8 v7, v7, 0x1

    .line 940
    .line 941
    goto :goto_1c

    .line 942
    :cond_29
    const/4 v5, 0x0

    .line 943
    :goto_1f
    if-ge v5, v6, :cond_2d

    .line 944
    .line 945
    aget v7, v22, v5

    .line 946
    .line 947
    const/4 v10, 0x2

    .line 948
    if-eq v7, v10, :cond_2b

    .line 949
    .line 950
    const/4 v15, 0x1

    .line 951
    if-eq v7, v15, :cond_2b

    .line 952
    .line 953
    const/4 v11, 0x3

    .line 954
    if-eq v7, v11, :cond_2a

    .line 955
    .line 956
    const/4 v12, 0x4

    .line 957
    if-eq v7, v12, :cond_2a

    .line 958
    .line 959
    const/4 v15, 0x5

    .line 960
    if-eq v7, v15, :cond_2c

    .line 961
    .line 962
    aget-object v7, v3, v5

    .line 963
    .line 964
    if-nez v7, :cond_2c

    .line 965
    .line 966
    aget-object v7, v24, v5

    .line 967
    .line 968
    aget-object v12, v23, v5

    .line 969
    .line 970
    invoke-static {v7, v12, v4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->j(Landroidx/media3/exoplayer/source/TrackGroupArray;[[ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 971
    .line 972
    .line 973
    move-result-object v7

    .line 974
    aput-object v7, v3, v5

    .line 975
    .line 976
    goto :goto_21

    .line 977
    :cond_2a
    :goto_20
    const/4 v15, 0x5

    .line 978
    goto :goto_21

    .line 979
    :cond_2b
    const/4 v11, 0x3

    .line 980
    goto :goto_20

    .line 981
    :cond_2c
    :goto_21
    add-int/lit8 v5, v5, 0x1

    .line 982
    .line 983
    goto :goto_1f

    .line 984
    :cond_2d
    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 985
    .line 986
    invoke-static {v9, v4, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 987
    .line 988
    .line 989
    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 990
    .line 991
    invoke-static {v9, v4, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->c(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 992
    .line 993
    .line 994
    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 995
    .line 996
    invoke-static {v9, v4, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->d(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)V

    .line 997
    .line 998
    .line 999
    iget-object v4, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->d:Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;

    .line 1000
    .line 1001
    iget-object v5, v1, Landroidx/media3/exoplayer/trackselection/TrackSelector;->b:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 1002
    .line 1003
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1007
    .line 1008
    .line 1009
    new-instance v4, Ljava/util/ArrayList;

    .line 1010
    .line 1011
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    .line 1013
    .line 1014
    const/4 v5, 0x0

    .line 1015
    :goto_22
    array-length v6, v3

    .line 1016
    const-wide/16 v10, 0x0

    .line 1017
    .line 1018
    if-ge v5, v6, :cond_2f

    .line 1019
    .line 1020
    aget-object v6, v3, v5

    .line 1021
    .line 1022
    if-eqz v6, :cond_2e

    .line 1023
    .line 1024
    iget-object v6, v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->b:[I

    .line 1025
    .line 1026
    array-length v6, v6

    .line 1027
    const/4 v15, 0x1

    .line 1028
    if-le v6, v15, :cond_2e

    .line 1029
    .line 1030
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v6

    .line 1034
    new-instance v7, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 1035
    .line 1036
    invoke-direct {v7, v10, v11, v10, v11}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    .line 1037
    .line 1038
    .line 1039
    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    .line 1044
    .line 1045
    const/4 v6, 0x0

    .line 1046
    goto :goto_23

    .line 1047
    :cond_2e
    const/4 v6, 0x0

    .line 1048
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    .line 1050
    .line 1051
    :goto_23
    add-int/lit8 v5, v5, 0x1

    .line 1052
    .line 1053
    goto :goto_22

    .line 1054
    :cond_2f
    const/4 v6, 0x0

    .line 1055
    array-length v5, v3

    .line 1056
    new-array v7, v5, [[J

    .line 1057
    .line 1058
    const/4 v12, 0x0

    .line 1059
    :goto_24
    array-length v13, v3

    .line 1060
    if-ge v12, v13, :cond_33

    .line 1061
    .line 1062
    aget-object v13, v3, v12

    .line 1063
    .line 1064
    if-nez v13, :cond_30

    .line 1065
    .line 1066
    const/4 v6, 0x0

    .line 1067
    new-array v13, v6, [J

    .line 1068
    .line 1069
    aput-object v13, v7, v12

    .line 1070
    .line 1071
    goto :goto_26

    .line 1072
    :cond_30
    iget-object v6, v13, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->b:[I

    .line 1073
    .line 1074
    array-length v10, v6

    .line 1075
    new-array v10, v10, [J

    .line 1076
    .line 1077
    aput-object v10, v7, v12

    .line 1078
    .line 1079
    const/4 v10, 0x0

    .line 1080
    :goto_25
    array-length v11, v6

    .line 1081
    if-ge v10, v11, :cond_32

    .line 1082
    .line 1083
    iget-object v11, v13, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    .line 1084
    .line 1085
    aget v16, v6, v10

    .line 1086
    .line 1087
    iget-object v11, v11, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 1088
    .line 1089
    aget-object v11, v11, v16

    .line 1090
    .line 1091
    iget v11, v11, Landroidx/media3/common/Format;->k:I

    .line 1092
    .line 1093
    const-wide/16 v21, -0x1

    .line 1094
    .line 1095
    int-to-long v14, v11

    .line 1096
    aget-object v11, v7, v12

    .line 1097
    .line 1098
    cmp-long v16, v14, v21

    .line 1099
    .line 1100
    if-nez v16, :cond_31

    .line 1101
    .line 1102
    const-wide/16 v14, 0x0

    .line 1103
    .line 1104
    :cond_31
    aput-wide v14, v11, v10

    .line 1105
    .line 1106
    add-int/lit8 v10, v10, 0x1

    .line 1107
    .line 1108
    goto :goto_25

    .line 1109
    :cond_32
    aget-object v6, v7, v12

    .line 1110
    .line 1111
    invoke-static {v6}, Ljava/util/Arrays;->sort([J)V

    .line 1112
    .line 1113
    .line 1114
    :goto_26
    add-int/lit8 v12, v12, 0x1

    .line 1115
    .line 1116
    const/4 v6, 0x0

    .line 1117
    const-wide/16 v10, 0x0

    .line 1118
    .line 1119
    goto :goto_24

    .line 1120
    :cond_33
    const-wide/16 v21, -0x1

    .line 1121
    .line 1122
    new-array v6, v5, [I

    .line 1123
    .line 1124
    new-array v10, v5, [J

    .line 1125
    .line 1126
    const/4 v11, 0x0

    .line 1127
    :goto_27
    if-ge v11, v5, :cond_35

    .line 1128
    .line 1129
    aget-object v12, v7, v11

    .line 1130
    .line 1131
    array-length v13, v12

    .line 1132
    if-nez v13, :cond_34

    .line 1133
    .line 1134
    const-wide/16 v14, 0x0

    .line 1135
    .line 1136
    goto :goto_28

    .line 1137
    :cond_34
    const/4 v13, 0x0

    .line 1138
    aget-wide v14, v12, v13

    .line 1139
    .line 1140
    :goto_28
    aput-wide v14, v10, v11

    .line 1141
    .line 1142
    add-int/lit8 v11, v11, 0x1

    .line 1143
    .line 1144
    goto :goto_27

    .line 1145
    :cond_35
    invoke-static {v4, v10}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->a(Ljava/util/ArrayList;[J)V

    .line 1146
    .line 1147
    .line 1148
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->a()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v11

    .line 1152
    invoke-virtual {v11}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->a()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v11

    .line 1156
    invoke-virtual {v11}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->b()Lcom/google/common/collect/ListMultimap;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v11

    .line 1160
    const/4 v12, 0x0

    .line 1161
    :goto_29
    if-ge v12, v5, :cond_3b

    .line 1162
    .line 1163
    aget-object v13, v7, v12

    .line 1164
    .line 1165
    array-length v14, v13

    .line 1166
    const/4 v15, 0x1

    .line 1167
    if-gt v14, v15, :cond_36

    .line 1168
    .line 1169
    move/from16 v19, v5

    .line 1170
    .line 1171
    move-object/from16 v20, v6

    .line 1172
    .line 1173
    goto :goto_2e

    .line 1174
    :cond_36
    array-length v13, v13

    .line 1175
    new-array v14, v13, [D

    .line 1176
    .line 1177
    const/4 v15, 0x0

    .line 1178
    :goto_2a
    aget-object v8, v7, v12

    .line 1179
    .line 1180
    move/from16 v19, v5

    .line 1181
    .line 1182
    array-length v5, v8

    .line 1183
    const-wide/16 v23, 0x0

    .line 1184
    .line 1185
    if-ge v15, v5, :cond_38

    .line 1186
    .line 1187
    move-object/from16 v20, v6

    .line 1188
    .line 1189
    aget-wide v5, v8, v15

    .line 1190
    .line 1191
    cmp-long v8, v5, v21

    .line 1192
    .line 1193
    if-nez v8, :cond_37

    .line 1194
    .line 1195
    goto :goto_2b

    .line 1196
    :cond_37
    long-to-double v5, v5

    .line 1197
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    .line 1198
    .line 1199
    .line 1200
    move-result-wide v23

    .line 1201
    :goto_2b
    aput-wide v23, v14, v15

    .line 1202
    .line 1203
    add-int/lit8 v15, v15, 0x1

    .line 1204
    .line 1205
    move/from16 v5, v19

    .line 1206
    .line 1207
    move-object/from16 v6, v20

    .line 1208
    .line 1209
    goto :goto_2a

    .line 1210
    :cond_38
    move-object/from16 v20, v6

    .line 1211
    .line 1212
    add-int/lit8 v13, v13, -0x1

    .line 1213
    .line 1214
    aget-wide v5, v14, v13

    .line 1215
    .line 1216
    const/4 v8, 0x0

    .line 1217
    aget-wide v25, v14, v8

    .line 1218
    .line 1219
    sub-double v5, v5, v25

    .line 1220
    .line 1221
    const/4 v8, 0x0

    .line 1222
    :goto_2c
    if-ge v8, v13, :cond_3a

    .line 1223
    .line 1224
    aget-wide v25, v14, v8

    .line 1225
    .line 1226
    add-int/lit8 v8, v8, 0x1

    .line 1227
    .line 1228
    aget-wide v27, v14, v8

    .line 1229
    .line 1230
    add-double v25, v25, v27

    .line 1231
    .line 1232
    const-wide/high16 v27, 0x3fe0000000000000L    # 0.5

    .line 1233
    .line 1234
    mul-double v25, v25, v27

    .line 1235
    .line 1236
    cmpl-double v15, v5, v23

    .line 1237
    .line 1238
    if-nez v15, :cond_39

    .line 1239
    .line 1240
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    .line 1241
    .line 1242
    goto :goto_2d

    .line 1243
    :cond_39
    const/4 v15, 0x0

    .line 1244
    aget-wide v27, v14, v15

    .line 1245
    .line 1246
    sub-double v25, v25, v27

    .line 1247
    .line 1248
    div-double v25, v25, v5

    .line 1249
    .line 1250
    :goto_2d
    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1251
    .line 1252
    .line 1253
    move-result-object v15

    .line 1254
    move-wide/from16 v25, v5

    .line 1255
    .line 1256
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v5

    .line 1260
    invoke-interface {v11, v15, v5}, Lcom/google/common/collect/Multimap;->a(Ljava/lang/Double;Ljava/lang/Integer;)Z

    .line 1261
    .line 1262
    .line 1263
    move-wide/from16 v5, v25

    .line 1264
    .line 1265
    goto :goto_2c

    .line 1266
    :cond_3a
    :goto_2e
    add-int/lit8 v12, v12, 0x1

    .line 1267
    .line 1268
    move/from16 v5, v19

    .line 1269
    .line 1270
    move-object/from16 v6, v20

    .line 1271
    .line 1272
    goto :goto_29

    .line 1273
    :cond_3b
    move-object/from16 v20, v6

    .line 1274
    .line 1275
    invoke-interface {v11}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v5

    .line 1279
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v5

    .line 1283
    const/4 v6, 0x0

    .line 1284
    :goto_2f
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    .line 1285
    .line 1286
    .line 1287
    move-result v8

    .line 1288
    if-ge v6, v8, :cond_3c

    .line 1289
    .line 1290
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v8

    .line 1294
    check-cast v8, Ljava/lang/Integer;

    .line 1295
    .line 1296
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 1297
    .line 1298
    .line 1299
    move-result v8

    .line 1300
    aget v11, v20, v8

    .line 1301
    .line 1302
    const/4 v15, 0x1

    .line 1303
    add-int/2addr v11, v15

    .line 1304
    aput v11, v20, v8

    .line 1305
    .line 1306
    aget-object v12, v7, v8

    .line 1307
    .line 1308
    aget-wide v11, v12, v11

    .line 1309
    .line 1310
    aput-wide v11, v10, v8

    .line 1311
    .line 1312
    invoke-static {v4, v10}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->a(Ljava/util/ArrayList;[J)V

    .line 1313
    .line 1314
    .line 1315
    add-int/lit8 v6, v6, 0x1

    .line 1316
    .line 1317
    goto :goto_2f

    .line 1318
    :cond_3c
    const/4 v5, 0x0

    .line 1319
    :goto_30
    array-length v6, v3

    .line 1320
    if-ge v5, v6, :cond_3e

    .line 1321
    .line 1322
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v6

    .line 1326
    if-eqz v6, :cond_3d

    .line 1327
    .line 1328
    aget-wide v6, v10, v5

    .line 1329
    .line 1330
    const-wide/16 v11, 0x2

    .line 1331
    .line 1332
    mul-long/2addr v6, v11

    .line 1333
    aput-wide v6, v10, v5

    .line 1334
    .line 1335
    :cond_3d
    add-int/lit8 v5, v5, 0x1

    .line 1336
    .line 1337
    goto :goto_30

    .line 1338
    :cond_3e
    invoke-static {v4, v10}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->a(Ljava/util/ArrayList;[J)V

    .line 1339
    .line 1340
    .line 1341
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v5

    .line 1345
    const/4 v6, 0x0

    .line 1346
    :goto_31
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1347
    .line 1348
    .line 1349
    move-result v7

    .line 1350
    if-ge v6, v7, :cond_40

    .line 1351
    .line 1352
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v7

    .line 1356
    check-cast v7, Lcom/google/common/collect/ImmutableList$Builder;

    .line 1357
    .line 1358
    if-nez v7, :cond_3f

    .line 1359
    .line 1360
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v7

    .line 1364
    goto :goto_32

    .line 1365
    :cond_3f
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 1366
    .line 1367
    .line 1368
    move-result-object v7

    .line 1369
    :goto_32
    invoke-virtual {v5, v7}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 1370
    .line 1371
    .line 1372
    add-int/lit8 v6, v6, 0x1

    .line 1373
    .line 1374
    goto :goto_31

    .line 1375
    :cond_40
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v4

    .line 1379
    array-length v5, v3

    .line 1380
    new-array v5, v5, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 1381
    .line 1382
    const/4 v7, 0x0

    .line 1383
    :goto_33
    array-length v6, v3

    .line 1384
    if-ge v7, v6, :cond_44

    .line 1385
    .line 1386
    aget-object v6, v3, v7

    .line 1387
    .line 1388
    if-eqz v6, :cond_43

    .line 1389
    .line 1390
    iget-object v8, v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->b:[I

    .line 1391
    .line 1392
    array-length v10, v8

    .line 1393
    if-nez v10, :cond_41

    .line 1394
    .line 1395
    goto :goto_35

    .line 1396
    :cond_41
    array-length v10, v8

    .line 1397
    iget-object v6, v6, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->a:Landroidx/media3/common/TrackGroup;

    .line 1398
    .line 1399
    const/4 v15, 0x1

    .line 1400
    if-ne v10, v15, :cond_42

    .line 1401
    .line 1402
    new-instance v10, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;

    .line 1403
    .line 1404
    const/4 v13, 0x0

    .line 1405
    aget v8, v8, v13

    .line 1406
    .line 1407
    filled-new-array {v8}, [I

    .line 1408
    .line 1409
    .line 1410
    move-result-object v8

    .line 1411
    invoke-direct {v10, v6, v8}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    .line 1412
    .line 1413
    .line 1414
    goto :goto_34

    .line 1415
    :cond_42
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v10

    .line 1419
    check-cast v10, Lcom/google/common/collect/ImmutableList;

    .line 1420
    .line 1421
    new-instance v11, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;

    .line 1422
    .line 1423
    invoke-direct {v11, v6, v8}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    .line 1424
    .line 1425
    .line 1426
    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 1427
    .line 1428
    .line 1429
    move-object v10, v11

    .line 1430
    :goto_34
    aput-object v10, v5, v7

    .line 1431
    .line 1432
    :cond_43
    :goto_35
    add-int/lit8 v7, v7, 0x1

    .line 1433
    .line 1434
    goto :goto_33

    .line 1435
    :cond_44
    new-array v3, v2, [Landroidx/media3/exoplayer/RendererConfiguration;

    .line 1436
    .line 1437
    const/4 v7, 0x0

    .line 1438
    :goto_36
    const/4 v4, -0x2

    .line 1439
    if-ge v7, v2, :cond_48

    .line 1440
    .line 1441
    iget-object v6, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->b:[I

    .line 1442
    .line 1443
    aget v6, v6, v7

    .line 1444
    .line 1445
    iget-object v8, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 1446
    .line 1447
    iget-object v8, v8, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->F:Landroid/util/SparseBooleanArray;

    .line 1448
    .line 1449
    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 1450
    .line 1451
    .line 1452
    move-result v8

    .line 1453
    if-nez v8, :cond_47

    .line 1454
    .line 1455
    iget-object v8, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 1456
    .line 1457
    iget-object v8, v8, Landroidx/media3/common/TrackSelectionParameters;->w:Lcom/google/common/collect/ImmutableSet;

    .line 1458
    .line 1459
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1460
    .line 1461
    .line 1462
    move-result-object v6

    .line 1463
    invoke-virtual {v8, v6}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    .line 1464
    .line 1465
    .line 1466
    move-result v6

    .line 1467
    if-eqz v6, :cond_45

    .line 1468
    .line 1469
    goto :goto_37

    .line 1470
    :cond_45
    iget-object v6, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->b:[I

    .line 1471
    .line 1472
    aget v6, v6, v7

    .line 1473
    .line 1474
    if-eq v6, v4, :cond_46

    .line 1475
    .line 1476
    aget-object v4, v5, v7

    .line 1477
    .line 1478
    if-eqz v4, :cond_47

    .line 1479
    .line 1480
    :cond_46
    sget-object v4, Landroidx/media3/exoplayer/RendererConfiguration;->c:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 1481
    .line 1482
    goto :goto_38

    .line 1483
    :cond_47
    :goto_37
    const/4 v4, 0x0

    .line 1484
    :goto_38
    aput-object v4, v3, v7

    .line 1485
    .line 1486
    add-int/lit8 v7, v7, 0x1

    .line 1487
    .line 1488
    goto :goto_36

    .line 1489
    :cond_48
    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 1490
    .line 1491
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1492
    .line 1493
    .line 1494
    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 1495
    .line 1496
    iget-object v1, v1, Landroidx/media3/common/TrackSelectionParameters;->q:Landroidx/media3/common/TrackSelectionParameters$AudioOffloadPreferences;

    .line 1497
    .line 1498
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1499
    .line 1500
    .line 1501
    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v1

    .line 1505
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1506
    .line 1507
    check-cast v2, [Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 1508
    .line 1509
    array-length v3, v2

    .line 1510
    new-array v5, v3, [Ljava/util/List;

    .line 1511
    .line 1512
    const/4 v7, 0x0

    .line 1513
    :goto_39
    array-length v6, v2

    .line 1514
    if-ge v7, v6, :cond_4a

    .line 1515
    .line 1516
    aget-object v6, v2, v7

    .line 1517
    .line 1518
    if-eqz v6, :cond_49

    .line 1519
    .line 1520
    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->t(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v6

    .line 1524
    goto :goto_3a

    .line 1525
    :cond_49
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 1526
    .line 1527
    .line 1528
    move-result-object v6

    .line 1529
    :goto_3a
    aput-object v6, v5, v7

    .line 1530
    .line 1531
    add-int/lit8 v7, v7, 0x1

    .line 1532
    .line 1533
    goto :goto_39

    .line 1534
    :cond_4a
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    .line 1535
    .line 1536
    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 1537
    .line 1538
    .line 1539
    const/4 v7, 0x0

    .line 1540
    :goto_3b
    iget v6, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->a:I

    .line 1541
    .line 1542
    iget-object v8, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->c:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 1543
    .line 1544
    if-ge v7, v6, :cond_59

    .line 1545
    .line 1546
    aget-object v6, v8, v7

    .line 1547
    .line 1548
    const/4 v10, 0x0

    .line 1549
    :goto_3c
    iget v11, v6, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    .line 1550
    .line 1551
    if-ge v10, v11, :cond_58

    .line 1552
    .line 1553
    invoke-virtual {v6, v10}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v11

    .line 1557
    aget-object v12, v8, v7

    .line 1558
    .line 1559
    invoke-virtual {v12, v10}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v12

    .line 1563
    iget v12, v12, Landroidx/media3/common/TrackGroup;->a:I

    .line 1564
    .line 1565
    new-array v13, v12, [I

    .line 1566
    .line 1567
    const/4 v14, 0x0

    .line 1568
    const/4 v15, 0x0

    .line 1569
    :goto_3d
    if-ge v14, v12, :cond_4c

    .line 1570
    .line 1571
    iget-object v4, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->e:[[[I

    .line 1572
    .line 1573
    aget-object v4, v4, v7

    .line 1574
    .line 1575
    aget-object v4, v4, v10

    .line 1576
    .line 1577
    aget v4, v4, v14

    .line 1578
    .line 1579
    and-int/lit8 v4, v4, 0x7

    .line 1580
    .line 1581
    move-object/from16 v20, v5

    .line 1582
    .line 1583
    const/4 v5, 0x4

    .line 1584
    if-eq v4, v5, :cond_4b

    .line 1585
    .line 1586
    goto :goto_3e

    .line 1587
    :cond_4b
    add-int/lit8 v4, v15, 0x1

    .line 1588
    .line 1589
    aput v14, v13, v15

    .line 1590
    .line 1591
    move v15, v4

    .line 1592
    :goto_3e
    add-int/lit8 v14, v14, 0x1

    .line 1593
    .line 1594
    move-object/from16 v5, v20

    .line 1595
    .line 1596
    const/4 v4, -0x2

    .line 1597
    goto :goto_3d

    .line 1598
    :cond_4c
    move-object/from16 v20, v5

    .line 1599
    .line 1600
    const/4 v5, 0x4

    .line 1601
    invoke-static {v13, v15}, Ljava/util/Arrays;->copyOf([II)[I

    .line 1602
    .line 1603
    .line 1604
    move-result-object v4

    .line 1605
    const/16 v12, 0x10

    .line 1606
    .line 1607
    move-object/from16 v21, v6

    .line 1608
    .line 1609
    move v15, v12

    .line 1610
    const/4 v5, 0x0

    .line 1611
    const/4 v12, 0x0

    .line 1612
    const/4 v13, 0x0

    .line 1613
    const/4 v14, 0x0

    .line 1614
    :goto_3f
    array-length v6, v4

    .line 1615
    if-ge v12, v6, :cond_4e

    .line 1616
    .line 1617
    aget v6, v4, v12

    .line 1618
    .line 1619
    move-object/from16 v22, v4

    .line 1620
    .line 1621
    aget-object v4, v8, v7

    .line 1622
    .line 1623
    invoke-virtual {v4, v10}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    .line 1624
    .line 1625
    .line 1626
    move-result-object v4

    .line 1627
    iget-object v4, v4, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 1628
    .line 1629
    aget-object v4, v4, v6

    .line 1630
    .line 1631
    iget-object v4, v4, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 1632
    .line 1633
    add-int/lit8 v6, v14, 0x1

    .line 1634
    .line 1635
    if-nez v14, :cond_4d

    .line 1636
    .line 1637
    move-object v5, v4

    .line 1638
    const/4 v14, 0x1

    .line 1639
    goto :goto_40

    .line 1640
    :cond_4d
    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1641
    .line 1642
    .line 1643
    move-result v4

    .line 1644
    const/4 v14, 0x1

    .line 1645
    xor-int/2addr v4, v14

    .line 1646
    or-int/2addr v4, v13

    .line 1647
    move v13, v4

    .line 1648
    :goto_40
    iget-object v4, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->e:[[[I

    .line 1649
    .line 1650
    aget-object v4, v4, v7

    .line 1651
    .line 1652
    aget-object v4, v4, v10

    .line 1653
    .line 1654
    aget v4, v4, v12

    .line 1655
    .line 1656
    and-int/lit8 v4, v4, 0x18

    .line 1657
    .line 1658
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    .line 1659
    .line 1660
    .line 1661
    move-result v15

    .line 1662
    add-int/lit8 v12, v12, 0x1

    .line 1663
    .line 1664
    move v14, v6

    .line 1665
    move-object/from16 v4, v22

    .line 1666
    .line 1667
    goto :goto_3f

    .line 1668
    :cond_4e
    const/4 v14, 0x1

    .line 1669
    if-eqz v13, :cond_4f

    .line 1670
    .line 1671
    iget-object v4, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->d:[I

    .line 1672
    .line 1673
    aget v4, v4, v7

    .line 1674
    .line 1675
    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    .line 1676
    .line 1677
    .line 1678
    move-result v15

    .line 1679
    :cond_4f
    if-eqz v15, :cond_50

    .line 1680
    .line 1681
    move v4, v14

    .line 1682
    goto :goto_41

    .line 1683
    :cond_50
    const/4 v4, 0x0

    .line 1684
    :goto_41
    iget v5, v11, Landroidx/media3/common/TrackGroup;->a:I

    .line 1685
    .line 1686
    new-array v6, v5, [I

    .line 1687
    .line 1688
    new-array v5, v5, [Z

    .line 1689
    .line 1690
    const/4 v12, 0x0

    .line 1691
    :goto_42
    iget v13, v11, Landroidx/media3/common/TrackGroup;->a:I

    .line 1692
    .line 1693
    if-ge v12, v13, :cond_57

    .line 1694
    .line 1695
    iget-object v13, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->e:[[[I

    .line 1696
    .line 1697
    aget-object v13, v13, v7

    .line 1698
    .line 1699
    aget-object v13, v13, v10

    .line 1700
    .line 1701
    aget v13, v13, v12

    .line 1702
    .line 1703
    and-int/lit8 v13, v13, 0x7

    .line 1704
    .line 1705
    aput v13, v6, v12

    .line 1706
    .line 1707
    const/4 v13, 0x0

    .line 1708
    const/4 v15, 0x0

    .line 1709
    :goto_43
    if-ge v13, v3, :cond_56

    .line 1710
    .line 1711
    aget-object v14, v20, v13

    .line 1712
    .line 1713
    move/from16 v22, v3

    .line 1714
    .line 1715
    move/from16 v23, v7

    .line 1716
    .line 1717
    const/4 v3, 0x0

    .line 1718
    :goto_44
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 1719
    .line 1720
    .line 1721
    move-result v7

    .line 1722
    if-ge v3, v7, :cond_55

    .line 1723
    .line 1724
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v7

    .line 1728
    check-cast v7, Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 1729
    .line 1730
    move/from16 v24, v3

    .line 1731
    .line 1732
    move-object v3, v7

    .line 1733
    check-cast v3, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 1734
    .line 1735
    iget-object v3, v3, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->a:Landroidx/media3/common/TrackGroup;

    .line 1736
    .line 1737
    invoke-virtual {v3, v11}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    .line 1738
    .line 1739
    .line 1740
    move-result v3

    .line 1741
    if-eqz v3, :cond_53

    .line 1742
    .line 1743
    check-cast v7, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 1744
    .line 1745
    move-object/from16 v25, v8

    .line 1746
    .line 1747
    const/4 v3, 0x0

    .line 1748
    :goto_45
    iget v8, v7, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->b:I

    .line 1749
    .line 1750
    if-ge v3, v8, :cond_52

    .line 1751
    .line 1752
    iget-object v8, v7, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->c:[I

    .line 1753
    .line 1754
    aget v8, v8, v3

    .line 1755
    .line 1756
    if-ne v8, v12, :cond_51

    .line 1757
    .line 1758
    :goto_46
    const/4 v7, -0x1

    .line 1759
    goto :goto_47

    .line 1760
    :cond_51
    add-int/lit8 v3, v3, 0x1

    .line 1761
    .line 1762
    goto :goto_45

    .line 1763
    :cond_52
    const/4 v3, -0x1

    .line 1764
    goto :goto_46

    .line 1765
    :goto_47
    if-eq v3, v7, :cond_54

    .line 1766
    .line 1767
    const/4 v15, 0x1

    .line 1768
    goto :goto_48

    .line 1769
    :cond_53
    move-object/from16 v25, v8

    .line 1770
    .line 1771
    const/4 v7, -0x1

    .line 1772
    :cond_54
    add-int/lit8 v3, v24, 0x1

    .line 1773
    .line 1774
    move-object/from16 v8, v25

    .line 1775
    .line 1776
    goto :goto_44

    .line 1777
    :cond_55
    move-object/from16 v25, v8

    .line 1778
    .line 1779
    const/4 v7, -0x1

    .line 1780
    :goto_48
    add-int/lit8 v13, v13, 0x1

    .line 1781
    .line 1782
    move/from16 v3, v22

    .line 1783
    .line 1784
    move/from16 v7, v23

    .line 1785
    .line 1786
    move-object/from16 v8, v25

    .line 1787
    .line 1788
    const/4 v14, 0x1

    .line 1789
    goto :goto_43

    .line 1790
    :cond_56
    move/from16 v22, v3

    .line 1791
    .line 1792
    move/from16 v23, v7

    .line 1793
    .line 1794
    move-object/from16 v25, v8

    .line 1795
    .line 1796
    const/4 v7, -0x1

    .line 1797
    aput-boolean v15, v5, v12

    .line 1798
    .line 1799
    add-int/lit8 v12, v12, 0x1

    .line 1800
    .line 1801
    move/from16 v7, v23

    .line 1802
    .line 1803
    const/4 v14, 0x1

    .line 1804
    goto :goto_42

    .line 1805
    :cond_57
    move/from16 v22, v3

    .line 1806
    .line 1807
    move/from16 v23, v7

    .line 1808
    .line 1809
    move-object/from16 v25, v8

    .line 1810
    .line 1811
    const/4 v7, -0x1

    .line 1812
    new-instance v3, Landroidx/media3/common/Tracks$Group;

    .line 1813
    .line 1814
    invoke-direct {v3, v11, v4, v6, v5}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    .line 1815
    .line 1816
    .line 1817
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 1818
    .line 1819
    .line 1820
    add-int/lit8 v10, v10, 0x1

    .line 1821
    .line 1822
    move-object/from16 v5, v20

    .line 1823
    .line 1824
    move-object/from16 v6, v21

    .line 1825
    .line 1826
    move/from16 v3, v22

    .line 1827
    .line 1828
    move/from16 v7, v23

    .line 1829
    .line 1830
    const/4 v4, -0x2

    .line 1831
    goto/16 :goto_3c

    .line 1832
    .line 1833
    :cond_58
    move/from16 v22, v3

    .line 1834
    .line 1835
    move-object/from16 v20, v5

    .line 1836
    .line 1837
    move/from16 v23, v7

    .line 1838
    .line 1839
    const/4 v7, -0x1

    .line 1840
    add-int/lit8 v3, v23, 0x1

    .line 1841
    .line 1842
    move v7, v3

    .line 1843
    move/from16 v3, v22

    .line 1844
    .line 1845
    const/4 v4, -0x2

    .line 1846
    goto/16 :goto_3b

    .line 1847
    .line 1848
    :cond_59
    iget-object v3, v9, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->f:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 1849
    .line 1850
    const/4 v7, 0x0

    .line 1851
    :goto_49
    iget v4, v3, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    .line 1852
    .line 1853
    if-ge v7, v4, :cond_5a

    .line 1854
    .line 1855
    invoke-virtual {v3, v7}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v4

    .line 1859
    iget v5, v4, Landroidx/media3/common/TrackGroup;->a:I

    .line 1860
    .line 1861
    new-array v5, v5, [I

    .line 1862
    .line 1863
    const/4 v13, 0x0

    .line 1864
    invoke-static {v5, v13}, Ljava/util/Arrays;->fill([II)V

    .line 1865
    .line 1866
    .line 1867
    iget v6, v4, Landroidx/media3/common/TrackGroup;->a:I

    .line 1868
    .line 1869
    new-array v6, v6, [Z

    .line 1870
    .line 1871
    new-instance v8, Landroidx/media3/common/Tracks$Group;

    .line 1872
    .line 1873
    invoke-direct {v8, v4, v13, v5, v6}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    .line 1874
    .line 1875
    .line 1876
    invoke-virtual {v2, v8}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 1877
    .line 1878
    .line 1879
    add-int/lit8 v7, v7, 0x1

    .line 1880
    .line 1881
    goto :goto_49

    .line 1882
    :cond_5a
    const/4 v13, 0x0

    .line 1883
    new-instance v3, Landroidx/media3/common/Tracks;

    .line 1884
    .line 1885
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 1886
    .line 1887
    .line 1888
    move-result-object v2

    .line 1889
    invoke-direct {v3, v2}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    .line 1890
    .line 1891
    .line 1892
    new-instance v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 1893
    .line 1894
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1895
    .line 1896
    check-cast v4, [Landroidx/media3/exoplayer/RendererConfiguration;

    .line 1897
    .line 1898
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1899
    .line 1900
    check-cast v1, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 1901
    .line 1902
    invoke-direct {v2, v4, v1, v3, v9}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    .line 1903
    .line 1904
    .line 1905
    move v7, v13

    .line 1906
    :goto_4a
    iget v1, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a:I

    .line 1907
    .line 1908
    if-ge v7, v1, :cond_5f

    .line 1909
    .line 1910
    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    .line 1911
    .line 1912
    .line 1913
    move-result v1

    .line 1914
    iget-object v3, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 1915
    .line 1916
    if-eqz v1, :cond_5d

    .line 1917
    .line 1918
    aget-object v1, v3, v7

    .line 1919
    .line 1920
    if-nez v1, :cond_5c

    .line 1921
    .line 1922
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->j:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 1923
    .line 1924
    aget-object v1, v1, v7

    .line 1925
    .line 1926
    check-cast v1, Landroidx/media3/exoplayer/BaseRenderer;

    .line 1927
    .line 1928
    iget v1, v1, Landroidx/media3/exoplayer/BaseRenderer;->k:I

    .line 1929
    .line 1930
    const/4 v4, -0x2

    .line 1931
    if-ne v1, v4, :cond_5b

    .line 1932
    .line 1933
    goto :goto_4b

    .line 1934
    :cond_5b
    move v1, v13

    .line 1935
    goto :goto_4c

    .line 1936
    :cond_5c
    const/4 v4, -0x2

    .line 1937
    :goto_4b
    const/4 v1, 0x1

    .line 1938
    :goto_4c
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 1939
    .line 1940
    .line 1941
    goto :goto_4e

    .line 1942
    :cond_5d
    const/4 v4, -0x2

    .line 1943
    aget-object v1, v3, v7

    .line 1944
    .line 1945
    if-nez v1, :cond_5e

    .line 1946
    .line 1947
    const/4 v1, 0x1

    .line 1948
    goto :goto_4d

    .line 1949
    :cond_5e
    move v1, v13

    .line 1950
    :goto_4d
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 1951
    .line 1952
    .line 1953
    :goto_4e
    add-int/lit8 v7, v7, 0x1

    .line 1954
    .line 1955
    goto :goto_4a

    .line 1956
    :cond_5f
    iget-object v0, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 1957
    .line 1958
    array-length v1, v0

    .line 1959
    move v8, v13

    .line 1960
    :goto_4f
    if-ge v8, v1, :cond_60

    .line 1961
    .line 1962
    aget-object v3, v0, v8

    .line 1963
    .line 1964
    add-int/lit8 v8, v8, 0x1

    .line 1965
    .line 1966
    goto :goto_4f

    .line 1967
    :cond_60
    return-object v2
.end method
