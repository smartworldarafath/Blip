.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    }
.end annotation


# instance fields
.field public final i:Landroidx/media3/datasource/DataSource$Factory;

.field public final j:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

.field public final k:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final l:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final m:I

.field public final n:Z

.field public o:Z

.field public p:J

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Landroidx/media3/datasource/TransferListener;

.field public u:Landroidx/media3/common/MediaItem;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->u:Landroidx/media3/common/MediaItem;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->i:Landroidx/media3/datasource/DataSource$Factory;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->j:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 9
    .line 10
    sget-object p1, Landroidx/media3/exoplayer/drm/DrmSessionManager;->a:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->k:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 13
    .line 14
    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->l:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 15
    .line 16
    iput p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->m:I

    .line 17
    .line 18
    iput-boolean p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->n:Z

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->o:Z

    .line 22
    .line 23
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->p:J

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroidx/media3/common/MediaItem;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->u:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public final b(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->i:Landroidx/media3/datasource/DataSource$Factory;

    .line 4
    .line 5
    invoke-interface {v1}, Landroidx/media3/datasource/DataSource$Factory;->a()Landroidx/media3/datasource/DataSource;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->t:Landroidx/media3/datasource/TransferListener;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, v1}, Landroidx/media3/datasource/DataSource;->b(Landroidx/media3/datasource/TransferListener;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->c()Landroidx/media3/common/MediaItem;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v1, v1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 26
    .line 27
    iget-object v4, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    .line 28
    .line 29
    iget-object v5, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->g:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->j:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    .line 35
    .line 36
    check-cast v5, Lp;

    .line 37
    .line 38
    iget-object v5, v5, Lp;->k:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v5, Landroidx/media3/extractor/DefaultExtractorsFactory;

    .line 41
    .line 42
    move-object v6, v3

    .line 43
    new-instance v3, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    .line 44
    .line 45
    invoke-direct {v3, v5}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory;)V

    .line 46
    .line 47
    .line 48
    new-instance v5, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 49
    .line 50
    iget-object v7, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->d:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 51
    .line 52
    iget-object v7, v7, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    invoke-direct {v5, v7, v9, v0}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 56
    .line 57
    .line 58
    new-instance v7, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 59
    .line 60
    iget-object v10, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->c:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 61
    .line 62
    iget-object v10, v10, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    .line 64
    invoke-direct {v7, v10, v9, v0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 65
    .line 66
    .line 67
    iget-wide v0, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->e:J

    .line 68
    .line 69
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->D(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v12

    .line 73
    const/4 v14, 0x0

    .line 74
    move-object v1, v4

    .line 75
    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->k:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 76
    .line 77
    move-object v0, v6

    .line 78
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->l:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    .line 79
    .line 80
    iget v10, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->m:I

    .line 81
    .line 82
    iget-boolean v11, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->n:Z

    .line 83
    .line 84
    move-object v8, p0

    .line 85
    move-object/from16 v9, p2

    .line 86
    .line 87
    invoke-direct/range {v0 .. v14}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/ProgressiveMediaSource;Landroidx/media3/exoplayer/upstream/Allocator;IZJLandroidx/media3/exoplayer/util/ReleasableExecutor;)V

    .line 88
    .line 89
    .line 90
    return-object v0
.end method

.method public final declared-synchronized c()Landroidx/media3/common/MediaItem;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->u:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 5

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    .line 2
    .line 3
    iget-boolean p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:Z

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:[Landroidx/media3/exoplayer/source/SampleQueue;

    .line 9
    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    aget-object v3, p0, v2

    .line 15
    .line 16
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/SampleQueue;->i()V

    .line 17
    .line 18
    .line 19
    iget-object v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    iget-object v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 24
    .line 25
    iput-object v0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 26
    .line 27
    iput-object v0, v3, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    .line 28
    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroidx/media3/exoplayer/upstream/Loader;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/upstream/Loader;->c(Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    iput-boolean p0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->a0:Z

    .line 46
    .line 47
    return-void
.end method

.method public final n(Landroidx/media3/datasource/TransferListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->t:Landroidx/media3/datasource/TransferListener;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/source/BaseMediaSource;->g:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->k:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->s()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final q()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->k:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->p:J

    .line 4
    .line 5
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->q:Z

    .line 6
    .line 7
    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->r:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->c()Landroidx/media3/common/MediaItem;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZLandroidx/media3/common/MediaItem;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->o:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 23
    .line 24
    .line 25
    move-object v0, v1

    .line 26
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->o(Landroidx/media3/common/Timeline;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final t(JLandroidx/media3/extractor/SeekMap;Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p3}, Landroidx/media3/extractor/SeekMap;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p3}, Landroidx/media3/extractor/SeekMap;->d()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    xor-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->s:Z

    .line 19
    .line 20
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v0, p1, v0

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->p:J

    .line 30
    .line 31
    :cond_1
    invoke-interface {p3}, Landroidx/media3/extractor/SeekMap;->b()Z

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->o:Z

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->p:J

    .line 40
    .line 41
    cmp-long v0, v0, p1

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->q:Z

    .line 46
    .line 47
    if-ne v0, p3, :cond_2

    .line 48
    .line 49
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->r:Z

    .line 50
    .line 51
    if-ne v0, p4, :cond_2

    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_2
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->p:J

    .line 55
    .line 56
    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->q:Z

    .line 57
    .line 58
    iput-boolean p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->r:Z

    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->o:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->s()V

    .line 64
    .line 65
    .line 66
    return-void
.end method
