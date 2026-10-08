.class final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/extractor/ExtractorOutput;
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;
.implements Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;
.implements Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/source/MediaPeriod;",
        "Landroidx/media3/extractor/ExtractorOutput;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;",
        ">;",
        "Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;",
        "Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field public static final b0:Ljava/util/Map;

.field public static final c0:Landroidx/media3/common/Format;


# instance fields
.field public A:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

.field public B:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

.field public C:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

.field public D:[Landroidx/media3/exoplayer/source/SampleQueue;

.field public E:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

.field public K:Landroidx/media3/extractor/SeekMap;

.field public L:J

.field public M:Z

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:I

.field public final T:Ljava/util/ArrayList;

.field public U:Z

.field public V:J

.field public W:J

.field public X:Z

.field public Y:I

.field public Z:Z

.field public a0:Z

.field public final j:Landroid/net/Uri;

.field public final k:Landroidx/media3/datasource/DataSource;

.field public final l:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final n:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final o:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final p:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

.field public final q:Landroidx/media3/exoplayer/upstream/Allocator;

.field public final r:J

.field public final s:Z

.field public final t:J

.field public final u:Landroidx/media3/exoplayer/upstream/Loader;

.field public final v:Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

.field public final w:Landroidx/media3/common/util/ConditionVariable;

.field public final x:Landroidx/media3/exoplayer/source/b;

.field public final y:Landroidx/media3/exoplayer/source/b;

.field public final z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Icy-MetaData"

    .line 7
    .line 8
    const-string v2, "1"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->b0:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Landroidx/media3/common/Format$Builder;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "icy"

    .line 25
    .line 26
    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "application/x-icy"

    .line 29
    .line 30
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v1, Landroidx/media3/common/Format;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 39
    .line 40
    .line 41
    sput-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->c0:Landroidx/media3/common/Format;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/ProgressiveMediaSource;Landroidx/media3/exoplayer/upstream/Allocator;IZJLandroidx/media3/exoplayer/util/ReleasableExecutor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->j:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->k:Landroidx/media3/datasource/DataSource;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->l:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->o:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 13
    .line 14
    iput-object p7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 15
    .line 16
    iput-object p8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 17
    .line 18
    iput-object p9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->q:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 19
    .line 20
    int-to-long p1, p10

    .line 21
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->r:J

    .line 22
    .line 23
    iput-boolean p11, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->s:Z

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    if-eqz p14, :cond_0

    .line 27
    .line 28
    new-instance p2, Landroidx/media3/exoplayer/upstream/Loader;

    .line 29
    .line 30
    invoke-direct {p2, p14}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/ReleasableExecutor;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance p2, Landroidx/media3/exoplayer/upstream/Loader;

    .line 35
    .line 36
    new-instance p4, Ll6;

    .line 37
    .line 38
    const-string p5, "ExoPlayer:Loader:ProgressiveMediaPeriod"

    .line 39
    .line 40
    invoke-direct {p4, p5, p1}, Ll6;-><init>(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    invoke-static {p4}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    new-instance p5, Lk8;

    .line 48
    .line 49
    const/16 p6, 0x11

    .line 50
    .line 51
    invoke-direct {p5, p6}, Lk8;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-static {p4, p5}, Landroidx/media3/exoplayer/util/ReleasableExecutor;->E(Ljava/util/concurrent/ExecutorService;Lk8;)Landroidx/media3/exoplayer/util/ReleasableExecutor;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    invoke-direct {p2, p4}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/ReleasableExecutor;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 62
    .line 63
    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->v:Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 64
    .line 65
    iput-wide p12, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->t:J

    .line 66
    .line 67
    new-instance p2, Landroidx/media3/common/util/ConditionVariable;

    .line 68
    .line 69
    invoke-direct {p2}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w:Landroidx/media3/common/util/ConditionVariable;

    .line 73
    .line 74
    new-instance p2, Landroidx/media3/exoplayer/source/b;

    .line 75
    .line 76
    const/4 p3, 0x0

    .line 77
    invoke-direct {p2, p0, p3}, Landroidx/media3/exoplayer/source/b;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    .line 78
    .line 79
    .line 80
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x:Landroidx/media3/exoplayer/source/b;

    .line 81
    .line 82
    new-instance p2, Landroidx/media3/exoplayer/source/b;

    .line 83
    .line 84
    invoke-direct {p2, p0, p1}, Landroidx/media3/exoplayer/source/b;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    .line 85
    .line 86
    .line 87
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:Landroidx/media3/exoplayer/source/b;

    .line 88
    .line 89
    const/4 p2, 0x0

    .line 90
    invoke-static {p2}, Landroidx/media3/common/util/Util;->k(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:Landroid/os/Handler;

    .line 95
    .line 96
    new-array p2, p3, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 97
    .line 98
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 99
    .line 100
    new-array p2, p3, [Landroidx/media3/exoplayer/source/SampleQueue;

    .line 101
    .line 102
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 103
    .line 104
    new-array p2, p3, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    .line 105
    .line 106
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    .line 107
    .line 108
    new-instance p2, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Ljava/util/ArrayList;

    .line 114
    .line 115
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 121
    .line 122
    iput p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    .line 123
    .line 124
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->a0:Z

    .line 2
    .line 3
    if-nez v0, :cond_18

    .line 4
    .line 5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:Z

    .line 6
    .line 7
    if-nez v0, :cond_18

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Z

    .line 10
    .line 11
    if-eqz v0, :cond_18

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_a

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 20
    .line 21
    array-length v1, v0

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    if-ge v3, v1, :cond_2

    .line 25
    .line 26
    aget-object v4, v0, v3

    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/SampleQueue;->l()Landroidx/media3/common/Format;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    goto/16 :goto_a

    .line 35
    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w:Landroidx/media3/common/util/ConditionVariable;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iput-boolean v2, v0, Landroidx/media3/common/util/ConditionVariable;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    .line 44
    monitor-exit v0

    .line 45
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 46
    .line 47
    array-length v0, v0

    .line 48
    const/4 v1, -0x1

    .line 49
    move v4, v1

    .line 50
    move v3, v2

    .line 51
    move v5, v3

    .line 52
    :goto_1
    const/4 v6, 0x1

    .line 53
    if-ge v3, v0, :cond_c

    .line 54
    .line 55
    iget-object v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 56
    .line 57
    aget-object v7, v7, v3

    .line 58
    .line 59
    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/SampleQueue;->l()Landroidx/media3/common/Format;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-object v7, v7, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const/4 v8, 0x2

    .line 73
    const/4 v9, 0x3

    .line 74
    const/4 v10, 0x4

    .line 75
    if-eq v7, v6, :cond_6

    .line 76
    .line 77
    if-eq v7, v8, :cond_5

    .line 78
    .line 79
    if-eq v7, v9, :cond_4

    .line 80
    .line 81
    if-eq v7, v10, :cond_3

    .line 82
    .line 83
    move v11, v2

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    move v11, v8

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move v11, v6

    .line 88
    goto :goto_2

    .line 89
    :cond_5
    move v11, v10

    .line 90
    goto :goto_2

    .line 91
    :cond_6
    move v11, v9

    .line 92
    :goto_2
    if-eq v4, v6, :cond_9

    .line 93
    .line 94
    if-eq v4, v8, :cond_8

    .line 95
    .line 96
    if-eq v4, v9, :cond_a

    .line 97
    .line 98
    if-eq v4, v10, :cond_7

    .line 99
    .line 100
    move v6, v2

    .line 101
    goto :goto_3

    .line 102
    :cond_7
    move v6, v8

    .line 103
    goto :goto_3

    .line 104
    :cond_8
    move v6, v10

    .line 105
    goto :goto_3

    .line 106
    :cond_9
    move v6, v9

    .line 107
    :cond_a
    :goto_3
    if-le v11, v6, :cond_b

    .line 108
    .line 109
    move v5, v3

    .line 110
    move v4, v7

    .line 111
    :cond_b
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_c
    new-array v3, v0, [Landroidx/media3/common/TrackGroup;

    .line 115
    .line 116
    new-array v4, v0, [Z

    .line 117
    .line 118
    move v7, v2

    .line 119
    :goto_4
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    if-ge v7, v0, :cond_16

    .line 125
    .line 126
    iget-object v10, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 127
    .line 128
    aget-object v10, v10, v7

    .line 129
    .line 130
    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/SampleQueue;->l()Landroidx/media3/common/Format;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    .line 136
    .line 137
    iget-object v11, v10, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->h(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    if-nez v12, :cond_e

    .line 144
    .line 145
    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v13

    .line 149
    if-eqz v13, :cond_d

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_d
    move v13, v2

    .line 153
    goto :goto_6

    .line 154
    :cond_e
    :goto_5
    move v13, v6

    .line 155
    :goto_6
    aput-boolean v13, v4, v7

    .line 156
    .line 157
    iget-boolean v14, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->H:Z

    .line 158
    .line 159
    or-int/2addr v13, v14

    .line 160
    iput-boolean v13, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->H:Z

    .line 161
    .line 162
    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    iget-wide v13, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->t:J

    .line 167
    .line 168
    cmp-long v8, v13, v8

    .line 169
    .line 170
    if-eqz v8, :cond_f

    .line 171
    .line 172
    if-ne v0, v6, :cond_f

    .line 173
    .line 174
    if-eqz v11, :cond_f

    .line 175
    .line 176
    move v8, v6

    .line 177
    goto :goto_7

    .line 178
    :cond_f
    move v8, v2

    .line 179
    :goto_7
    iput-boolean v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->I:Z

    .line 180
    .line 181
    iget-object v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    .line 182
    .line 183
    if-eqz v8, :cond_13

    .line 184
    .line 185
    if-nez v12, :cond_10

    .line 186
    .line 187
    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 188
    .line 189
    aget-object v9, v9, v7

    .line 190
    .line 191
    iget-boolean v9, v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->b:Z

    .line 192
    .line 193
    if-eqz v9, :cond_12

    .line 194
    .line 195
    :cond_10
    iget-object v9, v10, Landroidx/media3/common/Format;->m:Landroidx/media3/common/Metadata;

    .line 196
    .line 197
    if-nez v9, :cond_11

    .line 198
    .line 199
    new-instance v9, Landroidx/media3/common/Metadata;

    .line 200
    .line 201
    new-array v11, v6, [Landroidx/media3/common/Metadata$Entry;

    .line 202
    .line 203
    aput-object v8, v11, v2

    .line 204
    .line 205
    invoke-direct {v9, v11}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 206
    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_11
    new-array v11, v6, [Landroidx/media3/common/Metadata$Entry;

    .line 210
    .line 211
    aput-object v8, v11, v2

    .line 212
    .line 213
    invoke-virtual {v9, v11}, Landroidx/media3/common/Metadata;->a([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    :goto_8
    invoke-virtual {v10}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    iput-object v9, v10, Landroidx/media3/common/Format$Builder;->l:Landroidx/media3/common/Metadata;

    .line 222
    .line 223
    new-instance v9, Landroidx/media3/common/Format;

    .line 224
    .line 225
    invoke-direct {v9, v10}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 226
    .line 227
    .line 228
    move-object v10, v9

    .line 229
    :cond_12
    if-eqz v12, :cond_13

    .line 230
    .line 231
    iget v9, v10, Landroidx/media3/common/Format;->i:I

    .line 232
    .line 233
    if-ne v9, v1, :cond_13

    .line 234
    .line 235
    iget v9, v10, Landroidx/media3/common/Format;->j:I

    .line 236
    .line 237
    if-ne v9, v1, :cond_13

    .line 238
    .line 239
    iget v9, v8, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->a:I

    .line 240
    .line 241
    if-eq v9, v1, :cond_13

    .line 242
    .line 243
    invoke-virtual {v10}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    iget v8, v8, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->a:I

    .line 248
    .line 249
    iput v8, v9, Landroidx/media3/common/Format$Builder;->i:I

    .line 250
    .line 251
    new-instance v10, Landroidx/media3/common/Format;

    .line 252
    .line 253
    invoke-direct {v10, v9}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 254
    .line 255
    .line 256
    :cond_13
    iget-object v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->l:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 257
    .line 258
    invoke-interface {v8, v10}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->b(Landroidx/media3/common/Format;)I

    .line 259
    .line 260
    .line 261
    move-result v8

    .line 262
    invoke-virtual {v10}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 263
    .line 264
    .line 265
    move-result-object v9

    .line 266
    iput v8, v9, Landroidx/media3/common/Format$Builder;->S:I

    .line 267
    .line 268
    new-instance v8, Landroidx/media3/common/Format;

    .line 269
    .line 270
    invoke-direct {v8, v9}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 271
    .line 272
    .line 273
    if-eq v7, v5, :cond_14

    .line 274
    .line 275
    invoke-virtual {v8}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    iput-object v9, v8, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    .line 284
    .line 285
    new-instance v9, Landroidx/media3/common/Format;

    .line 286
    .line 287
    invoke-direct {v9, v8}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 288
    .line 289
    .line 290
    move-object v8, v9

    .line 291
    :cond_14
    new-instance v9, Landroidx/media3/common/TrackGroup;

    .line 292
    .line 293
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    filled-new-array {v8}, [Landroidx/media3/common/Format;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    invoke-direct {v9, v10, v8}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 302
    .line 303
    .line 304
    aput-object v9, v3, v7

    .line 305
    .line 306
    iget-object v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 307
    .line 308
    aget-object v10, v8, v7

    .line 309
    .line 310
    monitor-enter v10

    .line 311
    :try_start_1
    iget-wide v8, v10, Landroidx/media3/exoplayer/source/SampleQueue;->u:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .line 313
    const-wide/high16 v11, -0x8000000000000000L

    .line 314
    .line 315
    cmp-long v8, v11, v8

    .line 316
    .line 317
    if-nez v8, :cond_15

    .line 318
    .line 319
    monitor-exit v10

    .line 320
    goto :goto_9

    .line 321
    :cond_15
    :try_start_2
    iput-wide v11, v10, Landroidx/media3/exoplayer/source/SampleQueue;->u:J

    .line 322
    .line 323
    iput v1, v10, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    .line 324
    .line 325
    iput v1, v10, Landroidx/media3/exoplayer/source/SampleQueue;->y:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 326
    .line 327
    monitor-exit v10

    .line 328
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 329
    .line 330
    goto/16 :goto_4

    .line 331
    .line 332
    :catchall_0
    move-exception p0

    .line 333
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 334
    throw p0

    .line 335
    :cond_16
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 336
    .line 337
    new-instance v1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 338
    .line 339
    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    .line 340
    .line 341
    .line 342
    invoke-direct {v0, v1, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;-><init>(Landroidx/media3/exoplayer/source/TrackGroupArray;[Z)V

    .line 343
    .line 344
    .line 345
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 346
    .line 347
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->I:Z

    .line 348
    .line 349
    if-eqz v0, :cond_17

    .line 350
    .line 351
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 352
    .line 353
    cmp-long v0, v0, v8

    .line 354
    .line 355
    if-nez v0, :cond_17

    .line 356
    .line 357
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->t:J

    .line 358
    .line 359
    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 360
    .line 361
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$1;

    .line 362
    .line 363
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 364
    .line 365
    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$1;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroidx/media3/extractor/SeekMap;)V

    .line 366
    .line 367
    .line 368
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 369
    .line 370
    :cond_17
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 371
    .line 372
    iget-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 373
    .line 374
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 375
    .line 376
    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    .line 377
    .line 378
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->t(JLandroidx/media3/extractor/SeekMap;Z)V

    .line 379
    .line 380
    .line 381
    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:Z

    .line 382
    .line 383
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 384
    .line 385
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->c(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 389
    .line 390
    .line 391
    return-void

    .line 392
    :catchall_1
    move-exception p0

    .line 393
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 394
    throw p0

    .line 395
    :cond_18
    :goto_a
    return-void
.end method

.method public final B(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 5
    .line 6
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->d:[Z

    .line 7
    .line 8
    aget-boolean v2, v1, p1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->a:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v2, 0x0

    .line 19
    iget-object v0, v0, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 20
    .line 21
    aget-object v6, v0, v2

    .line 22
    .line 23
    iget-object v0, v6, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->g(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->V:J

    .line 30
    .line 31
    move-wide v7, v2

    .line 32
    new-instance v3, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 33
    .line 34
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->N(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    invoke-direct/range {v3 .. v10}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;JJ)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ln5;

    .line 48
    .line 49
    const/4 v2, 0x6

    .line 50
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 51
    .line 52
    invoke-direct {v0, v2, p0, v3}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    .line 56
    .line 57
    .line 58
    const/4 p0, 0x1

    .line 59
    aput-boolean p0, v1, p1

    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public final C(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->X:Z

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->H:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 13
    .line 14
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->b:[Z

    .line 15
    .line 16
    aget-boolean v0, v0, p1

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 21
    .line 22
    aget-object p1, v0, p1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->m(Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    iput-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 35
    .line 36
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->X:Z

    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:Z

    .line 40
    .line 41
    iput-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->V:J

    .line 42
    .line 43
    iput v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Y:I

    .line 44
    .line 45
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 46
    .line 47
    array-length v1, p1

    .line 48
    move v2, v0

    .line 49
    :goto_0
    if-ge v2, v1, :cond_2

    .line 50
    .line 51
    aget-object v3, p1, v2

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->p(Z)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_1
    return-void
.end method

.method public final D(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/extractor/TrackOutput;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 18
    .line 19
    aget-object p0, p0, v1

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "Extractor added new track (id="

    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget p1, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->a:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ") after finishing tracks."

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "ProgressiveMediaPeriod"

    .line 51
    .line 52
    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p0, Landroidx/media3/extractor/DiscardingTrackOutput;

    .line 56
    .line 57
    invoke-direct {p0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    .line 58
    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_2
    new-instance v1, Landroidx/media3/exoplayer/source/SampleQueue;

    .line 62
    .line 63
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->l:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->q:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 69
    .line 70
    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->o:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 71
    .line 72
    invoke-direct {v1, v3, v2, v4}, Landroidx/media3/exoplayer/source/SampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;-><init>(Landroidx/media3/exoplayer/source/SampleQueue;)V

    .line 78
    .line 79
    .line 80
    iput-object p0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->f:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    .line 81
    .line 82
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 83
    .line 84
    add-int/lit8 v4, v0, 0x1

    .line 85
    .line 86
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 91
    .line 92
    aput-object p1, v3, v0

    .line 93
    .line 94
    iput-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 95
    .line 96
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 97
    .line 98
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, [Landroidx/media3/exoplayer/source/SampleQueue;

    .line 103
    .line 104
    aput-object v1, p1, v0

    .line 105
    .line 106
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 107
    .line 108
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    .line 109
    .line 110
    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    .line 115
    .line 116
    aput-object v2, p1, v0

    .line 117
    .line 118
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    .line 119
    .line 120
    return-object v2
.end method

.method public final E()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 2
    .line 3
    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->v:Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 4
    .line 5
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w:Landroidx/media3/common/util/ConditionVariable;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->j:Landroid/net/Uri;

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->k:Landroidx/media3/datasource/DataSource;

    .line 10
    .line 11
    move-object v5, p0

    .line 12
    move-object v1, p0

    .line 13
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/common/util/ConditionVariable;)V

    .line 14
    .line 15
    .line 16
    iget-boolean p0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:Z

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 25
    .line 26
    .line 27
    iget-wide v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 28
    .line 29
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    cmp-long p0, v2, v4

    .line 35
    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 40
    .line 41
    cmp-long p0, v7, v2

    .line 42
    .line 43
    if-lez p0, :cond_0

    .line 44
    .line 45
    iput-boolean v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 46
    .line 47
    iput-wide v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-object p0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget-wide v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 56
    .line 57
    invoke-interface {p0, v2, v3}, Landroidx/media3/extractor/SeekMap;->e(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget-object p0, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->a:Landroidx/media3/extractor/SeekPoint;

    .line 62
    .line 63
    iget-wide v2, p0, Landroidx/media3/extractor/SeekPoint;->b:J

    .line 64
    .line 65
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 66
    .line 67
    iget-object p0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->g:Landroidx/media3/extractor/PositionHolder;

    .line 68
    .line 69
    iput-wide v2, p0, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 70
    .line 71
    iput-wide v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    .line 72
    .line 73
    iput-boolean v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->i:Z

    .line 74
    .line 75
    const/4 p0, 0x0

    .line 76
    iput-boolean p0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->m:Z

    .line 77
    .line 78
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 79
    .line 80
    array-length v3, v2

    .line 81
    :goto_0
    if-ge p0, v3, :cond_1

    .line 82
    .line 83
    aget-object v6, v2, p0

    .line 84
    .line 85
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 86
    .line 87
    iput-wide v7, v6, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    .line 88
    .line 89
    add-int/lit8 p0, p0, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iput-wide v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 93
    .line 94
    :cond_2
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()I

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    iput p0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Y:I

    .line 99
    .line 100
    iget p0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    .line 101
    .line 102
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 103
    .line 104
    check-cast v2, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    const/4 v2, 0x7

    .line 110
    if-ne p0, v2, :cond_3

    .line 111
    .line 112
    const/4 p0, 0x6

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    const/4 p0, 0x3

    .line 115
    :goto_1
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 116
    .line 117
    invoke-virtual {v2, v0, v1, p0}, Landroidx/media3/exoplayer/upstream/Loader;->d(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final F()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
.end method

.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    const/4 v3, 0x0

    .line 6
    if-ge v2, v1, :cond_1

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/SampleQueue;->p(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v5, v4, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 19
    .line 20
    invoke-interface {v5, v6}, Landroidx/media3/exoplayer/drm/DrmSession;->d(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 21
    .line 22
    .line 23
    iput-object v3, v4, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 24
    .line 25
    iput-object v3, v4, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->v:Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Landroidx/media3/extractor/Extractor;->a()V

    .line 37
    .line 38
    .line 39
    iput-object v3, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->b:Landroidx/media3/extractor/Extractor;

    .line 40
    .line 41
    :cond_2
    iput-object v3, p0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;->c:Landroidx/media3/extractor/DefaultExtractorInput;

    .line 42
    .line 43
    return-void
.end method

.method public final b(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 2
    .line 3
    if-nez p1, :cond_4

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->X:Z

    .line 13
    .line 14
    if-nez v0, :cond_4

    .line 15
    .line 16
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w:Landroidx/media3/common/util/ConditionVariable;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iget-object p1, p1, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    .line 33
    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    return v0

    .line 37
    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E()V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    return p0

    .line 42
    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public final c(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 6
    .line 7
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 8
    .line 9
    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;

    .line 10
    .line 11
    iget-wide v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->a:J

    .line 12
    .line 13
    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    .line 14
    .line 15
    move-wide/from16 v7, p2

    .line 16
    .line 17
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    .line 18
    .line 19
    .line 20
    iget-object v4, v2, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    .line 21
    .line 22
    iput-object v4, v3, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->d:Landroid/net/Uri;

    .line 23
    .line 24
    iget-object v4, v2, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    .line 25
    .line 26
    iput-object v4, v3, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->e:Ljava/util/Map;

    .line 27
    .line 28
    move-wide/from16 v4, p4

    .line 29
    .line 30
    iput-wide v4, v3, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->f:J

    .line 31
    .line 32
    iget-wide v4, v2, Landroidx/media3/datasource/StatsDataSource;->b:J

    .line 33
    .line 34
    iput-wide v4, v3, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->g:J

    .line 35
    .line 36
    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 37
    .line 38
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;)V

    .line 39
    .line 40
    .line 41
    iget-wide v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    .line 42
    .line 43
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->N(J)J

    .line 44
    .line 45
    .line 46
    iget-wide v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 47
    .line 48
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->N(J)J

    .line 49
    .line 50
    .line 51
    new-instance v3, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    .line 52
    .line 53
    move-object/from16 v4, p6

    .line 54
    .line 55
    move/from16 v5, p7

    .line 56
    .line 57
    invoke-direct {v3, v4, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Ljava/io/IOException;I)V

    .line 58
    .line 59
    .line 60
    iget-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 61
    .line 62
    move-object v6, v5

    .line 63
    check-cast v6, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v6, v3, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->a:Ljava/io/IOException;

    .line 69
    .line 70
    :goto_0
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    const/4 v9, 0x1

    .line 76
    if-eqz v6, :cond_2

    .line 77
    .line 78
    instance-of v10, v6, Landroidx/media3/common/ParserException;

    .line 79
    .line 80
    if-nez v10, :cond_1

    .line 81
    .line 82
    instance-of v10, v6, Ljava/io/FileNotFoundException;

    .line 83
    .line 84
    if-nez v10, :cond_1

    .line 85
    .line 86
    instance-of v10, v6, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    .line 87
    .line 88
    if-nez v10, :cond_1

    .line 89
    .line 90
    instance-of v10, v6, Landroidx/media3/exoplayer/upstream/Loader$UnexpectedLoaderException;

    .line 91
    .line 92
    if-nez v10, :cond_1

    .line 93
    .line 94
    instance-of v10, v6, Landroidx/media3/datasource/DataSourceException;

    .line 95
    .line 96
    if-eqz v10, :cond_0

    .line 97
    .line 98
    move-object v10, v6

    .line 99
    check-cast v10, Landroidx/media3/datasource/DataSourceException;

    .line 100
    .line 101
    iget v10, v10, Landroidx/media3/datasource/DataSourceException;->j:I

    .line 102
    .line 103
    const/16 v11, 0x7d8

    .line 104
    .line 105
    if-ne v10, v11, :cond_0

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    goto :goto_0

    .line 113
    :cond_1
    :goto_1
    move-wide v10, v7

    .line 114
    goto :goto_2

    .line 115
    :cond_2
    iget v3, v3, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;->b:I

    .line 116
    .line 117
    sub-int/2addr v3, v9

    .line 118
    mul-int/lit16 v3, v3, 0x3e8

    .line 119
    .line 120
    const/16 v6, 0x1388

    .line 121
    .line 122
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    int-to-long v10, v3

    .line 127
    :goto_2
    cmp-long v3, v10, v7

    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    if-nez v3, :cond_3

    .line 131
    .line 132
    sget-object v3, Landroidx/media3/exoplayer/upstream/Loader;->e:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    iget v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Y:I

    .line 140
    .line 141
    if-le v3, v12, :cond_4

    .line 142
    .line 143
    move v12, v9

    .line 144
    goto :goto_3

    .line 145
    :cond_4
    move v12, v6

    .line 146
    :goto_3
    iget-boolean v13, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->U:Z

    .line 147
    .line 148
    if-nez v13, :cond_8

    .line 149
    .line 150
    iget-object v13, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 151
    .line 152
    if-eqz v13, :cond_5

    .line 153
    .line 154
    invoke-interface {v13}, Landroidx/media3/extractor/SeekMap;->g()J

    .line 155
    .line 156
    .line 157
    move-result-wide v13

    .line 158
    cmp-long v7, v13, v7

    .line 159
    .line 160
    if-eqz v7, :cond_5

    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_5
    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:Z

    .line 164
    .line 165
    if-eqz v3, :cond_6

    .line 166
    .line 167
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_6

    .line 172
    .line 173
    iput-boolean v9, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->X:Z

    .line 174
    .line 175
    sget-object v3, Landroidx/media3/exoplayer/upstream/Loader;->d:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 176
    .line 177
    goto :goto_7

    .line 178
    :cond_6
    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:Z

    .line 179
    .line 180
    iput-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:Z

    .line 181
    .line 182
    const-wide/16 v7, 0x0

    .line 183
    .line 184
    iput-wide v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->V:J

    .line 185
    .line 186
    iput v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Y:I

    .line 187
    .line 188
    iget-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 189
    .line 190
    array-length v13, v3

    .line 191
    move v14, v6

    .line 192
    :goto_4
    if-ge v14, v13, :cond_7

    .line 193
    .line 194
    aget-object v15, v3, v14

    .line 195
    .line 196
    invoke-virtual {v15, v6}, Landroidx/media3/exoplayer/source/SampleQueue;->p(Z)V

    .line 197
    .line 198
    .line 199
    add-int/lit8 v14, v14, 0x1

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_7
    iget-object v3, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->g:Landroidx/media3/extractor/PositionHolder;

    .line 203
    .line 204
    iput-wide v7, v3, Landroidx/media3/extractor/PositionHolder;->a:J

    .line 205
    .line 206
    iput-wide v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    .line 207
    .line 208
    iput-boolean v9, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->i:Z

    .line 209
    .line 210
    iput-boolean v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->m:Z

    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_8
    :goto_5
    iput v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Y:I

    .line 214
    .line 215
    :goto_6
    new-instance v3, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    .line 216
    .line 217
    invoke-direct {v3, v12, v10, v11}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    .line 218
    .line 219
    .line 220
    :goto_7
    iget v7, v3, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->a:I

    .line 221
    .line 222
    if-eqz v7, :cond_a

    .line 223
    .line 224
    if-ne v7, v9, :cond_9

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_9
    move v9, v6

    .line 228
    :cond_a
    :goto_8
    xor-int/lit8 v6, v9, 0x1

    .line 229
    .line 230
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    .line 231
    .line 232
    iget-wide v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 233
    .line 234
    new-instance v12, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 235
    .line 236
    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->N(J)J

    .line 237
    .line 238
    .line 239
    move-result-wide v16

    .line 240
    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->N(J)J

    .line 241
    .line 242
    .line 243
    move-result-wide v18

    .line 244
    const/4 v13, 0x1

    .line 245
    const/4 v14, -0x1

    .line 246
    const/4 v15, 0x0

    .line 247
    invoke-direct/range {v12 .. v19}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;JJ)V

    .line 248
    .line 249
    .line 250
    new-instance v1, Lgb;

    .line 251
    .line 252
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 253
    .line 254
    move-object/from16 p1, v0

    .line 255
    .line 256
    move-object/from16 p0, v1

    .line 257
    .line 258
    move-object/from16 p2, v2

    .line 259
    .line 260
    move-object/from16 p4, v4

    .line 261
    .line 262
    move/from16 p5, v6

    .line 263
    .line 264
    move-object/from16 p3, v12

    .line 265
    .line 266
    invoke-direct/range {p0 .. p5}, Lgb;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 267
    .line 268
    .line 269
    move-object/from16 v0, p0

    .line 270
    .line 271
    move-object/from16 v1, p1

    .line 272
    .line 273
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    .line 274
    .line 275
    .line 276
    if-nez v9, :cond_b

    .line 277
    .line 278
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    :cond_b
    return-object v3
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->R:Z

    .line 3
    .line 4
    return-void
.end method

.method public final e()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->t()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final f(Landroidx/media3/extractor/SeekMap;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/source/c;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroidx/media3/extractor/SeekMap;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 4
    .line 5
    check-cast v1, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x3

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/upstream/Loader;->b(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:Z

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const-string p0, "Loading finished before preparation is complete."

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {v0, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    throw p0

    .line 38
    :cond_2
    :goto_1
    return-void
.end method

.method public final h(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w()V

    .line 8
    .line 9
    .line 10
    iget-object v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 11
    .line 12
    invoke-interface {v4}, Landroidx/media3/extractor/SeekMap;->b()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    return-wide v5

    .line 21
    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 22
    .line 23
    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/SeekMap;->e(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v4, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->a:Landroidx/media3/extractor/SeekPoint;

    .line 28
    .line 29
    iget-wide v7, v4, Landroidx/media3/extractor/SeekPoint;->a:J

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/media3/extractor/SeekMap$SeekPoints;->b:Landroidx/media3/extractor/SeekPoint;

    .line 32
    .line 33
    iget-wide v9, v0, Landroidx/media3/extractor/SeekPoint;->a:J

    .line 34
    .line 35
    iget-wide v11, v3, Landroidx/media3/exoplayer/SeekParameters;->b:J

    .line 36
    .line 37
    iget-wide v3, v3, Landroidx/media3/exoplayer/SeekParameters;->a:J

    .line 38
    .line 39
    cmp-long v0, v3, v5

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    cmp-long v0, v11, v5

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    return-wide v1

    .line 48
    :cond_1
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 49
    .line 50
    sub-long v13, v1, v3

    .line 51
    .line 52
    xor-long/2addr v3, v1

    .line 53
    cmp-long v0, v3, v5

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    const/4 v4, 0x0

    .line 57
    if-ltz v0, :cond_2

    .line 58
    .line 59
    move v0, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    move v0, v4

    .line 62
    :goto_0
    xor-long v15, v1, v13

    .line 63
    .line 64
    cmp-long v15, v15, v5

    .line 65
    .line 66
    if-ltz v15, :cond_3

    .line 67
    .line 68
    move v15, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v15, v4

    .line 71
    :goto_1
    or-int/2addr v0, v15

    .line 72
    const-wide/16 v15, 0x1

    .line 73
    .line 74
    const/16 v17, 0x3f

    .line 75
    .line 76
    const-wide v18, 0x7fffffffffffffffL

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    move-wide/from16 v20, v13

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    ushr-long v20, v13, v17

    .line 87
    .line 88
    xor-long v20, v20, v15

    .line 89
    .line 90
    add-long v20, v20, v18

    .line 91
    .line 92
    :goto_2
    const-wide/high16 v22, -0x8000000000000000L

    .line 93
    .line 94
    cmp-long v0, v20, v22

    .line 95
    .line 96
    if-nez v0, :cond_5

    .line 97
    .line 98
    cmp-long v0, v13, v22

    .line 99
    .line 100
    if-nez v0, :cond_6

    .line 101
    .line 102
    :cond_5
    cmp-long v0, v20, v18

    .line 103
    .line 104
    if-nez v0, :cond_7

    .line 105
    .line 106
    cmp-long v0, v13, v18

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    :cond_6
    move-wide/from16 v20, v22

    .line 111
    .line 112
    :cond_7
    add-long v13, v1, v11

    .line 113
    .line 114
    xor-long/2addr v11, v1

    .line 115
    cmp-long v0, v11, v5

    .line 116
    .line 117
    if-gez v0, :cond_8

    .line 118
    .line 119
    move v0, v3

    .line 120
    goto :goto_3

    .line 121
    :cond_8
    move v0, v4

    .line 122
    :goto_3
    xor-long v11, v1, v13

    .line 123
    .line 124
    cmp-long v5, v11, v5

    .line 125
    .line 126
    if-ltz v5, :cond_9

    .line 127
    .line 128
    move v5, v3

    .line 129
    goto :goto_4

    .line 130
    :cond_9
    move v5, v4

    .line 131
    :goto_4
    or-int/2addr v0, v5

    .line 132
    if-eqz v0, :cond_a

    .line 133
    .line 134
    move-wide v5, v13

    .line 135
    goto :goto_5

    .line 136
    :cond_a
    ushr-long v5, v13, v17

    .line 137
    .line 138
    xor-long/2addr v5, v15

    .line 139
    add-long v5, v5, v18

    .line 140
    .line 141
    :goto_5
    cmp-long v0, v5, v22

    .line 142
    .line 143
    if-nez v0, :cond_b

    .line 144
    .line 145
    cmp-long v0, v13, v22

    .line 146
    .line 147
    if-nez v0, :cond_d

    .line 148
    .line 149
    :cond_b
    cmp-long v0, v5, v18

    .line 150
    .line 151
    if-nez v0, :cond_c

    .line 152
    .line 153
    cmp-long v0, v13, v18

    .line 154
    .line 155
    if-eqz v0, :cond_c

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_c
    move-wide/from16 v18, v5

    .line 159
    .line 160
    :cond_d
    :goto_6
    cmp-long v0, v20, v7

    .line 161
    .line 162
    if-gtz v0, :cond_e

    .line 163
    .line 164
    cmp-long v0, v7, v18

    .line 165
    .line 166
    if-gtz v0, :cond_e

    .line 167
    .line 168
    move v0, v3

    .line 169
    goto :goto_7

    .line 170
    :cond_e
    move v0, v4

    .line 171
    :goto_7
    cmp-long v5, v20, v9

    .line 172
    .line 173
    if-gtz v5, :cond_f

    .line 174
    .line 175
    cmp-long v5, v9, v18

    .line 176
    .line 177
    if-gtz v5, :cond_f

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_f
    move v3, v4

    .line 181
    :goto_8
    if-eqz v0, :cond_10

    .line 182
    .line 183
    if-eqz v3, :cond_10

    .line 184
    .line 185
    sub-long v3, v7, v1

    .line 186
    .line 187
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 188
    .line 189
    .line 190
    move-result-wide v3

    .line 191
    sub-long v0, v9, v1

    .line 192
    .line 193
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 194
    .line 195
    .line 196
    move-result-wide v0

    .line 197
    cmp-long v0, v3, v0

    .line 198
    .line 199
    if-gtz v0, :cond_12

    .line 200
    .line 201
    goto :goto_9

    .line 202
    :cond_10
    if-eqz v0, :cond_11

    .line 203
    .line 204
    :goto_9
    return-wide v7

    .line 205
    :cond_11
    if-eqz v3, :cond_13

    .line 206
    .line 207
    :cond_12
    return-wide v9

    .line 208
    :cond_13
    return-wide v20
.end method

.method public final i(J)J
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;

    .line 20
    .line 21
    iget-object v4, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->e:Landroid/util/LongSparseArray;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    .line 24
    .line 25
    .line 26
    iput-object v2, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->g:[B

    .line 27
    .line 28
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide v4, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->h:J

    .line 34
    .line 35
    iput-boolean v3, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->i:Z

    .line 36
    .line 37
    iput-boolean v3, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->j:Z

    .line 38
    .line 39
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->d:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->b:[Z

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 53
    .line 54
    invoke-interface {v1}, Landroidx/media3/extractor/SeekMap;->b()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-wide/16 p1, 0x0

    .line 62
    .line 63
    :goto_1
    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:Z

    .line 64
    .line 65
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->V:J

    .line 66
    .line 67
    cmp-long v1, v4, p1

    .line 68
    .line 69
    const/4 v4, 0x1

    .line 70
    if-nez v1, :cond_2

    .line 71
    .line 72
    move v1, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move v1, v3

    .line 75
    :goto_2
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->V:J

    .line 76
    .line 77
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z()Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-eqz v5, :cond_3

    .line 82
    .line 83
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 84
    .line 85
    return-wide p1

    .line 86
    :cond_3
    iget v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    .line 87
    .line 88
    const/4 v6, 0x7

    .line 89
    if-eq v5, v6, :cond_e

    .line 90
    .line 91
    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 92
    .line 93
    if-nez v5, :cond_4

    .line 94
    .line 95
    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 96
    .line 97
    iget-object v5, v5, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    .line 98
    .line 99
    if-eqz v5, :cond_e

    .line 100
    .line 101
    :cond_4
    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 102
    .line 103
    array-length v5, v5

    .line 104
    move v6, v3

    .line 105
    :goto_3
    if-ge v6, v5, :cond_d

    .line 106
    .line 107
    iget-object v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 108
    .line 109
    aget-object v7, v7, v6

    .line 110
    .line 111
    iget-object v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    .line 112
    .line 113
    aget-object v8, v8, v6

    .line 114
    .line 115
    iget-object v8, v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 116
    .line 117
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    sget-object v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->j:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    .line 122
    .line 123
    if-ne v8, v9, :cond_c

    .line 124
    .line 125
    iget v8, v7, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 126
    .line 127
    iget v9, v7, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 128
    .line 129
    add-int/2addr v9, v8

    .line 130
    if-nez v9, :cond_5

    .line 131
    .line 132
    if-eqz v1, :cond_5

    .line 133
    .line 134
    goto :goto_8

    .line 135
    :cond_5
    iget-boolean v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->I:Z

    .line 136
    .line 137
    if-eqz v9, :cond_a

    .line 138
    .line 139
    monitor-enter v7

    .line 140
    :try_start_0
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    iput v3, v7, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 142
    .line 143
    iget-object v9, v7, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 144
    .line 145
    iget-object v10, v9, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    .line 146
    .line 147
    iput-object v10, v9, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
    .line 149
    :try_start_2
    monitor-exit v7

    .line 150
    iget v9, v7, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 151
    .line 152
    if-lt v8, v9, :cond_9

    .line 153
    .line 154
    iget v10, v7, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 155
    .line 156
    add-int/2addr v10, v9

    .line 157
    if-le v8, v10, :cond_6

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_6
    iget v10, v7, Landroidx/media3/exoplayer/source/SampleQueue;->x:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .line 162
    const/4 v11, -0x1

    .line 163
    if-eq v10, v11, :cond_7

    .line 164
    .line 165
    if-lt v8, v10, :cond_7

    .line 166
    .line 167
    monitor-exit v7

    .line 168
    :goto_4
    move v7, v3

    .line 169
    goto :goto_7

    .line 170
    :cond_7
    :try_start_3
    iget v10, v7, Landroidx/media3/exoplayer/source/SampleQueue;->y:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    .line 172
    if-eq v10, v11, :cond_8

    .line 173
    .line 174
    if-lt v8, v10, :cond_8

    .line 175
    .line 176
    monitor-exit v7

    .line 177
    goto :goto_4

    .line 178
    :cond_8
    const-wide/high16 v10, -0x8000000000000000L

    .line 179
    .line 180
    :try_start_4
    iput-wide v10, v7, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    .line 181
    .line 182
    sub-int/2addr v8, v9

    .line 183
    iput v8, v7, Landroidx/media3/exoplayer/source/SampleQueue;->s:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    .line 185
    monitor-exit v7

    .line 186
    move v7, v4

    .line 187
    goto :goto_7

    .line 188
    :catchall_0
    move-exception p0

    .line 189
    goto :goto_6

    .line 190
    :cond_9
    :goto_5
    monitor-exit v7

    .line 191
    goto :goto_4

    .line 192
    :catchall_1
    move-exception p0

    .line 193
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 194
    :try_start_6
    throw p0

    .line 195
    :goto_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 196
    throw p0

    .line 197
    :cond_a
    iget-boolean v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 198
    .line 199
    invoke-virtual {v7, p1, p2, v8}, Landroidx/media3/exoplayer/source/SampleQueue;->q(JZ)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    :goto_7
    if-nez v7, :cond_c

    .line 204
    .line 205
    aget-boolean v7, v0, v6

    .line 206
    .line 207
    if-nez v7, :cond_b

    .line 208
    .line 209
    iget-boolean v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->H:Z

    .line 210
    .line 211
    if-nez v7, :cond_c

    .line 212
    .line 213
    :cond_b
    move v0, v3

    .line 214
    goto :goto_9

    .line 215
    :cond_c
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_d
    move v0, v4

    .line 219
    :goto_9
    if-eqz v0, :cond_e

    .line 220
    .line 221
    goto :goto_d

    .line 222
    :cond_e
    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->X:Z

    .line 223
    .line 224
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 225
    .line 226
    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 227
    .line 228
    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:Z

    .line 229
    .line 230
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 231
    .line 232
    iget-object v1, v0, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    .line 233
    .line 234
    if-eqz v1, :cond_f

    .line 235
    .line 236
    goto :goto_a

    .line 237
    :cond_f
    move v4, v3

    .line 238
    :goto_a
    if-eqz v4, :cond_11

    .line 239
    .line 240
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 241
    .line 242
    array-length v1, v0

    .line 243
    :goto_b
    if-ge v3, v1, :cond_10

    .line 244
    .line 245
    aget-object v2, v0, v3

    .line 246
    .line 247
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->i()V

    .line 248
    .line 249
    .line 250
    add-int/lit8 v3, v3, 0x1

    .line 251
    .line 252
    goto :goto_b

    .line 253
    :cond_10
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 254
    .line 255
    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/Loader;->a()V

    .line 256
    .line 257
    .line 258
    return-wide p1

    .line 259
    :cond_11
    iput-object v2, v0, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    .line 260
    .line 261
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 262
    .line 263
    array-length v0, p0

    .line 264
    move v1, v3

    .line 265
    :goto_c
    if-ge v1, v0, :cond_12

    .line 266
    .line 267
    aget-object v2, p0, v1

    .line 268
    .line 269
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->p(Z)V

    .line 270
    .line 271
    .line 272
    add-int/lit8 v1, v1, 0x1

    .line 273
    .line 274
    goto :goto_c

    .line 275
    :cond_12
    :goto_d
    return-wide p1
.end method

.method public final j(J)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->I:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_5

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    goto :goto_5

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->c:[Z

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    if-ge v2, v1, :cond_6

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 27
    .line 28
    aget-object v4, v3, v2

    .line 29
    .line 30
    aget-boolean v3, v0, v2

    .line 31
    .line 32
    iget-object v10, v4, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 33
    .line 34
    monitor-enter v4

    .line 35
    :try_start_0
    iget v5, v4, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 36
    .line 37
    const-wide/16 v11, -0x1

    .line 38
    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    iget-object v6, v4, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    .line 42
    .line 43
    move v7, v5

    .line 44
    iget v5, v4, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    .line 45
    .line 46
    aget-wide v8, v6, v5

    .line 47
    .line 48
    cmp-long v6, p1, v8

    .line 49
    .line 50
    if-gez v6, :cond_3

    .line 51
    .line 52
    :cond_2
    move-wide v7, p1

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    if-eqz v3, :cond_4

    .line 55
    .line 56
    iget v3, v4, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 57
    .line 58
    if-eq v3, v7, :cond_4

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    move v6, v3

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object p0, v0

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    move v6, v7

    .line 68
    :goto_1
    const/4 v9, 0x0

    .line 69
    move-wide v7, p1

    .line 70
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/source/SampleQueue;->j(IIJZ)I

    .line 71
    .line 72
    .line 73
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    const/4 p2, -0x1

    .line 75
    if-ne p1, p2, :cond_5

    .line 76
    .line 77
    monitor-exit v4

    .line 78
    goto :goto_3

    .line 79
    :cond_5
    :try_start_1
    invoke-virtual {v4, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->h(I)J

    .line 80
    .line 81
    .line 82
    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit v4

    .line 84
    goto :goto_3

    .line 85
    :goto_2
    monitor-exit v4

    .line 86
    :goto_3
    invoke-virtual {v10, v11, v12}, Landroidx/media3/exoplayer/source/SampleDataQueue;->a(J)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    move-wide p1, v7

    .line 92
    goto :goto_0

    .line 93
    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p0

    .line 95
    :cond_6
    :goto_5
    return-void
.end method

.method public final k([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-wide/from16 v3, p5

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w()V

    .line 10
    .line 11
    .line 12
    iget-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 13
    .line 14
    iget-object v6, v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->a:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 15
    .line 16
    iget-object v7, v6, Landroidx/media3/exoplayer/source/TrackGroupArray;->b:Lcom/google/common/collect/ImmutableList;

    .line 17
    .line 18
    iget-object v5, v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->c:[Z

    .line 19
    .line 20
    iget v8, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    move v10, v9

    .line 24
    :goto_0
    array-length v11, v1

    .line 25
    const-string v13, "application/x-itut-t35"

    .line 26
    .line 27
    const/4 v14, 0x1

    .line 28
    if-ge v10, v11, :cond_2

    .line 29
    .line 30
    aget-object v11, v1, v10

    .line 31
    .line 32
    if-eqz v11, :cond_1

    .line 33
    .line 34
    check-cast v11, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 35
    .line 36
    iget-object v11, v11, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->a:Landroidx/media3/common/TrackGroup;

    .line 37
    .line 38
    invoke-virtual {v7, v11}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    if-ltz v11, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 v11, -0x1

    .line 46
    :goto_1
    invoke-virtual {v6, v11}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    iget-object v11, v11, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 51
    .line 52
    aget-object v11, v11, v9

    .line 53
    .line 54
    iget-object v11, v11, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v11, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    if-eqz v11, :cond_1

    .line 61
    .line 62
    move v10, v14

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move v10, v9

    .line 68
    :goto_2
    move v11, v9

    .line 69
    :goto_3
    array-length v15, v1

    .line 70
    iget-object v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Ljava/util/ArrayList;

    .line 71
    .line 72
    move/from16 v16, v9

    .line 73
    .line 74
    if-ge v11, v15, :cond_6

    .line 75
    .line 76
    aget-object v15, v2, v11

    .line 77
    .line 78
    if-eqz v15, :cond_5

    .line 79
    .line 80
    aget-object v17, v1, v11

    .line 81
    .line 82
    if-eqz v17, :cond_3

    .line 83
    .line 84
    aget-boolean v17, p2, v11

    .line 85
    .line 86
    if-eqz v17, :cond_3

    .line 87
    .line 88
    if-eqz v10, :cond_5

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    instance-of v9, v15, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;

    .line 93
    .line 94
    if-eqz v9, :cond_5

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_3
    const/16 v17, 0x0

    .line 98
    .line 99
    :goto_4
    instance-of v9, v15, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;

    .line 100
    .line 101
    if-eqz v9, :cond_4

    .line 102
    .line 103
    check-cast v15, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;

    .line 104
    .line 105
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object v9, v15, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->a:Landroidx/media3/exoplayer/source/SampleStream;

    .line 109
    .line 110
    check-cast v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 111
    .line 112
    iget v9, v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->a:I

    .line 113
    .line 114
    aget-boolean v12, v5, v9

    .line 115
    .line 116
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 117
    .line 118
    .line 119
    iget v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 120
    .line 121
    sub-int/2addr v12, v14

    .line 122
    iput v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 123
    .line 124
    aput-boolean v16, v5, v9

    .line 125
    .line 126
    iget-object v9, v15, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->b:Landroidx/media3/exoplayer/source/SampleStream;

    .line 127
    .line 128
    check-cast v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 129
    .line 130
    iget v9, v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->a:I

    .line 131
    .line 132
    aget-boolean v12, v5, v9

    .line 133
    .line 134
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 135
    .line 136
    .line 137
    iget v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 138
    .line 139
    sub-int/2addr v12, v14

    .line 140
    iput v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 141
    .line 142
    aput-boolean v16, v5, v9

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_4
    check-cast v15, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 146
    .line 147
    iget v9, v15, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->a:I

    .line 148
    .line 149
    aget-boolean v12, v5, v9

    .line 150
    .line 151
    invoke-static {v12}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 152
    .line 153
    .line 154
    iget v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 155
    .line 156
    sub-int/2addr v12, v14

    .line 157
    iput v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 158
    .line 159
    aput-boolean v16, v5, v9

    .line 160
    .line 161
    :goto_5
    aput-object v17, v2, v11

    .line 162
    .line 163
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 164
    .line 165
    move/from16 v9, v16

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_6
    const/16 v17, 0x0

    .line 169
    .line 170
    iget-boolean v9, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->O:Z

    .line 171
    .line 172
    if-eqz v9, :cond_8

    .line 173
    .line 174
    if-nez v8, :cond_7

    .line 175
    .line 176
    :goto_6
    move v8, v14

    .line 177
    goto :goto_7

    .line 178
    :cond_7
    move/from16 v8, v16

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_8
    const-wide/16 v8, 0x0

    .line 182
    .line 183
    cmp-long v8, v3, v8

    .line 184
    .line 185
    if-eqz v8, :cond_7

    .line 186
    .line 187
    iget-boolean v8, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->I:Z

    .line 188
    .line 189
    if-nez v8, :cond_7

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :goto_7
    move/from16 v9, v16

    .line 193
    .line 194
    move v11, v9

    .line 195
    :goto_8
    array-length v15, v1

    .line 196
    if-ge v9, v15, :cond_12

    .line 197
    .line 198
    aget-object v15, v2, v9

    .line 199
    .line 200
    if-nez v15, :cond_10

    .line 201
    .line 202
    aget-object v15, v1, v9

    .line 203
    .line 204
    if-eqz v15, :cond_10

    .line 205
    .line 206
    check-cast v15, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 207
    .line 208
    iget-object v14, v15, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    .line 209
    .line 210
    iget-object v1, v15, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->c:[I

    .line 211
    .line 212
    move-object/from16 v19, v5

    .line 213
    .line 214
    array-length v5, v1

    .line 215
    move-object/from16 p2, v1

    .line 216
    .line 217
    const/4 v1, 0x1

    .line 218
    if-ne v5, v1, :cond_9

    .line 219
    .line 220
    const/4 v1, 0x1

    .line 221
    goto :goto_9

    .line 222
    :cond_9
    move/from16 v1, v16

    .line 223
    .line 224
    :goto_9
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 225
    .line 226
    .line 227
    aget v1, p2, v16

    .line 228
    .line 229
    if-nez v1, :cond_a

    .line 230
    .line 231
    const/4 v1, 0x1

    .line 232
    goto :goto_a

    .line 233
    :cond_a
    move/from16 v1, v16

    .line 234
    .line 235
    :goto_a
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v15, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->a:Landroidx/media3/common/TrackGroup;

    .line 239
    .line 240
    invoke-virtual {v7, v1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-ltz v1, :cond_b

    .line 245
    .line 246
    goto :goto_b

    .line 247
    :cond_b
    const/4 v1, -0x1

    .line 248
    :goto_b
    aget-boolean v5, v19, v1

    .line 249
    .line 250
    const/16 v18, 0x1

    .line 251
    .line 252
    xor-int/lit8 v5, v5, 0x1

    .line 253
    .line 254
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 255
    .line 256
    .line 257
    iget v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 258
    .line 259
    add-int/lit8 v5, v5, 0x1

    .line 260
    .line 261
    iput v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 262
    .line 263
    aput-boolean v18, v19, v1

    .line 264
    .line 265
    aget-object v5, v14, v16

    .line 266
    .line 267
    iget-boolean v15, v5, Landroidx/media3/common/Format;->v:Z

    .line 268
    .line 269
    or-int/2addr v11, v15

    .line 270
    move-object/from16 v20, v7

    .line 271
    .line 272
    new-instance v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 273
    .line 274
    invoke-direct {v7, v0, v1, v15}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;IZ)V

    .line 275
    .line 276
    .line 277
    iget-boolean v15, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->s:Z

    .line 278
    .line 279
    if-eqz v15, :cond_e

    .line 280
    .line 281
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 282
    .line 283
    move/from16 p2, v1

    .line 284
    .line 285
    const/16 v1, 0x25

    .line 286
    .line 287
    if-lt v15, v1, :cond_d

    .line 288
    .line 289
    if-nez v10, :cond_d

    .line 290
    .line 291
    iget-object v1, v5, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 292
    .line 293
    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eqz v1, :cond_d

    .line 298
    .line 299
    move/from16 v1, v16

    .line 300
    .line 301
    :goto_c
    iget v5, v6, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    .line 302
    .line 303
    if-ge v1, v5, :cond_d

    .line 304
    .line 305
    invoke-virtual {v6, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    iget-object v5, v5, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 310
    .line 311
    aget-object v5, v5, v16

    .line 312
    .line 313
    iget-object v15, v5, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 314
    .line 315
    iget-object v5, v5, Landroidx/media3/common/Format;->s:Ljava/util/List;

    .line 316
    .line 317
    invoke-static {v15, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v15

    .line 321
    if-eqz v15, :cond_c

    .line 322
    .line 323
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v15

    .line 327
    if-nez v15, :cond_c

    .line 328
    .line 329
    move/from16 v15, v16

    .line 330
    .line 331
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    check-cast v5, [B

    .line 336
    .line 337
    array-length v15, v5

    .line 338
    move-object/from16 v21, v5

    .line 339
    .line 340
    const/4 v5, 0x5

    .line 341
    if-lt v15, v5, :cond_c

    .line 342
    .line 343
    aget-byte v5, v21, v16

    .line 344
    .line 345
    const/16 v15, -0x4b

    .line 346
    .line 347
    if-ne v5, v15, :cond_c

    .line 348
    .line 349
    const/4 v5, 0x1

    .line 350
    aget-byte v15, v21, v5

    .line 351
    .line 352
    if-nez v15, :cond_c

    .line 353
    .line 354
    const/4 v15, 0x2

    .line 355
    aget-byte v15, v21, v15

    .line 356
    .line 357
    const/16 v5, -0x70

    .line 358
    .line 359
    if-ne v15, v5, :cond_c

    .line 360
    .line 361
    const/4 v5, 0x3

    .line 362
    aget-byte v5, v21, v5

    .line 363
    .line 364
    if-nez v5, :cond_c

    .line 365
    .line 366
    const/4 v5, 0x4

    .line 367
    aget-byte v5, v21, v5

    .line 368
    .line 369
    const/4 v15, 0x1

    .line 370
    if-ne v5, v15, :cond_c

    .line 371
    .line 372
    aget-boolean v5, v19, v1

    .line 373
    .line 374
    xor-int/2addr v5, v15

    .line 375
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 376
    .line 377
    .line 378
    iget v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 379
    .line 380
    add-int/2addr v5, v15

    .line 381
    iput v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 382
    .line 383
    aput-boolean v15, v19, v1

    .line 384
    .line 385
    new-instance v5, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;

    .line 386
    .line 387
    new-instance v15, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    .line 388
    .line 389
    move-object/from16 v21, v6

    .line 390
    .line 391
    const/4 v6, 0x0

    .line 392
    invoke-direct {v15, v0, v1, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;IZ)V

    .line 393
    .line 394
    .line 395
    aget-object v1, v14, v6

    .line 396
    .line 397
    invoke-direct {v5, v7, v15, v1}, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;-><init>(Landroidx/media3/exoplayer/source/SampleStream;Landroidx/media3/exoplayer/source/SampleStream;Landroidx/media3/common/Format;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-object v7, v5

    .line 404
    goto :goto_e

    .line 405
    :cond_c
    move-object/from16 v21, v6

    .line 406
    .line 407
    add-int/lit8 v1, v1, 0x1

    .line 408
    .line 409
    move-object/from16 v6, v21

    .line 410
    .line 411
    const/16 v16, 0x0

    .line 412
    .line 413
    goto :goto_c

    .line 414
    :cond_d
    :goto_d
    move-object/from16 v21, v6

    .line 415
    .line 416
    goto :goto_e

    .line 417
    :cond_e
    move/from16 p2, v1

    .line 418
    .line 419
    goto :goto_d

    .line 420
    :goto_e
    aput-object v7, v2, v9

    .line 421
    .line 422
    const/4 v15, 0x1

    .line 423
    aput-boolean v15, p4, v9

    .line 424
    .line 425
    if-nez v8, :cond_11

    .line 426
    .line 427
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 428
    .line 429
    aget-object v1, v1, p2

    .line 430
    .line 431
    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 432
    .line 433
    iget v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    .line 434
    .line 435
    add-int/2addr v5, v6

    .line 436
    if-eqz v5, :cond_f

    .line 437
    .line 438
    invoke-virtual {v1, v3, v4, v15}, Landroidx/media3/exoplayer/source/SampleQueue;->q(JZ)Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-nez v1, :cond_f

    .line 443
    .line 444
    const/4 v1, 0x1

    .line 445
    goto :goto_f

    .line 446
    :cond_f
    const/4 v1, 0x0

    .line 447
    :goto_f
    move v8, v1

    .line 448
    goto :goto_10

    .line 449
    :cond_10
    move-object/from16 v19, v5

    .line 450
    .line 451
    move-object/from16 v21, v6

    .line 452
    .line 453
    move-object/from16 v20, v7

    .line 454
    .line 455
    :cond_11
    :goto_10
    add-int/lit8 v9, v9, 0x1

    .line 456
    .line 457
    move-object/from16 v1, p1

    .line 458
    .line 459
    move-object/from16 v5, v19

    .line 460
    .line 461
    move-object/from16 v7, v20

    .line 462
    .line 463
    move-object/from16 v6, v21

    .line 464
    .line 465
    const/4 v14, 0x1

    .line 466
    const/16 v16, 0x0

    .line 467
    .line 468
    goto/16 :goto_8

    .line 469
    .line 470
    :cond_12
    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:Z

    .line 471
    .line 472
    if-nez v1, :cond_13

    .line 473
    .line 474
    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->O:Z

    .line 475
    .line 476
    if-nez v1, :cond_14

    .line 477
    .line 478
    :cond_13
    iput-boolean v11, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:Z

    .line 479
    .line 480
    :cond_14
    iget v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 481
    .line 482
    if-nez v1, :cond_17

    .line 483
    .line 484
    const/4 v15, 0x0

    .line 485
    iput-boolean v15, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->X:Z

    .line 486
    .line 487
    iput-boolean v15, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:Z

    .line 488
    .line 489
    iput-boolean v15, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:Z

    .line 490
    .line 491
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 492
    .line 493
    iget-object v2, v1, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    .line 494
    .line 495
    if-eqz v2, :cond_16

    .line 496
    .line 497
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 498
    .line 499
    array-length v5, v2

    .line 500
    const/4 v9, 0x0

    .line 501
    :goto_11
    if-ge v9, v5, :cond_15

    .line 502
    .line 503
    aget-object v6, v2, v9

    .line 504
    .line 505
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/SampleQueue;->i()V

    .line 506
    .line 507
    .line 508
    add-int/lit8 v9, v9, 0x1

    .line 509
    .line 510
    goto :goto_11

    .line 511
    :cond_15
    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->a()V

    .line 512
    .line 513
    .line 514
    goto :goto_15

    .line 515
    :cond_16
    const/4 v15, 0x0

    .line 516
    iput-boolean v15, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 517
    .line 518
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 519
    .line 520
    array-length v2, v1

    .line 521
    move v5, v15

    .line 522
    :goto_12
    if-ge v5, v2, :cond_19

    .line 523
    .line 524
    aget-object v6, v1, v5

    .line 525
    .line 526
    invoke-virtual {v6, v15}, Landroidx/media3/exoplayer/source/SampleQueue;->p(Z)V

    .line 527
    .line 528
    .line 529
    add-int/lit8 v5, v5, 0x1

    .line 530
    .line 531
    const/4 v15, 0x0

    .line 532
    goto :goto_12

    .line 533
    :cond_17
    if-eqz v8, :cond_19

    .line 534
    .line 535
    invoke-virtual {v0, v3, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->i(J)J

    .line 536
    .line 537
    .line 538
    move-result-wide v3

    .line 539
    const/4 v15, 0x0

    .line 540
    :goto_13
    array-length v1, v2

    .line 541
    if-ge v15, v1, :cond_19

    .line 542
    .line 543
    aget-object v1, v2, v15

    .line 544
    .line 545
    if-eqz v1, :cond_18

    .line 546
    .line 547
    const/16 v18, 0x1

    .line 548
    .line 549
    aput-boolean v18, p4, v15

    .line 550
    .line 551
    instance-of v5, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;

    .line 552
    .line 553
    if-eqz v5, :cond_18

    .line 554
    .line 555
    check-cast v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;

    .line 556
    .line 557
    iget-object v5, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->e:Landroid/util/LongSparseArray;

    .line 558
    .line 559
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->clear()V

    .line 560
    .line 561
    .line 562
    move-object/from16 v5, v17

    .line 563
    .line 564
    iput-object v5, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->g:[B

    .line 565
    .line 566
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    iput-wide v6, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->h:J

    .line 572
    .line 573
    const/4 v6, 0x0

    .line 574
    iput-boolean v6, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->i:Z

    .line 575
    .line 576
    iput-boolean v6, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->j:Z

    .line 577
    .line 578
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MergingMetadataSampleStream;->d:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 579
    .line 580
    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->f()V

    .line 581
    .line 582
    .line 583
    goto :goto_14

    .line 584
    :cond_18
    move-object/from16 v5, v17

    .line 585
    .line 586
    const/4 v6, 0x0

    .line 587
    :goto_14
    add-int/lit8 v15, v15, 0x1

    .line 588
    .line 589
    move-object/from16 v17, v5

    .line 590
    .line 591
    goto :goto_13

    .line 592
    :cond_19
    :goto_15
    const/4 v15, 0x1

    .line 593
    iput-boolean v15, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->O:Z

    .line 594
    .line 595
    return-wide v3
.end method

.method public final l(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p6

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 8
    .line 9
    iget-object v3, v2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 10
    .line 11
    new-instance v4, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;

    .line 12
    .line 13
    iget-wide v5, v2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->a:J

    .line 14
    .line 15
    iget-object v7, v2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    .line 16
    .line 17
    move-wide/from16 v8, p2

    .line 18
    .line 19
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    .line 20
    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    iget-object v5, v3, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    .line 25
    .line 26
    iput-object v5, v4, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->d:Landroid/net/Uri;

    .line 27
    .line 28
    iget-object v5, v3, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    .line 29
    .line 30
    iput-object v5, v4, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->e:Ljava/util/Map;

    .line 31
    .line 32
    move-wide/from16 v5, p4

    .line 33
    .line 34
    iput-wide v5, v4, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->f:J

    .line 35
    .line 36
    iget-wide v5, v3, Landroidx/media3/datasource/StatsDataSource;->b:J

    .line 37
    .line 38
    iput-wide v5, v4, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->g:J

    .line 39
    .line 40
    :cond_0
    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 41
    .line 42
    invoke-direct {v3, v4}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;)V

    .line 43
    .line 44
    .line 45
    iget-wide v4, v2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    .line 46
    .line 47
    iget-wide v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 48
    .line 49
    new-instance v8, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 50
    .line 51
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->N(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v12

    .line 55
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->N(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v14

    .line 59
    const/4 v9, 0x1

    .line 60
    const/4 v10, -0x1

    .line 61
    const/4 v11, 0x0

    .line 62
    invoke-direct/range {v8 .. v15}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;JJ)V

    .line 63
    .line 64
    .line 65
    new-instance v2, Leb;

    .line 66
    .line 67
    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 68
    .line 69
    invoke-direct {v2, v0, v3, v8, v1}, Leb;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/upstream/Loader;->b:Landroidx/media3/exoplayer/upstream/Loader$LoadTask;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w:Landroidx/media3/common/util/ConditionVariable;

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0
.end method

.method public final n()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x:Landroidx/media3/exoplayer/source/b;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final o()J
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->R:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:Z

    .line 11
    .line 12
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->V:J

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:Z

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Y:I

    .line 28
    .line 29
    if-le v0, v2, :cond_2

    .line 30
    .line 31
    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:Z

    .line 32
    .line 33
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->V:J

    .line 34
    .line 35
    return-wide v0

    .line 36
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    return-wide v0
.end method

.method public final p(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w:Landroidx/media3/common/util/ConditionVariable;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->c()Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final q()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->a:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 7
    .line 8
    return-object p0
.end method

.method public final r(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 6
    .line 7
    iget-wide v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 8
    .line 9
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v2, v2, v4

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y(Z)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide/high16 v6, -0x8000000000000000L

    .line 28
    .line 29
    cmp-long v2, v4, v6

    .line 30
    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-wide/16 v6, 0x2710

    .line 37
    .line 38
    add-long/2addr v4, v6

    .line 39
    :goto_0
    iput-wide v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 40
    .line 41
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 42
    .line 43
    iget-boolean v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    .line 44
    .line 45
    iget-object v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    .line 46
    .line 47
    invoke-virtual {v7, v4, v5, v2, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->t(JLandroidx/media3/extractor/SeekMap;Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 51
    .line 52
    new-instance v4, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;

    .line 53
    .line 54
    iget-wide v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->a:J

    .line 55
    .line 56
    iget-object v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    .line 57
    .line 58
    move-wide/from16 v8, p2

    .line 59
    .line 60
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    .line 61
    .line 62
    .line 63
    iget-object v5, v2, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    .line 64
    .line 65
    iput-object v5, v4, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->d:Landroid/net/Uri;

    .line 66
    .line 67
    iget-object v5, v2, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    .line 68
    .line 69
    iput-object v5, v4, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->e:Ljava/util/Map;

    .line 70
    .line 71
    move-wide/from16 v5, p4

    .line 72
    .line 73
    iput-wide v5, v4, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->f:J

    .line 74
    .line 75
    iget-wide v5, v2, Landroidx/media3/datasource/StatsDataSource;->b:J

    .line 76
    .line 77
    iput-wide v5, v4, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->g:J

    .line 78
    .line 79
    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 80
    .line 81
    invoke-direct {v2, v4}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;)V

    .line 82
    .line 83
    .line 84
    iget-object v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-wide v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    .line 90
    .line 91
    iget-wide v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 92
    .line 93
    new-instance v8, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 94
    .line 95
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->N(J)J

    .line 96
    .line 97
    .line 98
    move-result-wide v12

    .line 99
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->N(J)J

    .line 100
    .line 101
    .line 102
    move-result-wide v14

    .line 103
    const/4 v9, 0x1

    .line 104
    const/4 v10, -0x1

    .line 105
    const/4 v11, 0x0

    .line 106
    invoke-direct/range {v8 .. v15}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;JJ)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Lfb;

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    iget-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 113
    .line 114
    invoke-direct {v1, v5, v2, v8, v4}, Lfb;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5, v1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    .line 118
    .line 119
    .line 120
    iput-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 121
    .line 122
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final s(II)Landroidx/media3/extractor/TrackOutput;
    .locals 1

    .line 1
    new-instance p2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/extractor/TrackOutput;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final t()J
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Z:Z

    .line 5
    .line 6
    const-wide/high16 v1, -0x8000000000000000L

    .line 7
    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->H:Z

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const-wide v4, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 35
    .line 36
    array-length v0, v0

    .line 37
    move v6, v3

    .line 38
    move-wide v7, v4

    .line 39
    :goto_0
    if-ge v6, v0, :cond_4

    .line 40
    .line 41
    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 42
    .line 43
    iget-object v10, v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->b:[Z

    .line 44
    .line 45
    aget-boolean v10, v10, v6

    .line 46
    .line 47
    if-eqz v10, :cond_2

    .line 48
    .line 49
    iget-object v9, v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->c:[Z

    .line 50
    .line 51
    aget-boolean v9, v9, v6

    .line 52
    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 56
    .line 57
    aget-object v9, v9, v6

    .line 58
    .line 59
    monitor-enter v9

    .line 60
    :try_start_0
    iget-boolean v10, v9, Landroidx/media3/exoplayer/source/SampleQueue;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .line 62
    monitor-exit v9

    .line 63
    if-nez v10, :cond_2

    .line 64
    .line 65
    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 66
    .line 67
    aget-object v9, v9, v6

    .line 68
    .line 69
    monitor-enter v9

    .line 70
    :try_start_1
    iget-wide v10, v9, Landroidx/media3/exoplayer/source/SampleQueue;->w:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    monitor-exit v9

    .line 73
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw p0

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    throw p0

    .line 84
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    move-wide v7, v4

    .line 88
    :cond_4
    cmp-long v0, v7, v4

    .line 89
    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y(Z)J

    .line 93
    .line 94
    .line 95
    move-result-wide v7

    .line 96
    :cond_5
    cmp-long v0, v7, v1

    .line 97
    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->V:J

    .line 101
    .line 102
    return-wide v0

    .line 103
    :cond_6
    return-wide v7

    .line 104
    :cond_7
    :goto_2
    return-wide v1
.end method

.method public final u(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final v(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 13

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    .line 4
    .line 5
    new-instance v1, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;

    .line 6
    .line 7
    iget-wide v2, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->a:J

    .line 8
    .line 9
    iget-object v4, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    .line 10
    .line 11
    move-wide v5, p2

    .line 12
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    .line 16
    .line 17
    iput-object v2, v1, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->d:Landroid/net/Uri;

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    .line 20
    .line 21
    iput-object v2, v1, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->e:Ljava/util/Map;

    .line 22
    .line 23
    move-wide/from16 v2, p4

    .line 24
    .line 25
    iput-wide v2, v1, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->f:J

    .line 26
    .line 27
    iget-wide v2, v0, Landroidx/media3/datasource/StatsDataSource;->b:J

    .line 28
    .line 29
    iput-wide v2, v1, Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;->g:J

    .line 30
    .line 31
    new-instance v0, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 32
    .line 33
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo$Builder;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->m:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    .line 42
    .line 43
    iget-wide v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:J

    .line 44
    .line 45
    new-instance v5, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 46
    .line 47
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->N(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v9

    .line 51
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->N(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v11

    .line 55
    const/4 v6, 0x1

    .line 56
    const/4 v7, -0x1

    .line 57
    const/4 v8, 0x0

    .line 58
    invoke-direct/range {v5 .. v12}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;JJ)V

    .line 59
    .line 60
    .line 61
    new-instance p1, Lfb;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 65
    .line 66
    invoke-direct {p1, v2, v0, v5, v1}, Lfb;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    .line 70
    .line 71
    .line 72
    if-nez p6, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 75
    .line 76
    array-length v0, p1

    .line 77
    const/4 v1, 0x0

    .line 78
    move v2, v1

    .line 79
    :goto_0
    if-ge v2, v0, :cond_0

    .line 80
    .line 81
    aget-object v3, p1, v2

    .line 82
    .line 83
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->p(Z)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    iget p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    .line 90
    .line 91
    if-lez p1, :cond_1

    .line 92
    .line 93
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    return-void
.end method

.method public final w()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Landroidx/media3/extractor/SeekMap;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final x()I
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v1, v0, :cond_0

    .line 7
    .line 8
    aget-object v3, p0, v1

    .line 9
    .line 10
    iget v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    .line 11
    .line 12
    iget v3, v3, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    .line 13
    .line 14
    add-int/2addr v4, v3

    .line 15
    add-int/2addr v2, v4

    .line 16
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v2
.end method

.method public final y(Z)J
    .locals 6

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 5
    .line 6
    array-length v3, v3

    .line 7
    if-ge v2, v3, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v3, v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->c:[Z

    .line 17
    .line 18
    aget-boolean v3, v3, v2

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 23
    .line 24
    aget-object v3, v3, v2

    .line 25
    .line 26
    monitor-enter v3

    .line 27
    :try_start_0
    iget-wide v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit v3

    .line 30
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_2
    return-wide v0
.end method

.method public final z()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long p0, v0, v2

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
.end method
