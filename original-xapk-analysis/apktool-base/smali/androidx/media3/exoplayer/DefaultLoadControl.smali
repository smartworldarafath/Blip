.class public Landroidx/media3/exoplayer/DefaultLoadControl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;,
        Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;
    }
.end annotation


# static fields
.field public static final r:Lcom/google/common/collect/ImmutableList;


# instance fields
.field public final a:Landroidx/media3/common/Timeline$Window;

.field public final b:Landroidx/media3/common/Timeline$Period;

.field public final c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:I

.field public final m:Z

.field public final n:J

.field public final o:Lcom/google/common/collect/ImmutableMap;

.field public final p:Ljava/util/concurrent/ConcurrentHashMap;

.field public q:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Lcom/google/common/collect/ImmutableList;->k:Lcom/google/common/collect/UnmodifiableListIterator;

    .line 2
    .line 3
    const-string v1, "file"

    .line 4
    .line 5
    const-string v2, "content"

    .line 6
    .line 7
    const-string v3, "data"

    .line 8
    .line 9
    const-string v4, "android.resource"

    .line 10
    .line 11
    const-string v5, "rawresource"

    .line 12
    .line 13
    const-string v6, "asset"

    .line 14
    .line 15
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x6

    .line 20
    invoke-static {v1, v0}, Lcom/google/common/collect/ObjectArrays;->a(I[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableList;->j(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Landroidx/media3/exoplayer/DefaultLoadControl;->r:Lcom/google/common/collect/ImmutableList;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->d()Lcom/google/common/collect/ImmutableMap;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/16 v2, 0x3e8

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const-string v4, "bufferForPlaybackMs"

    .line 17
    .line 18
    const-string v5, "0"

    .line 19
    .line 20
    invoke-static {v2, v3, v4, v5}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v6, "bufferForPlaybackForLocalPlaybackMs"

    .line 24
    .line 25
    invoke-static {v2, v3, v6, v5}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/16 v7, 0x7d0

    .line 29
    .line 30
    const-string v8, "bufferForPlaybackAfterRebufferMs"

    .line 31
    .line 32
    invoke-static {v7, v3, v8, v5}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v9, "bufferForPlaybackAfterRebufferForLocalPlaybackMs"

    .line 36
    .line 37
    invoke-static {v2, v3, v9, v5}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const v10, 0xc350

    .line 41
    .line 42
    .line 43
    const-string v11, "minBufferMs"

    .line 44
    .line 45
    invoke-static {v10, v2, v11, v4}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v4, "minBufferForLocalPlaybackMs"

    .line 49
    .line 50
    invoke-static {v2, v2, v4, v6}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v10, v7, v11, v8}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v2, v4, v9}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v6, "maxBufferMs"

    .line 60
    .line 61
    invoke-static {v10, v10, v6, v11}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v6, "maxBufferForLocalPlaybackMs"

    .line 65
    .line 66
    invoke-static {v10, v2, v6, v4}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "backBufferDurationMs"

    .line 70
    .line 71
    invoke-static {v3, v3, v2, v5}, Landroidx/media3/exoplayer/DefaultLoadControl;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Landroidx/media3/common/Timeline$Window;

    .line 75
    .line 76
    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->a:Landroidx/media3/common/Timeline$Window;

    .line 80
    .line 81
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    .line 82
    .line 83
    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->b:Landroidx/media3/common/Timeline$Period;

    .line 87
    .line 88
    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 89
    .line 90
    const-wide/32 v2, 0xc350

    .line 91
    .line 92
    .line 93
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->D(J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v2

    .line 97
    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->d:J

    .line 98
    .line 99
    const-wide/16 v4, 0x3e8

    .line 100
    .line 101
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->D(J)J

    .line 102
    .line 103
    .line 104
    move-result-wide v4

    .line 105
    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->e:J

    .line 106
    .line 107
    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->f:J

    .line 108
    .line 109
    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->g:J

    .line 110
    .line 111
    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->h:J

    .line 112
    .line 113
    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->i:J

    .line 114
    .line 115
    const-wide/16 v2, 0x7d0

    .line 116
    .line 117
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->D(J)J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->j:J

    .line 122
    .line 123
    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->k:J

    .line 124
    .line 125
    const/4 v0, -0x1

    .line 126
    iput v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->l:I

    .line 127
    .line 128
    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->m:Z

    .line 130
    .line 131
    const-wide/16 v2, 0x0

    .line 132
    .line 133
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->D(J)J

    .line 134
    .line 135
    .line 136
    move-result-wide v2

    .line 137
    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->n:J

    .line 138
    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    .line 141
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->o:Lcom/google/common/collect/ImmutableMap;

    .line 151
    .line 152
    const-wide/16 v0, -0x1

    .line 153
    .line 154
    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:J

    .line 155
    .line 156
    return-void
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    if-lt p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    if-eqz p0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string p1, "%s cannot be less than %s"

    .line 14
    .line 15
    invoke-static {p1, p0}, Lcom/google/common/base/Strings;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->b:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->c:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 4
    .line 5
    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->b:Landroidx/media3/common/Timeline$Period;

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Landroidx/media3/common/Timeline$Period;->c:I

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->a:Landroidx/media3/common/Timeline$Window;

    .line 16
    .line 17
    const-wide/16 v1, 0x0

    .line 18
    .line 19
    invoke-virtual {v0, p1, p0, v1, v2}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    iget-object p0, p0, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 26
    .line 27
    if-nez p0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    sget-object p1, Landroidx/media3/exoplayer/DefaultLoadControl;->r:Lcom/google/common/collect/ImmutableList;

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 52
    return p0

    .line 53
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 54
    return p0
.end method

.method public final c(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 14

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->a:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    iget v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    monitor-exit v2

    .line 29
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 30
    .line 31
    iget v2, v2, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I

    .line 32
    .line 33
    mul-int/2addr v3, v2

    .line 34
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget v2, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->c:I

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x1

    .line 49
    if-lt v3, v2, :cond_0

    .line 50
    .line 51
    move v2, v5

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v2, v4

    .line 54
    :goto_0
    sget-object v3, Landroidx/media3/exoplayer/analytics/PlayerId;->c:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    xor-int/lit8 p0, v2, 0x1

    .line 63
    .line 64
    return p0

    .line 65
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->b(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-wide v6, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->e:J

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-wide v6, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->d:J

    .line 75
    .line 76
    :goto_1
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iget-wide v8, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->g:J

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    iget-wide v8, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->f:J

    .line 82
    .line 83
    :goto_2
    iget v3, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->e:F

    .line 84
    .line 85
    const/high16 v10, 0x3f800000    # 1.0f

    .line 86
    .line 87
    cmpl-float v10, v3, v10

    .line 88
    .line 89
    if-lez v10, :cond_4

    .line 90
    .line 91
    invoke-static {v6, v7, v3}, Landroidx/media3/common/util/Util;->s(JF)J

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 96
    .line 97
    .line 98
    move-result-wide v6

    .line 99
    :cond_4
    const-wide/32 v10, 0x7a120

    .line 100
    .line 101
    .line 102
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    iget-wide v12, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->d:J

    .line 107
    .line 108
    cmp-long v3, v12, v6

    .line 109
    .line 110
    if-gez v3, :cond_c

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->m:Z

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    move v0, v4

    .line 118
    :goto_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    .line 123
    .line 124
    .line 125
    move-result-wide v6

    .line 126
    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    cmp-long v8, v8, v6

    .line 131
    .line 132
    if-ltz v8, :cond_7

    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    .line 135
    .line 136
    .line 137
    move-result-wide v8

    .line 138
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 139
    .line 140
    monitor-enter p0

    .line 141
    :try_start_1
    iget v3, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->e:I

    .line 142
    .line 143
    iget v12, p0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    mul-int/2addr v3, v12

    .line 146
    monitor-exit p0

    .line 147
    int-to-long v12, v3

    .line 148
    add-long/2addr v8, v12

    .line 149
    const-wide/16 v12, 0x19

    .line 150
    .line 151
    div-long/2addr v6, v12

    .line 152
    cmp-long p0, v8, v6

    .line 153
    .line 154
    if-ltz p0, :cond_6

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :cond_6
    move p0, v4

    .line 158
    goto :goto_5

    .line 159
    :catchall_0
    move-exception p1

    .line 160
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    throw p1

    .line 162
    :cond_7
    :goto_4
    move p0, v5

    .line 163
    :goto_5
    if-eqz v0, :cond_8

    .line 164
    .line 165
    if-nez p0, :cond_9

    .line 166
    .line 167
    :cond_8
    if-nez v2, :cond_a

    .line 168
    .line 169
    :cond_9
    move v4, v5

    .line 170
    :cond_a
    iput-boolean v4, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    .line 171
    .line 172
    if-nez v4, :cond_b

    .line 173
    .line 174
    if-eqz v0, :cond_b

    .line 175
    .line 176
    if-nez p0, :cond_b

    .line 177
    .line 178
    const-string p0, "DefaultLoadControl"

    .line 179
    .line 180
    const-string v0, "Stopped loading before minBufferUs reached due to memory pressure, despite prioritizeTimeOverSizeThresholds=true."

    .line 181
    .line 182
    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_b
    iget-boolean p0, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    .line 186
    .line 187
    if-nez p0, :cond_e

    .line 188
    .line 189
    iget-wide p0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->d:J

    .line 190
    .line 191
    cmp-long p0, p0, v10

    .line 192
    .line 193
    if-gez p0, :cond_e

    .line 194
    .line 195
    const-string p0, "DefaultLoadControl"

    .line 196
    .line 197
    const-string p1, "Target buffer size reached with less than 500ms of buffered media data."

    .line 198
    .line 199
    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_c
    cmp-long p0, v12, v8

    .line 204
    .line 205
    if-gez p0, :cond_d

    .line 206
    .line 207
    if-eqz v2, :cond_e

    .line 208
    .line 209
    :cond_d
    iput-boolean v4, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    .line 210
    .line 211
    :cond_e
    :goto_6
    iget-boolean p0, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    .line 212
    .line 213
    return p0

    .line 214
    :catchall_1
    move-exception p0

    .line 215
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    throw p0
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-boolean p0, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->a:Z

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v1

    .line 24
    return-void

    .line 25
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0

    .line 27
    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 48
    .line 49
    iget v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->c:I

    .line 50
    .line 51
    add-int/2addr v2, v0

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
