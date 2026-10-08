.class public final Landroidx/media3/exoplayer/analytics/MediaMetricsListener;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;,
        Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;
    }
.end annotation


# instance fields
.field public A:I

.field public B:Z

.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

.field public final d:Landroid/media/metrics/PlaybackSession;

.field public final e:J

.field public final f:Landroidx/media3/common/Timeline$Window;

.field public final g:Landroidx/media3/common/Timeline$Period;

.field public final h:Ljava/util/HashMap;

.field public final i:Ljava/util/HashMap;

.field public j:Ljava/lang/String;

.field public k:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public l:I

.field public m:I

.field public n:I

.field public o:Landroidx/media3/common/PlaybackException;

.field public p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

.field public q:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

.field public r:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

.field public s:Landroidx/media3/common/Format;

.field public t:Landroidx/media3/common/Format;

.field public u:Landroidx/media3/common/Format;

.field public v:Z

.field public w:I

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    .line 11
    .line 12
    invoke-static {}, Landroidx/media3/common/util/BackgroundExecutor;->a()Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->f:Landroidx/media3/common/Timeline$Window;

    .line 24
    .line 25
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    .line 26
    .line 27
    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->g:Landroidx/media3/common/Timeline$Period;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->i:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->h:Ljava/util/HashMap;

    .line 45
    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    iput-wide p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e:J

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    .line 54
    .line 55
    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->n:I

    .line 56
    .line 57
    new-instance p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    .line 58
    .line 59
    invoke-direct {p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    .line 63
    .line 64
    iput-object p0, p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->d:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/VideoSize;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->a:Landroidx/media3/common/Format;

    .line 6
    .line 7
    iget v2, v1, Landroidx/media3/common/Format;->x:I

    .line 8
    .line 9
    const/4 v3, -0x1

    .line 10
    if-ne v2, v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v2, p1, Landroidx/media3/common/VideoSize;->a:I

    .line 17
    .line 18
    iput v2, v1, Landroidx/media3/common/Format$Builder;->v:I

    .line 19
    .line 20
    iget p1, p1, Landroidx/media3/common/VideoSize;->b:I

    .line 21
    .line 22
    iput p1, v1, Landroidx/media3/common/Format$Builder;->w:I

    .line 23
    .line 24
    new-instance p1, Landroidx/media3/common/Format;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 30
    .line 31
    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {v1, p1, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;-><init>(Landroidx/media3/common/Format;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final b(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    iget-boolean v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    .line 7
    .line 8
    if-eqz v2, :cond_3

    .line 9
    .line 10
    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->A:I

    .line 11
    .line 12
    invoke-static {v0, v2}, Lcb;->o(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 16
    .line 17
    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->y:I

    .line 18
    .line 19
    invoke-static {v0, v2}, Lcb;->x(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 23
    .line 24
    iget v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->z:I

    .line 25
    .line 26
    invoke-static {v0, v2}, Lcb;->z(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->h:Ljava/util/HashMap;

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->j:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Long;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 40
    .line 41
    const-wide/16 v3, 0x0

    .line 42
    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    move-wide v5, v3

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    :goto_0
    invoke-static {v2, v5, v6}, Lcb;->p(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->i:Ljava/util/HashMap;

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->j:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/Long;

    .line 63
    .line 64
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    move-wide v5, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    :goto_1
    invoke-static {v2, v5, v6}, Lcb;->y(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    cmp-long v0, v5, v3

    .line 86
    .line 87
    if-lez v0, :cond_2

    .line 88
    .line 89
    const/4 v0, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move v0, v1

    .line 92
    :goto_2
    invoke-static {v2, v0}, Lcb;->B(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 96
    .line 97
    invoke-static {v0}, Lcb;->h(Landroid/media/metrics/PlaybackMetrics$Builder;)Landroid/media/metrics/PlaybackMetrics;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v2, Lf3;

    .line 102
    .line 103
    const/16 v3, 0xd

    .line 104
    .line 105
    invoke-direct {v2, v3, p0, v0}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    .line 109
    .line 110
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 115
    .line 116
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->j:Ljava/lang/String;

    .line 117
    .line 118
    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->A:I

    .line 119
    .line 120
    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->y:I

    .line 121
    .line 122
    iput v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->z:I

    .line 123
    .line 124
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    .line 125
    .line 126
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    .line 127
    .line 128
    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    .line 129
    .line 130
    iput-boolean v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    .line 131
    .line 132
    return-void
.end method

.method public final d(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v1, -0x1

    .line 13
    if-ne p2, v1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->g:Landroidx/media3/common/Timeline$Period;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {p1, p2, v2, v3}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 20
    .line 21
    .line 22
    iget p2, v2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 23
    .line 24
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->f:Landroidx/media3/common/Timeline$Window;

    .line 25
    .line 26
    invoke-virtual {p1, p2, v2}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v2, Landroidx/media3/common/Timeline$Window;->b:Landroidx/media3/common/MediaItem;

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 32
    .line 33
    const/4 p2, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_2
    iget-object v5, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->b:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v6, 0x3

    .line 44
    const/4 v7, 0x4

    .line 45
    if-nez p1, :cond_e

    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    const-string v8, "rtsp"

    .line 54
    .line 55
    invoke-static {v8, p1}, Lcom/google/common/base/Ascii;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-nez v8, :cond_3

    .line 60
    .line 61
    const-string v8, "rtspt"

    .line 62
    .line 63
    invoke-static {v8, p1}, Lcom/google/common/base/Ascii;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    :cond_3
    :pswitch_0
    move v3, v6

    .line 70
    goto/16 :goto_5

    .line 71
    .line 72
    :cond_4
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    goto/16 :goto_3

    .line 79
    .line 80
    :cond_5
    const/16 v8, 0x2e

    .line 81
    .line 82
    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-ltz v8, :cond_a

    .line 87
    .line 88
    add-int/2addr v8, v4

    .line 89
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    sparse-switch v8, :sswitch_data_0

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :sswitch_0
    const-string v8, "m3u8"

    .line 109
    .line 110
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-nez p1, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    move v1, v6

    .line 118
    goto :goto_1

    .line 119
    :sswitch_1
    const-string v8, "isml"

    .line 120
    .line 121
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_7

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_7
    move v1, p2

    .line 129
    goto :goto_1

    .line 130
    :sswitch_2
    const-string v8, "mpd"

    .line 131
    .line 132
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_8

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_8
    move v1, v4

    .line 140
    goto :goto_1

    .line 141
    :sswitch_3
    const-string v8, "ism"

    .line 142
    .line 143
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-nez p1, :cond_9

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_9
    move v1, v3

    .line 151
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 152
    .line 153
    .line 154
    move p1, v7

    .line 155
    goto :goto_2

    .line 156
    :pswitch_1
    move p1, p2

    .line 157
    goto :goto_2

    .line 158
    :pswitch_2
    move p1, v3

    .line 159
    goto :goto_2

    .line 160
    :pswitch_3
    move p1, v4

    .line 161
    :goto_2
    if-eq p1, v7, :cond_a

    .line 162
    .line 163
    move v3, p1

    .line 164
    goto/16 :goto_5

    .line 165
    .line 166
    :cond_a
    sget-object p1, Landroidx/media3/common/util/Util;->c:Ljava/util/regex/Pattern;

    .line 167
    .line 168
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_d

    .line 184
    .line 185
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_c

    .line 190
    .line 191
    const-string v1, "format=mpd-time-csf"

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_b

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_b
    const-string v1, "format=m3u8-aapl"

    .line 201
    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_c

    .line 207
    .line 208
    :pswitch_4
    move v3, p2

    .line 209
    goto :goto_5

    .line 210
    :cond_c
    :pswitch_5
    move v3, v4

    .line 211
    goto :goto_5

    .line 212
    :cond_d
    :goto_3
    move v3, v7

    .line 213
    goto :goto_5

    .line 214
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    sparse-switch v5, :sswitch_data_1

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :sswitch_4
    const-string v5, "application/x-rtsp"

    .line 223
    .line 224
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-nez p1, :cond_f

    .line 229
    .line 230
    goto :goto_4

    .line 231
    :cond_f
    move v1, v6

    .line 232
    goto :goto_4

    .line 233
    :sswitch_5
    const-string v5, "application/dash+xml"

    .line 234
    .line 235
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-nez p1, :cond_10

    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_10
    move v1, p2

    .line 243
    goto :goto_4

    .line 244
    :sswitch_6
    const-string v5, "application/vnd.ms-sstr+xml"

    .line 245
    .line 246
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    if-nez p1, :cond_11

    .line 251
    .line 252
    goto :goto_4

    .line 253
    :cond_11
    move v1, v4

    .line 254
    goto :goto_4

    .line 255
    :sswitch_7
    const-string v5, "application/x-mpegURL"

    .line 256
    .line 257
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-nez p1, :cond_12

    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_12
    move v1, v3

    .line 265
    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :goto_5
    :pswitch_6
    if-eqz v3, :cond_15

    .line 270
    .line 271
    if-eq v3, v4, :cond_14

    .line 272
    .line 273
    if-eq v3, p2, :cond_13

    .line 274
    .line 275
    move v3, v4

    .line 276
    goto :goto_6

    .line 277
    :cond_13
    move v3, v7

    .line 278
    goto :goto_6

    .line 279
    :cond_14
    const/4 v3, 0x5

    .line 280
    goto :goto_6

    .line 281
    :cond_15
    move v3, v6

    .line 282
    :goto_6
    invoke-static {v0, v3}, Lcb;->C(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 283
    .line 284
    .line 285
    iget-wide v5, v2, Landroidx/media3/common/Timeline$Window;->k:J

    .line 286
    .line 287
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    cmp-long p1, v5, v7

    .line 293
    .line 294
    if-eqz p1, :cond_16

    .line 295
    .line 296
    iget-boolean p1, v2, Landroidx/media3/common/Timeline$Window;->i:Z

    .line 297
    .line 298
    if-nez p1, :cond_16

    .line 299
    .line 300
    iget-boolean p1, v2, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 301
    .line 302
    if-nez p1, :cond_16

    .line 303
    .line 304
    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->a()Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-nez p1, :cond_16

    .line 309
    .line 310
    iget-wide v5, v2, Landroidx/media3/common/Timeline$Window;->k:J

    .line 311
    .line 312
    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->N(J)J

    .line 313
    .line 314
    .line 315
    move-result-wide v5

    .line 316
    invoke-static {v0, v5, v6}, Lcb;->A(Landroid/media/metrics/PlaybackMetrics$Builder;J)V

    .line 317
    .line 318
    .line 319
    :cond_16
    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Window;->a()Z

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    if-eqz p1, :cond_17

    .line 324
    .line 325
    goto :goto_7

    .line 326
    :cond_17
    move p2, v4

    .line 327
    :goto_7
    invoke-static {v0, p2}, Lcb;->D(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 328
    .line 329
    .line 330
    iput-boolean v4, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    .line 331
    .line 332
    return-void

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x19883 -> :sswitch_3
        0x1a721 -> :sswitch_2
        0x317849 -> :sswitch_1
        0x325a49 -> :sswitch_0
    .end sparse-switch

    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    :sswitch_data_1
    .sparse-switch
        -0x3a5c4caa -> :sswitch_7
        -0x957ced0 -> :sswitch_6
        0x3d3887d -> :sswitch_5
        0x44d481f3 -> :sswitch_4
    .end sparse-switch

    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_2

    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->j:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c()V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->h:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->i:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final f(IJLandroidx/media3/common/Format;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcb;->m(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-wide v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e:J

    .line 6
    .line 7
    sub-long/2addr p2, v0

    .line 8
    invoke-static {p1, p2, p3}, Lcb;->n(Landroid/media/metrics/TrackChangeEvent$Builder;J)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 p2, 0x1

    .line 13
    if-eqz p4, :cond_a

    .line 14
    .line 15
    invoke-static {p1}, Ldb;->A(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    .line 16
    .line 17
    .line 18
    const/4 p3, 0x2

    .line 19
    invoke-static {p1, p3}, Lo6;->s(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p4, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-static {p1, v0}, Lo6;->t(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p4, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-static {p1, v0}, Lo6;->z(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p4, Landroidx/media3/common/Format;->l:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-static {p1, v0}, Lo6;->B(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget v0, p4, Landroidx/media3/common/Format;->k:I

    .line 44
    .line 45
    const/4 v1, -0x1

    .line 46
    if-eq v0, v1, :cond_3

    .line 47
    .line 48
    invoke-static {p1, v0}, Lo6;->y(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget v0, p4, Landroidx/media3/common/Format;->w:I

    .line 52
    .line 53
    if-eq v0, v1, :cond_4

    .line 54
    .line 55
    invoke-static {p1, v0}, Lo6;->A(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget v0, p4, Landroidx/media3/common/Format;->x:I

    .line 59
    .line 60
    if-eq v0, v1, :cond_5

    .line 61
    .line 62
    invoke-static {p1, v0}, Lo6;->C(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 63
    .line 64
    .line 65
    :cond_5
    iget v0, p4, Landroidx/media3/common/Format;->J:I

    .line 66
    .line 67
    if-eq v0, v1, :cond_6

    .line 68
    .line 69
    invoke-static {p1, v0}, Lo6;->D(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 70
    .line 71
    .line 72
    :cond_6
    iget v0, p4, Landroidx/media3/common/Format;->L:I

    .line 73
    .line 74
    if-eq v0, v1, :cond_7

    .line 75
    .line 76
    invoke-static {p1, v0}, Lcb;->v(Landroid/media/metrics/TrackChangeEvent$Builder;I)V

    .line 77
    .line 78
    .line 79
    :cond_7
    iget-object v0, p4, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    .line 80
    .line 81
    if-eqz v0, :cond_9

    .line 82
    .line 83
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 84
    .line 85
    const-string v2, "-"

    .line 86
    .line 87
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x0

    .line 92
    aget-object v1, v0, v1

    .line 93
    .line 94
    array-length v2, v0

    .line 95
    if-lt v2, p3, :cond_8

    .line 96
    .line 97
    aget-object p3, v0, p2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_8
    const/4 p3, 0x0

    .line 101
    :goto_0
    invoke-static {v1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v0, Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {p1, v0}, Lcb;->w(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 113
    .line 114
    if-eqz p3, :cond_9

    .line 115
    .line 116
    check-cast p3, Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p1, p3}, Ldb;->p(Landroid/media/metrics/TrackChangeEvent$Builder;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_9
    iget p3, p4, Landroidx/media3/common/Format;->B:F

    .line 122
    .line 123
    const/high16 p4, -0x40800000    # -1.0f

    .line 124
    .line 125
    cmpl-float p4, p3, p4

    .line 126
    .line 127
    if-eqz p4, :cond_b

    .line 128
    .line 129
    invoke-static {p1, p3}, Ldb;->o(Landroid/media/metrics/TrackChangeEvent$Builder;F)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_a
    invoke-static {p1}, Ldb;->n(Landroid/media/metrics/TrackChangeEvent$Builder;)V

    .line 134
    .line 135
    .line 136
    :cond_b
    :goto_1
    iput-boolean p2, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    .line 137
    .line 138
    invoke-static {p1}, Ldb;->f(Landroid/media/metrics/TrackChangeEvent$Builder;)Landroid/media/metrics/TrackChangeEvent;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance p2, Lf3;

    .line 143
    .line 144
    const/16 p3, 0xa

    .line 145
    .line 146
    invoke-direct {p2, p3, p0, p1}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    .line 150
    .line 151
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public final g(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->y:I

    .line 2
    .line 3
    iget v1, p1, Landroidx/media3/exoplayer/DecoderCounters;->g:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->y:I

    .line 7
    .line 8
    iget v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->z:I

    .line 9
    .line 10
    iget p1, p1, Landroidx/media3/exoplayer/DecoderCounters;->e:I

    .line 11
    .line 12
    add-int/2addr v0, p1

    .line 13
    iput v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->z:I

    .line 14
    .line 15
    return-void
.end method

.method public final h(Landroidx/media3/common/PlaybackException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->o:Landroidx/media3/common/PlaybackException;

    .line 2
    .line 3
    return-void
.end method

.method public final i(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->v:Z

    .line 5
    .line 6
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->l:I

    .line 7
    .line 8
    return-void
.end method

.method public final k(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 4

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 7
    .line 8
    iget-object v2, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->c:Landroidx/media3/common/Format;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->b:Landroidx/media3/common/Timeline;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    .line 19
    .line 20
    invoke-virtual {v3, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v1, v2, p1}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;-><init>(Landroidx/media3/common/Format;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->b:I

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    if-eq p1, p2, :cond_2

    .line 33
    .line 34
    const/4 p2, 0x2

    .line 35
    if-eq p1, p2, :cond_3

    .line 36
    .line 37
    const/4 p2, 0x3

    .line 38
    if-eq p1, p2, :cond_1

    .line 39
    .line 40
    :goto_0
    return-void

    .line 41
    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->q:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 48
    .line 49
    return-void
.end method

.method public final l(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a:Landroidx/media3/common/FlagSet;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2f

    .line 16
    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a:Landroidx/media3/common/FlagSet;

    .line 20
    .line 21
    iget-object v4, v4, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/16 v5, 0xb

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    if-ge v3, v4, :cond_c

    .line 31
    .line 32
    iget-object v4, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a:Landroidx/media3/common/FlagSet;

    .line 33
    .line 34
    iget-object v4, v4, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-static {v3, v7}, Lcom/google/common/base/Preconditions;->h(II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    iget-object v7, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->b:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    .line 59
    .line 60
    if-nez v4, :cond_5

    .line 61
    .line 62
    monitor-enter v8

    .line 63
    :try_start_0
    iget-object v4, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->d:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v4, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e:Landroidx/media3/common/Timeline;

    .line 69
    .line 70
    iget-object v5, v7, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->b:Landroidx/media3/common/Timeline;

    .line 71
    .line 72
    iput-object v5, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e:Landroidx/media3/common/Timeline;

    .line 73
    .line 74
    iget-object v5, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c:Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_4

    .line 89
    .line 90
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 95
    .line 96
    iget-object v9, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e:Landroidx/media3/common/Timeline;

    .line 97
    .line 98
    invoke-virtual {v6, v4, v9}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->b(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Z

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    if-eqz v9, :cond_2

    .line 103
    .line 104
    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    .line 105
    .line 106
    .line 107
    move-result v9

    .line 108
    if-eqz v9, :cond_1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto :goto_3

    .line 113
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 114
    .line 115
    .line 116
    iget-object v9, v6, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v10, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->f:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-eqz v9, :cond_3

    .line 125
    .line 126
    invoke-virtual {v8, v6}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->a(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-boolean v9, v6, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->e:Z

    .line 130
    .line 131
    if-eqz v9, :cond_1

    .line 132
    .line 133
    iget-object v9, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->d:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 134
    .line 135
    iget-object v6, v6, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v9, v7, v6}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {v8, v7}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->d(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    .line 144
    monitor-exit v8

    .line 145
    goto :goto_8

    .line 146
    :goto_3
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    throw v0

    .line 148
    :cond_5
    if-ne v4, v5, :cond_b

    .line 149
    .line 150
    iget v4, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->l:I

    .line 151
    .line 152
    monitor-enter v8

    .line 153
    :try_start_2
    iget-object v5, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->d:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    if-nez v4, :cond_6

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_6
    move v6, v2

    .line 162
    :goto_4
    iget-object v4, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c:Ljava/util/HashMap;

    .line 163
    .line 164
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    if-eqz v5, :cond_a

    .line 177
    .line 178
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    check-cast v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 183
    .line 184
    invoke-virtual {v5, v7}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    if-eqz v9, :cond_7

    .line 189
    .line 190
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 191
    .line 192
    .line 193
    iget-object v9, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v10, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->f:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-eqz v9, :cond_8

    .line 202
    .line 203
    invoke-virtual {v8, v5}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->a(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 204
    .line 205
    .line 206
    goto :goto_6

    .line 207
    :catchall_1
    move-exception v0

    .line 208
    goto :goto_7

    .line 209
    :cond_8
    :goto_6
    iget-boolean v10, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->e:Z

    .line 210
    .line 211
    if-eqz v10, :cond_7

    .line 212
    .line 213
    if-eqz v6, :cond_9

    .line 214
    .line 215
    if-eqz v9, :cond_9

    .line 216
    .line 217
    iget-boolean v9, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->f:Z

    .line 218
    .line 219
    :cond_9
    iget-object v9, v8, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->d:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 220
    .line 221
    iget-object v5, v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v9, v7, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_a
    invoke-virtual {v8, v7}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->d(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    .line 229
    .line 230
    monitor-exit v8

    .line 231
    goto :goto_8

    .line 232
    :goto_7
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 233
    throw v0

    .line 234
    :cond_b
    invoke-virtual {v8, v7}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->e(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 235
    .line 236
    .line 237
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 242
    .line 243
    .line 244
    move-result-wide v3

    .line 245
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    .line 246
    .line 247
    .line 248
    move-result v7

    .line 249
    if-eqz v7, :cond_d

    .line 250
    .line 251
    iget-object v7, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->b:Landroid/util/SparseArray;

    .line 252
    .line 253
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    check-cast v7, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 258
    .line 259
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 263
    .line 264
    if-eqz v8, :cond_d

    .line 265
    .line 266
    iget-object v8, v7, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->b:Landroidx/media3/common/Timeline;

    .line 267
    .line 268
    iget-object v7, v7, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 269
    .line 270
    invoke-virtual {v0, v8, v7}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 271
    .line 272
    .line 273
    :cond_d
    const/4 v7, 0x2

    .line 274
    invoke-virtual {v1, v7}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    .line 275
    .line 276
    .line 277
    move-result v8

    .line 278
    if-eqz v8, :cond_15

    .line 279
    .line 280
    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 281
    .line 282
    if-eqz v8, :cond_15

    .line 283
    .line 284
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->z()Landroidx/media3/common/Tracks;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    iget-object v8, v8, Landroidx/media3/common/Tracks;->a:Lcom/google/common/collect/ImmutableList;

    .line 289
    .line 290
    invoke-virtual {v8, v2}, Lcom/google/common/collect/ImmutableList;->p(I)Lcom/google/common/collect/UnmodifiableListIterator;

    .line 291
    .line 292
    .line 293
    move-result-object v8

    .line 294
    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v12

    .line 298
    if-eqz v12, :cond_10

    .line 299
    .line 300
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    check-cast v12, Landroidx/media3/common/Tracks$Group;

    .line 305
    .line 306
    move v13, v2

    .line 307
    :goto_9
    iget v14, v12, Landroidx/media3/common/Tracks$Group;->a:I

    .line 308
    .line 309
    if-ge v13, v14, :cond_e

    .line 310
    .line 311
    iget-object v14, v12, Landroidx/media3/common/Tracks$Group;->e:[Z

    .line 312
    .line 313
    aget-boolean v14, v14, v13

    .line 314
    .line 315
    if-eqz v14, :cond_f

    .line 316
    .line 317
    iget-object v14, v12, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    .line 318
    .line 319
    iget-object v14, v14, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    .line 320
    .line 321
    aget-object v14, v14, v13

    .line 322
    .line 323
    iget-object v14, v14, Landroidx/media3/common/Format;->t:Landroidx/media3/common/DrmInitData;

    .line 324
    .line 325
    if-eqz v14, :cond_f

    .line 326
    .line 327
    goto :goto_a

    .line 328
    :cond_f
    add-int/lit8 v13, v13, 0x1

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_10
    const/4 v14, 0x0

    .line 332
    :goto_a
    if-eqz v14, :cond_15

    .line 333
    .line 334
    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->k:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 335
    .line 336
    invoke-static {v8}, Lo6;->l(Ljava/lang/Object;)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 337
    .line 338
    .line 339
    move-result-object v8

    .line 340
    move v12, v2

    .line 341
    :goto_b
    iget v13, v14, Landroidx/media3/common/DrmInitData;->m:I

    .line 342
    .line 343
    if-ge v12, v13, :cond_14

    .line 344
    .line 345
    iget-object v13, v14, Landroidx/media3/common/DrmInitData;->j:[Landroidx/media3/common/DrmInitData$SchemeData;

    .line 346
    .line 347
    aget-object v13, v13, v12

    .line 348
    .line 349
    iget-object v13, v13, Landroidx/media3/common/DrmInitData$SchemeData;->k:Ljava/util/UUID;

    .line 350
    .line 351
    sget-object v15, Landroidx/media3/common/C;->d:Ljava/util/UUID;

    .line 352
    .line 353
    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v15

    .line 357
    if-eqz v15, :cond_11

    .line 358
    .line 359
    const/4 v12, 0x3

    .line 360
    goto :goto_c

    .line 361
    :cond_11
    sget-object v15, Landroidx/media3/common/C;->e:Ljava/util/UUID;

    .line 362
    .line 363
    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v15

    .line 367
    if-eqz v15, :cond_12

    .line 368
    .line 369
    move v12, v7

    .line 370
    goto :goto_c

    .line 371
    :cond_12
    sget-object v15, Landroidx/media3/common/C;->c:Ljava/util/UUID;

    .line 372
    .line 373
    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v13

    .line 377
    if-eqz v13, :cond_13

    .line 378
    .line 379
    const/4 v12, 0x6

    .line 380
    goto :goto_c

    .line 381
    :cond_13
    add-int/lit8 v12, v12, 0x1

    .line 382
    .line 383
    goto :goto_b

    .line 384
    :cond_14
    move v12, v6

    .line 385
    :goto_c
    invoke-static {v8, v12}, Lo6;->r(Landroid/media/metrics/PlaybackMetrics$Builder;I)V

    .line 386
    .line 387
    .line 388
    :cond_15
    const/16 v8, 0x3f3

    .line 389
    .line 390
    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    .line 391
    .line 392
    .line 393
    move-result v8

    .line 394
    if-eqz v8, :cond_16

    .line 395
    .line 396
    iget v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->A:I

    .line 397
    .line 398
    add-int/2addr v8, v6

    .line 399
    iput v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->A:I

    .line 400
    .line 401
    :cond_16
    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->o:Landroidx/media3/common/PlaybackException;

    .line 402
    .line 403
    const/4 v12, 0x5

    .line 404
    const/4 v13, 0x4

    .line 405
    if-nez v8, :cond_17

    .line 406
    .line 407
    move v5, v7

    .line 408
    const/16 v16, 0x8

    .line 409
    .line 410
    const/16 v17, 0x7

    .line 411
    .line 412
    const/16 v18, 0x6

    .line 413
    .line 414
    const/16 v21, 0x9

    .line 415
    .line 416
    move v7, v6

    .line 417
    const/16 v6, 0xd

    .line 418
    .line 419
    goto/16 :goto_1b

    .line 420
    .line 421
    :cond_17
    iget v14, v8, Landroidx/media3/common/PlaybackException;->j:I

    .line 422
    .line 423
    iget-object v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->a:Landroid/content/Context;

    .line 424
    .line 425
    iget v15, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->w:I

    .line 426
    .line 427
    if-ne v15, v13, :cond_18

    .line 428
    .line 429
    move v15, v6

    .line 430
    goto :goto_d

    .line 431
    :cond_18
    move v15, v2

    .line 432
    :goto_d
    const/16 v13, 0x3e9

    .line 433
    .line 434
    if-ne v14, v13, :cond_19

    .line 435
    .line 436
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 437
    .line 438
    const/16 v13, 0x14

    .line 439
    .line 440
    invoke-direct {v7, v13, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 441
    .line 442
    .line 443
    :goto_e
    const/16 v6, 0xd

    .line 444
    .line 445
    const/16 v16, 0x8

    .line 446
    .line 447
    const/16 v17, 0x7

    .line 448
    .line 449
    const/16 v18, 0x6

    .line 450
    .line 451
    const/16 v21, 0x9

    .line 452
    .line 453
    goto/16 :goto_1a

    .line 454
    .line 455
    :cond_19
    instance-of v13, v8, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 456
    .line 457
    if-eqz v13, :cond_1b

    .line 458
    .line 459
    move-object v13, v8

    .line 460
    check-cast v13, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 461
    .line 462
    iget v5, v13, Landroidx/media3/exoplayer/ExoPlaybackException;->l:I

    .line 463
    .line 464
    if-ne v5, v6, :cond_1a

    .line 465
    .line 466
    move v5, v6

    .line 467
    goto :goto_f

    .line 468
    :cond_1a
    move v5, v2

    .line 469
    :goto_f
    iget v13, v13, Landroidx/media3/exoplayer/ExoPlaybackException;->p:I

    .line 470
    .line 471
    goto :goto_10

    .line 472
    :cond_1b
    move v5, v2

    .line 473
    move v13, v5

    .line 474
    :goto_10
    invoke-virtual {v8}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 475
    .line 476
    .line 477
    move-result-object v10

    .line 478
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 479
    .line 480
    .line 481
    instance-of v11, v10, Ljava/io/IOException;

    .line 482
    .line 483
    const/16 v19, 0x19

    .line 484
    .line 485
    const/16 v20, 0x1a

    .line 486
    .line 487
    const/16 v9, 0x1b

    .line 488
    .line 489
    const/16 v6, 0x17

    .line 490
    .line 491
    if-eqz v11, :cond_30

    .line 492
    .line 493
    instance-of v5, v10, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 494
    .line 495
    if-eqz v5, :cond_1c

    .line 496
    .line 497
    check-cast v10, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    .line 498
    .line 499
    iget v5, v10, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->l:I

    .line 500
    .line 501
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 502
    .line 503
    invoke-direct {v7, v12, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 504
    .line 505
    .line 506
    goto :goto_e

    .line 507
    :cond_1c
    instance-of v5, v10, Landroidx/media3/datasource/HttpDataSource$InvalidContentTypeException;

    .line 508
    .line 509
    if-nez v5, :cond_1d

    .line 510
    .line 511
    instance-of v5, v10, Landroidx/media3/common/ParserException;

    .line 512
    .line 513
    if-eqz v5, :cond_1e

    .line 514
    .line 515
    :cond_1d
    const/16 v5, 0x8

    .line 516
    .line 517
    const/16 v6, 0x9

    .line 518
    .line 519
    const/4 v9, 0x6

    .line 520
    const/4 v11, 0x7

    .line 521
    goto/16 :goto_17

    .line 522
    .line 523
    :cond_1e
    instance-of v5, v10, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 524
    .line 525
    if-nez v5, :cond_1f

    .line 526
    .line 527
    instance-of v11, v10, Landroidx/media3/datasource/UdpDataSource$UdpDataSourceException;

    .line 528
    .line 529
    if-eqz v11, :cond_20

    .line 530
    .line 531
    :cond_1f
    const/16 v6, 0x9

    .line 532
    .line 533
    goto/16 :goto_13

    .line 534
    .line 535
    :cond_20
    const/16 v5, 0x3ea

    .line 536
    .line 537
    if-ne v14, v5, :cond_21

    .line 538
    .line 539
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 540
    .line 541
    const/16 v5, 0x15

    .line 542
    .line 543
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 544
    .line 545
    .line 546
    goto :goto_e

    .line 547
    :cond_21
    instance-of v5, v10, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 548
    .line 549
    if-eqz v5, :cond_28

    .line 550
    .line 551
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    instance-of v7, v5, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 559
    .line 560
    if-eqz v7, :cond_22

    .line 561
    .line 562
    check-cast v5, Landroid/media/MediaDrm$MediaDrmStateException;

    .line 563
    .line 564
    invoke-virtual {v5}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    invoke-static {v5}, Landroidx/media3/common/util/Util;->q(Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    invoke-static {v5}, Landroidx/media3/common/util/Util;->p(I)I

    .line 573
    .line 574
    .line 575
    move-result v6

    .line 576
    packed-switch v6, :pswitch_data_0

    .line 577
    .line 578
    .line 579
    goto :goto_11

    .line 580
    :pswitch_0
    move/from16 v9, v20

    .line 581
    .line 582
    goto :goto_11

    .line 583
    :pswitch_1
    move/from16 v9, v19

    .line 584
    .line 585
    goto :goto_11

    .line 586
    :pswitch_2
    const/16 v9, 0x1c

    .line 587
    .line 588
    goto :goto_11

    .line 589
    :pswitch_3
    const/16 v9, 0x18

    .line 590
    .line 591
    :goto_11
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 592
    .line 593
    invoke-direct {v7, v9, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 594
    .line 595
    .line 596
    goto/16 :goto_e

    .line 597
    .line 598
    :cond_22
    instance-of v7, v5, Landroid/media/MediaDrmResetException;

    .line 599
    .line 600
    if-eqz v7, :cond_23

    .line 601
    .line 602
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 603
    .line 604
    invoke-direct {v7, v9, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_e

    .line 608
    .line 609
    :cond_23
    instance-of v7, v5, Landroid/media/NotProvisionedException;

    .line 610
    .line 611
    if-eqz v7, :cond_24

    .line 612
    .line 613
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 614
    .line 615
    const/16 v11, 0x18

    .line 616
    .line 617
    invoke-direct {v7, v11, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 618
    .line 619
    .line 620
    goto/16 :goto_e

    .line 621
    .line 622
    :cond_24
    instance-of v7, v5, Landroid/media/DeniedByServerException;

    .line 623
    .line 624
    if-eqz v7, :cond_25

    .line 625
    .line 626
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 627
    .line 628
    const/16 v5, 0x1d

    .line 629
    .line 630
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 631
    .line 632
    .line 633
    goto/16 :goto_e

    .line 634
    .line 635
    :cond_25
    instance-of v7, v5, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    .line 636
    .line 637
    if-eqz v7, :cond_26

    .line 638
    .line 639
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 640
    .line 641
    invoke-direct {v7, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_e

    .line 645
    .line 646
    :cond_26
    instance-of v5, v5, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    .line 647
    .line 648
    if-eqz v5, :cond_27

    .line 649
    .line 650
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 651
    .line 652
    const/16 v14, 0x1c

    .line 653
    .line 654
    invoke-direct {v7, v14, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 655
    .line 656
    .line 657
    goto/16 :goto_e

    .line 658
    .line 659
    :cond_27
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 660
    .line 661
    const/16 v5, 0x1e

    .line 662
    .line 663
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 664
    .line 665
    .line 666
    goto/16 :goto_e

    .line 667
    .line 668
    :cond_28
    instance-of v5, v10, Landroidx/media3/datasource/FileDataSource$FileDataSourceException;

    .line 669
    .line 670
    if-eqz v5, :cond_2a

    .line 671
    .line 672
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 673
    .line 674
    .line 675
    move-result-object v5

    .line 676
    instance-of v5, v5, Ljava/io/FileNotFoundException;

    .line 677
    .line 678
    if-eqz v5, :cond_2a

    .line 679
    .line 680
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 681
    .line 682
    .line 683
    move-result-object v5

    .line 684
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 688
    .line 689
    .line 690
    move-result-object v5

    .line 691
    instance-of v6, v5, Landroid/system/ErrnoException;

    .line 692
    .line 693
    if-eqz v6, :cond_29

    .line 694
    .line 695
    check-cast v5, Landroid/system/ErrnoException;

    .line 696
    .line 697
    iget v5, v5, Landroid/system/ErrnoException;->errno:I

    .line 698
    .line 699
    sget v6, Landroid/system/OsConstants;->EACCES:I

    .line 700
    .line 701
    if-ne v5, v6, :cond_29

    .line 702
    .line 703
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 704
    .line 705
    const/16 v5, 0x20

    .line 706
    .line 707
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 708
    .line 709
    .line 710
    goto/16 :goto_e

    .line 711
    .line 712
    :cond_29
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 713
    .line 714
    const/16 v5, 0x1f

    .line 715
    .line 716
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 717
    .line 718
    .line 719
    goto/16 :goto_e

    .line 720
    .line 721
    :cond_2a
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 722
    .line 723
    const/16 v6, 0x9

    .line 724
    .line 725
    invoke-direct {v7, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 726
    .line 727
    .line 728
    :goto_12
    move/from16 v21, v6

    .line 729
    .line 730
    const/16 v6, 0xd

    .line 731
    .line 732
    const/16 v16, 0x8

    .line 733
    .line 734
    const/16 v17, 0x7

    .line 735
    .line 736
    const/16 v18, 0x6

    .line 737
    .line 738
    goto/16 :goto_1a

    .line 739
    .line 740
    :goto_13
    invoke-static {v7}, Landroidx/media3/common/util/NetworkTypeObserver;->a(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;

    .line 741
    .line 742
    .line 743
    move-result-object v7

    .line 744
    invoke-virtual {v7}, Landroidx/media3/common/util/NetworkTypeObserver;->b()I

    .line 745
    .line 746
    .line 747
    move-result v7

    .line 748
    const/4 v9, 0x1

    .line 749
    if-ne v7, v9, :cond_2b

    .line 750
    .line 751
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 752
    .line 753
    const/4 v5, 0x3

    .line 754
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 755
    .line 756
    .line 757
    goto :goto_12

    .line 758
    :cond_2b
    invoke-virtual {v10}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 759
    .line 760
    .line 761
    move-result-object v7

    .line 762
    instance-of v9, v7, Ljava/net/UnknownHostException;

    .line 763
    .line 764
    if-eqz v9, :cond_2c

    .line 765
    .line 766
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 767
    .line 768
    const/4 v9, 0x6

    .line 769
    invoke-direct {v7, v9, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 770
    .line 771
    .line 772
    move/from16 v21, v6

    .line 773
    .line 774
    move/from16 v18, v9

    .line 775
    .line 776
    const/16 v6, 0xd

    .line 777
    .line 778
    const/16 v16, 0x8

    .line 779
    .line 780
    const/16 v17, 0x7

    .line 781
    .line 782
    goto/16 :goto_1a

    .line 783
    .line 784
    :cond_2c
    const/4 v9, 0x6

    .line 785
    instance-of v7, v7, Ljava/net/SocketTimeoutException;

    .line 786
    .line 787
    if-eqz v7, :cond_2d

    .line 788
    .line 789
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 790
    .line 791
    const/4 v11, 0x7

    .line 792
    invoke-direct {v7, v11, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 793
    .line 794
    .line 795
    :goto_14
    move/from16 v21, v6

    .line 796
    .line 797
    move/from16 v18, v9

    .line 798
    .line 799
    move/from16 v17, v11

    .line 800
    .line 801
    const/16 v6, 0xd

    .line 802
    .line 803
    const/16 v16, 0x8

    .line 804
    .line 805
    goto/16 :goto_1a

    .line 806
    .line 807
    :cond_2d
    const/4 v11, 0x7

    .line 808
    if-eqz v5, :cond_2e

    .line 809
    .line 810
    check-cast v10, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    .line 811
    .line 812
    iget v5, v10, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->k:I

    .line 813
    .line 814
    const/4 v7, 0x1

    .line 815
    if-ne v5, v7, :cond_2e

    .line 816
    .line 817
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 818
    .line 819
    const/4 v5, 0x4

    .line 820
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 821
    .line 822
    .line 823
    goto :goto_14

    .line 824
    :cond_2e
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 825
    .line 826
    const/16 v5, 0x8

    .line 827
    .line 828
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 829
    .line 830
    .line 831
    :goto_15
    move/from16 v16, v5

    .line 832
    .line 833
    move/from16 v21, v6

    .line 834
    .line 835
    move/from16 v18, v9

    .line 836
    .line 837
    move/from16 v17, v11

    .line 838
    .line 839
    :goto_16
    const/16 v6, 0xd

    .line 840
    .line 841
    goto/16 :goto_1a

    .line 842
    .line 843
    :goto_17
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 844
    .line 845
    if-eqz v15, :cond_2f

    .line 846
    .line 847
    const/16 v10, 0xa

    .line 848
    .line 849
    goto :goto_18

    .line 850
    :cond_2f
    const/16 v10, 0xb

    .line 851
    .line 852
    :goto_18
    invoke-direct {v7, v10, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 853
    .line 854
    .line 855
    goto :goto_15

    .line 856
    :cond_30
    const/16 v11, 0x18

    .line 857
    .line 858
    const/16 v14, 0x1c

    .line 859
    .line 860
    const/16 v16, 0x8

    .line 861
    .line 862
    const/16 v17, 0x7

    .line 863
    .line 864
    const/16 v18, 0x6

    .line 865
    .line 866
    const/16 v21, 0x9

    .line 867
    .line 868
    if-eqz v5, :cond_32

    .line 869
    .line 870
    if-eqz v13, :cond_31

    .line 871
    .line 872
    const/4 v7, 0x1

    .line 873
    if-ne v13, v7, :cond_32

    .line 874
    .line 875
    :cond_31
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 876
    .line 877
    const/16 v5, 0x23

    .line 878
    .line 879
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 880
    .line 881
    .line 882
    goto :goto_16

    .line 883
    :cond_32
    if-eqz v5, :cond_33

    .line 884
    .line 885
    const/4 v7, 0x3

    .line 886
    if-ne v13, v7, :cond_33

    .line 887
    .line 888
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 889
    .line 890
    const/16 v5, 0xf

    .line 891
    .line 892
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 893
    .line 894
    .line 895
    goto :goto_16

    .line 896
    :cond_33
    if-eqz v5, :cond_34

    .line 897
    .line 898
    const/4 v5, 0x2

    .line 899
    if-ne v13, v5, :cond_34

    .line 900
    .line 901
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 902
    .line 903
    invoke-direct {v7, v6, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 904
    .line 905
    .line 906
    goto :goto_16

    .line 907
    :cond_34
    instance-of v5, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 908
    .line 909
    if-eqz v5, :cond_35

    .line 910
    .line 911
    check-cast v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 912
    .line 913
    iget-object v5, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->m:Ljava/lang/String;

    .line 914
    .line 915
    invoke-static {v5}, Landroidx/media3/common/util/Util;->q(Ljava/lang/String;)I

    .line 916
    .line 917
    .line 918
    move-result v5

    .line 919
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 920
    .line 921
    const/16 v6, 0xd

    .line 922
    .line 923
    invoke-direct {v7, v6, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 924
    .line 925
    .line 926
    goto :goto_1a

    .line 927
    :cond_35
    const/16 v6, 0xd

    .line 928
    .line 929
    instance-of v5, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    .line 930
    .line 931
    if-eqz v5, :cond_36

    .line 932
    .line 933
    check-cast v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    .line 934
    .line 935
    iget v5, v10, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->j:I

    .line 936
    .line 937
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 938
    .line 939
    const/16 v13, 0xe

    .line 940
    .line 941
    invoke-direct {v7, v13, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 942
    .line 943
    .line 944
    goto :goto_1a

    .line 945
    :cond_36
    const/16 v13, 0xe

    .line 946
    .line 947
    instance-of v5, v10, Ljava/lang/OutOfMemoryError;

    .line 948
    .line 949
    if-eqz v5, :cond_37

    .line 950
    .line 951
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 952
    .line 953
    invoke-direct {v7, v13, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 954
    .line 955
    .line 956
    goto :goto_1a

    .line 957
    :cond_37
    instance-of v5, v10, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    .line 958
    .line 959
    if-eqz v5, :cond_38

    .line 960
    .line 961
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 962
    .line 963
    const/16 v5, 0x11

    .line 964
    .line 965
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 966
    .line 967
    .line 968
    goto :goto_1a

    .line 969
    :cond_38
    instance-of v5, v10, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    .line 970
    .line 971
    if-eqz v5, :cond_39

    .line 972
    .line 973
    check-cast v10, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    .line 974
    .line 975
    iget v5, v10, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;->j:I

    .line 976
    .line 977
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 978
    .line 979
    const/16 v9, 0x12

    .line 980
    .line 981
    invoke-direct {v7, v9, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 982
    .line 983
    .line 984
    goto :goto_1a

    .line 985
    :cond_39
    instance-of v5, v10, Landroid/media/MediaCodec$CryptoException;

    .line 986
    .line 987
    if-eqz v5, :cond_3a

    .line 988
    .line 989
    check-cast v10, Landroid/media/MediaCodec$CryptoException;

    .line 990
    .line 991
    invoke-virtual {v10}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    .line 992
    .line 993
    .line 994
    move-result v5

    .line 995
    invoke-static {v5}, Landroidx/media3/common/util/Util;->p(I)I

    .line 996
    .line 997
    .line 998
    move-result v7

    .line 999
    packed-switch v7, :pswitch_data_1

    .line 1000
    .line 1001
    .line 1002
    move v14, v9

    .line 1003
    goto :goto_19

    .line 1004
    :pswitch_4
    move/from16 v14, v20

    .line 1005
    .line 1006
    goto :goto_19

    .line 1007
    :pswitch_5
    move/from16 v14, v19

    .line 1008
    .line 1009
    goto :goto_19

    .line 1010
    :pswitch_6
    move v14, v11

    .line 1011
    :goto_19
    :pswitch_7
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 1012
    .line 1013
    invoke-direct {v7, v14, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_1a

    .line 1017
    :cond_3a
    new-instance v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;

    .line 1018
    .line 1019
    const/16 v5, 0x16

    .line 1020
    .line 1021
    invoke-direct {v7, v5, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;-><init>(II)V

    .line 1022
    .line 1023
    .line 1024
    :goto_1a
    invoke-static {}, Lcb;->c()Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v5

    .line 1028
    iget-wide v9, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e:J

    .line 1029
    .line 1030
    sub-long v9, v3, v9

    .line 1031
    .line 1032
    invoke-static {v5, v9, v10}, Lo6;->j(Landroid/media/metrics/PlaybackErrorEvent$Builder;J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v5

    .line 1036
    iget v9, v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;->a:I

    .line 1037
    .line 1038
    invoke-static {v5, v9}, Lo6;->i(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v5

    .line 1042
    iget v7, v7, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$ErrorInfo;->b:I

    .line 1043
    .line 1044
    invoke-static {v5, v7}, Lcb;->d(Landroid/media/metrics/PlaybackErrorEvent$Builder;I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v5

    .line 1048
    invoke-static {v5, v8}, Lcb;->e(Landroid/media/metrics/PlaybackErrorEvent$Builder;Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v5

    .line 1052
    invoke-static {v5}, Lcb;->f(Landroid/media/metrics/PlaybackErrorEvent$Builder;)Landroid/media/metrics/PlaybackErrorEvent;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v5

    .line 1056
    iget-object v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    .line 1057
    .line 1058
    new-instance v8, Lf3;

    .line 1059
    .line 1060
    const/16 v9, 0xc

    .line 1061
    .line 1062
    invoke-direct {v8, v9, v0, v5}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1063
    .line 1064
    .line 1065
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1066
    .line 1067
    .line 1068
    const/4 v7, 0x1

    .line 1069
    iput-boolean v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    .line 1070
    .line 1071
    const/4 v5, 0x0

    .line 1072
    iput-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->o:Landroidx/media3/common/PlaybackException;

    .line 1073
    .line 1074
    const/4 v5, 0x2

    .line 1075
    :goto_1b
    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    .line 1076
    .line 1077
    .line 1078
    move-result v8

    .line 1079
    if-eqz v8, :cond_41

    .line 1080
    .line 1081
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->z()Landroidx/media3/common/Tracks;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v8

    .line 1085
    invoke-virtual {v8, v5}, Landroidx/media3/common/Tracks;->a(I)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v9

    .line 1089
    invoke-virtual {v8, v7}, Landroidx/media3/common/Tracks;->a(I)Z

    .line 1090
    .line 1091
    .line 1092
    move-result v5

    .line 1093
    const/4 v7, 0x3

    .line 1094
    invoke-virtual {v8, v7}, Landroidx/media3/common/Tracks;->a(I)Z

    .line 1095
    .line 1096
    .line 1097
    move-result v8

    .line 1098
    if-nez v9, :cond_3b

    .line 1099
    .line 1100
    if-nez v5, :cond_3b

    .line 1101
    .line 1102
    if-eqz v8, :cond_41

    .line 1103
    .line 1104
    :cond_3b
    if-nez v9, :cond_3d

    .line 1105
    .line 1106
    iget-object v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    .line 1107
    .line 1108
    const/4 v9, 0x0

    .line 1109
    invoke-static {v7, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1110
    .line 1111
    .line 1112
    move-result v7

    .line 1113
    if-eqz v7, :cond_3c

    .line 1114
    .line 1115
    goto :goto_1c

    .line 1116
    :cond_3c
    iput-object v9, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    .line 1117
    .line 1118
    const/4 v7, 0x1

    .line 1119
    invoke-virtual {v0, v7, v3, v4, v9}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->f(IJLandroidx/media3/common/Format;)V

    .line 1120
    .line 1121
    .line 1122
    goto :goto_1c

    .line 1123
    :cond_3d
    const/4 v9, 0x0

    .line 1124
    :goto_1c
    if-nez v5, :cond_3f

    .line 1125
    .line 1126
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    .line 1127
    .line 1128
    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1129
    .line 1130
    .line 1131
    move-result v5

    .line 1132
    if-eqz v5, :cond_3e

    .line 1133
    .line 1134
    goto :goto_1d

    .line 1135
    :cond_3e
    iput-object v9, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    .line 1136
    .line 1137
    invoke-virtual {v0, v2, v3, v4, v9}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->f(IJLandroidx/media3/common/Format;)V

    .line 1138
    .line 1139
    .line 1140
    :cond_3f
    :goto_1d
    if-nez v8, :cond_41

    .line 1141
    .line 1142
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    .line 1143
    .line 1144
    invoke-static {v5, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v5

    .line 1148
    if-eqz v5, :cond_40

    .line 1149
    .line 1150
    goto :goto_1e

    .line 1151
    :cond_40
    iput-object v9, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    .line 1152
    .line 1153
    const/4 v5, 0x2

    .line 1154
    invoke-virtual {v0, v5, v3, v4, v9}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->f(IJLandroidx/media3/common/Format;)V

    .line 1155
    .line 1156
    .line 1157
    :cond_41
    :goto_1e
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 1158
    .line 1159
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    .line 1160
    .line 1161
    .line 1162
    move-result v5

    .line 1163
    if-eqz v5, :cond_43

    .line 1164
    .line 1165
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 1166
    .line 1167
    iget-object v5, v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->a:Landroidx/media3/common/Format;

    .line 1168
    .line 1169
    iget v7, v5, Landroidx/media3/common/Format;->x:I

    .line 1170
    .line 1171
    const/4 v8, -0x1

    .line 1172
    if-eq v7, v8, :cond_43

    .line 1173
    .line 1174
    iget-object v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    .line 1175
    .line 1176
    invoke-static {v7, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1177
    .line 1178
    .line 1179
    move-result v7

    .line 1180
    if-eqz v7, :cond_42

    .line 1181
    .line 1182
    :goto_1f
    const/4 v5, 0x0

    .line 1183
    goto :goto_20

    .line 1184
    :cond_42
    iput-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->s:Landroidx/media3/common/Format;

    .line 1185
    .line 1186
    const/4 v7, 0x1

    .line 1187
    invoke-virtual {v0, v7, v3, v4, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->f(IJLandroidx/media3/common/Format;)V

    .line 1188
    .line 1189
    .line 1190
    goto :goto_1f

    .line 1191
    :goto_20
    iput-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->p:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 1192
    .line 1193
    :cond_43
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->q:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 1194
    .line 1195
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v5

    .line 1199
    if-eqz v5, :cond_45

    .line 1200
    .line 1201
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->q:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 1202
    .line 1203
    iget-object v5, v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->a:Landroidx/media3/common/Format;

    .line 1204
    .line 1205
    iget-object v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    .line 1206
    .line 1207
    invoke-static {v7, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1208
    .line 1209
    .line 1210
    move-result v7

    .line 1211
    if-eqz v7, :cond_44

    .line 1212
    .line 1213
    :goto_21
    const/4 v5, 0x0

    .line 1214
    goto :goto_22

    .line 1215
    :cond_44
    iput-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->t:Landroidx/media3/common/Format;

    .line 1216
    .line 1217
    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->f(IJLandroidx/media3/common/Format;)V

    .line 1218
    .line 1219
    .line 1220
    goto :goto_21

    .line 1221
    :goto_22
    iput-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->q:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 1222
    .line 1223
    :cond_45
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 1224
    .line 1225
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b(Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v5

    .line 1229
    if-eqz v5, :cond_47

    .line 1230
    .line 1231
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 1232
    .line 1233
    iget-object v5, v5, Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;->a:Landroidx/media3/common/Format;

    .line 1234
    .line 1235
    iget-object v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    .line 1236
    .line 1237
    invoke-static {v7, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1238
    .line 1239
    .line 1240
    move-result v7

    .line 1241
    if-eqz v7, :cond_46

    .line 1242
    .line 1243
    :goto_23
    const/4 v5, 0x0

    .line 1244
    goto :goto_24

    .line 1245
    :cond_46
    iput-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->u:Landroidx/media3/common/Format;

    .line 1246
    .line 1247
    const/4 v7, 0x2

    .line 1248
    invoke-virtual {v0, v7, v3, v4, v5}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->f(IJLandroidx/media3/common/Format;)V

    .line 1249
    .line 1250
    .line 1251
    goto :goto_23

    .line 1252
    :goto_24
    iput-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->r:Landroidx/media3/exoplayer/analytics/MediaMetricsListener$PendingFormatUpdate;

    .line 1253
    .line 1254
    :cond_47
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->a:Landroid/content/Context;

    .line 1255
    .line 1256
    invoke-static {v5}, Landroidx/media3/common/util/NetworkTypeObserver;->a(Landroid/content/Context;)Landroidx/media3/common/util/NetworkTypeObserver;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v5

    .line 1260
    invoke-virtual {v5}, Landroidx/media3/common/util/NetworkTypeObserver;->b()I

    .line 1261
    .line 1262
    .line 1263
    move-result v5

    .line 1264
    packed-switch v5, :pswitch_data_2

    .line 1265
    .line 1266
    .line 1267
    :pswitch_8
    const/4 v15, 0x1

    .line 1268
    goto :goto_25

    .line 1269
    :pswitch_9
    move/from16 v15, v17

    .line 1270
    .line 1271
    goto :goto_25

    .line 1272
    :pswitch_a
    move/from16 v15, v16

    .line 1273
    .line 1274
    goto :goto_25

    .line 1275
    :pswitch_b
    const/4 v15, 0x3

    .line 1276
    goto :goto_25

    .line 1277
    :pswitch_c
    move/from16 v15, v18

    .line 1278
    .line 1279
    goto :goto_25

    .line 1280
    :pswitch_d
    move v15, v12

    .line 1281
    goto :goto_25

    .line 1282
    :pswitch_e
    const/4 v15, 0x4

    .line 1283
    goto :goto_25

    .line 1284
    :pswitch_f
    const/4 v15, 0x2

    .line 1285
    goto :goto_25

    .line 1286
    :pswitch_10
    move/from16 v15, v21

    .line 1287
    .line 1288
    goto :goto_25

    .line 1289
    :pswitch_11
    move v15, v2

    .line 1290
    :goto_25
    iget v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->n:I

    .line 1291
    .line 1292
    if-eq v15, v5, :cond_48

    .line 1293
    .line 1294
    iput v15, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->n:I

    .line 1295
    .line 1296
    invoke-static {}, Lcb;->b()Landroid/media/metrics/NetworkEvent$Builder;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v5

    .line 1300
    invoke-static {v5, v15}, Lo6;->f(Landroid/media/metrics/NetworkEvent$Builder;I)Landroid/media/metrics/NetworkEvent$Builder;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v5

    .line 1304
    iget-wide v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e:J

    .line 1305
    .line 1306
    sub-long v7, v3, v7

    .line 1307
    .line 1308
    invoke-static {v5, v7, v8}, Lo6;->g(Landroid/media/metrics/NetworkEvent$Builder;J)Landroid/media/metrics/NetworkEvent$Builder;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v5

    .line 1312
    invoke-static {v5}, Lo6;->h(Landroid/media/metrics/NetworkEvent$Builder;)Landroid/media/metrics/NetworkEvent;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v5

    .line 1316
    iget-object v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    .line 1317
    .line 1318
    new-instance v8, Lf3;

    .line 1319
    .line 1320
    const/16 v9, 0xb

    .line 1321
    .line 1322
    invoke-direct {v8, v9, v0, v5}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1323
    .line 1324
    .line 1325
    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_26

    .line 1329
    :cond_48
    const/16 v9, 0xb

    .line 1330
    .line 1331
    :goto_26
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->y()I

    .line 1332
    .line 1333
    .line 1334
    move-result v5

    .line 1335
    const/4 v7, 0x2

    .line 1336
    if-eq v5, v7, :cond_49

    .line 1337
    .line 1338
    iput-boolean v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->v:Z

    .line 1339
    .line 1340
    :cond_49
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->t()Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v5

    .line 1344
    if-nez v5, :cond_4a

    .line 1345
    .line 1346
    iput-boolean v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->x:Z

    .line 1347
    .line 1348
    const/16 v2, 0xa

    .line 1349
    .line 1350
    goto :goto_27

    .line 1351
    :cond_4a
    const/16 v2, 0xa

    .line 1352
    .line 1353
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    .line 1354
    .line 1355
    .line 1356
    move-result v5

    .line 1357
    if-eqz v5, :cond_4b

    .line 1358
    .line 1359
    const/4 v7, 0x1

    .line 1360
    iput-boolean v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->x:Z

    .line 1361
    .line 1362
    :cond_4b
    :goto_27
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->y()I

    .line 1363
    .line 1364
    .line 1365
    move-result v5

    .line 1366
    iget-boolean v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->v:Z

    .line 1367
    .line 1368
    if-eqz v7, :cond_4c

    .line 1369
    .line 1370
    move v5, v12

    .line 1371
    :goto_28
    const/4 v7, 0x1

    .line 1372
    goto/16 :goto_2b

    .line 1373
    .line 1374
    :cond_4c
    iget-boolean v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->x:Z

    .line 1375
    .line 1376
    if-eqz v7, :cond_4d

    .line 1377
    .line 1378
    :goto_29
    move v5, v6

    .line 1379
    goto :goto_28

    .line 1380
    :cond_4d
    const/4 v6, 0x4

    .line 1381
    if-ne v5, v6, :cond_4e

    .line 1382
    .line 1383
    move v5, v9

    .line 1384
    goto :goto_28

    .line 1385
    :cond_4e
    const/4 v7, 0x2

    .line 1386
    if-ne v5, v7, :cond_53

    .line 1387
    .line 1388
    iget v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    .line 1389
    .line 1390
    if-eqz v5, :cond_52

    .line 1391
    .line 1392
    if-eq v5, v7, :cond_52

    .line 1393
    .line 1394
    const/16 v9, 0xc

    .line 1395
    .line 1396
    if-ne v5, v9, :cond_4f

    .line 1397
    .line 1398
    goto :goto_2a

    .line 1399
    :cond_4f
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->i()Z

    .line 1400
    .line 1401
    .line 1402
    move-result v5

    .line 1403
    if-nez v5, :cond_50

    .line 1404
    .line 1405
    move/from16 v5, v17

    .line 1406
    .line 1407
    goto :goto_28

    .line 1408
    :cond_50
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->I()I

    .line 1409
    .line 1410
    .line 1411
    move-result v5

    .line 1412
    if-eqz v5, :cond_51

    .line 1413
    .line 1414
    move v5, v2

    .line 1415
    goto :goto_28

    .line 1416
    :cond_51
    move/from16 v5, v18

    .line 1417
    .line 1418
    goto :goto_28

    .line 1419
    :cond_52
    :goto_2a
    move v5, v7

    .line 1420
    goto :goto_28

    .line 1421
    :cond_53
    const/4 v7, 0x3

    .line 1422
    const/16 v9, 0xc

    .line 1423
    .line 1424
    if-ne v5, v7, :cond_55

    .line 1425
    .line 1426
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->i()Z

    .line 1427
    .line 1428
    .line 1429
    move-result v2

    .line 1430
    if-nez v2, :cond_54

    .line 1431
    .line 1432
    goto :goto_29

    .line 1433
    :cond_54
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->I()I

    .line 1434
    .line 1435
    .line 1436
    move-result v2

    .line 1437
    if-eqz v2, :cond_52

    .line 1438
    .line 1439
    move/from16 v5, v21

    .line 1440
    .line 1441
    goto :goto_28

    .line 1442
    :cond_55
    const/4 v7, 0x1

    .line 1443
    if-ne v5, v7, :cond_56

    .line 1444
    .line 1445
    iget v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    .line 1446
    .line 1447
    if-eqz v2, :cond_56

    .line 1448
    .line 1449
    move v5, v9

    .line 1450
    goto :goto_2b

    .line 1451
    :cond_56
    iget v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    .line 1452
    .line 1453
    :goto_2b
    iget v2, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    .line 1454
    .line 1455
    if-eq v2, v5, :cond_57

    .line 1456
    .line 1457
    iput v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    .line 1458
    .line 1459
    iput-boolean v7, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->B:Z

    .line 1460
    .line 1461
    invoke-static {}, Lcb;->i()Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v2

    .line 1465
    iget v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->m:I

    .line 1466
    .line 1467
    invoke-static {v2, v5}, Lcb;->j(Landroid/media/metrics/PlaybackStateEvent$Builder;I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1468
    .line 1469
    .line 1470
    move-result-object v2

    .line 1471
    iget-wide v5, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e:J

    .line 1472
    .line 1473
    sub-long/2addr v3, v5

    .line 1474
    invoke-static {v2, v3, v4}, Lcb;->k(Landroid/media/metrics/PlaybackStateEvent$Builder;J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v2

    .line 1478
    invoke-static {v2}, Lcb;->l(Landroid/media/metrics/PlaybackStateEvent$Builder;)Landroid/media/metrics/PlaybackStateEvent;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v2

    .line 1482
    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->b:Ljava/util/concurrent/Executor;

    .line 1483
    .line 1484
    new-instance v4, Lf3;

    .line 1485
    .line 1486
    const/16 v13, 0xe

    .line 1487
    .line 1488
    invoke-direct {v4, v13, v0, v2}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1489
    .line 1490
    .line 1491
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1492
    .line 1493
    .line 1494
    :cond_57
    const/16 v2, 0x404

    .line 1495
    .line 1496
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->a(I)Z

    .line 1497
    .line 1498
    .line 1499
    move-result v3

    .line 1500
    if-eqz v3, :cond_5b

    .line 1501
    .line 1502
    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    .line 1503
    .line 1504
    iget-object v0, v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->b:Landroid/util/SparseArray;

    .line 1505
    .line 1506
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1507
    .line 1508
    .line 1509
    move-result-object v0

    .line 1510
    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 1511
    .line 1512
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1513
    .line 1514
    .line 1515
    monitor-enter v3

    .line 1516
    :try_start_4
    iget-object v1, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->f:Ljava/lang/String;

    .line 1517
    .line 1518
    if-eqz v1, :cond_58

    .line 1519
    .line 1520
    iget-object v2, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c:Ljava/util/HashMap;

    .line 1521
    .line 1522
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v1

    .line 1526
    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 1527
    .line 1528
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1529
    .line 1530
    .line 1531
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->a(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    .line 1532
    .line 1533
    .line 1534
    goto :goto_2c

    .line 1535
    :catchall_2
    move-exception v0

    .line 1536
    goto :goto_2e

    .line 1537
    :cond_58
    :goto_2c
    iget-object v1, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c:Ljava/util/HashMap;

    .line 1538
    .line 1539
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v1

    .line 1543
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1544
    .line 1545
    .line 1546
    move-result-object v1

    .line 1547
    :cond_59
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1548
    .line 1549
    .line 1550
    move-result v2

    .line 1551
    if-eqz v2, :cond_5a

    .line 1552
    .line 1553
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v2

    .line 1557
    check-cast v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 1558
    .line 1559
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1560
    .line 1561
    .line 1562
    iget-boolean v4, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->e:Z

    .line 1563
    .line 1564
    if-eqz v4, :cond_59

    .line 1565
    .line 1566
    iget-object v4, v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->d:Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 1567
    .line 1568
    if-eqz v4, :cond_59

    .line 1569
    .line 1570
    iget-object v2, v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->a:Ljava/lang/String;

    .line 1571
    .line 1572
    invoke-virtual {v4, v0, v2}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->e(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1573
    .line 1574
    .line 1575
    goto :goto_2d

    .line 1576
    :cond_5a
    monitor-exit v3

    .line 1577
    return-void

    .line 1578
    :goto_2e
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1579
    throw v0

    .line 1580
    :cond_5b
    :goto_2f
    return-void

    .line 1581
    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    :pswitch_data_1
    .packed-switch 0x1772
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_b
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final m(Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 1
    iget p1, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->a:I

    .line 2
    .line 3
    iput p1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->w:I

    .line 4
    .line 5
    return-void
.end method

.method public final o(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 7

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->d:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->c:Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->b:Landroidx/media3/common/Timeline;

    .line 8
    .line 9
    invoke-virtual {v1, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->c(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->i:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Long;

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->h:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Long;

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    move-wide v5, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    :goto_0
    add-long/2addr v5, p3

    .line 40
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    :goto_1
    int-to-long p2, p2

    .line 55
    add-long/2addr v3, p2

    .line 56
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method
