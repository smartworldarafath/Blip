.class public final synthetic Landroidx/media3/exoplayer/l;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroid/content/Context;

.field public final synthetic k:Z

.field public final synthetic l:Landroidx/media3/exoplayer/ExoPlayerImpl;

.field public final synthetic m:Landroidx/media3/exoplayer/analytics/PlayerId;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZLandroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/l;->j:Landroid/content/Context;

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/media3/exoplayer/l;->k:Z

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/l;->l:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/l;->m:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const-string v0, "media_metrics"

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/l;->j:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lo6;->e(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 18
    .line 19
    invoke-static {v0}, Lo6;->m(Landroid/media/metrics/MediaMetricsManager;)Landroid/media/metrics/PlaybackSession;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {v2, v1, v0}, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v2

    .line 27
    :goto_0
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string p0, "ExoPlayerImpl"

    .line 30
    .line 31
    const-string v0, "MediaMetricsService unavailable."

    .line 32
    .line 33
    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/l;->k:Z

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/media3/exoplayer/l;->l:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->M(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    .line 47
    .line 48
    invoke-static {v0}, Lcb;->a(Landroid/media/metrics/PlaybackSession;)Landroid/media/metrics/LogSessionId;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object p0, p0, Landroidx/media3/exoplayer/l;->m:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/PlayerId;->b(Landroid/media/metrics/LogSessionId;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
