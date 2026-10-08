.class final Landroidx/media3/exoplayer/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
.implements Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;
.implements Landroidx/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;
.implements Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;
.implements Landroidx/media3/exoplayer/PlayerMessage$Sender;
.implements Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;
.implements Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;,
        Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    }
.end annotation


# static fields
.field public static final p0:J

.field public static final synthetic q0:I


# instance fields
.field public final A:Landroidx/media3/exoplayer/MediaSourceList;

.field public final B:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

.field public final C:J

.field public final D:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public final E:Z

.field public final F:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field public final G:Landroidx/media3/common/util/HandlerWrapper;

.field public final H:Z

.field public final I:Landroidx/media3/common/audio/AudioFocusManager;

.field public J:Z

.field public K:Landroidx/media3/exoplayer/SeekParameters;

.field public L:Landroidx/media3/exoplayer/ScrubbingModeParameters;

.field public M:Z

.field public N:Z

.field public O:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

.field public P:I

.field public Q:Landroidx/media3/exoplayer/PlaybackInfo;

.field public R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:J

.field public X:Z

.field public Y:I

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:I

.field public e0:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

.field public f0:J

.field public g0:J

.field public h0:I

.field public i0:Z

.field public final j:[Landroidx/media3/exoplayer/RendererHolder;

.field public j0:Landroidx/media3/exoplayer/ExoPlaybackException;

.field public final k:[Landroidx/media3/exoplayer/RendererCapabilities;

.field public k0:J

.field public final l:[Z

.field public l0:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

.field public final m:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field public m0:J

.field public final n:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field public n0:Z

.field public final o:Landroidx/media3/exoplayer/LoadControl;

.field public o0:F

.field public final p:Landroidx/media3/common/util/HandlerWrapper;

.field public final q:Landroidx/media3/exoplayer/PlaybackLooperProvider;

.field public final r:Landroid/os/Looper;

.field public final s:Landroidx/media3/common/Timeline$Window;

.field public final t:Landroidx/media3/common/Timeline$Period;

.field public final u:J

.field public final v:Landroidx/media3/exoplayer/DefaultMediaClock;

.field public final w:Ljava/util/ArrayList;

.field public final x:Landroidx/media3/common/util/Clock;

.field public final y:Landroidx/media3/exoplayer/g;

.field public final z:Landroidx/media3/exoplayer/MediaPeriodQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x2710

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->N(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p0:J

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroidx/media3/exoplayer/Renderer;[Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;JZZLandroid/os/Looper;Landroidx/media3/common/util/SystemClock;Landroidx/media3/exoplayer/g;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;Z)V
    .locals 13

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p10

    move-object/from16 v4, p18

    move-object/from16 v5, p20

    sget-object v6, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;->a:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m0:J

    move-object/from16 v9, p19

    .line 3
    iput-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y:Landroidx/media3/exoplayer/g;

    .line 4
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-object/from16 v9, p5

    .line 5
    iput-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 6
    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Landroidx/media3/exoplayer/LoadControl;

    move/from16 v10, p8

    .line 7
    iput v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    move/from16 v10, p9

    .line 8
    iput-boolean v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Z

    move-object/from16 v10, p11

    .line 9
    iput-object v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/SeekParameters;

    move-object/from16 v10, p12

    .line 10
    iput-object v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    move-wide/from16 v10, p13

    .line 11
    iput-wide v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C:J

    move/from16 v10, p15

    .line 12
    iput-boolean v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T:Z

    move/from16 v10, p16

    .line 13
    iput-boolean v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E:Z

    .line 14
    iput-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/common/util/Clock;

    .line 15
    iput-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 16
    iput-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l0:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 17
    iput-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 18
    iput v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o0:F

    .line 19
    sget-object v6, Landroidx/media3/exoplayer/ScrubbingModeParameters;->g:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    iput-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    move/from16 v6, p22

    .line 20
    iput-boolean v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J:Z

    .line 21
    iput-wide v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k0:J

    .line 22
    iput-wide v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W:J

    .line 23
    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 24
    iget-wide v6, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->n:J

    .line 25
    iput-wide v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:J

    .line 26
    sget-object v2, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    .line 27
    invoke-static {v9}, Landroidx/media3/exoplayer/PlaybackInfo;->k(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 28
    new-instance v6, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-direct {v6, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    iput-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 29
    array-length v2, p2

    new-array v2, v2, [Landroidx/media3/exoplayer/RendererCapabilities;

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 30
    array-length v2, p2

    new-array v2, v2, [Z

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:[Z

    .line 31
    move-object v2, v1

    check-cast v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    array-length v6, p2

    new-array v6, v6, [Landroidx/media3/exoplayer/RendererHolder;

    iput-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 33
    :goto_0
    array-length v9, p2

    const/4 v10, 0x1

    if-ge v7, v9, :cond_1

    .line 34
    aget-object v9, p2, v7

    move-object v11, v9

    check-cast v11, Landroidx/media3/exoplayer/BaseRenderer;

    .line 35
    iput v7, v11, Landroidx/media3/exoplayer/BaseRenderer;->n:I

    .line 36
    iput-object v5, v11, Landroidx/media3/exoplayer/BaseRenderer;->o:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 37
    iput-object v4, v11, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    .line 38
    iget-object v11, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    check-cast v9, Landroidx/media3/exoplayer/BaseRenderer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aput-object v9, v11, v7

    .line 39
    iget-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    aget-object v9, v9, v7

    check-cast v9, Landroidx/media3/exoplayer/BaseRenderer;

    .line 40
    iget-object v11, v9, Landroidx/media3/exoplayer/BaseRenderer;->j:Ljava/lang/Object;

    .line 41
    monitor-enter v11

    .line 42
    :try_start_0
    iput-object v2, v9, Landroidx/media3/exoplayer/BaseRenderer;->B:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 43
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    aget-object v9, p3, v7

    if-eqz v9, :cond_0

    .line 45
    move-object v8, v9

    check-cast v8, Landroidx/media3/exoplayer/BaseRenderer;

    .line 46
    iput v7, v8, Landroidx/media3/exoplayer/BaseRenderer;->n:I

    .line 47
    iput-object v5, v8, Landroidx/media3/exoplayer/BaseRenderer;->o:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 48
    iput-object v4, v8, Landroidx/media3/exoplayer/BaseRenderer;->p:Landroidx/media3/common/util/Clock;

    move v8, v10

    .line 49
    :cond_0
    iget-object v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    new-instance v11, Landroidx/media3/exoplayer/RendererHolder;

    aget-object v12, p2, v7

    invoke-direct {v11, v12, v9, v7}, Landroidx/media3/exoplayer/RendererHolder;-><init>(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/Renderer;I)V

    aput-object v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 50
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 51
    :cond_1
    iput-boolean v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    .line 52
    new-instance v2, Landroidx/media3/exoplayer/DefaultMediaClock;

    invoke-direct {v2, p0, v4}, Landroidx/media3/exoplayer/DefaultMediaClock;-><init>(Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;Landroidx/media3/common/util/Clock;)V

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w:Ljava/util/ArrayList;

    .line 54
    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/common/Timeline$Window;

    .line 55
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 56
    check-cast v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 57
    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    if-nez v2, :cond_2

    move v2, v10

    goto :goto_1

    :cond_2
    move v2, v6

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 58
    iput-object p0, v1, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    move-object/from16 v2, p7

    .line 59
    iput-object v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelector;->b:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 60
    iget-object v7, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->e:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 61
    iput-object v7, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 62
    iput-boolean v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i0:Z

    const/4 v1, 0x0

    move-object/from16 v7, p17

    .line 63
    invoke-virtual {v4, v7, v1}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Landroidx/media3/common/util/HandlerWrapper;

    .line 64
    new-instance v7, Landroidx/media3/exoplayer/MediaPeriodQueue;

    new-instance v8, Landroidx/media3/exoplayer/b;

    const/4 v9, 0x3

    invoke-direct {v8, v9, p0}, Landroidx/media3/exoplayer/b;-><init>(ILjava/lang/Object;)V

    array-length v0, p2

    invoke-direct {v7, v3, v1, v8, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/b;I)V

    iput-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 65
    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList;

    move-object/from16 p12, p0

    move-object/from16 p11, v0

    move-object/from16 p14, v1

    move-object/from16 p16, v2

    move-object/from16 p13, v3

    move-object/from16 p15, v5

    invoke-direct/range {p11 .. p16}, Landroidx/media3/exoplayer/MediaSourceList;-><init>(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceListInfoRefreshListener;Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/exoplayer/upstream/BandwidthMeter;)V

    move-object/from16 v1, p11

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 66
    new-instance v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;

    invoke-direct {v1}, Landroidx/media3/exoplayer/PlaybackLooperProvider;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 67
    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->a:Ljava/lang/Object;

    .line 68
    monitor-enter v2

    .line 69
    :try_start_2
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->b:Landroid/os/Looper;

    if-nez v3, :cond_4

    .line 70
    iget v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->d:I

    if-nez v3, :cond_3

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->c:Landroid/os/HandlerThread;

    if-nez v3, :cond_3

    move v6, v10

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 71
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "ExoPlayer:Playback"

    const/16 v6, -0x10

    invoke-direct {v3, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->c:Landroid/os/HandlerThread;

    .line 72
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 73
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->c:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->b:Landroid/os/Looper;

    .line 74
    :cond_4
    iget v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->d:I

    add-int/2addr v3, v10

    iput v3, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->d:I

    .line 75
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackLooperProvider;->b:Landroid/os/Looper;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroid/os/Looper;

    .line 77
    invoke-virtual {v4, v1, p0}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 78
    new-instance v3, Landroidx/media3/common/audio/AudioFocusManager;

    invoke-direct {v3, p1, v1, p0}, Landroidx/media3/common/audio/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;)V

    iput-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/common/audio/AudioFocusManager;

    .line 79
    new-instance p1, Landroidx/media3/exoplayer/o;

    move-object/from16 v1, p21

    invoke-direct {p1, p0, v1}, Landroidx/media3/exoplayer/o;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    const/16 v1, 0x23

    .line 80
    invoke-interface {v2, v1, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p1

    .line 81
    invoke-interface {p1}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 82
    new-instance p1, Landroidx/media3/exoplayer/p;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/p;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    const/16 p0, 0x27

    .line 83
    invoke-interface {v2, p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object p0

    .line 84
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    return-void

    .line 85
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static C(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 5
    .line 6
    iget-boolean v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->g()V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    move v4, v0

    .line 18
    :goto_0
    if-ge v4, v3, :cond_2

    .line 19
    .line 20
    aget-object v5, v2, v4

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    invoke-interface {v5}, Landroidx/media3/exoplayer/source/SampleStream;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    :goto_1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 31
    .line 32
    if-nez p0, :cond_3

    .line 33
    .line 34
    const-wide/16 v1, 0x0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->e()J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    :goto_2
    const-wide/high16 v3, -0x8000000000000000L

    .line 42
    .line 43
    cmp-long p0, v1, v3

    .line 44
    .line 45
    if-eqz p0, :cond_4

    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :catch_0
    :cond_4
    return v0
.end method

.method public static W(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;
    .locals 9

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->a:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move-object v2, p0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    move-object v2, v0

    .line 20
    :goto_0
    :try_start_0
    iget v5, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->b:I

    .line 21
    .line 22
    iget-wide v6, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    .line 23
    .line 24
    move-object v3, p5

    .line 25
    move-object v4, p6

    .line 26
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 27
    .line 28
    .line 29
    move-result-object p5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    move-object v5, v4

    .line 31
    move-object v4, v3

    .line 32
    invoke-virtual {p0, v2}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p6

    .line 36
    if-eqz p6, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object p6, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {p0, p6}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 42
    .line 43
    .line 44
    move-result p6

    .line 45
    const/4 v0, -0x1

    .line 46
    if-eq p6, v0, :cond_4

    .line 47
    .line 48
    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {v2, p2, v5}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-boolean p2, p2, Landroidx/media3/common/Timeline$Period;->f:Z

    .line 55
    .line 56
    if-eqz p2, :cond_3

    .line 57
    .line 58
    iget p2, v5, Landroidx/media3/common/Timeline$Period;->c:I

    .line 59
    .line 60
    const-wide/16 p3, 0x0

    .line 61
    .line 62
    invoke-virtual {v2, p2, v4, p3, p4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iget p2, p2, Landroidx/media3/common/Timeline$Window;->l:I

    .line 67
    .line 68
    iget-object p3, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v2, p3}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    if-ne p2, p3, :cond_3

    .line 75
    .line 76
    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {p0, p2, v5}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    iget v6, p2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 83
    .line 84
    iget-wide v7, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    .line 85
    .line 86
    move-object v3, p0

    .line 87
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_3
    :goto_1
    return-object p5

    .line 93
    :cond_4
    move-object v3, p0

    .line 94
    if-eqz p2, :cond_5

    .line 95
    .line 96
    iget-object p0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    .line 98
    move p2, p3

    .line 99
    move p3, p4

    .line 100
    move-object p5, v2

    .line 101
    move-object p6, v3

    .line 102
    move-object p1, v5

    .line 103
    move-object p4, p0

    .line 104
    move-object p0, v4

    .line 105
    invoke-static/range {p0 .. p6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eq v6, v0, :cond_5

    .line 110
    .line 111
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    return-object p0

    .line 121
    :catch_0
    :cond_5
    :goto_2
    const/4 p0, 0x0

    .line 122
    return-object p0
.end method

.method public static X(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I
    .locals 12

    .line 1
    move-object v3, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    move-object/from16 v1, p5

    .line 6
    .line 7
    move-object/from16 v6, p6

    .line 8
    .line 9
    invoke-virtual {v1, v0, p1}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget v4, v4, Landroidx/media3/common/Timeline$Period;->c:I

    .line 14
    .line 15
    const-wide/16 v7, 0x0

    .line 16
    .line 17
    invoke-virtual {v1, v4, p0, v7, v8}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    move v5, v9

    .line 25
    :goto_0
    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->o()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    if-ge v5, v10, :cond_1

    .line 30
    .line 31
    invoke-virtual {v6, v5, p0, v7, v8}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 32
    .line 33
    .line 34
    move-result-object v10

    .line 35
    iget-object v10, v10, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {v10, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    if-eqz v10, :cond_0

    .line 42
    .line 43
    return v5

    .line 44
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v1, v0}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->h()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const/4 v8, -0x1

    .line 56
    move v11, v8

    .line 57
    move v10, v9

    .line 58
    :goto_1
    if-ge v10, v7, :cond_3

    .line 59
    .line 60
    if-ne v11, v8, :cond_3

    .line 61
    .line 62
    move-object v4, v1

    .line 63
    move v1, v0

    .line 64
    move-object v0, v4

    .line 65
    move v4, p2

    .line 66
    move v5, p3

    .line 67
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->d(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ne v1, v8, :cond_2

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v6, v3}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v11

    .line 82
    add-int/lit8 v10, v10, 0x1

    .line 83
    .line 84
    move v3, v1

    .line 85
    move-object v1, v0

    .line 86
    move v0, v3

    .line 87
    move-object v3, p0

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    :goto_2
    if-ne v11, v8, :cond_4

    .line 90
    .line 91
    return v8

    .line 92
    :cond_4
    invoke-virtual {v6, v11, p1, v9}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget v0, v0, Landroidx/media3/common/Timeline$Period;->c:I

    .line 97
    .line 98
    return v0
.end method


# virtual methods
.method public final A(Landroidx/media3/common/PlaybackParameters;FZZ)V
    .locals 3

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 6
    .line 7
    const/4 p4, 0x1

    .line 8
    invoke-virtual {p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 12
    .line 13
    invoke-virtual {p3, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->g(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 18
    .line 19
    :cond_1
    iget p3, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 20
    .line 21
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 22
    .line 23
    iget-object p3, p3, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 24
    .line 25
    :goto_0
    const/4 p4, 0x0

    .line 26
    if-eqz p3, :cond_3

    .line 27
    .line 28
    iget-object v0, p3, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 29
    .line 30
    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 31
    .line 32
    array-length v1, v0

    .line 33
    :goto_1
    if-ge p4, v1, :cond_2

    .line 34
    .line 35
    aget-object v2, v0, p4

    .line 36
    .line 37
    add-int/lit8 p4, p4, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object p3, p3, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 44
    .line 45
    array-length p3, p0

    .line 46
    :goto_2
    if-ge p4, p3, :cond_5

    .line 47
    .line 48
    aget-object v0, p0, p4

    .line 49
    .line 50
    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 51
    .line 52
    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 53
    .line 54
    invoke-interface {v2, p2, v1}, Landroidx/media3/exoplayer/Renderer;->l(FF)V

    .line 55
    .line 56
    .line 57
    iget-object v0, v0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-interface {v0, p2, v1}, Landroidx/media3/exoplayer/Renderer;->l(FF)V

    .line 62
    .line 63
    .line 64
    :cond_4
    add-int/lit8 p4, p4, 0x1

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_5
    return-void
.end method

.method public final A0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    if-ge v1, v3, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    aget-object v2, v2, v1

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->r()V

    .line 26
    .line 27
    .line 28
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    :goto_2
    return-void
.end method

.method public final B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v4, p4

    .line 6
    .line 7
    move/from16 v2, p9

    .line 8
    .line 9
    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i0:Z

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 15
    .line 16
    iget-wide v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 17
    .line 18
    cmp-long v3, p2, v8

    .line 19
    .line 20
    if-nez v3, :cond_1

    .line 21
    .line 22
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 23
    .line 24
    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v3, v7

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 36
    :goto_1
    iput-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i0:Z

    .line 37
    .line 38
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T()V

    .line 39
    .line 40
    .line 41
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 42
    .line 43
    iget-object v8, v3, Landroidx/media3/exoplayer/PlaybackInfo;->h:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 44
    .line 45
    iget-object v9, v3, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 46
    .line 47
    iget-object v10, v3, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    .line 48
    .line 49
    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 50
    .line 51
    iget-boolean v11, v11, Landroidx/media3/exoplayer/MediaSourceList;->l:Z

    .line 52
    .line 53
    if-eqz v11, :cond_10

    .line 54
    .line 55
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 56
    .line 57
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 58
    .line 59
    if-nez v3, :cond_2

    .line 60
    .line 61
    sget-object v8, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    iget-object v8, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->n:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 65
    .line 66
    :goto_2
    if-nez v3, :cond_3

    .line 67
    .line 68
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_3
    iget-object v9, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 72
    .line 73
    :goto_3
    iget-object v10, v9, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 74
    .line 75
    new-instance v11, Lcom/google/common/collect/ImmutableList$Builder;

    .line 76
    .line 77
    invoke-direct {v11}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 78
    .line 79
    .line 80
    array-length v12, v10

    .line 81
    move v13, v7

    .line 82
    move v14, v13

    .line 83
    :goto_4
    if-ge v13, v12, :cond_6

    .line 84
    .line 85
    aget-object v15, v10, v13

    .line 86
    .line 87
    if-eqz v15, :cond_5

    .line 88
    .line 89
    check-cast v15, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 90
    .line 91
    iget-object v15, v15, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    .line 92
    .line 93
    aget-object v15, v15, v7

    .line 94
    .line 95
    iget-object v15, v15, Landroidx/media3/common/Format;->m:Landroidx/media3/common/Metadata;

    .line 96
    .line 97
    if-nez v15, :cond_4

    .line 98
    .line 99
    new-instance v15, Landroidx/media3/common/Metadata;

    .line 100
    .line 101
    new-array v6, v7, [Landroidx/media3/common/Metadata$Entry;

    .line 102
    .line 103
    invoke-direct {v15, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_5

    .line 110
    :cond_4
    invoke-virtual {v11, v15}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    const/4 v14, 0x1

    .line 114
    :cond_5
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    if-eqz v14, :cond_7

    .line 118
    .line 119
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->i()Lcom/google/common/collect/ImmutableList;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    :goto_6
    move-object v10, v6

    .line 124
    goto :goto_7

    .line 125
    :cond_7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    goto :goto_6

    .line 130
    :goto_7
    if-eqz v3, :cond_8

    .line 131
    .line 132
    iget-object v6, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 133
    .line 134
    iget-wide v11, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    .line 135
    .line 136
    cmp-long v11, v11, v4

    .line 137
    .line 138
    if-eqz v11, :cond_8

    .line 139
    .line 140
    invoke-virtual {v6, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodInfo;->a(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    iput-object v6, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 145
    .line 146
    :cond_8
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D()Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_9

    .line 153
    .line 154
    goto :goto_b

    .line 155
    :cond_9
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 156
    .line 157
    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 158
    .line 159
    if-eqz v6, :cond_f

    .line 160
    .line 161
    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 162
    .line 163
    move v11, v7

    .line 164
    move v12, v11

    .line 165
    :goto_8
    array-length v13, v3

    .line 166
    if-ge v11, v13, :cond_c

    .line 167
    .line 168
    invoke-virtual {v6, v11}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    .line 169
    .line 170
    .line 171
    move-result v13

    .line 172
    if-eqz v13, :cond_b

    .line 173
    .line 174
    aget-object v13, v3, v11

    .line 175
    .line 176
    invoke-virtual {v13}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    const/4 v14, 0x1

    .line 181
    if-eq v13, v14, :cond_a

    .line 182
    .line 183
    move v14, v7

    .line 184
    goto :goto_9

    .line 185
    :cond_a
    iget-object v13, v6, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    .line 186
    .line 187
    aget-object v13, v13, v11

    .line 188
    .line 189
    iget v13, v13, Landroidx/media3/exoplayer/RendererConfiguration;->a:I

    .line 190
    .line 191
    if-eqz v13, :cond_b

    .line 192
    .line 193
    const/4 v12, 0x1

    .line 194
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 195
    .line 196
    goto :goto_8

    .line 197
    :cond_c
    const/4 v14, 0x1

    .line 198
    :goto_9
    if-eqz v12, :cond_d

    .line 199
    .line 200
    if-eqz v14, :cond_d

    .line 201
    .line 202
    const/4 v14, 0x1

    .line 203
    goto :goto_a

    .line 204
    :cond_d
    move v14, v7

    .line 205
    :goto_a
    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0:Z

    .line 206
    .line 207
    if-ne v14, v3, :cond_e

    .line 208
    .line 209
    goto :goto_b

    .line 210
    :cond_e
    iput-boolean v14, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0:Z

    .line 211
    .line 212
    if-nez v14, :cond_f

    .line 213
    .line 214
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 215
    .line 216
    iget-boolean v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    .line 217
    .line 218
    if-eqz v3, :cond_f

    .line 219
    .line 220
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 221
    .line 222
    const/4 v6, 0x2

    .line 223
    invoke-interface {v3, v6}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 224
    .line 225
    .line 226
    :cond_f
    :goto_b
    move-object v11, v9

    .line 227
    move-object v12, v10

    .line 228
    move-object v10, v8

    .line 229
    goto :goto_c

    .line 230
    :cond_10
    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 231
    .line 232
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-nez v3, :cond_f

    .line 237
    .line 238
    sget-object v8, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 239
    .line 240
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 241
    .line 242
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    goto :goto_b

    .line 247
    :goto_c
    if-eqz p8, :cond_13

    .line 248
    .line 249
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 250
    .line 251
    iget-boolean v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:Z

    .line 252
    .line 253
    if-eqz v6, :cond_12

    .line 254
    .line 255
    iget v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->e:I

    .line 256
    .line 257
    const/4 v8, 0x5

    .line 258
    if-eq v6, v8, :cond_12

    .line 259
    .line 260
    if-ne v2, v8, :cond_11

    .line 261
    .line 262
    const/4 v6, 0x1

    .line 263
    goto :goto_d

    .line 264
    :cond_11
    move v6, v7

    .line 265
    :goto_d
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 266
    .line 267
    .line 268
    goto :goto_e

    .line 269
    :cond_12
    const/4 v14, 0x1

    .line 270
    iput-boolean v14, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a:Z

    .line 271
    .line 272
    iput-boolean v14, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:Z

    .line 273
    .line 274
    iput v2, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->e:I

    .line 275
    .line 276
    :cond_13
    :goto_e
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 277
    .line 278
    iget-wide v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 279
    .line 280
    invoke-virtual {v0, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s(J)J

    .line 281
    .line 282
    .line 283
    move-result-wide v8

    .line 284
    move-wide/from16 v6, p6

    .line 285
    .line 286
    move-object v0, v2

    .line 287
    move-wide/from16 v2, p2

    .line 288
    .line 289
    invoke-virtual/range {v0 .. v12}, Landroidx/media3/exoplayer/PlaybackInfo;->d(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    return-object v0
.end method

.method public final B0(ZZ)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p1, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    move p1, v1

    .line 13
    :goto_1
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S(ZZZZ)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Landroidx/media3/exoplayer/LoadControl;

    .line 22
    .line 23
    check-cast p1, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 24
    .line 25
    iget-object p2, p1, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    iget v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    .line 38
    .line 39
    sub-int/2addr v3, v1

    .line 40
    iput v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    .line 41
    .line 42
    if-nez v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->d()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 51
    .line 52
    iget-boolean p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 53
    .line 54
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/common/audio/AudioFocusManager;

    .line 55
    .line 56
    invoke-virtual {p2, v1, p1}, Landroidx/media3/common/audio/AudioFocusManager;->c(IZ)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(I)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final C0()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->o:Z

    .line 5
    .line 6
    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 7
    .line 8
    iget-boolean v2, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->k()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/StandaloneMediaClock;->a(J)V

    .line 17
    .line 18
    .line 19
    iput-boolean v1, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 22
    .line 23
    array-length v0, p0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_3

    .line 25
    .line 26
    aget-object v2, p0, v1

    .line 27
    .line 28
    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 29
    .line 30
    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 31
    .line 32
    invoke-static {v2}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-static {v2}, Landroidx/media3/exoplayer/RendererHolder;->b(Landroidx/media3/exoplayer/Renderer;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-static {v3}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-static {v3}, Landroidx/media3/exoplayer/RendererHolder;->b(Landroidx/media3/exoplayer/Renderer;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    return-void
.end method

.method public final D()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 9
    .line 10
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 11
    .line 12
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 13
    .line 14
    aget-object v2, v2, v1

    .line 15
    .line 16
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    return p0

    .line 24
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return v0
.end method

.method public final D0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    iget-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->m()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 24
    .line 25
    iget-boolean v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    .line 26
    .line 27
    if-eq v0, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->b(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 34
    .line 35
    :cond_2
    return-void
.end method

.method public final E(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    aget-object v1, v1, p1

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 10
    .line 11
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 12
    .line 13
    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 21
    .line 22
    aget-object p0, p0, p1

    .line 23
    .line 24
    iget-object p2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 25
    .line 26
    aget-object p1, p2, p1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->j(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0

    .line 33
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final E0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v7

    .line 16
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 17
    .line 18
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 21
    .line 22
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 23
    .line 24
    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 31
    .line 32
    check-cast v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    .line 33
    .line 34
    iget-wide v0, v0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 35
    .line 36
    :goto_0
    move-wide v11, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_1
    new-instance v3, Landroidx/media3/exoplayer/LoadControl$Parameters;

    .line 45
    .line 46
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 47
    .line 48
    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 49
    .line 50
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget v9, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 57
    .line 58
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 59
    .line 60
    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 61
    .line 62
    iget-boolean v10, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V:Z

    .line 63
    .line 64
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 65
    .line 66
    move-object v6, p1

    .line 67
    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 71
    .line 72
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Landroidx/media3/exoplayer/LoadControl;

    .line 73
    .line 74
    check-cast p0, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->o:Lcom/google/common/collect/ImmutableMap;

    .line 80
    .line 81
    iget-object v0, v4, Landroidx/media3/exoplayer/analytics/PlayerId;->a:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    check-cast p2, Ljava/lang/Integer;

    .line 88
    .line 89
    const/4 v0, -0x1

    .line 90
    if-eqz p2, :cond_1

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eq v1, v0, :cond_1

    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    goto :goto_2

    .line 103
    :cond_1
    iget p2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->l:I

    .line 104
    .line 105
    :goto_2
    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    if-ne p2, v0, :cond_5

    .line 117
    .line 118
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/DefaultLoadControl;->b(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    array-length v0, p1

    .line 123
    const/4 v2, 0x0

    .line 124
    move v3, v2

    .line 125
    move v4, v3

    .line 126
    :goto_3
    const/high16 v5, 0xc80000

    .line 127
    .line 128
    if-ge v3, v0, :cond_4

    .line 129
    .line 130
    aget-object v6, p1, v3

    .line 131
    .line 132
    if-eqz v6, :cond_3

    .line 133
    .line 134
    check-cast v6, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 135
    .line 136
    iget-object v6, v6, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->a:Landroidx/media3/common/TrackGroup;

    .line 137
    .line 138
    iget v6, v6, Landroidx/media3/common/TrackGroup;->c:I

    .line 139
    .line 140
    const/high16 v7, 0x20000

    .line 141
    .line 142
    packed-switch v6, :pswitch_data_0

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lfe;->h()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :pswitch_0
    move v5, v7

    .line 150
    goto :goto_4

    .line 151
    :pswitch_1
    const/high16 v5, 0x1900000

    .line 152
    .line 153
    goto :goto_4

    .line 154
    :pswitch_2
    if-eqz p2, :cond_2

    .line 155
    .line 156
    const/high16 v5, 0x12c0000

    .line 157
    .line 158
    goto :goto_4

    .line 159
    :cond_2
    const/high16 v5, 0x7d00000

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :pswitch_3
    const/high16 v5, 0x89a0000

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :pswitch_4
    move v5, v2

    .line 166
    :goto_4
    :pswitch_5
    add-int/2addr v4, v5

    .line 167
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_4
    const/high16 p1, 0xc880000

    .line 171
    .line 172
    invoke-static {v4, v5, p1}, Landroidx/media3/common/util/Util;->g(III)I

    .line 173
    .line 174
    .line 175
    move-result p2

    .line 176
    :cond_5
    iput p2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->c:I

    .line 177
    .line 178
    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->d()V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    nop

    .line 183
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final F()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 6
    .line 7
    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    .line 8
    .line 9
    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    cmp-long v0, v1, v3

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 23
    .line 24
    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 25
    .line 26
    cmp-long v0, v3, v1

    .line 27
    .line 28
    if-ltz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    :cond_0
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return p0
.end method

.method public final F0(IILjava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaSourceList;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-ltz p1, :cond_0

    .line 16
    .line 17
    if-gt p1, p2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-gt p2, v4, :cond_0

    .line 24
    .line 25
    move v4, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v4, v3

    .line 28
    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    sub-int v5, p2, p1

    .line 36
    .line 37
    if-ne v4, v5, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move v1, v3

    .line 41
    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 42
    .line 43
    .line 44
    move v1, p1

    .line 45
    :goto_2
    if-ge v1, p2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 52
    .line 53
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 54
    .line 55
    sub-int v5, v1, p1

    .line 56
    .line 57
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Landroidx/media3/common/MediaItem;

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->a(Landroidx/media3/common/MediaItem;)V

    .line 64
    .line 65
    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->b()Landroidx/media3/common/Timeline;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y(Landroidx/media3/common/Timeline;Z)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final G()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    const-wide/16 v4, 0x0

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    move v1, v6

    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 25
    .line 26
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 27
    .line 28
    iget-boolean v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 29
    .line 30
    if-nez v7, :cond_1

    .line 31
    .line 32
    move-wide v7, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 35
    .line 36
    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->e()J

    .line 37
    .line 38
    .line 39
    move-result-wide v7

    .line 40
    :goto_0
    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v13

    .line 44
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 45
    .line 46
    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 47
    .line 48
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 49
    .line 50
    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 51
    .line 52
    iget-object v8, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 53
    .line 54
    iget-object v8, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 55
    .line 56
    invoke-virtual {v0, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_2

    .line 61
    .line 62
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 63
    .line 64
    check-cast v7, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    .line 65
    .line 66
    iget-wide v7, v7, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 67
    .line 68
    move-wide/from16 v17, v7

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    move-wide/from16 v17, v2

    .line 72
    .line 73
    :goto_1
    new-instance v9, Landroidx/media3/exoplayer/LoadControl$Parameters;

    .line 74
    .line 75
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 76
    .line 77
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 78
    .line 79
    iget-object v11, v7, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 80
    .line 81
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 82
    .line 83
    iget-object v12, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 84
    .line 85
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget v15, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 92
    .line 93
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 94
    .line 95
    iget-boolean v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 96
    .line 97
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V:Z

    .line 98
    .line 99
    move/from16 v16, v1

    .line 100
    .line 101
    invoke-direct/range {v9 .. v18}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)V

    .line 102
    .line 103
    .line 104
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Landroidx/media3/exoplayer/LoadControl;

    .line 105
    .line 106
    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 107
    .line 108
    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/DefaultLoadControl;->c(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 113
    .line 114
    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 115
    .line 116
    if-nez v1, :cond_4

    .line 117
    .line 118
    iget-boolean v8, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 119
    .line 120
    if-eqz v8, :cond_4

    .line 121
    .line 122
    const-wide/32 v10, 0x7a120

    .line 123
    .line 124
    .line 125
    cmp-long v8, v13, v10

    .line 126
    .line 127
    if-gez v8, :cond_4

    .line 128
    .line 129
    iget-wide v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:J

    .line 130
    .line 131
    cmp-long v8, v10, v4

    .line 132
    .line 133
    if-gtz v8, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_3
    iget-object v1, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 137
    .line 138
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 139
    .line 140
    iget-wide v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 141
    .line 142
    invoke-virtual {v1, v7, v8}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->j(J)V

    .line 143
    .line 144
    .line 145
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Landroidx/media3/exoplayer/LoadControl;

    .line 146
    .line 147
    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 148
    .line 149
    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/DefaultLoadControl;->c(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    :cond_4
    :goto_2
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    .line 154
    .line 155
    if-eqz v1, :cond_a

    .line 156
    .line 157
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 158
    .line 159
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    new-instance v7, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    .line 165
    .line 166
    invoke-direct {v7}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    .line 167
    .line 168
    .line 169
    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 170
    .line 171
    iget-wide v10, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 172
    .line 173
    sub-long/2addr v8, v10

    .line 174
    iput-wide v8, v7, Landroidx/media3/exoplayer/LoadingInfo$Builder;->a:J

    .line 175
    .line 176
    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 177
    .line 178
    invoke-virtual {v8}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    iget v8, v8, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 183
    .line 184
    const/4 v9, 0x0

    .line 185
    cmpl-float v9, v8, v9

    .line 186
    .line 187
    const/4 v10, 0x1

    .line 188
    if-gtz v9, :cond_6

    .line 189
    .line 190
    const v9, -0x800001

    .line 191
    .line 192
    .line 193
    cmpl-float v9, v8, v9

    .line 194
    .line 195
    if-nez v9, :cond_5

    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_5
    move v9, v6

    .line 199
    goto :goto_4

    .line 200
    :cond_6
    :goto_3
    move v9, v10

    .line 201
    :goto_4
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 202
    .line 203
    .line 204
    iput v8, v7, Landroidx/media3/exoplayer/LoadingInfo$Builder;->b:F

    .line 205
    .line 206
    iget-wide v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W:J

    .line 207
    .line 208
    cmp-long v4, v8, v4

    .line 209
    .line 210
    if-gez v4, :cond_8

    .line 211
    .line 212
    cmp-long v2, v8, v2

    .line 213
    .line 214
    if-nez v2, :cond_7

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_7
    move v2, v6

    .line 218
    goto :goto_6

    .line 219
    :cond_8
    :goto_5
    move v2, v10

    .line 220
    :goto_6
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 221
    .line 222
    .line 223
    iput-wide v8, v7, Landroidx/media3/exoplayer/LoadingInfo$Builder;->c:J

    .line 224
    .line 225
    new-instance v2, Landroidx/media3/exoplayer/LoadingInfo;

    .line 226
    .line 227
    invoke-direct {v2, v7}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    .line 228
    .line 229
    .line 230
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 231
    .line 232
    if-nez v3, :cond_9

    .line 233
    .line 234
    move v6, v10

    .line 235
    :cond_9
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->b(Landroidx/media3/exoplayer/LoadingInfo;)Z

    .line 241
    .line 242
    .line 243
    :cond_a
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0()V

    .line 244
    .line 245
    .line 246
    return-void
.end method

.method public final G0(IIIZ)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p4, :cond_0

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    move p4, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move p4, v2

    .line 11
    :goto_0
    const/4 v3, 0x2

    .line 12
    if-ne p1, v0, :cond_1

    .line 13
    .line 14
    move p3, v3

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    if-ne p3, v3, :cond_2

    .line 17
    .line 18
    move p3, v1

    .line 19
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    .line 20
    .line 21
    if-nez p1, :cond_3

    .line 22
    .line 23
    move p2, v1

    .line 24
    goto :goto_2

    .line 25
    :cond_3
    if-ne p2, v1, :cond_5

    .line 26
    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    const/4 p2, 0x4

    .line 30
    goto :goto_2

    .line 31
    :cond_4
    move p2, v2

    .line 32
    :cond_5
    :goto_2
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 33
    .line 34
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 35
    .line 36
    if-ne v0, p4, :cond_6

    .line 37
    .line 38
    iget v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 39
    .line 40
    if-ne v0, p2, :cond_6

    .line 41
    .line 42
    iget v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    .line 43
    .line 44
    if-ne v0, p3, :cond_6

    .line 45
    .line 46
    goto :goto_5

    .line 47
    :cond_6
    invoke-virtual {p1, p3, p2, p4}, Landroidx/media3/exoplayer/PlaybackInfo;->e(IIZ)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 52
    .line 53
    invoke-virtual {p0, v2, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J0(ZZ)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 57
    .line 58
    iget-object p2, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 59
    .line 60
    :goto_3
    if-eqz p2, :cond_8

    .line 61
    .line 62
    iget-object p3, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 63
    .line 64
    iget-object p3, p3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 65
    .line 66
    array-length p4, p3

    .line 67
    move v0, v2

    .line 68
    :goto_4
    if-ge v0, p4, :cond_7

    .line 69
    .line 70
    aget-object v4, p3, v0

    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_7
    iget-object p2, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0()Z

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-nez p2, :cond_a

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C0()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H0()V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 91
    .line 92
    iget-boolean p3, p2, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    .line 93
    .line 94
    if-eqz p3, :cond_9

    .line 95
    .line 96
    invoke-virtual {p2, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->i(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 101
    .line 102
    :cond_9
    iget-wide p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 103
    .line 104
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s(J)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_a
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 109
    .line 110
    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 111
    .line 112
    const/4 p2, 0x3

    .line 113
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 114
    .line 115
    if-ne p1, p2, :cond_b

    .line 116
    .line 117
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 118
    .line 119
    iput-boolean v1, p1, Landroidx/media3/exoplayer/DefaultMediaClock;->o:Z

    .line 120
    .line 121
    iget-object p1, p1, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->b()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0()V

    .line 127
    .line 128
    .line 129
    invoke-interface {p3, v3}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_b
    if-ne p1, v3, :cond_c

    .line 134
    .line 135
    invoke-interface {p3, v3}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 136
    .line 137
    .line 138
    :cond_c
    :goto_5
    return-void
.end method

.method public final H()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q()V

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 7
    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 11
    .line 12
    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->d:Z

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 17
    .line 18
    if-eqz v2, :cond_a

    .line 19
    .line 20
    :cond_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->m()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_a

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 27
    .line 28
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 29
    .line 30
    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->t()J

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Landroidx/media3/exoplayer/LoadControl;

    .line 38
    .line 39
    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 40
    .line 41
    iget-object v2, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 62
    .line 63
    iget-boolean v3, v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    .line 64
    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_3
    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->d:Z

    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    if-nez v2, :cond_4

    .line 73
    .line 74
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 75
    .line 76
    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 77
    .line 78
    iput-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->d:Z

    .line 79
    .line 80
    invoke-virtual {v1, p0, v4, v5}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->p(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    .line 85
    .line 86
    invoke-direct {v2}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 90
    .line 91
    iget-wide v6, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 92
    .line 93
    sub-long/2addr v4, v6

    .line 94
    iput-wide v4, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->a:J

    .line 95
    .line 96
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 97
    .line 98
    invoke-virtual {v4}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget v4, v4, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    cmpl-float v5, v4, v5

    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    if-gtz v5, :cond_6

    .line 109
    .line 110
    const v5, -0x800001

    .line 111
    .line 112
    .line 113
    cmpl-float v5, v4, v5

    .line 114
    .line 115
    if-nez v5, :cond_5

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_5
    move v5, v6

    .line 119
    goto :goto_1

    .line 120
    :cond_6
    :goto_0
    move v5, v3

    .line 121
    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 122
    .line 123
    .line 124
    iput v4, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->b:F

    .line 125
    .line 126
    iget-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W:J

    .line 127
    .line 128
    const-wide/16 v7, 0x0

    .line 129
    .line 130
    cmp-long p0, v4, v7

    .line 131
    .line 132
    if-gez p0, :cond_8

    .line 133
    .line 134
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    cmp-long p0, v4, v7

    .line 140
    .line 141
    if-nez p0, :cond_7

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_7
    move p0, v6

    .line 145
    goto :goto_3

    .line 146
    :cond_8
    :goto_2
    move p0, v3

    .line 147
    :goto_3
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 148
    .line 149
    .line 150
    iput-wide v4, v2, Landroidx/media3/exoplayer/LoadingInfo$Builder;->c:J

    .line 151
    .line 152
    new-instance p0, Landroidx/media3/exoplayer/LoadingInfo;

    .line 153
    .line 154
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 158
    .line 159
    if-nez v0, :cond_9

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_9
    move v3, v6

    .line 163
    :goto_4
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, p0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->b(Landroidx/media3/exoplayer/LoadingInfo;)Z

    .line 167
    .line 168
    .line 169
    :cond_a
    :goto_5
    return-void
.end method

.method public final H0()V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 4
    .line 5
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_c

    .line 10
    .line 11
    :cond_0
    iget-boolean v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 12
    .line 13
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->o()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-wide v2, v10

    .line 28
    :goto_0
    cmp-long v4, v2, v10

    .line 29
    .line 30
    const/4 v12, 0x2

    .line 31
    const/16 v13, 0x10

    .line 32
    .line 33
    const/4 v14, 0x1

    .line 34
    const/4 v15, 0x0

    .line 35
    if-eqz v4, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_2

    .line 42
    .line 43
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 44
    .line 45
    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G()V

    .line 55
    .line 56
    .line 57
    :cond_2
    invoke-virtual {v0, v2, v3, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U(JZ)V

    .line 58
    .line 59
    .line 60
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 61
    .line 62
    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 63
    .line 64
    cmp-long v1, v2, v4

    .line 65
    .line 66
    if-eqz v1, :cond_12

    .line 67
    .line 68
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 69
    .line 70
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 71
    .line 72
    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    const/4 v9, 0x5

    .line 76
    move-object v1, v4

    .line 77
    move-wide v4, v5

    .line 78
    move-wide v6, v2

    .line 79
    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 84
    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_3
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 94
    .line 95
    iget-object v5, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->l:Landroidx/media3/exoplayer/Renderer;

    .line 96
    .line 97
    if-eqz v5, :cond_8

    .line 98
    .line 99
    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->b()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-nez v5, :cond_8

    .line 104
    .line 105
    if-eqz v3, :cond_4

    .line 106
    .line 107
    iget-object v5, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->l:Landroidx/media3/exoplayer/Renderer;

    .line 108
    .line 109
    check-cast v5, Landroidx/media3/exoplayer/BaseRenderer;

    .line 110
    .line 111
    iget v5, v5, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 112
    .line 113
    if-ne v5, v12, :cond_8

    .line 114
    .line 115
    :cond_4
    iget-object v5, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->l:Landroidx/media3/exoplayer/Renderer;

    .line 116
    .line 117
    invoke-interface {v5}, Landroidx/media3/exoplayer/Renderer;->a()Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_5

    .line 122
    .line 123
    if-nez v3, :cond_8

    .line 124
    .line 125
    iget-object v3, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->l:Landroidx/media3/exoplayer/Renderer;

    .line 126
    .line 127
    check-cast v3, Landroidx/media3/exoplayer/BaseRenderer;

    .line 128
    .line 129
    invoke-virtual {v3}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_5
    iget-object v3, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->m:Landroidx/media3/exoplayer/MediaClock;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    invoke-interface {v3}, Landroidx/media3/exoplayer/MediaClock;->k()J

    .line 142
    .line 143
    .line 144
    move-result-wide v5

    .line 145
    iget-boolean v7, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->n:Z

    .line 146
    .line 147
    if-eqz v7, :cond_7

    .line 148
    .line 149
    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->k()J

    .line 150
    .line 151
    .line 152
    move-result-wide v7

    .line 153
    cmp-long v7, v5, v7

    .line 154
    .line 155
    if-gez v7, :cond_6

    .line 156
    .line 157
    iget-boolean v3, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 158
    .line 159
    if-eqz v3, :cond_9

    .line 160
    .line 161
    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->k()J

    .line 162
    .line 163
    .line 164
    move-result-wide v5

    .line 165
    invoke-virtual {v4, v5, v6}, Landroidx/media3/exoplayer/StandaloneMediaClock;->a(J)V

    .line 166
    .line 167
    .line 168
    iput-boolean v15, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_6
    iput-boolean v15, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->n:Z

    .line 172
    .line 173
    iget-boolean v7, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->o:Z

    .line 174
    .line 175
    if-eqz v7, :cond_7

    .line 176
    .line 177
    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->b()V

    .line 178
    .line 179
    .line 180
    :cond_7
    invoke-virtual {v4, v5, v6}, Landroidx/media3/exoplayer/StandaloneMediaClock;->a(J)V

    .line 181
    .line 182
    .line 183
    invoke-interface {v3}, Landroidx/media3/exoplayer/MediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    iget-object v5, v4, Landroidx/media3/exoplayer/StandaloneMediaClock;->n:Landroidx/media3/common/PlaybackParameters;

    .line 188
    .line 189
    invoke-virtual {v3, v5}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    if-nez v5, :cond_9

    .line 194
    .line 195
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/StandaloneMediaClock;->c(Landroidx/media3/common/PlaybackParameters;)V

    .line 196
    .line 197
    .line 198
    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->k:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

    .line 199
    .line 200
    check-cast v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 201
    .line 202
    iget-object v4, v4, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 203
    .line 204
    invoke-interface {v4, v13, v3}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-interface {v3}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_8
    :goto_1
    iput-boolean v14, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->n:Z

    .line 213
    .line 214
    iget-boolean v3, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->o:Z

    .line 215
    .line 216
    if-eqz v3, :cond_9

    .line 217
    .line 218
    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->b()V

    .line 219
    .line 220
    .line 221
    :cond_9
    :goto_2
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->k()J

    .line 222
    .line 223
    .line 224
    move-result-wide v2

    .line 225
    iput-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 226
    .line 227
    iget-wide v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 228
    .line 229
    sub-long/2addr v2, v4

    .line 230
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 231
    .line 232
    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 233
    .line 234
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w:Ljava/util/ArrayList;

    .line 235
    .line 236
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-nez v1, :cond_10

    .line 241
    .line 242
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 243
    .line 244
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 245
    .line 246
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_a

    .line 251
    .line 252
    goto :goto_5

    .line 253
    :cond_a
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i0:Z

    .line 254
    .line 255
    if-eqz v1, :cond_b

    .line 256
    .line 257
    iput-boolean v15, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i0:Z

    .line 258
    .line 259
    :cond_b
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 260
    .line 261
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 262
    .line 263
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 264
    .line 265
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 266
    .line 267
    invoke-virtual {v4, v1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 268
    .line 269
    .line 270
    iget v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:I

    .line 271
    .line 272
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w:Ljava/util/ArrayList;

    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-lez v1, :cond_d

    .line 283
    .line 284
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w:Ljava/util/ArrayList;

    .line 285
    .line 286
    add-int/lit8 v5, v1, -0x1

    .line 287
    .line 288
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    if-nez v4, :cond_c

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_c
    invoke-static {}, Lio/sentry/d;->i()V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :cond_d
    :goto_3
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w:Ljava/util/ArrayList;

    .line 300
    .line 301
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-ge v1, v4, :cond_f

    .line 306
    .line 307
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w:Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    if-nez v4, :cond_e

    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_e
    invoke-static {}, Lio/sentry/d;->i()V

    .line 317
    .line 318
    .line 319
    return-void

    .line 320
    :cond_f
    :goto_4
    iput v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0:I

    .line 321
    .line 322
    :cond_10
    :goto_5
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 323
    .line 324
    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->m()Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eqz v1, :cond_11

    .line 329
    .line 330
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 331
    .line 332
    iget-boolean v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:Z

    .line 333
    .line 334
    xor-int/lit8 v8, v1, 0x1

    .line 335
    .line 336
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 337
    .line 338
    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 339
    .line 340
    iget-wide v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 341
    .line 342
    const/4 v9, 0x6

    .line 343
    move-object v1, v4

    .line 344
    move-wide v4, v5

    .line 345
    move-wide v6, v2

    .line 346
    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_11
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 354
    .line 355
    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 356
    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 358
    .line 359
    .line 360
    move-result-wide v2

    .line 361
    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->t:J

    .line 362
    .line 363
    :cond_12
    :goto_6
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 364
    .line 365
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 366
    .line 367
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 368
    .line 369
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d()J

    .line 370
    .line 371
    .line 372
    move-result-wide v3

    .line 373
    iput-wide v3, v2, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 374
    .line 375
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 376
    .line 377
    iget-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 378
    .line 379
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s(J)J

    .line 380
    .line 381
    .line 382
    move-result-wide v2

    .line 383
    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    .line 384
    .line 385
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 386
    .line 387
    iget-boolean v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 388
    .line 389
    if-eqz v2, :cond_1b

    .line 390
    .line 391
    iget v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 392
    .line 393
    const/4 v3, 0x3

    .line 394
    if-ne v2, v3, :cond_1b

    .line 395
    .line 396
    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 397
    .line 398
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 399
    .line 400
    invoke-virtual {v0, v2, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_1b

    .line 405
    .line 406
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 407
    .line 408
    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 409
    .line 410
    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 411
    .line 412
    const/high16 v4, 0x3f800000    # 1.0f

    .line 413
    .line 414
    cmpl-float v2, v2, v4

    .line 415
    .line 416
    if-nez v2, :cond_1b

    .line 417
    .line 418
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 419
    .line 420
    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 421
    .line 422
    iget-object v6, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 423
    .line 424
    iget-object v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 425
    .line 426
    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 427
    .line 428
    invoke-virtual {v0, v5, v6, v7, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    .line 429
    .line 430
    .line 431
    move-result-wide v5

    .line 432
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 433
    .line 434
    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    .line 435
    .line 436
    check-cast v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    .line 437
    .line 438
    move-wide/from16 v16, v10

    .line 439
    .line 440
    iget-wide v10, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->d:J

    .line 441
    .line 442
    cmp-long v1, v10, v16

    .line 443
    .line 444
    if-nez v1, :cond_13

    .line 445
    .line 446
    move/from16 v18, v15

    .line 447
    .line 448
    goto/16 :goto_b

    .line 449
    .line 450
    :cond_13
    iget v1, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->c:F

    .line 451
    .line 452
    sub-long v7, v5, v7

    .line 453
    .line 454
    iget-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->n:J

    .line 455
    .line 456
    cmp-long v11, v9, v16

    .line 457
    .line 458
    if-nez v11, :cond_14

    .line 459
    .line 460
    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->n:J

    .line 461
    .line 462
    const-wide/16 v7, 0x0

    .line 463
    .line 464
    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->o:J

    .line 465
    .line 466
    move v9, v14

    .line 467
    move/from16 v18, v15

    .line 468
    .line 469
    goto :goto_7

    .line 470
    :cond_14
    long-to-float v9, v9

    .line 471
    mul-float/2addr v9, v1

    .line 472
    sub-float v10, v4, v1

    .line 473
    .line 474
    long-to-float v11, v7

    .line 475
    mul-float/2addr v11, v10

    .line 476
    add-float/2addr v11, v9

    .line 477
    move v9, v14

    .line 478
    move/from16 v18, v15

    .line 479
    .line 480
    float-to-long v14, v11

    .line 481
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 482
    .line 483
    .line 484
    move-result-wide v14

    .line 485
    iput-wide v14, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->n:J

    .line 486
    .line 487
    sub-long/2addr v7, v14

    .line 488
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 489
    .line 490
    .line 491
    move-result-wide v7

    .line 492
    iget-wide v14, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->o:J

    .line 493
    .line 494
    long-to-float v11, v14

    .line 495
    mul-float/2addr v1, v11

    .line 496
    long-to-float v7, v7

    .line 497
    mul-float/2addr v10, v7

    .line 498
    add-float/2addr v10, v1

    .line 499
    float-to-long v7, v10

    .line 500
    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->o:J

    .line 501
    .line 502
    :goto_7
    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->m:J

    .line 503
    .line 504
    cmp-long v1, v7, v16

    .line 505
    .line 506
    const-wide/16 v7, 0x3e8

    .line 507
    .line 508
    if-eqz v1, :cond_15

    .line 509
    .line 510
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 511
    .line 512
    .line 513
    move-result-wide v10

    .line 514
    iget-wide v14, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->m:J

    .line 515
    .line 516
    sub-long/2addr v10, v14

    .line 517
    cmp-long v1, v10, v7

    .line 518
    .line 519
    if-gez v1, :cond_15

    .line 520
    .line 521
    iget v4, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    .line 522
    .line 523
    goto/16 :goto_b

    .line 524
    .line 525
    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 526
    .line 527
    .line 528
    move-result-wide v10

    .line 529
    iput-wide v10, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->m:J

    .line 530
    .line 531
    iget-wide v10, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->n:J

    .line 532
    .line 533
    const-wide/16 v14, 0x3

    .line 534
    .line 535
    move-wide/from16 v19, v7

    .line 536
    .line 537
    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->o:J

    .line 538
    .line 539
    mul-long/2addr v7, v14

    .line 540
    add-long v25, v7, v10

    .line 541
    .line 542
    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 543
    .line 544
    cmp-long v1, v7, v25

    .line 545
    .line 546
    if-lez v1, :cond_18

    .line 547
    .line 548
    invoke-static/range {v19 .. v20}, Landroidx/media3/common/util/Util;->D(J)J

    .line 549
    .line 550
    .line 551
    move-result-wide v10

    .line 552
    iget v1, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    .line 553
    .line 554
    sub-float/2addr v1, v4

    .line 555
    long-to-float v8, v10

    .line 556
    mul-float/2addr v1, v8

    .line 557
    float-to-long v10, v1

    .line 558
    iget v1, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->j:F

    .line 559
    .line 560
    sub-float/2addr v1, v4

    .line 561
    mul-float/2addr v1, v8

    .line 562
    float-to-long v14, v1

    .line 563
    add-long/2addr v10, v14

    .line 564
    iget-wide v14, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->f:J

    .line 565
    .line 566
    const v1, 0x33d6bf95    # 1.0E-7f

    .line 567
    .line 568
    .line 569
    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 570
    .line 571
    sub-long/2addr v7, v10

    .line 572
    new-array v10, v3, [J

    .line 573
    .line 574
    aput-wide v25, v10, v18

    .line 575
    .line 576
    aput-wide v14, v10, v9

    .line 577
    .line 578
    aput-wide v7, v10, v12

    .line 579
    .line 580
    aget-wide v7, v10, v18

    .line 581
    .line 582
    move v14, v9

    .line 583
    :goto_8
    if-ge v14, v3, :cond_17

    .line 584
    .line 585
    aget-wide v11, v10, v14

    .line 586
    .line 587
    cmp-long v9, v11, v7

    .line 588
    .line 589
    if-lez v9, :cond_16

    .line 590
    .line 591
    move-wide v7, v11

    .line 592
    :cond_16
    add-int/lit8 v14, v14, 0x1

    .line 593
    .line 594
    goto :goto_8

    .line 595
    :cond_17
    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 596
    .line 597
    goto :goto_9

    .line 598
    :cond_18
    const v1, 0x33d6bf95    # 1.0E-7f

    .line 599
    .line 600
    .line 601
    iget v3, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    .line 602
    .line 603
    sub-float/2addr v3, v4

    .line 604
    const/4 v7, 0x0

    .line 605
    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    .line 606
    .line 607
    .line 608
    move-result v3

    .line 609
    div-float/2addr v3, v1

    .line 610
    float-to-long v7, v3

    .line 611
    sub-long v21, v5, v7

    .line 612
    .line 613
    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 614
    .line 615
    move-wide/from16 v23, v7

    .line 616
    .line 617
    invoke-static/range {v21 .. v26}, Landroidx/media3/common/util/Util;->h(JJJ)J

    .line 618
    .line 619
    .line 620
    move-result-wide v7

    .line 621
    iput-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 622
    .line 623
    iget-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->h:J

    .line 624
    .line 625
    cmp-long v3, v9, v16

    .line 626
    .line 627
    if-eqz v3, :cond_19

    .line 628
    .line 629
    cmp-long v3, v7, v9

    .line 630
    .line 631
    if-lez v3, :cond_19

    .line 632
    .line 633
    iput-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 634
    .line 635
    :cond_19
    :goto_9
    iget-wide v7, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 636
    .line 637
    sub-long/2addr v5, v7

    .line 638
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 639
    .line 640
    .line 641
    move-result-wide v7

    .line 642
    iget-wide v9, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->a:J

    .line 643
    .line 644
    cmp-long v3, v7, v9

    .line 645
    .line 646
    if-gez v3, :cond_1a

    .line 647
    .line 648
    iput v4, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    .line 649
    .line 650
    goto :goto_a

    .line 651
    :cond_1a
    long-to-float v3, v5

    .line 652
    mul-float v7, v1, v3

    .line 653
    .line 654
    add-float/2addr v7, v4

    .line 655
    iget v1, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->k:F

    .line 656
    .line 657
    iget v3, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->j:F

    .line 658
    .line 659
    invoke-static {v7, v1, v3}, Landroidx/media3/common/util/Util;->f(FFF)F

    .line 660
    .line 661
    .line 662
    move-result v1

    .line 663
    iput v1, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    .line 664
    .line 665
    :goto_a
    iget v4, v2, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->l:F

    .line 666
    .line 667
    :goto_b
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 668
    .line 669
    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 674
    .line 675
    cmpl-float v1, v1, v4

    .line 676
    .line 677
    if-eqz v1, :cond_1b

    .line 678
    .line 679
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 680
    .line 681
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 682
    .line 683
    new-instance v2, Landroidx/media3/common/PlaybackParameters;

    .line 684
    .line 685
    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->b:F

    .line 686
    .line 687
    invoke-direct {v2, v4, v1}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    .line 688
    .line 689
    .line 690
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 691
    .line 692
    invoke-interface {v1, v13}, Landroidx/media3/common/util/HandlerWrapper;->j(I)V

    .line 693
    .line 694
    .line 695
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 696
    .line 697
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->c(Landroidx/media3/common/PlaybackParameters;)V

    .line 698
    .line 699
    .line 700
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 701
    .line 702
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 703
    .line 704
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 705
    .line 706
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 711
    .line 712
    move/from16 v3, v18

    .line 713
    .line 714
    invoke-virtual {v0, v1, v2, v3, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A(Landroidx/media3/common/PlaybackParameters;FZZ)V

    .line 715
    .line 716
    .line 717
    :cond_1b
    :goto_c
    return-void
.end method

.method public final I(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 4
    .line 5
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a:Z

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eq v3, v1, :cond_0

    .line 12
    .line 13
    move v3, v5

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v3, v4

    .line 16
    :goto_0
    or-int/2addr v2, v3

    .line 17
    iput-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a:Z

    .line 18
    .line 19
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 20
    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    iget-object v0, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 32
    .line 33
    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 34
    .line 35
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v1, -0x1

    .line 44
    if-eq v0, v1, :cond_1

    .line 45
    .line 46
    move v4, v5

    .line 47
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 48
    .line 49
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 50
    .line 51
    iget-object v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 52
    .line 53
    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 66
    .line 67
    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->o()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    filled-new-array {v2, v1, v3, p1}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string v1, "periodUid %s not found in timeline %s with size %d triggered by msg %d"

    .line 86
    .line 87
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1, v4}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 95
    .line 96
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y:Landroidx/media3/exoplayer/g;

    .line 97
    .line 98
    iget-object v0, v0, Landroidx/media3/exoplayer/g;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 99
    .line 100
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->j:Landroidx/media3/common/util/HandlerWrapper;

    .line 101
    .line 102
    new-instance v2, Landroidx/media3/exoplayer/i;

    .line 103
    .line 104
    invoke-direct {v2, v0, p1}, Landroidx/media3/exoplayer/i;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 108
    .line 109
    .line 110
    new-instance p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 111
    .line 112
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 113
    .line 114
    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    .line 115
    .line 116
    .line 117
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 118
    .line 119
    :cond_3
    return-void
.end method

.method public final I0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    .locals 8

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->D(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    iget-object v5, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 15
    .line 16
    if-nez v4, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    sget-object p1, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 28
    .line 29
    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 30
    .line 31
    :goto_0
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p3, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-nez p3, :cond_4

    .line 42
    .line 43
    iget-object p3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 44
    .line 45
    const/16 p4, 0x10

    .line 46
    .line 47
    invoke-interface {p3, p4}, Landroidx/media3/common/util/HandlerWrapper;->j(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->c(Landroidx/media3/common/PlaybackParameters;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 54
    .line 55
    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 56
    .line 57
    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 58
    .line 59
    const/4 p3, 0x0

    .line 60
    invoke-virtual {p0, p2, p1, p3, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A(Landroidx/media3/common/PlaybackParameters;FZZ)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 65
    .line 66
    invoke-virtual {p1, v5, p2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    iget v4, v4, Landroidx/media3/common/Timeline$Period;->c:I

    .line 71
    .line 72
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/common/Timeline$Window;

    .line 73
    .line 74
    invoke-virtual {p1, v4, v6}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v6, Landroidx/media3/common/Timeline$Window;->h:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 78
    .line 79
    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    .line 80
    .line 81
    check-cast v7, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    .line 82
    .line 83
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iput-wide v2, v7, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->d:J

    .line 90
    .line 91
    iput-wide v2, v7, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->g:J

    .line 92
    .line 93
    iput-wide v2, v7, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->h:J

    .line 94
    .line 95
    const v2, 0x3f7851ec    # 0.97f

    .line 96
    .line 97
    .line 98
    iput v2, v7, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->k:F

    .line 99
    .line 100
    const v2, 0x3f83d70a    # 1.03f

    .line 101
    .line 102
    .line 103
    iput v2, v7, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->j:F

    .line 104
    .line 105
    invoke-virtual {v7}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->a()V

    .line 106
    .line 107
    .line 108
    cmp-long v2, p5, v0

    .line 109
    .line 110
    if-eqz v2, :cond_2

    .line 111
    .line 112
    invoke-virtual {p0, p1, v5, p5, p6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J

    .line 113
    .line 114
    .line 115
    move-result-wide p0

    .line 116
    iput-wide p0, v7, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->e:J

    .line 117
    .line 118
    invoke-virtual {v7}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->a()V

    .line 119
    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    iget-object p0, v6, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->p()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_3

    .line 129
    .line 130
    iget-object p1, p4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 131
    .line 132
    invoke-virtual {p3, p1, p2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget p1, p1, Landroidx/media3/common/Timeline$Period;->c:I

    .line 137
    .line 138
    const-wide/16 p4, 0x0

    .line 139
    .line 140
    invoke-virtual {p3, p1, v6, p4, p5}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p1, p1, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    const/4 p1, 0x0

    .line 148
    :goto_1
    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p0

    .line 152
    if-eqz p0, :cond_5

    .line 153
    .line 154
    if-eqz p7, :cond_4

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    return-void

    .line 158
    :cond_5
    :goto_2
    iput-wide v0, v7, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->e:J

    .line 159
    .line 160
    invoke-virtual {v7}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->a()V

    .line 161
    .line 162
    .line 163
    return-void
.end method

.method public final J(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    check-cast v0, Landroidx/media3/exoplayer/BaseRenderer;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    .line 33
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x3

    .line 38
    if-eq v1, v2, :cond_1

    .line 39
    .line 40
    const/4 v2, 0x5

    .line 41
    if-ne v1, v2, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    throw v0

    .line 45
    :cond_1
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 46
    .line 47
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 48
    .line 49
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 50
    .line 51
    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 52
    .line 53
    aget-object v2, v2, p1

    .line 54
    .line 55
    check-cast v2, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 56
    .line 57
    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    aget-object v2, v2, v3

    .line 61
    .line 62
    invoke-static {v2}, Landroidx/media3/common/Format;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const-string v3, "Disabling track due to error: "

    .line 67
    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "ExoPlayerImplInternal"

    .line 73
    .line 74
    invoke-static {v3, v2, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    new-instance v5, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 78
    .line 79
    iget-object v0, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    .line 80
    .line 81
    invoke-virtual {v0}, [Landroidx/media3/exoplayer/RendererConfiguration;->clone()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, [Landroidx/media3/exoplayer/RendererConfiguration;

    .line 86
    .line 87
    iget-object v2, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 88
    .line 89
    invoke-virtual {v2}, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->clone()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 94
    .line 95
    iget-object v3, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->d:Landroidx/media3/common/Tracks;

    .line 96
    .line 97
    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->e:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-direct {v5, v0, v2, v3, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, v5, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    aput-object v1, v0, p1

    .line 106
    .line 107
    iget-object v0, v5, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 108
    .line 109
    aput-object v1, v0, p1

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k(I)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 115
    .line 116
    iget-object v4, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 117
    .line 118
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 119
    .line 120
    iget-wide v6, p0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 121
    .line 122
    iget-object p0, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->j:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 123
    .line 124
    array-length p0, p0

    .line 125
    new-array v9, p0, [Z

    .line 126
    .line 127
    const/4 v8, 0x0

    .line 128
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/MediaPeriodHolder;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public final J0(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/common/util/Clock;

    .line 8
    .line 9
    check-cast p1, Landroidx/media3/common/util/SystemClock;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W:J

    .line 25
    .line 26
    return-void
.end method

.method public final K(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l:[Z

    .line 2
    .line 3
    aget-boolean v1, v0, p1

    .line 4
    .line 5
    if-eq v1, p2, :cond_0

    .line 6
    .line 7
    aput-boolean p2, v0, p1

    .line 8
    .line 9
    new-instance v0, Landroidx/media3/exoplayer/n;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/n;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;IZ)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Landroidx/media3/common/util/HandlerWrapper;

    .line 15
    .line 16
    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->b()Landroidx/media3/common/Timeline;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y(Landroidx/media3/common/Timeline;Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final M()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    throw p0
.end method

.method public final N()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, v0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S(ZZZZ)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Landroidx/media3/exoplayer/LoadControl;

    .line 12
    .line 13
    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 14
    .line 15
    iget-object v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    iget-wide v6, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->q:J

    .line 26
    .line 27
    const-wide/16 v8, -0x1

    .line 28
    .line 29
    cmp-long v8, v6, v8

    .line 30
    .line 31
    if-eqz v8, :cond_1

    .line 32
    .line 33
    cmp-long v6, v6, v4

    .line 34
    .line 35
    if-nez v6, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v6, v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    move v6, v1

    .line 41
    :goto_1
    const-string v7, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    .line 42
    .line 43
    invoke-static {v7, v6}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    iput-wide v4, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->q:J

    .line 47
    .line 48
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 55
    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    new-instance v5, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    iput v1, v5, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    .line 64
    .line 65
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_2
    iget v6, v5, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    .line 70
    .line 71
    add-int/2addr v6, v1

    .line 72
    iput v6, v5, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    .line 73
    .line 74
    :goto_2
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    iget-object v5, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->o:Lcom/google/common/collect/ImmutableMap;

    .line 84
    .line 85
    iget-object v4, v4, Landroidx/media3/exoplayer/analytics/PlayerId;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/Integer;

    .line 92
    .line 93
    const/4 v5, -0x1

    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-eq v6, v5, :cond_3

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    goto :goto_3

    .line 107
    :cond_3
    iget v2, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->l:I

    .line 108
    .line 109
    :goto_3
    if-eq v2, v5, :cond_4

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    const/high16 v2, 0xc80000

    .line 113
    .line 114
    :goto_4
    iput v2, v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->c:I

    .line 115
    .line 116
    iput-boolean v0, v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    .line 117
    .line 118
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 119
    .line 120
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 121
    .line 122
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    const/4 v3, 0x2

    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    const/4 v2, 0x4

    .line 130
    goto :goto_5

    .line 131
    :cond_5
    move v2, v3

    .line 132
    :goto_5
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(I)V

    .line 133
    .line 134
    .line 135
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 136
    .line 137
    iget-boolean v4, v2, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 138
    .line 139
    iget v5, v2, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 140
    .line 141
    iget v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    .line 142
    .line 143
    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/common/audio/AudioFocusManager;

    .line 144
    .line 145
    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 146
    .line 147
    invoke-virtual {v7, v2, v4}, Landroidx/media3/common/audio/AudioFocusManager;->c(IZ)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-virtual {p0, v2, v5, v6, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G0(IIIZ)V

    .line 152
    .line 153
    .line 154
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 155
    .line 156
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaSourceList;->c:Ljava/util/ArrayList;

    .line 157
    .line 158
    iget-boolean v5, v2, Landroidx/media3/exoplayer/MediaSourceList;->l:Z

    .line 159
    .line 160
    xor-int/2addr v5, v1

    .line 161
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 162
    .line 163
    .line 164
    :goto_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-ge v0, v5, :cond_6

    .line 169
    .line 170
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    check-cast v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 175
    .line 176
    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/MediaSourceList;->e(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V

    .line 177
    .line 178
    .line 179
    iget-object v6, v2, Landroidx/media3/exoplayer/MediaSourceList;->h:Ljava/util/HashSet;

    .line 180
    .line 181
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    add-int/lit8 v0, v0, 0x1

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_6
    iput-boolean v1, v2, Landroidx/media3/exoplayer/MediaSourceList;->l:Z

    .line 188
    .line 189
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 190
    .line 191
    invoke-interface {p0, v3}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public final O(Landroidx/media3/common/util/ConditionVariable;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0, v1, v0, v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S(ZZZZ)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P()V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Landroidx/media3/exoplayer/LoadControl;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 12
    .line 13
    check-cast v2, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 14
    .line 15
    iget-object v4, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    check-cast v5, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    iget v6, v5, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    .line 26
    .line 27
    sub-int/2addr v6, v1

    .line 28
    iput v6, v5, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    .line 29
    .line 30
    if-nez v6, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultLoadControl;->d()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    const-wide/16 v3, -0x1

    .line 47
    .line 48
    iput-wide v3, v2, Landroidx/media3/exoplayer/DefaultLoadControl;->q:J

    .line 49
    .line 50
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/common/audio/AudioFocusManager;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    iput-object v3, v2, Landroidx/media3/common/audio/AudioFocusManager;->c:Landroidx/media3/common/audio/AudioFocusManager$PlayerControl;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroidx/media3/common/audio/AudioFocusManager;->a()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Landroidx/media3/common/audio/AudioFocusManager;->b(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 62
    .line 63
    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 64
    .line 65
    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->g:Ljava/lang/Thread;

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v4, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->g:Ljava/lang/Thread;

    .line 74
    .line 75
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const-string v4, "DefaultTrackSelector is accessed on the wrong thread."

    .line 80
    .line 81
    invoke-static {v4, v2}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 85
    .line 86
    const/16 v4, 0x20

    .line 87
    .line 88
    if-lt v2, v4, :cond_5

    .line 89
    .line 90
    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    iget-object v4, v2, Landroidx/media3/exoplayer/util/SpatializerWrapper;->c:Landroid/os/Handler;

    .line 95
    .line 96
    iget-object v5, v2, Landroidx/media3/exoplayer/util/SpatializerWrapper;->a:Landroid/media/Spatializer;

    .line 97
    .line 98
    if-eqz v5, :cond_4

    .line 99
    .line 100
    iget-object v2, v2, Landroidx/media3/exoplayer/util/SpatializerWrapper;->d:Landroid/media/Spatializer$OnSpatializerStateChangedListener;

    .line 101
    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    if-nez v4, :cond_3

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-static {v5, v2}, Lk;->g(Landroid/media/Spatializer;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_0
    iput-object v3, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 114
    .line 115
    :cond_5
    iput-object v3, v0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    .line 116
    .line 117
    iput-object v3, v0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->b:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 123
    .line 124
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->f()V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/media3/exoplayer/PlaybackLooperProvider;->a()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->c()Z

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 138
    .line 139
    invoke-interface {v1}, Landroidx/media3/common/util/HandlerWrapper;->f()V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q:Landroidx/media3/exoplayer/PlaybackLooperProvider;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/media3/exoplayer/PlaybackLooperProvider;->a()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->c()Z

    .line 148
    .line 149
    .line 150
    throw v0
.end method

.method public final P()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 4
    .line 5
    array-length v2, v2

    .line 6
    if-ge v1, v2, :cond_3

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    check-cast v2, Landroidx/media3/exoplayer/BaseRenderer;

    .line 13
    .line 14
    iget-object v3, v2, Landroidx/media3/exoplayer/BaseRenderer;->j:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v3

    .line 17
    const/4 v4, 0x0

    .line 18
    :try_start_0
    iput-object v4, v2, Landroidx/media3/exoplayer/BaseRenderer;->B:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 19
    .line 20
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 22
    .line 23
    aget-object v2, v2, v1

    .line 24
    .line 25
    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 26
    .line 27
    check-cast v3, Landroidx/media3/exoplayer/BaseRenderer;

    .line 28
    .line 29
    iget v4, v3, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    move v4, v5

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    move v4, v0

    .line 37
    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Landroidx/media3/exoplayer/BaseRenderer;->w()V

    .line 41
    .line 42
    .line 43
    iput-boolean v0, v2, Landroidx/media3/exoplayer/RendererHolder;->e:Z

    .line 44
    .line 45
    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    check-cast v3, Landroidx/media3/exoplayer/BaseRenderer;

    .line 50
    .line 51
    iget v4, v3, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 52
    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    move v5, v0

    .line 57
    :goto_2
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroidx/media3/exoplayer/BaseRenderer;->w()V

    .line 61
    .line 62
    .line 63
    iput-boolean v0, v2, Landroidx/media3/exoplayer/RendererHolder;->f:Z

    .line 64
    .line 65
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0

    .line 71
    :cond_3
    return-void
.end method

.method public final Q(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    if-gt p1, p2, :cond_0

    .line 16
    .line 17
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaSourceList;->c:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-gt p2, v3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v2

    .line 27
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 28
    .line 29
    .line 30
    iput-object p3, v0, Landroidx/media3/exoplayer/MediaSourceList;->k:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 31
    .line 32
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList;->f(II)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->b()Landroidx/media3/common/Timeline;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y(Landroidx/media3/common/Timeline;Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final R()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 12
    .line 13
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->f()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const/4 v10, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    move-object v11, v3

    .line 22
    move v3, v10

    .line 23
    :goto_0
    if-eqz v11, :cond_14

    .line 24
    .line 25
    iget-boolean v5, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    goto/16 :goto_c

    .line 30
    .line 31
    :cond_0
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 32
    .line 33
    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 34
    .line 35
    invoke-virtual {v11, v1, v5}, Landroidx/media3/exoplayer/MediaPeriodHolder;->j(FLandroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 36
    .line 37
    .line 38
    move-result-object v12

    .line 39
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 40
    .line 41
    iget-object v5, v5, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 42
    .line 43
    if-ne v11, v5, :cond_1

    .line 44
    .line 45
    move-object v14, v12

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v14, v4

    .line 48
    :goto_1
    iget-object v4, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 49
    .line 50
    iget-object v5, v12, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    if-eqz v4, :cond_6

    .line 54
    .line 55
    iget-object v7, v4, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 56
    .line 57
    array-length v7, v7

    .line 58
    array-length v8, v5

    .line 59
    if-eq v7, v8, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    move v7, v6

    .line 63
    :goto_2
    array-length v8, v5

    .line 64
    if-ge v7, v8, :cond_4

    .line 65
    .line 66
    invoke-virtual {v12, v4, v7}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;I)Z

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-nez v8, :cond_3

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    if-ne v11, v2, :cond_5

    .line 77
    .line 78
    move v3, v6

    .line 79
    :cond_5
    iget-object v11, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 80
    .line 81
    move-object v4, v14

    .line 82
    goto :goto_0

    .line 83
    :cond_6
    :goto_3
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 84
    .line 85
    const/4 v2, 0x4

    .line 86
    if-eqz v3, :cond_11

    .line 87
    .line 88
    iget-object v13, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 89
    .line 90
    invoke-virtual {v1, v13}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    and-int/2addr v1, v10

    .line 95
    if-eqz v1, :cond_7

    .line 96
    .line 97
    move/from16 v17, v10

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_7
    move/from16 v17, v6

    .line 101
    .line 102
    :goto_4
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 103
    .line 104
    array-length v1, v1

    .line 105
    new-array v1, v1, [Z

    .line 106
    .line 107
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 111
    .line 112
    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 113
    .line 114
    move-object/from16 v18, v1

    .line 115
    .line 116
    move-wide v15, v3

    .line 117
    invoke-virtual/range {v13 .. v18}, Landroidx/media3/exoplayer/MediaPeriodHolder;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 122
    .line 123
    iget v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 124
    .line 125
    if-eq v5, v2, :cond_8

    .line 126
    .line 127
    iget-wide v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 128
    .line 129
    cmp-long v1, v3, v7

    .line 130
    .line 131
    if-eqz v1, :cond_8

    .line 132
    .line 133
    move v8, v10

    .line 134
    goto :goto_5

    .line 135
    :cond_8
    move v8, v6

    .line 136
    :goto_5
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 137
    .line 138
    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 139
    .line 140
    move v9, v2

    .line 141
    move-wide v2, v3

    .line 142
    move-object v7, v5

    .line 143
    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 144
    .line 145
    iget-wide v11, v1, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    .line 146
    .line 147
    move v1, v9

    .line 148
    const/4 v9, 0x5

    .line 149
    move v15, v1

    .line 150
    move v14, v6

    .line 151
    move-object v1, v7

    .line 152
    move-wide v6, v11

    .line 153
    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 158
    .line 159
    if-eqz v8, :cond_9

    .line 160
    .line 161
    invoke-virtual {v0, v2, v3, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U(JZ)V

    .line 162
    .line 163
    .line 164
    :cond_9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j()V

    .line 165
    .line 166
    .line 167
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 168
    .line 169
    array-length v1, v1

    .line 170
    new-array v1, v1, [Z

    .line 171
    .line 172
    move v6, v14

    .line 173
    :goto_6
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 174
    .line 175
    array-length v3, v2

    .line 176
    if-ge v6, v3, :cond_f

    .line 177
    .line 178
    aget-object v2, v2, v6

    .line 179
    .line 180
    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->c()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 185
    .line 186
    aget-object v3, v3, v6

    .line 187
    .line 188
    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->l()Z

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    aput-boolean v3, v1, v6

    .line 193
    .line 194
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 195
    .line 196
    aget-object v3, v3, v6

    .line 197
    .line 198
    iget-object v4, v13, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 199
    .line 200
    aget-object v4, v4, v6

    .line 201
    .line 202
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 203
    .line 204
    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 205
    .line 206
    aget-boolean v9, v18, v6

    .line 207
    .line 208
    iget-object v11, v3, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 209
    .line 210
    invoke-static {v11}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 211
    .line 212
    .line 213
    move-result v12

    .line 214
    if-eqz v12, :cond_b

    .line 215
    .line 216
    move-object v12, v11

    .line 217
    check-cast v12, Landroidx/media3/exoplayer/BaseRenderer;

    .line 218
    .line 219
    iget-object v12, v12, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 220
    .line 221
    if-eq v4, v12, :cond_a

    .line 222
    .line 223
    invoke-virtual {v3, v11, v5}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    .line 224
    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_a
    if-eqz v9, :cond_b

    .line 228
    .line 229
    check-cast v11, Landroidx/media3/exoplayer/BaseRenderer;

    .line 230
    .line 231
    invoke-virtual {v11, v7, v8, v14, v10}, Landroidx/media3/exoplayer/BaseRenderer;->E(JZZ)V

    .line 232
    .line 233
    .line 234
    :cond_b
    :goto_7
    iget-object v11, v3, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 235
    .line 236
    if-eqz v11, :cond_d

    .line 237
    .line 238
    invoke-static {v11}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    if-eqz v12, :cond_d

    .line 243
    .line 244
    move-object v12, v11

    .line 245
    check-cast v12, Landroidx/media3/exoplayer/BaseRenderer;

    .line 246
    .line 247
    iget-object v15, v12, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 248
    .line 249
    if-eq v4, v15, :cond_c

    .line 250
    .line 251
    invoke-virtual {v3, v11, v5}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    .line 252
    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_c
    if-eqz v9, :cond_d

    .line 256
    .line 257
    invoke-virtual {v12, v7, v8, v14, v10}, Landroidx/media3/exoplayer/BaseRenderer;->E(JZZ)V

    .line 258
    .line 259
    .line 260
    :cond_d
    :goto_8
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 261
    .line 262
    aget-object v3, v3, v6

    .line 263
    .line 264
    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->c()I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    sub-int v3, v2, v3

    .line 269
    .line 270
    if-lez v3, :cond_e

    .line 271
    .line 272
    invoke-virtual {v0, v6, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K(IZ)V

    .line 273
    .line 274
    .line 275
    :cond_e
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    .line 276
    .line 277
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 278
    .line 279
    aget-object v4, v4, v6

    .line 280
    .line 281
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->c()I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    sub-int/2addr v2, v4

    .line 286
    sub-int/2addr v3, v2

    .line 287
    iput v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    .line 288
    .line 289
    add-int/lit8 v6, v6, 0x1

    .line 290
    .line 291
    const/4 v15, 0x4

    .line 292
    goto :goto_6

    .line 293
    :cond_f
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 294
    .line 295
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o([ZJ)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0(Landroidx/media3/exoplayer/MediaPeriodHolder;)V

    .line 299
    .line 300
    .line 301
    :cond_10
    const/4 v1, 0x4

    .line 302
    goto :goto_b

    .line 303
    :cond_11
    move v14, v6

    .line 304
    invoke-virtual {v1, v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    .line 305
    .line 306
    .line 307
    iget-boolean v1, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 308
    .line 309
    if-eqz v1, :cond_10

    .line 310
    .line 311
    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 312
    .line 313
    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 314
    .line 315
    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 316
    .line 317
    iget-wide v5, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 318
    .line 319
    sub-long/2addr v3, v5

    .line 320
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 321
    .line 322
    .line 323
    move-result-wide v1

    .line 324
    iget-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    .line 325
    .line 326
    if-eqz v3, :cond_13

    .line 327
    .line 328
    move v6, v14

    .line 329
    :goto_9
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 330
    .line 331
    array-length v3, v3

    .line 332
    if-ge v6, v3, :cond_13

    .line 333
    .line 334
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 335
    .line 336
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 337
    .line 338
    aget-object v3, v3, v6

    .line 339
    .line 340
    invoke-static {v3, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    if-eqz v3, :cond_12

    .line 345
    .line 346
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 347
    .line 348
    aget-object v3, v3, v6

    .line 349
    .line 350
    invoke-virtual {v3, v11}, Landroidx/media3/exoplayer/RendererHolder;->j(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    if-eqz v3, :cond_12

    .line 355
    .line 356
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j()V

    .line 357
    .line 358
    .line 359
    goto :goto_a

    .line 360
    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 361
    .line 362
    goto :goto_9

    .line 363
    :cond_13
    :goto_a
    iget-object v3, v11, Landroidx/media3/exoplayer/MediaPeriodHolder;->j:[Landroidx/media3/exoplayer/RendererCapabilities;

    .line 364
    .line 365
    array-length v3, v3

    .line 366
    new-array v3, v3, [Z

    .line 367
    .line 368
    const/4 v15, 0x0

    .line 369
    move-wide v13, v1

    .line 370
    move-object/from16 v16, v3

    .line 371
    .line 372
    const/4 v1, 0x4

    .line 373
    invoke-virtual/range {v11 .. v16}, Landroidx/media3/exoplayer/MediaPeriodHolder;->a(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;JZ[Z)J

    .line 374
    .line 375
    .line 376
    :goto_b
    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 377
    .line 378
    .line 379
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 380
    .line 381
    iget v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 382
    .line 383
    if-eq v2, v1, :cond_14

    .line 384
    .line 385
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H0()V

    .line 389
    .line 390
    .line 391
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 392
    .line 393
    const/4 v1, 0x2

    .line 394
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 395
    .line 396
    .line 397
    :cond_14
    :goto_c
    return-void
.end method

.method public final S(ZZZZ)V
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "ExoPlayerImplInternal"

    .line 4
    .line 5
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-interface {v0, v3}, Landroidx/media3/common/util/HandlerWrapper;->j(I)V

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    iput-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    .line 13
    .line 14
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 21
    .line 22
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 23
    .line 24
    .line 25
    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 26
    .line 27
    :cond_0
    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 28
    .line 29
    invoke-virtual {v1, v3, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J0(ZZ)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 33
    .line 34
    iput-boolean v3, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->o:Z

    .line 35
    .line 36
    iget-object v0, v0, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 37
    .line 38
    iget-boolean v6, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->k()J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    invoke-virtual {v0, v6, v7}, Landroidx/media3/exoplayer/StandaloneMediaClock;->a(J)V

    .line 47
    .line 48
    .line 49
    iput-boolean v3, v0, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 50
    .line 51
    :cond_1
    const-wide v6, 0xe8d4a51000L

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    iput-wide v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 57
    .line 58
    move v0, v3

    .line 59
    :goto_0
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    :try_start_0
    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 65
    .line 66
    array-length v8, v8

    .line 67
    if-ge v0, v8, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k(I)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    goto :goto_1

    .line 77
    :catch_1
    move-exception v0

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iput-wide v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m0:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :goto_1
    const-string v8, "Disable failed."

    .line 83
    .line 84
    invoke-static {v2, v8, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 90
    .line 91
    array-length v9, v8

    .line 92
    move v10, v3

    .line 93
    :goto_3
    if-ge v10, v9, :cond_3

    .line 94
    .line 95
    aget-object v0, v8, v10

    .line 96
    .line 97
    :try_start_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/RendererHolder;->p()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :catch_2
    move-exception v0

    .line 102
    const-string v11, "Reset failed."

    .line 103
    .line 104
    invoke-static {v2, v11, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    .line 111
    .line 112
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 113
    .line 114
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 115
    .line 116
    iget-wide v8, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 117
    .line 118
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 119
    .line 120
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_5

    .line 127
    .line 128
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 129
    .line 130
    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 131
    .line 132
    iget-object v11, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 133
    .line 134
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-nez v12, :cond_5

    .line 141
    .line 142
    iget-object v11, v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 143
    .line 144
    invoke-virtual {v0, v11, v10}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->f:Z

    .line 149
    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_4
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 154
    .line 155
    iget-wide v10, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 156
    .line 157
    goto :goto_6

    .line 158
    :cond_5
    :goto_5
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 159
    .line 160
    iget-wide v10, v0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 161
    .line 162
    :goto_6
    if-eqz p2, :cond_7

    .line 163
    .line 164
    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 165
    .line 166
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 167
    .line 168
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 177
    .line 178
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Ljava/lang/Long;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 183
    .line 184
    .line 185
    move-result-wide v8

    .line 186
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 187
    .line 188
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 189
    .line 190
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_6

    .line 195
    .line 196
    :goto_7
    move-wide v11, v8

    .line 197
    move-wide v9, v6

    .line 198
    goto :goto_8

    .line 199
    :cond_6
    move v5, v3

    .line 200
    goto :goto_7

    .line 201
    :cond_7
    move-wide/from16 v33, v10

    .line 202
    .line 203
    move-wide v11, v8

    .line 204
    move-wide/from16 v9, v33

    .line 205
    .line 206
    move v5, v3

    .line 207
    :goto_8
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 208
    .line 209
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->b()V

    .line 210
    .line 211
    .line 212
    iput-boolean v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    .line 213
    .line 214
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 215
    .line 216
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 217
    .line 218
    if-eqz p3, :cond_a

    .line 219
    .line 220
    instance-of v6, v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 221
    .line 222
    if-eqz v6, :cond_a

    .line 223
    .line 224
    check-cast v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 225
    .line 226
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 227
    .line 228
    iget-object v6, v6, Landroidx/media3/exoplayer/MediaSourceList;->k:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 229
    .line 230
    iget-object v7, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 231
    .line 232
    array-length v8, v7

    .line 233
    new-array v8, v8, [Landroidx/media3/common/Timeline;

    .line 234
    .line 235
    move v13, v3

    .line 236
    :goto_9
    array-length v14, v7

    .line 237
    if-ge v13, v14, :cond_8

    .line 238
    .line 239
    new-instance v14, Landroidx/media3/exoplayer/PlaylistTimeline$1;

    .line 240
    .line 241
    aget-object v15, v7, v13

    .line 242
    .line 243
    invoke-direct {v14, v15}, Landroidx/media3/exoplayer/PlaylistTimeline$1;-><init>(Landroidx/media3/common/Timeline;)V

    .line 244
    .line 245
    .line 246
    aput-object v14, v8, v13

    .line 247
    .line 248
    add-int/lit8 v13, v13, 0x1

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_8
    new-instance v7, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 252
    .line 253
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->j:[Ljava/lang/Object;

    .line 254
    .line 255
    invoke-direct {v7, v8, v0, v6}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 256
    .line 257
    .line 258
    iget v0, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 259
    .line 260
    const/4 v6, -0x1

    .line 261
    if-eq v0, v6, :cond_9

    .line 262
    .line 263
    iget-object v0, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 264
    .line 265
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 266
    .line 267
    invoke-virtual {v7, v0, v6}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 268
    .line 269
    .line 270
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 271
    .line 272
    iget v0, v0, Landroidx/media3/common/Timeline$Period;->c:I

    .line 273
    .line 274
    iget-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/common/Timeline$Window;

    .line 275
    .line 276
    const-wide/16 v13, 0x0

    .line 277
    .line 278
    invoke-virtual {v7, v0, v6, v13, v14}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6}, Landroidx/media3/common/Timeline$Window;->a()Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    if-eqz v0, :cond_9

    .line 286
    .line 287
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 288
    .line 289
    iget-object v6, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 290
    .line 291
    iget-wide v13, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 292
    .line 293
    invoke-direct {v0, v13, v14, v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(JLjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    move-object v8, v0

    .line 297
    goto :goto_b

    .line 298
    :cond_9
    :goto_a
    move-object v8, v2

    .line 299
    goto :goto_b

    .line 300
    :cond_a
    move-object v7, v0

    .line 301
    goto :goto_a

    .line 302
    :goto_b
    new-instance v6, Landroidx/media3/exoplayer/PlaybackInfo;

    .line 303
    .line 304
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 305
    .line 306
    iget v13, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 307
    .line 308
    if-eqz p4, :cond_b

    .line 309
    .line 310
    move-object v14, v4

    .line 311
    goto :goto_c

    .line 312
    :cond_b
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->f:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 313
    .line 314
    move-object v14, v2

    .line 315
    :goto_c
    if-eqz v5, :cond_c

    .line 316
    .line 317
    sget-object v2, Landroidx/media3/exoplayer/source/TrackGroupArray;->d:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 318
    .line 319
    :goto_d
    move-object/from16 v16, v2

    .line 320
    .line 321
    goto :goto_e

    .line 322
    :cond_c
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->h:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 323
    .line 324
    goto :goto_d

    .line 325
    :goto_e
    if-eqz v5, :cond_d

    .line 326
    .line 327
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 328
    .line 329
    :goto_f
    move-object/from16 v17, v2

    .line 330
    .line 331
    goto :goto_10

    .line 332
    :cond_d
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->i:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 333
    .line 334
    goto :goto_f

    .line 335
    :goto_10
    if-eqz v5, :cond_e

    .line 336
    .line 337
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    :goto_11
    move-object/from16 v18, v0

    .line 342
    .line 343
    goto :goto_12

    .line 344
    :cond_e
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->j:Ljava/util/List;

    .line 345
    .line 346
    goto :goto_11

    .line 347
    :goto_12
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 348
    .line 349
    iget-boolean v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 350
    .line 351
    iget v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    .line 352
    .line 353
    iget v15, v0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 354
    .line 355
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 356
    .line 357
    const-wide/16 v30, 0x0

    .line 358
    .line 359
    const/16 v32, 0x0

    .line 360
    .line 361
    move/from16 v22, v15

    .line 362
    .line 363
    const/4 v15, 0x0

    .line 364
    const-wide/16 v26, 0x0

    .line 365
    .line 366
    move-object/from16 v19, v8

    .line 367
    .line 368
    move-wide/from16 v24, v11

    .line 369
    .line 370
    move-wide/from16 v28, v11

    .line 371
    .line 372
    move-object/from16 v23, v0

    .line 373
    .line 374
    move/from16 v20, v2

    .line 375
    .line 376
    move/from16 v21, v5

    .line 377
    .line 378
    invoke-direct/range {v6 .. v32}, Landroidx/media3/exoplayer/PlaybackInfo;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJILandroidx/media3/exoplayer/ExoPlaybackException;ZLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;ZIILandroidx/media3/common/PlaybackParameters;JJJJZ)V

    .line 379
    .line 380
    .line 381
    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 382
    .line 383
    if-eqz p3, :cond_12

    .line 384
    .line 385
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 386
    .line 387
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-nez v2, :cond_10

    .line 394
    .line 395
    new-instance v2, Ljava/util/ArrayList;

    .line 396
    .line 397
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .line 399
    .line 400
    move v5, v3

    .line 401
    :goto_13
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    if-ge v5, v6, :cond_f

    .line 408
    .line 409
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 410
    .line 411
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v6

    .line 415
    check-cast v6, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 416
    .line 417
    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()V

    .line 418
    .line 419
    .line 420
    add-int/lit8 v5, v5, 0x1

    .line 421
    .line 422
    goto :goto_13

    .line 423
    :cond_f
    iput-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 424
    .line 425
    iput-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 426
    .line 427
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q()V

    .line 428
    .line 429
    .line 430
    :cond_10
    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 431
    .line 432
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaSourceList;->g:Ljava/util/HashMap;

    .line 433
    .line 434
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_11

    .line 447
    .line 448
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    move-object v5, v0

    .line 453
    check-cast v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;

    .line 454
    .line 455
    :try_start_2
    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    .line 456
    .line 457
    iget-object v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->b:Landroidx/media3/exoplayer/r;

    .line 458
    .line 459
    check-cast v0, Landroidx/media3/exoplayer/source/BaseMediaSource;

    .line 460
    .line 461
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/BaseMediaSource;->p(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 462
    .line 463
    .line 464
    goto :goto_15

    .line 465
    :catch_3
    move-exception v0

    .line 466
    const-string v6, "MediaSourceList"

    .line 467
    .line 468
    const-string v7, "Failed to release child source."

    .line 469
    .line 470
    invoke-static {v6, v7, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    .line 472
    .line 473
    :goto_15
    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    .line 474
    .line 475
    iget-object v6, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->c:Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;

    .line 476
    .line 477
    check-cast v0, Landroidx/media3/exoplayer/source/BaseMediaSource;

    .line 478
    .line 479
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/BaseMediaSource;->r(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 480
    .line 481
    .line 482
    iget-object v0, v5, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    .line 483
    .line 484
    check-cast v0, Landroidx/media3/exoplayer/source/BaseMediaSource;

    .line 485
    .line 486
    iget-object v0, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->d:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 487
    .line 488
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    .line 489
    .line 490
    .line 491
    goto :goto_14

    .line 492
    :cond_11
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 493
    .line 494
    .line 495
    iget-object v0, v1, Landroidx/media3/exoplayer/MediaSourceList;->h:Ljava/util/HashSet;

    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 498
    .line 499
    .line 500
    iput-boolean v3, v1, Landroidx/media3/exoplayer/MediaSourceList;->l:Z

    .line 501
    .line 502
    :cond_12
    return-void
.end method

.method public final T()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 8
    .line 9
    iget-boolean v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->h:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U:Z

    .line 21
    .line 22
    return-void
.end method

.method public final U(JZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const-wide v2, 0xe8d4a51000L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    :goto_0
    add-long/2addr p1, v2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-wide v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :goto_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 20
    .line 21
    iget-object v2, v2, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 22
    .line 23
    invoke-virtual {v2, p1, p2}, Landroidx/media3/exoplayer/StandaloneMediaClock;->a(J)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 27
    .line 28
    array-length p2, p1

    .line 29
    const/4 v2, 0x0

    .line 30
    move v3, v2

    .line 31
    :goto_2
    if-ge v3, p2, :cond_2

    .line 32
    .line 33
    aget-object v4, p1, v3

    .line 34
    .line 35
    iget-wide v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 36
    .line 37
    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    check-cast v4, Landroidx/media3/exoplayer/BaseRenderer;

    .line 44
    .line 45
    invoke-virtual {v4, v5, v6, v2, p3}, Landroidx/media3/exoplayer/BaseRenderer;->E(JZZ)V

    .line 46
    .line 47
    .line 48
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 52
    .line 53
    :goto_3
    if-eqz p0, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 56
    .line 57
    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 58
    .line 59
    array-length p2, p1

    .line 60
    move p3, v2

    .line 61
    :goto_4
    if-ge p3, p2, :cond_3

    .line 62
    .line 63
    aget-object v0, p1, p3

    .line 64
    .line 65
    add-int/lit8 p3, p3, 0x1

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    return-void
.end method

.method public final V(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->p()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-int/lit8 p1, p1, -0x1

    .line 21
    .line 22
    if-gez p1, :cond_1

    .line 23
    .line 24
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lq;->w(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    throw p0
.end method

.method public final Y(J)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 13
    .line 14
    iget-boolean v1, v1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->d:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 22
    :goto_1
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 23
    .line 24
    const-wide/16 v4, 0x3e8

    .line 25
    .line 26
    const/4 v6, 0x3

    .line 27
    sget-wide v7, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p0:J

    .line 28
    .line 29
    if-eqz v1, :cond_7

    .line 30
    .line 31
    iget v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 32
    .line 33
    if-ne v1, v6, :cond_2

    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move-wide v4, v7

    .line 37
    :goto_2
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 38
    .line 39
    array-length v3, v1

    .line 40
    :goto_3
    if-ge v2, v3, :cond_5

    .line 41
    .line 42
    aget-object v6, v1, v2

    .line 43
    .line 44
    iget-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 45
    .line 46
    iget-wide v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g0:J

    .line 47
    .line 48
    iget-object v13, v6, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 49
    .line 50
    iget-object v6, v6, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 51
    .line 52
    invoke-static {v6}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 53
    .line 54
    .line 55
    move-result v14

    .line 56
    if-eqz v14, :cond_3

    .line 57
    .line 58
    invoke-interface {v6, v9, v10, v11, v12}, Landroidx/media3/exoplayer/Renderer;->g(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v14

    .line 62
    goto :goto_4

    .line 63
    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    :goto_4
    if-eqz v13, :cond_4

    .line 69
    .line 70
    invoke-static {v13}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_4

    .line 75
    .line 76
    invoke-interface {v13, v9, v10, v11, v12}, Landroidx/media3/exoplayer/Renderer;->g(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v9

    .line 80
    invoke-static {v14, v15, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 81
    .line 82
    .line 83
    move-result-wide v14

    .line 84
    :cond_4
    invoke-static {v14, v15}, Landroidx/media3/common/util/Util;->N(J)J

    .line 85
    .line 86
    .line 87
    move-result-wide v9

    .line 88
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_5
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroidx/media3/exoplayer/PlaybackInfo;->m()Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_9

    .line 102
    .line 103
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 104
    .line 105
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 106
    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_6
    const/4 v1, 0x0

    .line 113
    :goto_5
    if-eqz v1, :cond_9

    .line 114
    .line 115
    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 116
    .line 117
    long-to-float v2, v2

    .line 118
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->D(J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v9

    .line 122
    long-to-float v3, v9

    .line 123
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 124
    .line 125
    iget-object v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->o:Landroidx/media3/common/PlaybackParameters;

    .line 126
    .line 127
    iget v6, v6, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 128
    .line 129
    mul-float/2addr v3, v6

    .line 130
    add-float/2addr v3, v2

    .line 131
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    long-to-float v1, v1

    .line 136
    cmpl-float v1, v3, v1

    .line 137
    .line 138
    if-ltz v1, :cond_9

    .line 139
    .line 140
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    goto :goto_6

    .line 145
    :cond_7
    iget v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 146
    .line 147
    if-ne v1, v6, :cond_8

    .line 148
    .line 149
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_8

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_8
    move-wide v4, v7

    .line 157
    :cond_9
    :goto_6
    iget-object v0, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 158
    .line 159
    add-long v1, p1, v4

    .line 160
    .line 161
    invoke-interface {v0, v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->g(J)Z

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public final Z(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 6
    .line 7
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 10
    .line 11
    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v1, p0

    .line 16
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    iget-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 21
    .line 22
    iget-wide v5, p0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 23
    .line 24
    cmp-long p0, v3, v5

    .line 25
    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    iget-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 29
    .line 30
    iget-wide v5, p0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 31
    .line 32
    iget-wide v7, p0, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    .line 33
    .line 34
    const/4 v10, 0x5

    .line 35
    move v9, p1

    .line 36
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iput-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final a(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    const/16 v0, 0xa

    .line 4
    .line 5
    invoke-interface {p0, v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final a0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    .line 6
    .line 7
    const/4 v9, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:I

    .line 15
    .line 16
    add-int/2addr v0, v9

    .line 17
    iput v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:I

    .line 18
    .line 19
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 20
    .line 21
    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 28
    .line 29
    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 33
    .line 34
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 35
    .line 36
    iget v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    .line 37
    .line 38
    iget-boolean v6, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Z

    .line 39
    .line 40
    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/common/Timeline$Window;

    .line 41
    .line 42
    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 43
    .line 44
    const/4 v4, 0x1

    .line 45
    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-wide/16 v4, 0x0

    .line 50
    .line 51
    const/4 v7, 0x0

    .line 52
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 60
    .line 61
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q(Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 70
    .line 71
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v2, Ljava/lang/Long;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v12

    .line 79
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 80
    .line 81
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 82
    .line 83
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    xor-int/2addr v2, v9

    .line 88
    move-wide v14, v10

    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_2
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 92
    .line 93
    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v6, Ljava/lang/Long;

    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 98
    .line 99
    .line 100
    move-result-wide v18

    .line 101
    iget-wide v12, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    .line 102
    .line 103
    cmp-long v6, v12, v10

    .line 104
    .line 105
    if-nez v6, :cond_3

    .line 106
    .line 107
    move-wide v12, v10

    .line 108
    goto :goto_0

    .line 109
    :cond_3
    move-wide/from16 v12, v18

    .line 110
    .line 111
    :goto_0
    iget-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 112
    .line 113
    iget-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 114
    .line 115
    iget-object v6, v15, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 116
    .line 117
    const/16 v20, 0x1

    .line 118
    .line 119
    const/16 v21, 0x0

    .line 120
    .line 121
    move-object/from16 v17, v2

    .line 122
    .line 123
    move-object/from16 v16, v6

    .line 124
    .line 125
    invoke-virtual/range {v14 .. v21}, Landroidx/media3/exoplayer/MediaPeriodQueue;->v(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Ljava/lang/Object;JZZ)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-eqz v2, :cond_5

    .line 134
    .line 135
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 136
    .line 137
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 138
    .line 139
    iget-object v8, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 140
    .line 141
    iget-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 142
    .line 143
    invoke-virtual {v2, v8, v14}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 144
    .line 145
    .line 146
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 147
    .line 148
    iget v8, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 149
    .line 150
    invoke-virtual {v2, v8}, Landroidx/media3/common/Timeline$Period;->e(I)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    iget v8, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 155
    .line 156
    if-ne v2, v8, :cond_4

    .line 157
    .line 158
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 159
    .line 160
    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    :cond_4
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 166
    .line 167
    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 168
    .line 169
    iget v8, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 170
    .line 171
    invoke-virtual {v2, v8}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 179
    .line 180
    .line 181
    move-result-wide v12

    .line 182
    move v2, v9

    .line 183
    move-wide v14, v12

    .line 184
    move-wide v12, v4

    .line 185
    goto :goto_2

    .line 186
    :cond_5
    iget-wide v14, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    .line 187
    .line 188
    cmp-long v2, v14, v10

    .line 189
    .line 190
    if-nez v2, :cond_6

    .line 191
    .line 192
    move v2, v9

    .line 193
    goto :goto_1

    .line 194
    :cond_6
    move v2, v7

    .line 195
    :goto_1
    move-wide v14, v12

    .line 196
    move-wide/from16 v12, v18

    .line 197
    .line 198
    :goto_2
    :try_start_0
    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 199
    .line 200
    iget-object v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 201
    .line 202
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->p()Z

    .line 203
    .line 204
    .line 205
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 206
    if-eqz v8, :cond_7

    .line 207
    .line 208
    :try_start_1
    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    move v9, v2

    .line 213
    move-object v2, v6

    .line 214
    move-wide v3, v12

    .line 215
    move-wide v5, v14

    .line 216
    goto/16 :goto_f

    .line 217
    .line 218
    :cond_7
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 219
    .line 220
    const/4 v8, 0x4

    .line 221
    if-nez v0, :cond_9

    .line 222
    .line 223
    :try_start_2
    iget v0, v3, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 224
    .line 225
    if-eq v0, v9, :cond_8

    .line 226
    .line 227
    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(I)V

    .line 228
    .line 229
    .line 230
    :cond_8
    invoke-virtual {v1, v7, v9, v7, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S(ZZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    .line 232
    .line 233
    :goto_3
    move v9, v2

    .line 234
    move-object v2, v6

    .line 235
    move-wide v3, v12

    .line 236
    move-wide v5, v14

    .line 237
    goto/16 :goto_c

    .line 238
    .line 239
    :cond_9
    :try_start_3
    iget-object v0, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 240
    .line 241
    invoke-virtual {v6, v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 245
    if-eqz v0, :cond_e

    .line 246
    .line 247
    :try_start_4
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 248
    .line 249
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 250
    .line 251
    if-eqz v0, :cond_b

    .line 252
    .line 253
    :try_start_5
    iget-boolean v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 254
    .line 255
    if-eqz v3, :cond_b

    .line 256
    .line 257
    cmp-long v3, v12, v4

    .line 258
    .line 259
    if-eqz v3, :cond_b

    .line 260
    .line 261
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 262
    .line 263
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/common/Timeline$Window;

    .line 264
    .line 265
    iget-wide v3, v3, Landroidx/media3/common/Timeline$Window;->k:J

    .line 266
    .line 267
    iget-boolean v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    .line 268
    .line 269
    if-eqz v5, :cond_a

    .line 270
    .line 271
    cmp-long v3, v3, v10

    .line 272
    .line 273
    if-eqz v3, :cond_a

    .line 274
    .line 275
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    :cond_a
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/SeekParameters;

    .line 281
    .line 282
    invoke-virtual {v0, v12, v13, v3}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->h(JLandroidx/media3/exoplayer/SeekParameters;)J

    .line 283
    .line 284
    .line 285
    move-result-wide v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 286
    goto :goto_4

    .line 287
    :cond_b
    move-wide v3, v12

    .line 288
    :goto_4
    :try_start_6
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->N(J)J

    .line 289
    .line 290
    .line 291
    move-result-wide v10

    .line 292
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 293
    .line 294
    move-wide/from16 v17, v10

    .line 295
    .line 296
    iget-wide v9, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 297
    .line 298
    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->N(J)J

    .line 299
    .line 300
    .line 301
    move-result-wide v9

    .line 302
    cmp-long v0, v17, v9

    .line 303
    .line 304
    if-nez v0, :cond_c

    .line 305
    .line 306
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 307
    .line 308
    iget v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 309
    .line 310
    const/4 v9, 0x2

    .line 311
    if-eq v5, v9, :cond_d

    .line 312
    .line 313
    const/4 v9, 0x3

    .line 314
    if-ne v5, v9, :cond_c

    .line 315
    .line 316
    goto :goto_5

    .line 317
    :cond_c
    move v9, v2

    .line 318
    move-object v2, v6

    .line 319
    move-wide v10, v14

    .line 320
    goto :goto_9

    .line 321
    :cond_d
    :goto_5
    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 322
    .line 323
    const/4 v10, 0x2

    .line 324
    move-wide v7, v3

    .line 325
    move v9, v2

    .line 326
    move-object v2, v6

    .line 327
    move-wide v5, v14

    .line 328
    :goto_6
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 333
    .line 334
    return-void

    .line 335
    :catchall_1
    move-exception v0

    .line 336
    move v9, v2

    .line 337
    move-object v2, v6

    .line 338
    move-wide v10, v14

    .line 339
    :goto_7
    move-wide v5, v10

    .line 340
    :goto_8
    move-wide v3, v12

    .line 341
    goto/16 :goto_f

    .line 342
    .line 343
    :cond_e
    move v9, v2

    .line 344
    move-object v2, v6

    .line 345
    move-wide v10, v14

    .line 346
    move-wide v3, v12

    .line 347
    :goto_9
    :try_start_7
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 348
    .line 349
    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 350
    .line 351
    if-ne v0, v8, :cond_f

    .line 352
    .line 353
    const/4 v6, 0x1

    .line 354
    goto :goto_a

    .line 355
    :cond_f
    move v6, v7

    .line 356
    :goto_a
    :try_start_8
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D()Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    .line 361
    .line 362
    .line 363
    move-result-wide v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 364
    cmp-long v0, v12, v14

    .line 365
    .line 366
    if-eqz v0, :cond_10

    .line 367
    .line 368
    const/16 v16, 0x1

    .line 369
    .line 370
    goto :goto_b

    .line 371
    :cond_10
    move/from16 v16, v7

    .line 372
    .line 373
    :goto_b
    or-int v9, v9, v16

    .line 374
    .line 375
    :try_start_9
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 376
    .line 377
    move-object v3, v2

    .line 378
    :try_start_a
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 379
    .line 380
    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 381
    .line 382
    const/4 v8, 0x1

    .line 383
    move-object v4, v2

    .line 384
    move-wide v6, v10

    .line 385
    :try_start_b
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 386
    .line 387
    .line 388
    move-object v2, v3

    .line 389
    move-wide v5, v6

    .line 390
    move-wide v3, v14

    .line 391
    :goto_c
    const/4 v10, 0x2

    .line 392
    move-wide v7, v3

    .line 393
    move-object/from16 v1, p0

    .line 394
    .line 395
    goto :goto_6

    .line 396
    :catchall_2
    move-exception v0

    .line 397
    move-object v2, v3

    .line 398
    move-wide v5, v6

    .line 399
    :goto_d
    move-wide v3, v14

    .line 400
    goto :goto_f

    .line 401
    :catchall_3
    move-exception v0

    .line 402
    move-object v2, v3

    .line 403
    :goto_e
    move-wide v5, v10

    .line 404
    goto :goto_d

    .line 405
    :catchall_4
    move-exception v0

    .line 406
    goto :goto_e

    .line 407
    :catchall_5
    move-exception v0

    .line 408
    goto :goto_7

    .line 409
    :catchall_6
    move-exception v0

    .line 410
    goto :goto_7

    .line 411
    :catchall_7
    move-exception v0

    .line 412
    move v9, v2

    .line 413
    move-object v2, v6

    .line 414
    move-wide v5, v14

    .line 415
    goto :goto_8

    .line 416
    :goto_f
    const/4 v10, 0x2

    .line 417
    move-wide v7, v3

    .line 418
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 423
    .line 424
    throw v0
.end method

.method public final b(I)V
    .locals 2

    .line 1
    const/16 v0, 0x21

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, v1}, Landroidx/media3/common/util/HandlerWrapper;->a(III)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J0(ZZ)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    if-nez p5, :cond_0

    .line 11
    .line 12
    iget-object p5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 13
    .line 14
    iget p5, p5, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    if-ne p5, v3, :cond_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(I)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object p5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 23
    .line 24
    iget-object p5, p5, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 25
    .line 26
    move-object v3, p5

    .line 27
    :goto_0
    if-eqz v3, :cond_3

    .line 28
    .line 29
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 30
    .line 31
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_1
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    if-nez p4, :cond_4

    .line 49
    .line 50
    if-ne p5, v3, :cond_4

    .line 51
    .line 52
    if-eqz v3, :cond_7

    .line 53
    .line 54
    iget-wide p4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 55
    .line 56
    add-long/2addr p4, p2

    .line 57
    const-wide/16 v6, 0x0

    .line 58
    .line 59
    cmp-long p1, p4, v6

    .line 60
    .line 61
    if-gez p1, :cond_7

    .line 62
    .line 63
    :cond_4
    move p1, v0

    .line 64
    :goto_2
    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 65
    .line 66
    array-length p4, p4

    .line 67
    if-ge p1, p4, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k(I)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 p1, p1, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    iput-wide v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m0:J

    .line 76
    .line 77
    if-eqz v3, :cond_7

    .line 78
    .line 79
    :goto_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 80
    .line 81
    iget-object p4, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 82
    .line 83
    if-eq p4, v3, :cond_6

    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->a()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    .line 90
    .line 91
    .line 92
    const-wide p4, 0xe8d4a51000L

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    iput-wide p4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    xor-int/2addr p1, v1

    .line 104
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 108
    .line 109
    array-length p1, p1

    .line 110
    new-array p1, p1, [Z

    .line 111
    .line 112
    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 113
    .line 114
    invoke-virtual {p4}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    invoke-virtual {p4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    .line 119
    .line 120
    .line 121
    move-result-wide p4

    .line 122
    invoke-virtual {p0, p1, p4, p5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o([ZJ)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0(Landroidx/media3/exoplayer/MediaPeriodHolder;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j()V

    .line 129
    .line 130
    .line 131
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    .line 132
    .line 133
    if-eqz p1, :cond_a

    .line 134
    .line 135
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 136
    .line 137
    array-length p4, p1

    .line 138
    move p5, v0

    .line 139
    :goto_4
    if-ge p5, p4, :cond_a

    .line 140
    .line 141
    aget-object v6, p1, p5

    .line 142
    .line 143
    invoke-virtual {v6}, Landroidx/media3/exoplayer/RendererHolder;->l()Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-eqz v7, :cond_9

    .line 148
    .line 149
    invoke-virtual {v6}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-eq v7, v2, :cond_8

    .line 154
    .line 155
    invoke-virtual {v6}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    const/4 v7, 0x4

    .line 160
    if-ne v6, v7, :cond_9

    .line 161
    .line 162
    :cond_8
    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_9
    add-int/lit8 p5, p5, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_a
    :goto_5
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 169
    .line 170
    if-eqz v3, :cond_13

    .line 171
    .line 172
    invoke-virtual {p1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    .line 173
    .line 174
    .line 175
    iget-boolean p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 176
    .line 177
    if-nez p1, :cond_b

    .line 178
    .line 179
    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 180
    .line 181
    invoke-virtual {p1, p2, p3, v4, v5}, Landroidx/media3/exoplayer/MediaPeriodInfo;->b(JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 186
    .line 187
    goto/16 :goto_9

    .line 188
    .line 189
    :cond_b
    iget-boolean p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->f:Z

    .line 190
    .line 191
    if-eqz p1, :cond_12

    .line 192
    .line 193
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    .line 194
    .line 195
    if-eqz p1, :cond_11

    .line 196
    .line 197
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 198
    .line 199
    iget-boolean p1, p1, Landroidx/media3/exoplayer/ScrubbingModeParameters;->f:Z

    .line 200
    .line 201
    if-eqz p1, :cond_11

    .line 202
    .line 203
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 204
    .line 205
    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 206
    .line 207
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-nez p1, :cond_11

    .line 212
    .line 213
    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 214
    .line 215
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 216
    .line 217
    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 218
    .line 219
    iget-object p4, p4, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 220
    .line 221
    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-nez p1, :cond_c

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_c
    iget-wide p4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 229
    .line 230
    add-long/2addr p4, p2

    .line 231
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 232
    .line 233
    array-length v4, p1

    .line 234
    move v5, v0

    .line 235
    move v6, v1

    .line 236
    :goto_6
    if-ge v5, v4, :cond_f

    .line 237
    .line 238
    aget-object v7, p1, v5

    .line 239
    .line 240
    invoke-virtual {v7}, Landroidx/media3/exoplayer/RendererHolder;->l()Z

    .line 241
    .line 242
    .line 243
    move-result v8

    .line 244
    if-eqz v8, :cond_e

    .line 245
    .line 246
    invoke-virtual {v7, v3}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    if-eqz v7, :cond_d

    .line 251
    .line 252
    invoke-interface {v7, p4, p5}, Landroidx/media3/exoplayer/Renderer;->p(J)Z

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    if-eqz v7, :cond_d

    .line 257
    .line 258
    move v7, v1

    .line 259
    goto :goto_7

    .line 260
    :cond_d
    move v7, v0

    .line 261
    :goto_7
    and-int/2addr v6, v7

    .line 262
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 263
    .line 264
    goto :goto_6

    .line 265
    :cond_f
    if-nez v6, :cond_10

    .line 266
    .line 267
    goto :goto_8

    .line 268
    :cond_10
    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 269
    .line 270
    iget-object p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 271
    .line 272
    iget-wide p4, p4, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 273
    .line 274
    sget-object v4, Landroidx/media3/exoplayer/SeekParameters;->d:Landroidx/media3/exoplayer/SeekParameters;

    .line 275
    .line 276
    invoke-virtual {p1, p4, p5, v4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->h(JLandroidx/media3/exoplayer/SeekParameters;)J

    .line 277
    .line 278
    .line 279
    move-result-wide p4

    .line 280
    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 281
    .line 282
    invoke-virtual {p1, p2, p3, v4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->h(JLandroidx/media3/exoplayer/SeekParameters;)J

    .line 283
    .line 284
    .line 285
    move-result-wide v4

    .line 286
    cmp-long p1, p4, v4

    .line 287
    .line 288
    if-nez p1, :cond_11

    .line 289
    .line 290
    move v1, v0

    .line 291
    goto :goto_9

    .line 292
    :cond_11
    :goto_8
    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 293
    .line 294
    invoke-virtual {p1, p2, p3}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->i(J)J

    .line 295
    .line 296
    .line 297
    move-result-wide p2

    .line 298
    iget-object p1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 299
    .line 300
    iget-wide p4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:J

    .line 301
    .line 302
    sub-long p4, p2, p4

    .line 303
    .line 304
    invoke-virtual {p1, p4, p5}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->j(J)V

    .line 305
    .line 306
    .line 307
    :cond_12
    :goto_9
    invoke-virtual {p0, p2, p3, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U(JZ)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G()V

    .line 311
    .line 312
    .line 313
    goto :goto_a

    .line 314
    :cond_13
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->b()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, p2, p3, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U(JZ)V

    .line 318
    .line 319
    .line 320
    :goto_a
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 321
    .line 322
    .line 323
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 324
    .line 325
    invoke-interface {p0, v2}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 326
    .line 327
    .line 328
    return-wide p2
.end method

.method public final c(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    const/16 v0, 0x8

    .line 4
    .line 5
    invoke-interface {p0, v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final c0(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 5
    .line 6
    iget-object v1, p1, Landroidx/media3/exoplayer/PlayerMessage;->e:Landroid/os/Looper;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r:Landroid/os/Looper;

    .line 9
    .line 10
    if-ne v1, v2, :cond_2

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    monitor-exit p1

    .line 14
    const/4 v1, 0x1

    .line 15
    :try_start_0
    iget-object v2, p1, Landroidx/media3/exoplayer/PlayerMessage;->a:Landroidx/media3/exoplayer/PlayerMessage$Target;

    .line 16
    .line 17
    iget v3, p1, Landroidx/media3/exoplayer/PlayerMessage;->c:I

    .line 18
    .line 19
    iget-object v4, p1, Landroidx/media3/exoplayer/PlayerMessage;->d:Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {v2, v3, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/PlayerMessage;->a(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 28
    .line 29
    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    const/4 v1, 0x2

    .line 33
    if-eq p0, p1, :cond_1

    .line 34
    .line 35
    if-ne p0, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/PlayerMessage;->a(Z)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_2
    const/16 p0, 0xf

    .line 49
    .line 50
    invoke-interface {v0, p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    const/16 v0, 0x22

    .line 4
    .line 5
    invoke-interface {p0, v0}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d0(Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroidx/media3/exoplayer/PlayerMessage;->e:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string p0, "TAG"

    .line 14
    .line 15
    const-string v0, "Trying to send message on a dead thread."

    .line 16
    .line 17
    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/PlayerMessage;->a(Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/common/util/Clock;

    .line 27
    .line 28
    check-cast v2, Landroidx/media3/common/util/SystemClock;

    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Landroidx/media3/exoplayer/h;

    .line 35
    .line 36
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/h;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final e(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 9
    .line 10
    if-ne p2, v0, :cond_0

    .line 11
    .line 12
    iget-object p2, v1, Landroidx/media3/exoplayer/MediaSourceList;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->a:Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->b:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 21
    .line 22
    invoke-virtual {v1, p2, v0, p1}, Landroidx/media3/exoplayer/MediaSourceList;->a(ILjava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y(Landroidx/media3/common/Timeline;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final e0(Landroidx/media3/exoplayer/MediaPeriodHolder;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:[Z

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    aput-boolean v2, v1, v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public final f(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    .line 7
    const/16 p1, 0x25

    .line 8
    .line 9
    invoke-interface {p0, p1}, Landroidx/media3/common/util/HandlerWrapper;->e(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final f0(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->i:Landroidx/media3/common/AudioAttributes;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->i:Landroidx/media3/common/AudioAttributes;

    .line 16
    .line 17
    iget-object v1, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 18
    .line 19
    iget-boolean v1, v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->B:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x20

    .line 26
    .line 27
    if-lt v1, v3, :cond_1

    .line 28
    .line 29
    iget-object v1, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    iget-boolean v1, v1, Landroidx/media3/exoplayer/util/SpatializerWrapper;->b:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object p1, v2

    .line 50
    :goto_1
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/common/audio/AudioFocusManager;

    .line 51
    .line 52
    iget-object v0, p2, Landroidx/media3/common/audio/AudioFocusManager;->d:Landroidx/media3/common/AudioAttributes;

    .line 53
    .line 54
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_6

    .line 59
    .line 60
    iput-object p1, p2, Landroidx/media3/common/audio/AudioFocusManager;->d:Landroidx/media3/common/AudioAttributes;

    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    const/4 v1, 0x1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    move p1, v0

    .line 67
    goto :goto_2

    .line 68
    :cond_3
    move p1, v1

    .line 69
    :goto_2
    iput p1, p2, Landroidx/media3/common/audio/AudioFocusManager;->f:I

    .line 70
    .line 71
    if-eq p1, v1, :cond_4

    .line 72
    .line 73
    if-nez p1, :cond_5

    .line 74
    .line 75
    :cond_4
    move v0, v1

    .line 76
    :cond_5
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 77
    .line 78
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->d(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    :cond_6
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 82
    .line 83
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 84
    .line 85
    iget v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 86
    .line 87
    iget v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    .line 88
    .line 89
    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 90
    .line 91
    invoke-virtual {p2, p1, v0}, Landroidx/media3/common/audio/AudioFocusManager;->c(IZ)I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    invoke-virtual {p0, p1, v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G0(IIIZ)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_2

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget-boolean v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v4, 0x0

    .line 17
    :goto_1
    iget-object v5, v3, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 18
    .line 19
    const/16 v6, 0x12

    .line 20
    .line 21
    invoke-interface {v5, v6, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, v3, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {v3, v6, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public final g0(I)V
    .locals 6

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    .line 7
    aget-object v2, p0, v1

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eq v3, v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x2

    .line 21
    if-eq v3, v4, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/16 v5, 0xa

    .line 31
    .line 32
    invoke-interface {v3, v5, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v2, v5, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-void
.end method

.method public final h()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 8
    .line 9
    array-length v0, p0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_2

    .line 12
    .line 13
    aget-object v3, p0, v2

    .line 14
    .line 15
    invoke-virtual {v3}, Landroidx/media3/exoplayer/RendererHolder;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0

    .line 23
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    return v1
.end method

.method public final h0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J:Z

    .line 2
    .line 3
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v11, p1

    .line 4
    .line 5
    const-string v12, "Playback error"

    .line 6
    .line 7
    const-string v13, "ExoPlayerImplInternal"

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    const/16 v3, 0x3e8

    .line 11
    .line 12
    const/4 v4, 0x4

    .line 13
    const/4 v14, 0x0

    .line 14
    const/4 v15, 0x1

    .line 15
    :try_start_0
    iget v0, v11, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    return v14

    .line 22
    :pswitch_0
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g0(I)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_13

    .line 28
    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :catch_1
    move-exception v0

    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :catch_2
    move-exception v0

    .line 36
    goto/16 :goto_8

    .line 37
    .line 38
    :catch_3
    move-exception v0

    .line 39
    goto/16 :goto_9

    .line 40
    .line 41
    :catch_4
    move-exception v0

    .line 42
    goto/16 :goto_c

    .line 43
    .line 44
    :catch_5
    move-exception v0

    .line 45
    goto/16 :goto_d

    .line 46
    .line 47
    :pswitch_1
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Landroidx/media3/exoplayer/image/ImageMetadataListener;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j0(Landroidx/media3/exoplayer/image/ImageMetadataListener;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_13

    .line 55
    .line 56
    :pswitch_2
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->q0(Landroidx/media3/exoplayer/ScrubbingModeParameters;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_13

    .line 64
    .line 65
    :pswitch_3
    iput-boolean v14, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    .line 66
    .line 67
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 68
    .line 69
    if-eqz v0, :cond_19

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    .line 72
    .line 73
    .line 74
    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 75
    .line 76
    goto/16 :goto_13

    .line 77
    .line 78
    :pswitch_4
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p0(Z)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_13

    .line 90
    .line 91
    :pswitch_5
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v0(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_13

    .line 99
    .line 100
    :pswitch_6
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_13

    .line 104
    .line 105
    :pswitch_7
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t(I)V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_13

    .line 111
    .line 112
    :pswitch_8
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v0, Ljava/lang/Float;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x0(F)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_13

    .line 124
    .line 125
    :pswitch_9
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, Landroidx/media3/common/AudioAttributes;

    .line 128
    .line 129
    iget v5, v11, Landroid/os/Message;->arg1:I

    .line 130
    .line 131
    if-eqz v5, :cond_0

    .line 132
    .line 133
    move v5, v15

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    move v5, v14

    .line 136
    :goto_0
    invoke-virtual {v1, v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0(Landroidx/media3/common/AudioAttributes;Z)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_13

    .line 140
    .line 141
    :pswitch_a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v0, Landroid/util/Pair;

    .line 144
    .line 145
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 146
    .line 147
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v0, Landroidx/media3/common/util/ConditionVariable;

    .line 150
    .line 151
    invoke-virtual {v1, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w0(Ljava/lang/Object;Landroidx/media3/common/util/ConditionVariable;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_13

    .line 155
    .line 156
    :pswitch_b
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N()V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_13

    .line 160
    .line 161
    :pswitch_c
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 164
    .line 165
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n0(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_13

    .line 169
    .line 170
    :pswitch_d
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 171
    .line 172
    iget v5, v11, Landroid/os/Message;->arg2:I

    .line 173
    .line 174
    iget-object v6, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v6, Ljava/util/List;

    .line 177
    .line 178
    invoke-virtual {v1, v0, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F0(IILjava/util/List;)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_13

    .line 182
    .line 183
    :pswitch_e
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z(Z)V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_13

    .line 190
    .line 191
    :pswitch_f
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i()V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_13

    .line 195
    .line 196
    :pswitch_10
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 197
    .line 198
    if-eqz v0, :cond_1

    .line 199
    .line 200
    move v0, v15

    .line 201
    goto :goto_1

    .line 202
    :cond_1
    move v0, v14

    .line 203
    :goto_1
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h0(Z)V

    .line 204
    .line 205
    .line 206
    goto/16 :goto_13

    .line 207
    .line 208
    :pswitch_11
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 209
    .line 210
    if-eqz v0, :cond_2

    .line 211
    .line 212
    move v0, v15

    .line 213
    goto :goto_2

    .line 214
    :cond_2
    move v0, v14

    .line 215
    :goto_2
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l0(Z)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_13

    .line 219
    .line 220
    :pswitch_12
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L()V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_13

    .line 224
    .line 225
    :pswitch_13
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v0, Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t0(Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_13

    .line 233
    .line 234
    :pswitch_14
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 235
    .line 236
    iget v5, v11, Landroid/os/Message;->arg2:I

    .line 237
    .line 238
    iget-object v6, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 239
    .line 240
    check-cast v6, Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 241
    .line 242
    invoke-virtual {v1, v0, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q(IILandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_13

    .line 246
    .line 247
    :pswitch_15
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    .line 249
    invoke-static {v0}, Lq;->w(Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M()V

    .line 253
    .line 254
    .line 255
    throw v5

    .line 256
    :pswitch_16
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    .line 259
    .line 260
    iget v5, v11, Landroid/os/Message;->arg1:I

    .line 261
    .line 262
    invoke-virtual {v1, v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_13

    .line 266
    .line 267
    :pswitch_17
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    .line 270
    .line 271
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_13

    .line 275
    .line 276
    :pswitch_18
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    .line 279
    .line 280
    iget v5, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 281
    .line 282
    invoke-virtual {v1, v0, v5, v15, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A(Landroidx/media3/common/PlaybackParameters;FZZ)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_13

    .line 286
    .line 287
    :pswitch_19
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    .line 290
    .line 291
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 292
    .line 293
    .line 294
    goto/16 :goto_13

    .line 295
    .line 296
    :pswitch_1a
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v0, Landroidx/media3/exoplayer/PlayerMessage;

    .line 299
    .line 300
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0(Landroidx/media3/exoplayer/PlayerMessage;)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_13

    .line 304
    .line 305
    :pswitch_1b
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 306
    .line 307
    if-eqz v0, :cond_3

    .line 308
    .line 309
    move v0, v15

    .line 310
    goto :goto_3

    .line 311
    :cond_3
    move v0, v14

    .line 312
    :goto_3
    iget-object v5, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v5, Landroidx/media3/common/util/ConditionVariable;

    .line 315
    .line 316
    invoke-virtual {v1, v0, v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->i0(ZLandroidx/media3/common/util/ConditionVariable;)V

    .line 317
    .line 318
    .line 319
    goto/16 :goto_13

    .line 320
    .line 321
    :pswitch_1c
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 322
    .line 323
    if-eqz v0, :cond_4

    .line 324
    .line 325
    move v0, v15

    .line 326
    goto :goto_4

    .line 327
    :cond_4
    move v0, v14

    .line 328
    :goto_4
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s0(Z)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_13

    .line 332
    .line 333
    :pswitch_1d
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 334
    .line 335
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o0(I)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_13

    .line 339
    .line 340
    :pswitch_1e
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Landroidx/media3/common/TrackSelectionParameters;

    .line 343
    .line 344
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    .line 345
    .line 346
    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R()V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_13

    .line 353
    .line 354
    :pswitch_1f
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 357
    .line 358
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_13

    .line 362
    .line 363
    :pswitch_20
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 366
    .line 367
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_13

    .line 371
    .line 372
    :pswitch_21
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast v0, Landroidx/media3/common/util/ConditionVariable;

    .line 375
    .line 376
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O(Landroidx/media3/common/util/ConditionVariable;)V

    .line 377
    .line 378
    .line 379
    return v15

    .line 380
    :pswitch_22
    invoke-virtual {v1, v14, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B0(ZZ)V

    .line 381
    .line 382
    .line 383
    goto/16 :goto_13

    .line 384
    .line 385
    :pswitch_23
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v0, Landroidx/media3/exoplayer/SeekParameters;

    .line 388
    .line 389
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r0(Landroidx/media3/exoplayer/SeekParameters;)V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_13

    .line 393
    .line 394
    :pswitch_24
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v0, Landroidx/media3/common/PlaybackParameters;

    .line 397
    .line 398
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m0(Landroidx/media3/common/PlaybackParameters;)V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_13

    .line 402
    .line 403
    :pswitch_25
    iget-object v0, v11, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 406
    .line 407
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    .line 408
    .line 409
    .line 410
    goto/16 :goto_13

    .line 411
    .line 412
    :pswitch_26
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m()V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_13

    .line 416
    .line 417
    :pswitch_27
    iget v0, v11, Landroid/os/Message;->arg1:I

    .line 418
    .line 419
    if-eqz v0, :cond_5

    .line 420
    .line 421
    move v0, v15

    .line 422
    goto :goto_5

    .line 423
    :cond_5
    move v0, v14

    .line 424
    :goto_5
    iget v5, v11, Landroid/os/Message;->arg2:I

    .line 425
    .line 426
    shr-int/lit8 v6, v5, 0x4

    .line 427
    .line 428
    and-int/lit8 v5, v5, 0xf

    .line 429
    .line 430
    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 431
    .line 432
    invoke-virtual {v7, v15}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 433
    .line 434
    .line 435
    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/common/audio/AudioFocusManager;

    .line 436
    .line 437
    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 438
    .line 439
    iget v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 440
    .line 441
    invoke-virtual {v7, v8, v0}, Landroidx/media3/common/audio/AudioFocusManager;->c(IZ)I

    .line 442
    .line 443
    .line 444
    move-result v7

    .line 445
    invoke-virtual {v1, v7, v6, v5, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G0(IIIZ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroidx/media3/datasource/DataSourceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .line 447
    .line 448
    goto/16 :goto_13

    .line 449
    .line 450
    :goto_6
    instance-of v4, v0, Ljava/lang/IllegalStateException;

    .line 451
    .line 452
    if-nez v4, :cond_6

    .line 453
    .line 454
    instance-of v4, v0, Ljava/lang/IllegalArgumentException;

    .line 455
    .line 456
    if-eqz v4, :cond_7

    .line 457
    .line 458
    :cond_6
    const/16 v3, 0x3ec

    .line 459
    .line 460
    :cond_7
    new-instance v4, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 461
    .line 462
    invoke-direct {v4, v2, v0, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    .line 463
    .line 464
    .line 465
    invoke-static {v13, v12, v4}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v15, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B0(ZZ)V

    .line 469
    .line 470
    .line 471
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 472
    .line 473
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 478
    .line 479
    goto/16 :goto_13

    .line 480
    .line 481
    :goto_7
    const/16 v2, 0x7d0

    .line 482
    .line 483
    invoke-virtual {v1, v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w(Ljava/io/IOException;I)V

    .line 484
    .line 485
    .line 486
    goto/16 :goto_13

    .line 487
    .line 488
    :goto_8
    iget v2, v0, Landroidx/media3/datasource/DataSourceException;->j:I

    .line 489
    .line 490
    invoke-virtual {v1, v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w(Ljava/io/IOException;I)V

    .line 491
    .line 492
    .line 493
    goto/16 :goto_13

    .line 494
    .line 495
    :goto_9
    iget-boolean v2, v0, Landroidx/media3/common/ParserException;->j:Z

    .line 496
    .line 497
    iget v5, v0, Landroidx/media3/common/ParserException;->k:I

    .line 498
    .line 499
    if-ne v5, v15, :cond_9

    .line 500
    .line 501
    if-eqz v2, :cond_8

    .line 502
    .line 503
    const/16 v2, 0xbb9

    .line 504
    .line 505
    :goto_a
    move v3, v2

    .line 506
    goto :goto_b

    .line 507
    :cond_8
    const/16 v2, 0xbbb

    .line 508
    .line 509
    goto :goto_a

    .line 510
    :cond_9
    if-ne v5, v4, :cond_b

    .line 511
    .line 512
    if-eqz v2, :cond_a

    .line 513
    .line 514
    const/16 v2, 0xbba

    .line 515
    .line 516
    goto :goto_a

    .line 517
    :cond_a
    const/16 v2, 0xbbc

    .line 518
    .line 519
    goto :goto_a

    .line 520
    :cond_b
    :goto_b
    invoke-virtual {v1, v0, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w(Ljava/io/IOException;I)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_13

    .line 524
    .line 525
    :goto_c
    iget v2, v0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->j:I

    .line 526
    .line 527
    invoke-virtual {v1, v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->w(Ljava/io/IOException;I)V

    .line 528
    .line 529
    .line 530
    goto/16 :goto_13

    .line 531
    .line 532
    :goto_d
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->l:I

    .line 533
    .line 534
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 535
    .line 536
    if-ne v3, v15, :cond_e

    .line 537
    .line 538
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->q:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 539
    .line 540
    if-nez v3, :cond_e

    .line 541
    .line 542
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 543
    .line 544
    iget v6, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->n:I

    .line 545
    .line 546
    aget-object v3, v3, v6

    .line 547
    .line 548
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->k()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 549
    .line 550
    .line 551
    move-result-object v6

    .line 552
    :goto_e
    if-eqz v6, :cond_c

    .line 553
    .line 554
    invoke-virtual {v3, v6}, Landroidx/media3/exoplayer/RendererHolder;->k(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 555
    .line 556
    .line 557
    move-result v7

    .line 558
    if-nez v7, :cond_c

    .line 559
    .line 560
    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 561
    .line 562
    goto :goto_e

    .line 563
    :cond_c
    if-nez v6, :cond_d

    .line 564
    .line 565
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 566
    .line 567
    .line 568
    move-result-object v6

    .line 569
    :cond_d
    if-eqz v6, :cond_e

    .line 570
    .line 571
    iget-object v3, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 572
    .line 573
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 574
    .line 575
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/ExoPlaybackException;->a(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    :cond_e
    iget v3, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->n:I

    .line 580
    .line 581
    iget v6, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->l:I

    .line 582
    .line 583
    iget-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 584
    .line 585
    if-ne v6, v15, :cond_10

    .line 586
    .line 587
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->q:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 588
    .line 589
    if-eqz v6, :cond_10

    .line 590
    .line 591
    invoke-virtual {v1, v3, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 592
    .line 593
    .line 594
    move-result v6

    .line 595
    if-eqz v6, :cond_10

    .line 596
    .line 597
    iput-boolean v15, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n0:Z

    .line 598
    .line 599
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j()V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->l(I)Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->k()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 607
    .line 608
    .line 609
    move-result-object v3

    .line 610
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->k()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 611
    .line 612
    .line 613
    move-result-object v6

    .line 614
    if-eq v6, v0, :cond_f

    .line 615
    .line 616
    :goto_f
    if-eqz v3, :cond_f

    .line 617
    .line 618
    iget-object v6, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 619
    .line 620
    if-eq v6, v0, :cond_f

    .line 621
    .line 622
    move-object v3, v6

    .line 623
    goto :goto_f

    .line 624
    :cond_f
    invoke-virtual {v5, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    .line 625
    .line 626
    .line 627
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 628
    .line 629
    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 630
    .line 631
    if-eq v0, v4, :cond_19

    .line 632
    .line 633
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G()V

    .line 634
    .line 635
    .line 636
    invoke-interface {v7, v2}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 637
    .line 638
    .line 639
    goto/16 :goto_13

    .line 640
    .line 641
    :cond_10
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 642
    .line 643
    if-eqz v2, :cond_11

    .line 644
    .line 645
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 646
    .line 647
    .line 648
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 649
    .line 650
    :cond_11
    iget v2, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->l:I

    .line 651
    .line 652
    if-ne v2, v15, :cond_15

    .line 653
    .line 654
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->k()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->f()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    if-eq v2, v3, :cond_15

    .line 663
    .line 664
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->k()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 665
    .line 666
    .line 667
    move-result-object v2

    .line 668
    :goto_10
    if-eqz v2, :cond_12

    .line 669
    .line 670
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 671
    .line 672
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 673
    .line 674
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->q:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 675
    .line 676
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 677
    .line 678
    .line 679
    move-result v3

    .line 680
    if-nez v3, :cond_12

    .line 681
    .line 682
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 683
    .line 684
    goto :goto_10

    .line 685
    :cond_12
    if-nez v2, :cond_13

    .line 686
    .line 687
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    :cond_13
    :goto_11
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->k()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 692
    .line 693
    .line 694
    move-result-object v3

    .line 695
    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    move-result v3

    .line 699
    if-nez v3, :cond_14

    .line 700
    .line 701
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->a()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 702
    .line 703
    .line 704
    goto :goto_11

    .line 705
    :cond_14
    invoke-virtual {v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->k()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 706
    .line 707
    .line 708
    move-result-object v2

    .line 709
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->i(Ljava/lang/Object;)V

    .line 710
    .line 711
    .line 712
    iget v3, v11, Landroid/os/Message;->what:I

    .line 713
    .line 714
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I(I)V

    .line 715
    .line 716
    .line 717
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 718
    .line 719
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 720
    .line 721
    move-object v5, v3

    .line 722
    iget-wide v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 723
    .line 724
    iget-wide v8, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    .line 725
    .line 726
    move-object v2, v5

    .line 727
    move-wide v5, v8

    .line 728
    const/4 v9, 0x1

    .line 729
    const/4 v10, 0x0

    .line 730
    move-object/from16 v16, v7

    .line 731
    .line 732
    move-wide v7, v3

    .line 733
    move-object/from16 v14, v16

    .line 734
    .line 735
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 740
    .line 741
    goto :goto_12

    .line 742
    :cond_15
    move-object v14, v7

    .line 743
    :goto_12
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlaybackException;->r:Z

    .line 744
    .line 745
    if-eqz v2, :cond_18

    .line 746
    .line 747
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 748
    .line 749
    if-eqz v2, :cond_16

    .line 750
    .line 751
    iget v2, v0, Landroidx/media3/common/PlaybackException;->j:I

    .line 752
    .line 753
    const/16 v3, 0x138c

    .line 754
    .line 755
    if-eq v2, v3, :cond_16

    .line 756
    .line 757
    const/16 v3, 0x138b

    .line 758
    .line 759
    if-ne v2, v3, :cond_18

    .line 760
    .line 761
    :cond_16
    const-string v2, "Recoverable renderer error"

    .line 762
    .line 763
    invoke-static {v13, v2, v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 764
    .line 765
    .line 766
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 767
    .line 768
    if-nez v2, :cond_17

    .line 769
    .line 770
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 771
    .line 772
    :cond_17
    const/16 v2, 0x19

    .line 773
    .line 774
    invoke-interface {v14, v2, v0}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 775
    .line 776
    .line 777
    move-result-object v0

    .line 778
    invoke-interface {v14, v0}, Landroidx/media3/common/util/HandlerWrapper;->c(Landroidx/media3/common/util/HandlerWrapper$Message;)Z

    .line 779
    .line 780
    .line 781
    goto :goto_13

    .line 782
    :cond_18
    invoke-static {v13, v12, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 783
    .line 784
    .line 785
    const/4 v2, 0x0

    .line 786
    invoke-virtual {v1, v15, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B0(ZZ)V

    .line 787
    .line 788
    .line 789
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 790
    .line 791
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 792
    .line 793
    .line 794
    move-result-object v0

    .line 795
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 796
    .line 797
    :cond_19
    :goto_13
    iget v0, v11, Landroid/os/Message;->what:I

    .line 798
    .line 799
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I(I)V

    .line 800
    .line 801
    .line 802
    return v15

    .line 803
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i0(ZLandroidx/media3/common/util/ConditionVariable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0:Z

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 10
    .line 11
    array-length p1, p0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-ge v0, p1, :cond_0

    .line 14
    .line 15
    aget-object v1, p0, v0

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/media3/exoplayer/RendererHolder;->p()V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/media3/common/util/ConditionVariable;->c()Z

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public final j()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v3, v1, :cond_6

    .line 19
    .line 20
    aget-object v4, v0, v3

    .line 21
    .line 22
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->c()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 27
    .line 28
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    if-nez v7, :cond_1

    .line 33
    .line 34
    goto :goto_8

    .line 35
    :cond_1
    iget v7, v4, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 36
    .line 37
    const/4 v8, 0x1

    .line 38
    const/4 v9, 0x4

    .line 39
    if-eq v7, v9, :cond_3

    .line 40
    .line 41
    const/4 v10, 0x2

    .line 42
    if-ne v7, v10, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v10, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_3
    :goto_1
    move v10, v8

    .line 48
    :goto_2
    if-ne v7, v9, :cond_4

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_4
    move v8, v2

    .line 52
    :goto_3
    const-string v7, "RendererHolder"

    .line 53
    .line 54
    if-eqz v10, :cond_5

    .line 55
    .line 56
    :try_start_0
    iget-object v9, v4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :catch_0
    move-exception v6

    .line 60
    goto :goto_5

    .line 61
    :cond_5
    iget-object v9, v4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 62
    .line 63
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    :goto_4
    invoke-virtual {v4, v9, v6}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_6

    .line 70
    :goto_5
    const-string v9, "Disable prewarming failed."

    .line 71
    .line 72
    invoke-static {v7, v9, v6}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    :goto_6
    :try_start_1
    invoke-virtual {v4, v10}, Landroidx/media3/exoplayer/RendererHolder;->n(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .line 77
    .line 78
    goto :goto_7

    .line 79
    :catch_1
    move-exception v6

    .line 80
    const-string v9, "Reset prewarming failed."

    .line 81
    .line 82
    invoke-static {v7, v9, v6}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    :goto_7
    iput v8, v4, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 86
    .line 87
    :goto_8
    iget v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    .line 88
    .line 89
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->c()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    sub-int/2addr v5, v4

    .line 94
    sub-int/2addr v6, v5

    .line 95
    iput v6, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    .line 96
    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    iput-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m0:J

    .line 106
    .line 107
    :cond_7
    :goto_9
    return-void
.end method

.method public final j0(Landroidx/media3/exoplayer/image/ImageMetadataListener;)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    .line 7
    aget-object v2, p0, v1

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x4

    .line 14
    if-eq v3, v4, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 18
    .line 19
    const/16 v4, 0x17

    .line 20
    .line 21
    invoke-interface {v3, v4, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v2, v4, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-void
.end method

.method public final k(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 2
    .line 3
    aget-object v1, v0, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/media3/exoplayer/RendererHolder;->c()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget-object v0, v0, p1

    .line 10
    .line 11
    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-static {v2}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 28
    .line 29
    iget v5, v0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 30
    .line 31
    const/4 v6, 0x3

    .line 32
    if-eq v5, v6, :cond_0

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v5, v4

    .line 37
    :goto_0
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/RendererHolder;->n(Z)V

    .line 41
    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    iget-object v3, v0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    const/16 v5, 0x11

    .line 51
    .line 52
    invoke-interface {v2, v5, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iput v4, v0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 56
    .line 57
    invoke-virtual {p0, p1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K(IZ)V

    .line 58
    .line 59
    .line 60
    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    .line 61
    .line 62
    sub-int/2addr p1, v1

    .line 63
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    .line 64
    .line 65
    return-void
.end method

.method public final k0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 5
    .line 6
    .line 7
    iget v0, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->c:I

    .line 8
    .line 9
    iget-object v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->b:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 10
    .line 11
    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    if-eq v0, v3, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 17
    .line 18
    new-instance v3, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 19
    .line 20
    invoke-direct {v3, v2, v1}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 21
    .line 22
    .line 23
    iget v4, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->c:I

    .line 24
    .line 25
    iget-wide v5, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->d:J

    .line 26
    .line 27
    invoke-direct {v0, v3, v4, v5, v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;-><init>(Landroidx/media3/common/Timeline;IJ)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 31
    .line 32
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 33
    .line 34
    iget-object v0, p1, Landroidx/media3/exoplayer/MediaSourceList;->c:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {p1, v4, v3}, Landroidx/media3/exoplayer/MediaSourceList;->f(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {p1, v0, v2, v1}, Landroidx/media3/exoplayer/MediaSourceList;->a(ILjava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder;)Landroidx/media3/common/Timeline;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y(Landroidx/media3/common/Timeline;Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    invoke-interface {p0, v0, p1}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final l0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T()V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z(Z)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 37

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/common/util/Clock;

    check-cast v1, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v12, 0x2

    invoke-interface {v1, v12}, Landroidx/media3/common/util/HandlerWrapper;->j(I)V

    .line 4
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v13, 0x1

    if-eq v2, v13, :cond_97

    const/4 v14, 0x4

    if-ne v2, v14, :cond_0

    goto/16 :goto_54

    .line 5
    :cond_0
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    const/4 v15, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 6
    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaSourceList;->l:Z

    if-nez v1, :cond_2

    :cond_1
    move-wide/from16 v20, v10

    const/4 v13, 0x0

    const/4 v14, 0x3

    goto/16 :goto_38

    .line 7
    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s(J)V

    .line 8
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 9
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v2, :cond_4

    .line 10
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->i:Z

    if-nez v3, :cond_3

    .line 11
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    iget v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    goto :goto_0

    :cond_3
    move-wide/from16 v25, v6

    goto/16 :goto_9

    .line 12
    :cond_4
    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 13
    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v5, :cond_5

    .line 14
    iget-object v2, v4, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v3, v4, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-wide/from16 v25, v6

    iget-wide v6, v4, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    iget-wide v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v21, v4

    move-wide/from16 v19, v6

    invoke-virtual/range {v16 .. v24}, Landroidx/media3/exoplayer/MediaPeriodQueue;->h(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    goto :goto_1

    :cond_5
    move-wide/from16 v25, v6

    .line 15
    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    invoke-virtual {v1, v4, v5, v2, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->e(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_10

    .line 16
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 17
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v3, :cond_6

    const-wide v3, 0xe8d4a51000L

    :goto_2
    move-wide/from16 v18, v3

    goto :goto_3

    .line 18
    :cond_6
    iget-wide v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 19
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v6, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    add-long/2addr v4, v6

    iget-wide v6, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    sub-long v3, v4, v6

    goto :goto_2

    :goto_3
    const/4 v3, 0x0

    .line 20
    :goto_4
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 21
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 22
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 23
    iget-wide v5, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    iget-wide v8, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    cmp-long v7, v5, v25

    if-eqz v7, :cond_7

    cmp-long v5, v5, v8

    if-nez v5, :cond_8

    :cond_7
    iget-wide v5, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-wide v7, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_8

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 24
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 25
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move-object v3, v15

    :goto_5
    if-nez v3, :cond_a

    .line 26
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->e:Landroidx/media3/exoplayer/b;

    iget-object v3, v3, Landroidx/media3/exoplayer/b;->k:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    .line 27
    new-instance v16, Landroidx/media3/exoplayer/MediaPeriodHolder;

    iget-object v4, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k:[Landroidx/media3/exoplayer/RendererCapabilities;

    iget-object v5, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Landroidx/media3/exoplayer/LoadControl;

    iget-object v7, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 28
    check-cast v6, Landroidx/media3/exoplayer/DefaultLoadControl;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    new-instance v8, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;

    invoke-direct {v8, v6, v7}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;-><init>(Landroidx/media3/exoplayer/DefaultLoadControl;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 30
    iget-object v6, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    iget-object v7, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v3, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l0:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v23, v1

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-object/from16 v21, v8

    invoke-direct/range {v16 .. v24}, Landroidx/media3/exoplayer/MediaPeriodHolder;-><init>([Landroidx/media3/exoplayer/RendererCapabilities;JLandroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaPeriodInfo;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    move-object/from16 v3, v16

    goto :goto_6

    :cond_a
    move-wide/from16 v4, v18

    .line 31
    iput-object v1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 32
    iput-wide v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 33
    :goto_6
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v4, :cond_c

    .line 34
    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v3, v5, :cond_b

    goto :goto_7

    .line 35
    :cond_b
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->b()V

    .line 36
    iput-object v3, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 37
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->c()V

    goto :goto_7

    .line 38
    :cond_c
    iput-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 39
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    :goto_7
    iput-object v15, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:Ljava/lang/Object;

    .line 42
    iput-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 43
    iget v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:I

    add-int/2addr v4, v13

    iput v4, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:I

    .line 44
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()V

    .line 45
    iget-boolean v2, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->d:Z

    if-nez v2, :cond_d

    .line 46
    iget-wide v4, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 47
    iput-boolean v13, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->d:Z

    .line 48
    iget-object v2, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-virtual {v2, v0, v4, v5}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->p(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    goto :goto_8

    .line 49
    :cond_d
    iget-boolean v2, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    if-eqz v2, :cond_e

    .line 50
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v4, 0x8

    iget-object v5, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-interface {v2, v4, v5}, Landroidx/media3/common/util/HandlerWrapper;->k(ILjava/lang/Object;)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    .line 51
    :cond_e
    :goto_8
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 52
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-ne v2, v3, :cond_f

    .line 53
    iget-wide v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    invoke-virtual {v0, v1, v2, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U(JZ)V

    :cond_f
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 55
    :cond_10
    :goto_9
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    if-eqz v1, :cond_11

    .line 56
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 57
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 58
    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X:Z

    .line 59
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D0()V

    goto :goto_a

    .line 60
    :cond_11
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G()V

    .line 61
    :goto_a
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U:Z

    const-wide/32 v7, 0x989680

    if-nez v1, :cond_1c

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n0:Z

    if-nez v1, :cond_1c

    .line 62
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h()Z

    move-result v1

    if-eqz v1, :cond_12

    goto/16 :goto_f

    .line 63
    :cond_12
    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->c()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 64
    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v2

    if-eq v1, v2, :cond_13

    goto/16 :goto_f

    .line 65
    :cond_13
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v1, :cond_1c

    .line 66
    iget-boolean v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    if-nez v2, :cond_14

    goto/16 :goto_f

    .line 67
    :cond_14
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 68
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v1

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 69
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->a:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    cmp-long v1, v1, v7

    if-lez v1, :cond_15

    goto/16 :goto_f

    :cond_15
    const/4 v1, 0x0

    .line 70
    :goto_b
    iget-object v2, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 71
    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 72
    aget-object v3, v2, v1

    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 75
    aput-object v3, v2, v1

    .line 76
    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 77
    :cond_16
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->c()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-nez v1, :cond_17

    goto/16 :goto_f

    .line 78
    :cond_17
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v3, 0x0

    .line 79
    :goto_c
    array-length v4, v9

    if-ge v3, v4, :cond_1b

    .line 80
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    aget-object v4, v9, v3

    .line 81
    iget-object v5, v4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v5, :cond_1a

    .line 82
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->i()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 83
    aget-object v4, v9, v3

    .line 84
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->i()Z

    move-result v5

    xor-int/2addr v5, v13

    .line 85
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 86
    iget-object v5, v4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v5}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v5, 0x3

    goto :goto_d

    .line 87
    :cond_18
    iget-object v5, v4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v5, :cond_19

    invoke-static {v5}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v5

    if-eqz v5, :cond_19

    move v5, v14

    goto :goto_d

    :cond_19
    move v5, v12

    .line 88
    :goto_d
    iput v5, v4, Landroidx/media3/exoplayer/RendererHolder;->d:I

    move-object v4, v2

    move v2, v3

    const/4 v3, 0x0

    move-object/from16 v16, v4

    .line 89
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v4

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V

    goto :goto_e

    :cond_1a
    move-object/from16 v16, v2

    move v2, v3

    :goto_e
    add-int/lit8 v3, v2, 0x1

    move-object/from16 v2, v16

    goto :goto_c

    .line 91
    :cond_1b
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 92
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->o()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m0:J

    .line 93
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 94
    invoke-virtual {v6, v1}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 96
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G()V

    .line 97
    :cond_1c
    :goto_f
    iget-boolean v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v3

    if-nez v3, :cond_1e

    :cond_1d
    :goto_10
    move-wide/from16 v20, v10

    goto/16 :goto_18

    .line 98
    :cond_1e
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v4, :cond_1f

    .line 99
    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U:Z

    if-eqz v4, :cond_20

    :cond_1f
    move-object v13, v1

    move-wide/from16 v20, v10

    const/4 v14, 0x3

    goto/16 :goto_1c

    .line 100
    :cond_20
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    .line 101
    iget-boolean v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    if-nez v5, :cond_21

    goto :goto_10

    .line 102
    :cond_21
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v6, v5

    move-wide/from16 v16, v7

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v6, :cond_22

    aget-object v8, v5, v7

    .line 103
    iget-object v15, v8, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 104
    invoke-virtual {v8, v4, v15}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z

    move-result v15

    if-eqz v15, :cond_1d

    iget-object v15, v8, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 105
    invoke-virtual {v8, v4, v15}, Landroidx/media3/exoplayer/RendererHolder;->g(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z

    move-result v8

    if-eqz v8, :cond_1d

    add-int/lit8 v7, v7, 0x1

    const/4 v15, 0x0

    goto :goto_11

    .line 106
    :cond_22
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->h()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 107
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->c()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_10

    .line 108
    :cond_23
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 109
    iget-boolean v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    if-nez v5, :cond_24

    iget-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 110
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-gez v4, :cond_24

    goto :goto_10

    .line 111
    :cond_24
    iget-object v4, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 112
    iget-boolean v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    if-eqz v5, :cond_25

    .line 113
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 114
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v4

    iget-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 115
    invoke-virtual {v5}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    move-result-object v5

    iget v5, v5, Landroidx/media3/common/PlaybackParameters;->a:F

    div-float/2addr v4, v5

    float-to-long v4, v4

    cmp-long v4, v4, v16

    if-lez v4, :cond_25

    goto :goto_10

    .line 116
    :cond_25
    iget-object v8, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    const/4 v4, 0x0

    .line 117
    :goto_12
    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 118
    array-length v6, v5

    if-ge v4, v6, :cond_27

    .line 119
    iget-object v6, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    aget-object v7, v6, v4

    aget-object v15, v5, v4

    invoke-static {v7, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 120
    aget-object v7, v5, v4

    .line 121
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 123
    aput-object v7, v6, v4

    .line 124
    :cond_26
    aget-object v6, v5, v4

    .line 125
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 127
    aput-object v6, v5, v4

    .line 128
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()V

    .line 129
    aget-object v5, v5, v4

    .line 130
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_27
    const/16 v27, 0x0

    .line 131
    aget-object v15, v5, v27

    .line 132
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    iget-object v4, v15, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 134
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v6, v15, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object v7, v1

    move-object/from16 v16, v2

    move-object v1, v5

    move-object v2, v6

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v17, v7

    const/4 v7, 0x0

    move-object/from16 v19, v4

    move-object v4, v3

    move-object v3, v1

    move-wide/from16 v20, v10

    move-object/from16 v28, v16

    move-object/from16 v13, v17

    move-object/from16 v12, v19

    move v11, v9

    move-wide/from16 v9, v25

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    .line 135
    iget-boolean v1, v15, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    const/4 v2, -0x2

    if-eqz v1, :cond_32

    if-eqz v11, :cond_28

    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m0:J

    cmp-long v1, v3, v9

    if-nez v1, :cond_29

    :cond_28
    iget-object v1, v15, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 136
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->o()J

    move-result-wide v3

    cmp-long v1, v3, v9

    if-eqz v1, :cond_32

    .line 137
    :cond_29
    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->m0:J

    if-eqz v11, :cond_2a

    .line 138
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n0:Z

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_13

    :cond_2a
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_2d

    const/4 v3, 0x0

    .line 139
    :goto_14
    array-length v4, v13

    if-ge v3, v4, :cond_2d

    .line 140
    invoke-virtual {v12, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v4

    iget-object v5, v12, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    if-eqz v4, :cond_2c

    aget-object v4, v13, v3

    .line 141
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    move-result v4

    if-ne v4, v2, :cond_2b

    goto :goto_15

    .line 142
    :cond_2b
    aget-object v4, v5, v3

    .line 143
    move-object v5, v4

    check-cast v5, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 144
    iget-object v5, v5, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    const/16 v27, 0x0

    .line 145
    aget-object v5, v5, v27

    .line 146
    iget-object v5, v5, Landroidx/media3/common/Format;->p:Ljava/lang/String;

    .line 147
    check-cast v4, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 148
    iget-object v4, v4, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    .line 149
    aget-object v4, v4, v27

    .line 150
    iget-object v4, v4, Landroidx/media3/common/Format;->l:Ljava/lang/String;

    .line 151
    invoke-static {v5, v4}, Landroidx/media3/common/MimeTypes;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    aget-object v4, v13, v3

    .line 152
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->i()Z

    move-result v4

    if-nez v4, :cond_2c

    const/4 v1, 0x0

    goto :goto_16

    :cond_2c
    :goto_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_2d
    :goto_16
    if-nez v1, :cond_32

    .line 153
    invoke-virtual {v15}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v1

    .line 154
    array-length v3, v13

    const/4 v4, 0x0

    :goto_17
    if-ge v4, v3, :cond_30

    aget-object v5, v13, v4

    .line 155
    iget-object v6, v5, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 156
    iget-object v7, v5, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v7}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v8

    if-eqz v8, :cond_2e

    iget v8, v5, Landroidx/media3/exoplayer/RendererHolder;->d:I

    if-eq v8, v14, :cond_2e

    const/4 v11, 0x2

    if-eq v8, v11, :cond_2e

    .line 157
    invoke-static {v7, v1, v2}, Landroidx/media3/exoplayer/RendererHolder;->q(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_2e
    if-eqz v6, :cond_2f

    .line 158
    invoke-static {v6}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v7

    if-eqz v7, :cond_2f

    iget v5, v5, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v7, 0x3

    if-eq v5, v7, :cond_2f

    .line 159
    invoke-static {v6, v1, v2}, Landroidx/media3/exoplayer/RendererHolder;->q(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 160
    :cond_30
    invoke-virtual {v15}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    move-result v1

    if-nez v1, :cond_31

    move-object/from16 v1, v28

    .line 161
    invoke-virtual {v1, v15}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    const/4 v1, 0x0

    .line 162
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 163
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G()V

    :cond_31
    move-wide/from16 v25, v9

    :goto_18
    const/4 v14, 0x3

    goto/16 :goto_20

    .line 164
    :cond_32
    array-length v1, v13

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v1, :cond_31

    aget-object v4, v13, v3

    .line 165
    invoke-virtual {v15}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v5

    .line 166
    iget-object v7, v4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 167
    iget v11, v4, Landroidx/media3/exoplayer/RendererHolder;->b:I

    invoke-virtual {v8, v11}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v19

    .line 168
    invoke-virtual {v12, v11}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v22

    move-wide/from16 v25, v9

    .line 169
    iget-object v9, v4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    if-eqz v9, :cond_34

    iget v10, v4, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v14, 0x3

    if-eq v10, v14, :cond_35

    if-nez v10, :cond_33

    .line 170
    invoke-static {v7}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v10

    if-eqz v10, :cond_33

    goto :goto_1a

    :cond_33
    move-object v7, v9

    goto :goto_1a

    :cond_34
    const/4 v14, 0x3

    :cond_35
    :goto_1a
    if-eqz v19, :cond_38

    .line 171
    move-object v9, v7

    check-cast v9, Landroidx/media3/exoplayer/BaseRenderer;

    .line 172
    iget-boolean v9, v9, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    if-nez v9, :cond_38

    .line 173
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    move-result v9

    if-ne v9, v2, :cond_36

    const/4 v9, 0x1

    goto :goto_1b

    :cond_36
    const/4 v9, 0x0

    .line 174
    :goto_1b
    iget-object v10, v8, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v10, v10, v11

    .line 175
    iget-object v2, v12, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    aget-object v2, v2, v11

    if-eqz v22, :cond_37

    .line 176
    invoke-static {v2, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    if-nez v9, :cond_37

    .line 177
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->i()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 178
    :cond_37
    invoke-static {v7, v5, v6}, Landroidx/media3/exoplayer/RendererHolder;->q(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_38
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v9, v25

    const/4 v2, -0x2

    const/4 v14, 0x4

    goto :goto_19

    .line 179
    :goto_1c
    iget-object v1, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->i:Z

    if-nez v1, :cond_39

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U:Z

    if-eqz v1, :cond_3d

    .line 180
    :cond_39
    array-length v1, v13

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_3d

    aget-object v4, v13, v2

    .line 181
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/RendererHolder;->k(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_1f

    .line 182
    :cond_3a
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v5

    .line 183
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    check-cast v5, Landroidx/media3/exoplayer/BaseRenderer;

    invoke-virtual {v5}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 185
    iget-object v5, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    cmp-long v7, v5, v25

    if-eqz v7, :cond_3b

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3b

    .line 186
    iget-wide v7, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    add-long v6, v7, v5

    goto :goto_1e

    :cond_3b
    move-wide/from16 v6, v25

    .line 187
    :goto_1e
    invoke-virtual {v4, v3}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    .line 188
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    invoke-static {v4, v6, v7}, Landroidx/media3/exoplayer/RendererHolder;->q(Landroidx/media3/exoplayer/Renderer;J)V

    :cond_3c
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 190
    :cond_3d
    :goto_20
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    if-eqz v1, :cond_48

    .line 191
    iget-object v2, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eq v2, v1, :cond_48

    const/4 v2, 0x0

    .line 192
    :goto_21
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v3, v3

    if-ge v2, v3, :cond_3f

    .line 193
    iget-object v3, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:[Z

    .line 194
    aget-boolean v3, v3, v2

    if-nez v3, :cond_3e

    const/4 v1, 0x0

    goto :goto_22

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3f
    const/4 v1, 0x1

    :goto_22
    if-eqz v1, :cond_40

    goto/16 :goto_27

    .line 195
    :cond_40
    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    .line 196
    iget-object v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 197
    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v2, v8

    const/4 v3, 0x0

    const/4 v9, 0x1

    :goto_23
    if-ge v3, v2, :cond_45

    aget-object v4, v8, v3

    .line 198
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->c()I

    move-result v5

    .line 199
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 200
    iget-object v11, v4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 201
    invoke-virtual {v4, v11, v1, v7, v10}, Landroidx/media3/exoplayer/RendererHolder;->o(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I

    move-result v11

    .line 202
    iget-object v12, v4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 203
    invoke-virtual {v4, v12, v1, v7, v10}, Landroidx/media3/exoplayer/RendererHolder;->o(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I

    move-result v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_41

    move v11, v10

    :cond_41
    and-int/lit8 v10, v11, 0x2

    if-eqz v10, :cond_43

    .line 204
    iget-boolean v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0:Z

    if-eqz v10, :cond_43

    if-nez v10, :cond_42

    goto :goto_24

    :cond_42
    const/4 v10, 0x0

    .line 205
    iput-boolean v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0:Z

    .line 206
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v10, v10, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eqz v10, :cond_43

    .line 207
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    const/4 v12, 0x2

    invoke-interface {v10, v12}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 208
    :cond_43
    :goto_24
    iget v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    .line 209
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->c()I

    move-result v4

    sub-int/2addr v5, v4

    sub-int/2addr v10, v5

    iput v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    and-int/lit8 v4, v11, 0x1

    if-eqz v4, :cond_44

    const/4 v4, 0x1

    goto :goto_25

    :cond_44
    const/4 v4, 0x0

    :goto_25
    and-int/2addr v9, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_45
    if-eqz v9, :cond_47

    const/4 v2, 0x0

    .line 210
    :goto_26
    array-length v3, v8

    if-ge v2, v3, :cond_47

    .line 211
    invoke-virtual {v7, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v3

    if-eqz v3, :cond_46

    aget-object v3, v8, v2

    .line 212
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/RendererHolder;->k(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v3

    if-nez v3, :cond_46

    const/4 v3, 0x0

    .line 213
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v4

    .line 214
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_47
    if-eqz v9, :cond_48

    .line 215
    invoke-virtual {v6}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0(Landroidx/media3/exoplayer/MediaPeriodHolder;)V

    .line 216
    :cond_48
    :goto_27
    iget-object v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    const/4 v1, 0x0

    .line 217
    :goto_28
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0()Z

    move-result v2

    if-nez v2, :cond_4a

    :cond_49
    :goto_29
    const/4 v13, 0x0

    goto/16 :goto_37

    .line 218
    :cond_4a
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U:Z

    if-eqz v2, :cond_4b

    goto :goto_29

    .line 219
    :cond_4b
    iget-object v2, v11, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v2, :cond_4c

    goto :goto_29

    .line 220
    :cond_4c
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-eqz v2, :cond_49

    .line 221
    iget-wide v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 222
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_49

    const/4 v3, 0x0

    .line 223
    :goto_2a
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v4, v4

    if-ge v3, v4, :cond_4e

    .line 224
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->h:[Z

    .line 225
    aget-boolean v4, v4, v3

    if-nez v4, :cond_4d

    const/4 v2, 0x0

    goto :goto_2b

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_4e
    const/4 v2, 0x1

    :goto_2b
    if-eqz v2, :cond_49

    const/4 v2, -0x1

    if-eqz v1, :cond_4f

    .line 226
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I(I)V

    :cond_4f
    const/4 v1, 0x0

    .line 227
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n0:Z

    .line 228
    invoke-virtual {v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->a()Landroidx/media3/exoplayer/MediaPeriodHolder;

    move-result-object v12

    .line 229
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 230
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v4, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v4, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    if-ne v4, v2, :cond_50

    iget-object v4, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v5, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    if-ne v5, v2, :cond_50

    iget v2, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    iget v3, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    if-eq v2, v3, :cond_50

    const/4 v2, 0x1

    goto :goto_2c

    :cond_50
    move v2, v1

    .line 232
    :goto_2c
    iget-object v3, v12, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    move/from16 v27, v1

    iget-object v1, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    iget-wide v6, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    const/16 v16, 0x1

    xor-int/lit8 v8, v2, 0x1

    const/4 v9, 0x0

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v2

    move/from16 v13, v27

    .line 233
    invoke-virtual/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 234
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T()V

    .line 235
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H0()V

    move v9, v13

    .line 236
    :goto_2d
    array-length v1, v10

    if-ge v9, v1, :cond_59

    .line 237
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H:Z

    if-nez v1, :cond_51

    move v1, v13

    goto :goto_2e

    .line 238
    :cond_51
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Landroidx/media3/exoplayer/RendererHolder;->i()Z

    move-result v1

    :goto_2e
    if-eqz v1, :cond_58

    .line 239
    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 240
    aget-object v1, v1, v9

    if-eq v12, v1, :cond_52

    move v1, v13

    goto :goto_2f

    :cond_52
    const/4 v1, 0x1

    :goto_2f
    if-eqz v1, :cond_58

    .line 241
    aget-object v1, v10, v9

    .line 242
    iget v2, v1, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v3, 0x4

    if-eq v2, v14, :cond_54

    if-ne v2, v3, :cond_53

    goto :goto_30

    :cond_53
    const/4 v4, 0x2

    if-ne v2, v4, :cond_58

    .line 243
    iput v13, v1, Landroidx/media3/exoplayer/RendererHolder;->d:I

    goto :goto_34

    :cond_54
    :goto_30
    if-ne v2, v3, :cond_55

    const/4 v2, 0x1

    goto :goto_31

    :cond_55
    move v2, v13

    .line 244
    :goto_31
    iget-object v3, v1, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    iget-object v4, v1, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    const/16 v5, 0x11

    if-eqz v2, :cond_56

    .line 245
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    invoke-interface {v4, v5, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    goto :goto_32

    .line 247
    :cond_56
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    invoke-interface {v3, v5, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 249
    :goto_32
    iget v2, v1, Landroidx/media3/exoplayer/RendererHolder;->d:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_57

    move v2, v13

    goto :goto_33

    :cond_57
    const/4 v2, 0x1

    .line 250
    :goto_33
    iput v2, v1, Landroidx/media3/exoplayer/RendererHolder;->d:I

    :cond_58
    :goto_34
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 251
    :cond_59
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    if-ne v1, v14, :cond_5a

    .line 252
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0()V

    .line 253
    :cond_5a
    iget-object v1, v11, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 254
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move v9, v13

    .line 255
    :goto_35
    array-length v2, v10

    if-ge v9, v2, :cond_5e

    .line 256
    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    move-result v2

    if-nez v2, :cond_5b

    goto :goto_36

    .line 257
    :cond_5b
    aget-object v2, v10, v9

    .line 258
    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 259
    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v2}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 260
    invoke-interface {v2}, Landroidx/media3/exoplayer/Renderer;->i()V

    goto :goto_36

    :cond_5c
    if-eqz v3, :cond_5d

    .line 261
    invoke-static {v3}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 262
    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->i()V

    :cond_5d
    :goto_36
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    :cond_5e
    const/4 v1, 0x1

    const-wide v25, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_28

    .line 263
    :goto_37
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l0:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    :goto_38
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 265
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    if-nez v1, :cond_5f

    move-wide/from16 v2, v20

    .line 266
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y(J)V

    return-void

    :cond_5f
    move-wide/from16 v2, v20

    .line 267
    const-string v4, "doSomeWork"

    .line 268
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H0()V

    .line 270
    iget-boolean v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    if-eqz v4, :cond_6b

    .line 271
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/common/util/Clock;

    check-cast v4, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 273
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->D(J)J

    move-result-wide v4

    iput-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g0:J

    .line 274
    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->j(J)V

    move v4, v13

    move v9, v4

    const/4 v5, 0x1

    const/4 v12, 0x1

    .line 275
    :goto_39
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v7, v6

    if-ge v9, v7, :cond_6a

    .line 276
    aget-object v6, v6, v9

    .line 277
    invoke-virtual {v6}, Landroidx/media3/exoplayer/RendererHolder;->c()I

    move-result v7

    if-nez v7, :cond_60

    .line 278
    invoke-virtual {v0, v9, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K(IZ)V

    goto/16 :goto_3f

    .line 279
    :cond_60
    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    iget-wide v10, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g0:J

    .line 280
    iget-object v15, v6, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    iget-object v14, v6, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    invoke-static {v14}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v19

    if-eqz v19, :cond_61

    .line 281
    invoke-interface {v14, v7, v8, v10, v11}, Landroidx/media3/exoplayer/Renderer;->d(JJ)V

    :cond_61
    if-eqz v15, :cond_62

    .line 282
    invoke-static {v15}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    move-result v14

    if-eqz v14, :cond_62

    .line 283
    invoke-interface {v15, v7, v8, v10, v11}, Landroidx/media3/exoplayer/Renderer;->d(JJ)V

    :cond_62
    if-eqz v12, :cond_63

    .line 284
    invoke-virtual {v6}, Landroidx/media3/exoplayer/RendererHolder;->h()Z

    move-result v7

    if-eqz v7, :cond_63

    const/4 v7, 0x1

    goto :goto_3a

    :cond_63
    move v7, v13

    .line 285
    :goto_3a
    iget-boolean v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    if-eqz v8, :cond_65

    .line 286
    invoke-virtual {v6}, Landroidx/media3/exoplayer/RendererHolder;->l()Z

    move-result v8

    if-eqz v8, :cond_65

    .line 287
    invoke-virtual {v6}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    move-result v8

    const/4 v11, 0x2

    if-eq v8, v11, :cond_64

    .line 288
    invoke-virtual {v6}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_65

    .line 289
    :cond_64
    invoke-virtual {v6}, Landroidx/media3/exoplayer/RendererHolder;->h()Z

    move-result v8

    if-nez v8, :cond_65

    const/4 v12, 0x1

    goto :goto_3b

    :cond_65
    move v12, v4

    .line 290
    :goto_3b
    invoke-virtual {v6, v1}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 291
    move-object v6, v4

    check-cast v6, Landroidx/media3/exoplayer/BaseRenderer;

    invoke-virtual {v6}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    move-result v6

    if-nez v6, :cond_67

    .line 292
    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->a()Z

    move-result v6

    if-nez v6, :cond_67

    .line 293
    invoke-interface {v4}, Landroidx/media3/exoplayer/Renderer;->b()Z

    move-result v4

    if-eqz v4, :cond_66

    goto :goto_3c

    :cond_66
    move v4, v13

    goto :goto_3d

    :cond_67
    :goto_3c
    const/4 v4, 0x1

    .line 294
    :goto_3d
    invoke-virtual {v0, v9, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K(IZ)V

    if-eqz v5, :cond_68

    if-eqz v4, :cond_68

    const/4 v5, 0x1

    goto :goto_3e

    :cond_68
    move v5, v13

    :goto_3e
    if-nez v4, :cond_69

    .line 295
    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J(I)V

    :cond_69
    move v4, v12

    move v12, v7

    :goto_3f
    add-int/lit8 v9, v9, 0x1

    const/4 v14, 0x3

    goto/16 :goto_39

    .line 296
    :cond_6a
    iget-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    if-eqz v6, :cond_6c

    if-nez v4, :cond_6c

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    const/16 v6, 0x25

    .line 297
    invoke-interface {v4, v6}, Landroidx/media3/common/util/HandlerWrapper;->h(I)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 298
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v4, v6}, Landroidx/media3/common/util/HandlerWrapper;->e(I)Landroidx/media3/common/util/HandlerWrapper$Message;

    move-result-object v4

    invoke-interface {v4}, Landroidx/media3/common/util/HandlerWrapper$Message;->a()V

    goto :goto_40

    .line 299
    :cond_6b
    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->g()V

    const/4 v5, 0x1

    const/4 v12, 0x1

    .line 300
    :cond_6c
    :goto_40
    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-wide v6, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    if-eqz v12, :cond_6e

    .line 301
    iget-boolean v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    if-eqz v4, :cond_6e

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v6, v9

    if-eqz v4, :cond_6d

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v11, v4, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    cmp-long v4, v6, v11

    if-gtz v4, :cond_6f

    :cond_6d
    const/4 v4, 0x1

    goto :goto_41

    :cond_6e
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    :cond_6f
    move v4, v13

    :goto_41
    if-eqz v4, :cond_70

    .line 302
    iget-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U:Z

    if-eqz v6, :cond_70

    .line 303
    iput-boolean v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U:Z

    .line 304
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v6, v6, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 305
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v7, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 306
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/common/audio/AudioFocusManager;

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 307
    invoke-virtual {v7, v8, v13}, Landroidx/media3/common/audio/AudioFocusManager;->c(IZ)I

    move-result v7

    const/4 v8, 0x5

    .line 308
    invoke-virtual {v0, v7, v6, v8, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G0(IIIZ)V

    :cond_70
    if-eqz v4, :cond_72

    .line 309
    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v4, v4, Landroidx/media3/exoplayer/MediaPeriodInfo;->i:Z

    if-eqz v4, :cond_72

    const/4 v4, 0x4

    .line 310
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(I)V

    .line 311
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C0()V

    :cond_71
    const/4 v12, 0x1

    goto/16 :goto_4d

    .line 312
    :cond_72
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v6, v4, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v11, 0x2

    if-ne v6, v11, :cond_82

    .line 313
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    iget v7, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    if-nez v7, :cond_73

    .line 314
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F()Z

    move-result v4

    goto/16 :goto_49

    :cond_73
    if-nez v5, :cond_75

    :cond_74
    move v4, v13

    goto/16 :goto_49

    .line 315
    :cond_75
    iget-boolean v7, v4, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    if-nez v7, :cond_77

    :cond_76
    :goto_42
    const/4 v4, 0x1

    goto/16 :goto_49

    .line 316
    :cond_77
    iget-object v7, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 317
    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v8, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v8, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4, v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 318
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    check-cast v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    .line 319
    iget-wide v11, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    move-wide/from16 v35, v11

    goto :goto_43

    :cond_78
    move-wide/from16 v35, v9

    .line 320
    :goto_43
    iget-object v4, v6, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 321
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->g()Z

    move-result v6

    if-eqz v6, :cond_79

    iget-object v6, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-boolean v6, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->i:Z

    if-eqz v6, :cond_79

    const/4 v6, 0x1

    goto :goto_44

    :cond_79
    move v6, v13

    .line 322
    :goto_44
    iget-object v8, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v8, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    move-result v8

    if-eqz v8, :cond_7a

    iget-boolean v8, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    if-nez v8, :cond_7a

    const/4 v8, 0x1

    goto :goto_45

    :cond_7a
    move v8, v13

    :goto_45
    if-nez v6, :cond_76

    if-eqz v8, :cond_7b

    goto :goto_42

    .line 323
    :cond_7b
    invoke-virtual {v4}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s(J)J

    move-result-wide v31

    .line 324
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o:Landroidx/media3/exoplayer/LoadControl;

    new-instance v27, Landroidx/media3/exoplayer/LoadControl$Parameters;

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 325
    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 326
    invoke-virtual {v11}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    move-result-object v11

    iget v11, v11, Landroidx/media3/common/PlaybackParameters;->a:F

    iget-object v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v12, v12, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    iget-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V:Z

    move-object/from16 v28, v6

    move-object/from16 v30, v7

    move-object/from16 v29, v8

    move/from16 v33, v11

    move/from16 v34, v12

    invoke-direct/range {v27 .. v36}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JFZJ)V

    move-object/from16 v8, v27

    move-object/from16 v11, v28

    move-wide/from16 v6, v31

    move/from16 v12, v33

    .line 327
    check-cast v4, Landroidx/media3/exoplayer/DefaultLoadControl;

    .line 328
    invoke-virtual {v4, v8}, Landroidx/media3/exoplayer/DefaultLoadControl;->b(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v8

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v12, v14

    if-nez v14, :cond_7c

    move-wide/from16 v31, v6

    goto :goto_46

    :cond_7c
    long-to-double v6, v6

    float-to-double v14, v12

    div-double/2addr v6, v14

    .line 329
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v31

    :goto_46
    if-eqz v34, :cond_7e

    if-eqz v8, :cond_7d

    .line 330
    iget-wide v6, v4, Landroidx/media3/exoplayer/DefaultLoadControl;->k:J

    goto :goto_47

    .line 331
    :cond_7d
    iget-wide v6, v4, Landroidx/media3/exoplayer/DefaultLoadControl;->j:J

    goto :goto_47

    :cond_7e
    if-eqz v8, :cond_7f

    .line 332
    iget-wide v6, v4, Landroidx/media3/exoplayer/DefaultLoadControl;->i:J

    goto :goto_47

    :cond_7f
    iget-wide v6, v4, Landroidx/media3/exoplayer/DefaultLoadControl;->h:J

    :goto_47
    cmp-long v12, v35, v9

    if-eqz v12, :cond_80

    const-wide/16 v14, 0x2

    .line 333
    div-long v14, v35, v14

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_80
    const-wide/16 v14, 0x0

    cmp-long v12, v6, v14

    if-lez v12, :cond_76

    cmp-long v6, v31, v6

    if-gez v6, :cond_76

    if-eqz v8, :cond_81

    .line 334
    iget-boolean v6, v4, Landroidx/media3/exoplayer/DefaultLoadControl;->m:Z

    goto :goto_48

    :cond_81
    move v6, v13

    :goto_48
    if-nez v6, :cond_74

    .line 335
    iget-object v6, v4, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 336
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 337
    monitor-enter v6

    .line 338
    :try_start_0
    iget v7, v6, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 339
    iget-object v6, v4, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    .line 340
    iget v6, v6, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I

    mul-int/2addr v7, v6

    .line 341
    iget-object v4, v4, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    .line 342
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    iget v4, v4, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->c:I

    if-lt v7, v4, :cond_74

    goto/16 :goto_42

    :catchall_0
    move-exception v0

    .line 344
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :goto_49
    if-eqz v4, :cond_82

    const/4 v14, 0x3

    .line 345
    invoke-virtual {v0, v14}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(I)V

    const/4 v4, 0x0

    .line 346
    iput-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j0:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 347
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 348
    invoke-virtual {v0, v13, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J0(ZZ)V

    .line 349
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    const/4 v12, 0x1

    .line 350
    iput-boolean v12, v4, Landroidx/media3/exoplayer/DefaultMediaClock;->o:Z

    .line 351
    iget-object v4, v4, Landroidx/media3/exoplayer/DefaultMediaClock;->j:Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/StandaloneMediaClock;->b()V

    .line 352
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A0()V

    goto :goto_4d

    :cond_82
    const/4 v12, 0x1

    .line 353
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v14, 0x3

    if-ne v4, v14, :cond_8a

    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    if-nez v4, :cond_83

    .line 354
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->F()Z

    move-result v4

    if-eqz v4, :cond_84

    goto :goto_4d

    :cond_83
    if-nez v5, :cond_8a

    .line 355
    :cond_84
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0()Z

    move-result v4

    .line 356
    invoke-virtual {v0, v4, v13}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J0(ZZ)V

    const/4 v11, 0x2

    .line 357
    invoke-virtual {v0, v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(I)V

    .line 358
    iget-boolean v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V:Z

    if-eqz v4, :cond_89

    .line 359
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 360
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    :goto_4a
    if-eqz v4, :cond_86

    .line 361
    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 362
    iget-object v5, v5, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    array-length v6, v5

    move v7, v13

    :goto_4b
    if-ge v7, v6, :cond_85

    aget-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4b

    .line 363
    :cond_85
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    goto :goto_4a

    .line 364
    :cond_86
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    check-cast v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    .line 365
    iget-wide v5, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    cmp-long v7, v5, v9

    if-nez v7, :cond_87

    goto :goto_4c

    .line 366
    :cond_87
    iget-wide v7, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->b:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 367
    iget-wide v7, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->h:J

    cmp-long v11, v7, v9

    if-eqz v11, :cond_88

    cmp-long v5, v5, v7

    if-lez v5, :cond_88

    .line 368
    iput-wide v7, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->i:J

    .line 369
    :cond_88
    iput-wide v9, v4, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->m:J

    .line 370
    :cond_89
    :goto_4c
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C0()V

    .line 371
    :cond_8a
    :goto_4d
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v11, 0x2

    if-ne v4, v11, :cond_8d

    move v4, v13

    .line 372
    :goto_4e
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    array-length v6, v5

    if-ge v4, v6, :cond_8c

    .line 373
    aget-object v5, v5, v4

    invoke-virtual {v5, v1}, Landroidx/media3/exoplayer/RendererHolder;->k(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 374
    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J(I)V

    :cond_8b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 375
    :cond_8c
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->g:Z

    if-nez v4, :cond_8d

    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    const-wide/32 v6, 0x7a120

    cmp-long v1, v4, v6

    if-gez v1, :cond_8d

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 376
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 377
    invoke-static {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->C(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 378
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0()Z

    move-result v1

    if-eqz v1, :cond_8d

    move v1, v12

    goto :goto_4f

    :cond_8d
    move v1, v13

    :goto_4f
    if-nez v1, :cond_8e

    .line 379
    iput-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k0:J

    goto :goto_50

    .line 380
    :cond_8e
    iget-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k0:J

    cmp-long v1, v4, v9

    .line 381
    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x:Landroidx/media3/common/util/Clock;

    if-nez v1, :cond_8f

    .line 382
    check-cast v4, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 384
    iput-wide v4, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k0:J

    goto :goto_50

    .line 385
    :cond_8f
    check-cast v4, Landroidx/media3/common/util/SystemClock;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 387
    iget-wide v6, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k0:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xfa0

    cmp-long v1, v4, v6

    if-gez v1, :cond_96

    .line 388
    :goto_50
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0()Z

    move-result v1

    if-eqz v1, :cond_90

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v14, 0x3

    if-ne v1, v14, :cond_90

    move v9, v12

    goto :goto_51

    :cond_90
    move v9, v13

    .line 389
    :goto_51
    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->c0:Z

    if-eqz v1, :cond_91

    iget-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b0:Z

    if-eqz v1, :cond_91

    if-eqz v9, :cond_91

    goto :goto_52

    :cond_91
    move v12, v13

    .line 390
    :goto_52
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    if-eq v4, v12, :cond_92

    .line 391
    invoke-virtual {v1, v12}, Landroidx/media3/exoplayer/PlaybackInfo;->i(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 392
    :cond_92
    iput-boolean v13, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b0:Z

    if-nez v12, :cond_95

    .line 393
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_93

    goto :goto_53

    :cond_93
    if-nez v9, :cond_94

    const/4 v11, 0x2

    if-eq v1, v11, :cond_94

    const/4 v14, 0x3

    if-ne v1, v14, :cond_95

    .line 394
    iget v1, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    if-eqz v1, :cond_95

    .line 395
    :cond_94
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y(J)V

    .line 396
    :cond_95
    :goto_53
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 397
    :cond_96
    new-instance v0, Landroidx/media3/common/util/StuckPlayerException;

    const/16 v1, 0xfa0

    invoke-direct {v0, v13, v1}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    throw v0

    :cond_97
    :goto_54
    return-void
.end method

.method public final m0(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->j(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->c(Landroidx/media3/common/PlaybackParameters;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x1

    .line 18
    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1, v0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A(Landroidx/media3/common/PlaybackParameters;FZZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final n(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 6
    .line 7
    aget-object v10, v2, p2

    .line 8
    .line 9
    invoke-virtual {v10}, Landroidx/media3/exoplayer/RendererHolder;->l()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :cond_0
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 20
    .line 21
    const/4 v11, 0x1

    .line 22
    if-ne v1, v2, :cond_1

    .line 23
    .line 24
    move v12, v11

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v12, 0x0

    .line 27
    :goto_0
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 28
    .line 29
    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b:[Landroidx/media3/exoplayer/RendererConfiguration;

    .line 30
    .line 31
    aget-object v4, v4, p2

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 34
    .line 35
    aget-object v2, v2, p2

    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y0()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 44
    .line 45
    iget v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 46
    .line 47
    const/4 v6, 0x3

    .line 48
    if-ne v5, v6, :cond_2

    .line 49
    .line 50
    move v13, v11

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v13, 0x0

    .line 53
    :goto_1
    if-nez p3, :cond_3

    .line 54
    .line 55
    if-eqz v13, :cond_3

    .line 56
    .line 57
    move v14, v11

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const/4 v14, 0x0

    .line 60
    :goto_2
    iget v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    .line 61
    .line 62
    add-int/2addr v5, v11

    .line 63
    iput v5, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->d0:I

    .line 64
    .line 65
    iget-object v5, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 66
    .line 67
    aget-object v5, v5, p2

    .line 68
    .line 69
    iget-wide v7, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 70
    .line 71
    iget-object v6, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 72
    .line 73
    iget-object v9, v6, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 74
    .line 75
    iget-object v15, v10, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 76
    .line 77
    iget-object v6, v10, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 78
    .line 79
    invoke-static {v2}, Landroidx/media3/exoplayer/RendererHolder;->d(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget v3, v10, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 84
    .line 85
    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 86
    .line 87
    if-eqz v3, :cond_7

    .line 88
    .line 89
    move-object/from16 p2, v2

    .line 90
    .line 91
    const/4 v2, 0x2

    .line 92
    if-eq v3, v2, :cond_4

    .line 93
    .line 94
    const/4 v2, 0x4

    .line 95
    if-ne v3, v2, :cond_5

    .line 96
    .line 97
    :cond_4
    move-object/from16 v3, p2

    .line 98
    .line 99
    :goto_3
    move-object v2, v5

    .line 100
    move/from16 v17, v13

    .line 101
    .line 102
    const/4 v13, 0x1

    .line 103
    move-wide/from16 v5, p4

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_5
    const/4 v2, 0x1

    .line 107
    iput-boolean v2, v10, Landroidx/media3/exoplayer/RendererHolder;->f:Z

    .line 108
    .line 109
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    move-object v3, v6

    .line 113
    check-cast v3, Landroidx/media3/exoplayer/BaseRenderer;

    .line 114
    .line 115
    iget v15, v3, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 116
    .line 117
    if-nez v15, :cond_6

    .line 118
    .line 119
    move/from16 v16, v2

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_6
    const/16 v16, 0x0

    .line 123
    .line 124
    :goto_4
    invoke-static/range {v16 .. v16}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 125
    .line 126
    .line 127
    iput-object v4, v3, Landroidx/media3/exoplayer/BaseRenderer;->m:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 128
    .line 129
    iput-object v9, v3, Landroidx/media3/exoplayer/BaseRenderer;->z:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 130
    .line 131
    iput v2, v3, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 132
    .line 133
    invoke-virtual {v3, v14, v12}, Landroidx/media3/exoplayer/BaseRenderer;->u(ZZ)V

    .line 134
    .line 135
    .line 136
    move-object v4, v5

    .line 137
    move-object v15, v6

    .line 138
    move/from16 v17, v13

    .line 139
    .line 140
    move-wide/from16 v5, p4

    .line 141
    .line 142
    move v13, v2

    .line 143
    move-object v2, v3

    .line 144
    move-object/from16 v3, p2

    .line 145
    .line 146
    invoke-virtual/range {v2 .. v9}, Landroidx/media3/exoplayer/BaseRenderer;->D([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v5, v6, v14, v13}, Landroidx/media3/exoplayer/BaseRenderer;->E(JZZ)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v11, v15}, Landroidx/media3/exoplayer/DefaultMediaClock;->a(Landroidx/media3/exoplayer/Renderer;)V

    .line 153
    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_7
    move-object v3, v2

    .line 157
    goto :goto_3

    .line 158
    :goto_5
    iput-boolean v13, v10, Landroidx/media3/exoplayer/RendererHolder;->e:Z

    .line 159
    .line 160
    move-object/from16 v18, v2

    .line 161
    .line 162
    move-object v2, v15

    .line 163
    check-cast v2, Landroidx/media3/exoplayer/BaseRenderer;

    .line 164
    .line 165
    iget v13, v2, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 166
    .line 167
    if-nez v13, :cond_8

    .line 168
    .line 169
    const/16 v16, 0x1

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_8
    const/16 v16, 0x0

    .line 173
    .line 174
    :goto_6
    invoke-static/range {v16 .. v16}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 175
    .line 176
    .line 177
    iput-object v4, v2, Landroidx/media3/exoplayer/BaseRenderer;->m:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 178
    .line 179
    iput-object v9, v2, Landroidx/media3/exoplayer/BaseRenderer;->z:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 180
    .line 181
    const/4 v13, 0x1

    .line 182
    iput v13, v2, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 183
    .line 184
    invoke-virtual {v2, v14, v12}, Landroidx/media3/exoplayer/BaseRenderer;->u(ZZ)V

    .line 185
    .line 186
    .line 187
    move-object/from16 v4, v18

    .line 188
    .line 189
    invoke-virtual/range {v2 .. v9}, Landroidx/media3/exoplayer/BaseRenderer;->D([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v5, v6, v14, v13}, Landroidx/media3/exoplayer/BaseRenderer;->E(JZZ)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v11, v15}, Landroidx/media3/exoplayer/DefaultMediaClock;->a(Landroidx/media3/exoplayer/Renderer;)V

    .line 196
    .line 197
    .line 198
    :goto_7
    new-instance v2, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;

    .line 199
    .line 200
    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$1;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v10, v1}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    const/16 v1, 0xb

    .line 211
    .line 212
    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    if-eqz v17, :cond_9

    .line 216
    .line 217
    if-eqz v12, :cond_9

    .line 218
    .line 219
    invoke-virtual {v10}, Landroidx/media3/exoplayer/RendererHolder;->r()V

    .line 220
    .line 221
    .line 222
    :cond_9
    :goto_8
    return-void
.end method

.method public final n0(Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->l0:Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ge v0, v1, :cond_0

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->q()V

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
.end method

.method public final o([ZJ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v0, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    move v3, v1

    .line 20
    :goto_0
    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 21
    .line 22
    array-length v4, v7

    .line 23
    if-ge v3, v4, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    aget-object v4, v7, v3

    .line 32
    .line 33
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->p()V

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v3, v1

    .line 40
    :goto_1
    array-length v1, v7

    .line 41
    if-ge v3, v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    aget-object v1, v7, v3

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/RendererHolder;->k(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    aget-boolean v4, p1, v3

    .line 58
    .line 59
    move-object v1, p0

    .line 60
    move-wide v5, p2

    .line 61
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->n(Landroidx/media3/exoplayer/MediaPeriodHolder;IZJ)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move-object v1, p0

    .line 66
    move-wide v5, p2

    .line 67
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    move-object p0, v1

    .line 70
    move-wide p2, v5

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    return-void
.end method

.method public final o0(I)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 8
    .line 9
    iput p1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->g:I

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->x(Landroidx/media3/common/Timeline;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    and-int/lit8 v0, p1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final p(Landroidx/media3/common/Timeline;Ljava/lang/Object;J)J
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 2
    .line 3
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iget p2, p2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/common/Timeline$Window;

    .line 10
    .line 11
    invoke-virtual {p1, p2, p0}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    .line 12
    .line 13
    .line 14
    iget-wide p1, p0, Landroidx/media3/common/Timeline$Window;->d:J

    .line 15
    .line 16
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    cmp-long p1, p1, v1

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->a()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-boolean p1, p0, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 32
    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-wide p1, p0, Landroidx/media3/common/Timeline$Window;->e:J

    .line 37
    .line 38
    cmp-long v1, p1, v1

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    add-long/2addr p1, v1

    .line 52
    :goto_0
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->d:J

    .line 53
    .line 54
    sub-long/2addr p1, v1

    .line 55
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->D(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide p0

    .line 59
    iget-wide v0, v0, Landroidx/media3/common/Timeline$Period;->e:J

    .line 60
    .line 61
    add-long/2addr p3, v0

    .line 62
    sub-long/2addr p0, p3

    .line 63
    return-wide p0

    .line 64
    :cond_2
    :goto_1
    return-wide v1
.end method

.method public final p0(Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 4
    .line 5
    const/16 v1, 0x25

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->h(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:I

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:I

    .line 26
    .line 27
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:I

    .line 28
    .line 29
    if-lez v0, :cond_1

    .line 30
    .line 31
    new-instance v3, Landroidx/media3/exoplayer/h;

    .line 32
    .line 33
    invoke-direct {v3, p0, v0}, Landroidx/media3/exoplayer/h;-><init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G:Landroidx/media3/common/util/HandlerWrapper;

    .line 37
    .line 38
    invoke-interface {v0, v3}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->P:I

    .line 43
    .line 44
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    .line 45
    .line 46
    invoke-interface {v2, v1}, Landroidx/media3/common/util/HandlerWrapper;->j(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->a0(Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;)V

    .line 54
    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->O:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 58
    .line 59
    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->N:Z

    .line 60
    .line 61
    :cond_2
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->M:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final q(Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p0, Landroidx/media3/exoplayer/PlaybackInfo;->u:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Z

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroidx/media3/common/Timeline;->a(Z)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 27
    .line 28
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/common/Timeline$Window;

    .line 34
    .line 35
    move-object v3, p1

    .line 36
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 41
    .line 42
    iget-object v6, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    const/4 v10, 0x0

    .line 46
    move-object v5, v3

    .line 47
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 48
    .line 49
    const-wide/16 v7, 0x0

    .line 50
    .line 51
    invoke-virtual/range {v3 .. v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->v(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Ljava/lang/Object;JZZ)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    move-object v3, v5

    .line 56
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p1, Ljava/lang/Long;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    iget-object p1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 71
    .line 72
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 73
    .line 74
    invoke-virtual {v3, p1, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 75
    .line 76
    .line 77
    iget p1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 78
    .line 79
    iget v3, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 80
    .line 81
    invoke-virtual {p0, v3}, Landroidx/media3/common/Timeline$Period;->e(I)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-ne p1, v3, :cond_2

    .line 86
    .line 87
    iget-object p0, p0, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    move-wide v1, v4

    .line 94
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public final q0(Landroidx/media3/exoplayer/ScrubbingModeParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->L:Landroidx/media3/exoplayer/ScrubbingModeParameters;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->g()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r(Landroidx/media3/exoplayer/MediaPeriodHolder;I)J
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-wide/16 p0, 0x0

    .line 4
    .line 5
    return-wide p0

    .line 6
    :cond_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 11
    .line 12
    aget-object v0, p0, p2

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/RendererHolder;->k(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    aget-object p0, p0, p2

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    check-cast p0, Landroidx/media3/exoplayer/BaseRenderer;

    .line 31
    .line 32
    iget-wide p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->v:J

    .line 33
    .line 34
    return-wide p0

    .line 35
    :cond_2
    :goto_0
    iget-wide p0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 36
    .line 37
    return-wide p0
.end method

.method public final r0(Landroidx/media3/exoplayer/SeekParameters;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->K:Landroidx/media3/exoplayer/SeekParameters;

    .line 2
    .line 3
    return-void
.end method

.method public final s(J)J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 11
    .line 12
    iget-wide v5, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 13
    .line 14
    sub-long/2addr v3, v5

    .line 15
    sub-long/2addr p1, v3

    .line 16
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 17
    .line 18
    .line 19
    move-result-wide p0

    .line 20
    return-wide p0
.end method

.method public final s0(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Z

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 8
    .line 9
    iput-boolean p1, v1, Landroidx/media3/exoplayer/MediaPeriodQueue;->h:Z

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->x(Landroidx/media3/common/Timeline;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    and-int/lit8 v0, p1, 0x1

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    and-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final t(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 4
    .line 5
    iget v2, v0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 6
    .line 7
    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->m:I

    .line 8
    .line 9
    invoke-virtual {p0, p1, v2, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G0(IIIZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final t0(Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->R:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->a(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->A:Landroidx/media3/exoplayer/MediaSourceList;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaSourceList;->c:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    move-object v2, p1

    .line 16
    check-cast v2, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->b:[I

    .line 19
    .line 20
    array-length v2, v2

    .line 21
    if-eq v2, v1, :cond_0

    .line 22
    .line 23
    check-cast p1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 24
    .line 25
    new-instance v2, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 26
    .line 27
    new-instance v3, Ljava/util/Random;

    .line 28
    .line 29
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->a:Ljava/util/Random;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/Random;->nextLong()J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(Ljava/util/Random;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->a(I)Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :cond_0
    iput-object p1, v0, Landroidx/media3/exoplayer/MediaSourceList;->k:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaSourceList;->b()Landroidx/media3/common/Timeline;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->y(Landroidx/media3/common/Timeline;Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o0:F

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x0(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final u0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2
    .line 3
    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 4
    .line 5
    if-eq v1, p1, :cond_2

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq p1, v1, :cond_0

    .line 9
    .line 10
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->k0:J

    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x3

    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->p:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->i(Z)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->h(I)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final v(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 8
    .line 9
    if-ne v1, p1, :cond_0

    .line 10
    .line 11
    iget-wide v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->s(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 25
    .line 26
    if-ne v0, p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final v0(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_2

    .line 6
    .line 7
    aget-object v2, p0, v1

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x2

    .line 14
    if-eq v3, v4, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x4

    .line 21
    if-eq v3, v4, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 25
    .line 26
    const/4 v4, 0x7

    .line 27
    invoke-interface {v3, v4, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    invoke-interface {v2, v4, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return-void
.end method

.method public final w(Ljava/io/IOException;I)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1, p1, p2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 14
    .line 15
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/ExoPlaybackException;->a(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    const-string p1, "ExoPlayerImplInternal"

    .line 22
    .line 23
    const-string p2, "Playback error"

    .line 24
    .line 25
    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B0(ZZ)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->f(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 38
    .line 39
    return-void
.end method

.method public final w0(Ljava/lang/Object;Landroidx/media3/common/util/ConditionVariable;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    const/4 v3, 0x2

    .line 6
    if-ge v2, v1, :cond_3

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    invoke-virtual {v4}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    if-eq v5, v3, :cond_0

    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    iget v3, v4, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 18
    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x1

    .line 21
    if-eq v3, v5, :cond_2

    .line 22
    .line 23
    if-ne v3, v6, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v3, v4, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 27
    .line 28
    invoke-interface {v3, v6, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    :goto_1
    iget-object v3, v4, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, v6, p1}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 44
    .line 45
    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 46
    .line 47
    const/4 v0, 0x3

    .line 48
    if-eq p1, v0, :cond_4

    .line 49
    .line 50
    if-ne p1, v3, :cond_5

    .line 51
    .line 52
    :cond_4
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 53
    .line 54
    invoke-interface {p0, v3}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 55
    .line 56
    .line 57
    :cond_5
    if-eqz p2, :cond_6

    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/media3/common/util/ConditionVariable;->c()Z

    .line 60
    .line 61
    .line 62
    :cond_6
    return-void
.end method

.method public final x(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 8
    .line 9
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 13
    .line 14
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 15
    .line 16
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->k:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->c(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 33
    .line 34
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->d()J

    .line 42
    .line 43
    .line 44
    move-result-wide v3

    .line 45
    :goto_1
    iput-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 46
    .line 47
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 48
    .line 49
    iget-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->q:J

    .line 50
    .line 51
    invoke-virtual {p0, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s(J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    iput-wide v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->r:J

    .line 56
    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    if-eqz p1, :cond_4

    .line 60
    .line 61
    :cond_3
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-boolean p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 64
    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 68
    .line 69
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 70
    .line 71
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 72
    .line 73
    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    return-void
.end method

.method public final x0(F)V
    .locals 6

    .line 1
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o0:F

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I:Landroidx/media3/common/audio/AudioFocusManager;

    .line 4
    .line 5
    iget v0, v0, Landroidx/media3/common/audio/AudioFocusManager;->g:F

    .line 6
    .line 7
    mul-float/2addr p1, v0

    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 9
    .line 10
    array-length v0, p0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_2

    .line 13
    .line 14
    aget-object v2, p0, v1

    .line 15
    .line 16
    invoke-virtual {v2}, Landroidx/media3/exoplayer/RendererHolder;->f()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eq v3, v4, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v3, v2, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x2

    .line 31
    invoke-interface {v3, v5, v4}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v2, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 35
    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v2, v5, v3}, Landroidx/media3/exoplayer/PlayerMessage$Target;->o(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

.method public final y(Landroidx/media3/common/Timeline;Z)V
    .locals 44

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 4
    .line 5
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 6
    .line 7
    iget-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 8
    .line 9
    iget v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Y:I

    .line 10
    .line 11
    iget-boolean v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z:Z

    .line 12
    .line 13
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/common/Timeline$Window;

    .line 14
    .line 15
    iget-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 16
    .line 17
    iget-boolean v10, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->J:Z

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->p()Z

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v12, 0x4

    .line 24
    const-wide/16 v13, 0x0

    .line 25
    .line 26
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    if-eqz v6, :cond_3

    .line 32
    .line 33
    sget-object v2, Landroidx/media3/exoplayer/PlaybackInfo;->u:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 34
    .line 35
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 44
    .line 45
    cmp-long v3, v3, v13

    .line 46
    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/16 v27, 0x0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    const/16 v27, 0x1

    .line 54
    .line 55
    :goto_1
    if-eqz v27, :cond_2

    .line 56
    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_2

    .line 66
    .line 67
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 68
    .line 69
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 70
    .line 71
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {v3, v0, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->f:Z

    .line 78
    .line 79
    if-nez v0, :cond_2

    .line 80
    .line 81
    const/16 v28, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    const/16 v28, 0x0

    .line 85
    .line 86
    :goto_2
    new-instance v18, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 87
    .line 88
    const/16 v26, 0x0

    .line 89
    .line 90
    const/16 v29, 0x4

    .line 91
    .line 92
    const-wide/16 v20, 0x0

    .line 93
    .line 94
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    const/16 v24, 0x0

    .line 100
    .line 101
    const/16 v25, 0x1

    .line 102
    .line 103
    move-object/from16 v19, v2

    .line 104
    .line 105
    invoke-direct/range {v18 .. v29}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZZZI)V

    .line 106
    .line 107
    .line 108
    move-object/from16 v3, p1

    .line 109
    .line 110
    move-object/from16 v9, v18

    .line 111
    .line 112
    goto/16 :goto_20

    .line 113
    .line 114
    :cond_3
    iget-object v6, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 115
    .line 116
    iget-object v15, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 117
    .line 118
    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 119
    .line 120
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->p()Z

    .line 121
    .line 122
    .line 123
    move-result v19

    .line 124
    if-nez v19, :cond_5

    .line 125
    .line 126
    iget-object v11, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 127
    .line 128
    invoke-virtual {v7, v11, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    iget-boolean v7, v7, Landroidx/media3/common/Timeline$Period;->f:Z

    .line 133
    .line 134
    if-eqz v7, :cond_4

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_4
    move-object v11, v9

    .line 138
    const/4 v9, 0x0

    .line 139
    goto :goto_4

    .line 140
    :cond_5
    :goto_3
    move-object v11, v9

    .line 141
    const/4 v9, 0x1

    .line 142
    :goto_4
    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 143
    .line 144
    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-nez v7, :cond_7

    .line 149
    .line 150
    if-eqz v9, :cond_6

    .line 151
    .line 152
    goto :goto_6

    .line 153
    :cond_6
    iget-wide v13, v0, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 154
    .line 155
    :goto_5
    move-wide/from16 v22, v13

    .line 156
    .line 157
    goto :goto_7

    .line 158
    :cond_7
    :goto_6
    iget-wide v13, v0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :goto_7
    const/4 v7, -0x1

    .line 162
    if-eqz v3, :cond_b

    .line 163
    .line 164
    move-object/from16 v24, v6

    .line 165
    .line 166
    move v6, v5

    .line 167
    move v5, v4

    .line 168
    const/4 v4, 0x1

    .line 169
    move v14, v7

    .line 170
    move-object/from16 v13, v24

    .line 171
    .line 172
    const-wide/16 v28, 0x1

    .line 173
    .line 174
    move-object v7, v2

    .line 175
    move-object/from16 v2, p1

    .line 176
    .line 177
    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->W(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;ZIZLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroid/util/Pair;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    if-nez v4, :cond_8

    .line 182
    .line 183
    invoke-virtual {v2, v6}, Landroidx/media3/common/Timeline;->a(Z)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    move v5, v3

    .line 188
    move-wide/from16 v3, v22

    .line 189
    .line 190
    const/4 v6, 0x1

    .line 191
    const/4 v14, 0x0

    .line 192
    const/16 v24, 0x0

    .line 193
    .line 194
    goto :goto_a

    .line 195
    :cond_8
    iget-wide v5, v3, Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;->c:J

    .line 196
    .line 197
    cmp-long v3, v5, v16

    .line 198
    .line 199
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 200
    .line 201
    if-nez v3, :cond_9

    .line 202
    .line 203
    invoke-virtual {v2, v5, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    iget v3, v3, Landroidx/media3/common/Timeline$Period;->c:I

    .line 208
    .line 209
    move v5, v3

    .line 210
    move-wide/from16 v3, v22

    .line 211
    .line 212
    const/4 v6, 0x0

    .line 213
    goto :goto_8

    .line 214
    :cond_9
    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 215
    .line 216
    check-cast v3, Ljava/lang/Long;

    .line 217
    .line 218
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 219
    .line 220
    .line 221
    move-result-wide v3

    .line 222
    move-object v15, v5

    .line 223
    move v5, v14

    .line 224
    const/4 v6, 0x1

    .line 225
    :goto_8
    iget v14, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 226
    .line 227
    if-ne v14, v12, :cond_a

    .line 228
    .line 229
    const/4 v14, 0x1

    .line 230
    goto :goto_9

    .line 231
    :cond_a
    const/4 v14, 0x0

    .line 232
    :goto_9
    move/from16 v24, v14

    .line 233
    .line 234
    move v14, v6

    .line 235
    const/4 v6, 0x0

    .line 236
    :goto_a
    move/from16 v37, v6

    .line 237
    .line 238
    move/from16 v38, v14

    .line 239
    .line 240
    move/from16 v36, v24

    .line 241
    .line 242
    const/4 v14, -0x1

    .line 243
    move-wide/from16 v42, v3

    .line 244
    .line 245
    move-object v3, v7

    .line 246
    move-wide/from16 v6, v42

    .line 247
    .line 248
    goto/16 :goto_10

    .line 249
    .line 250
    :cond_b
    move-object v7, v2

    .line 251
    move-object v13, v6

    .line 252
    const-wide/16 v28, 0x1

    .line 253
    .line 254
    move-object/from16 v2, p1

    .line 255
    .line 256
    move v6, v5

    .line 257
    move v5, v4

    .line 258
    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 259
    .line 260
    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-eqz v3, :cond_c

    .line 265
    .line 266
    invoke-virtual {v2, v6}, Landroidx/media3/common/Timeline;->a(Z)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    move v5, v3

    .line 271
    move-object v3, v7

    .line 272
    :goto_b
    move-wide/from16 v6, v22

    .line 273
    .line 274
    :goto_c
    const/4 v14, -0x1

    .line 275
    const/16 v36, 0x0

    .line 276
    .line 277
    const/16 v37, 0x0

    .line 278
    .line 279
    :goto_d
    const/16 v38, 0x0

    .line 280
    .line 281
    goto/16 :goto_10

    .line 282
    .line 283
    :cond_c
    invoke-virtual {v2, v15}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    const/4 v14, -0x1

    .line 288
    if-ne v3, v14, :cond_e

    .line 289
    .line 290
    move-object v3, v7

    .line 291
    iget-object v7, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 292
    .line 293
    move-object v4, v8

    .line 294
    move-object v8, v2

    .line 295
    move-object v2, v3

    .line 296
    move-object v3, v4

    .line 297
    move v4, v5

    .line 298
    move v5, v6

    .line 299
    move-object v6, v15

    .line 300
    invoke-static/range {v2 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->X(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IZLjava/lang/Object;Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    move-object/from16 v42, v3

    .line 305
    .line 306
    move-object v3, v2

    .line 307
    move-object v2, v8

    .line 308
    move-object/from16 v8, v42

    .line 309
    .line 310
    if-ne v4, v14, :cond_d

    .line 311
    .line 312
    invoke-virtual {v2, v5}, Landroidx/media3/common/Timeline;->a(Z)I

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    move v7, v4

    .line 317
    const/4 v4, 0x1

    .line 318
    goto :goto_e

    .line 319
    :cond_d
    move v7, v4

    .line 320
    const/4 v4, 0x0

    .line 321
    :goto_e
    move/from16 v37, v4

    .line 322
    .line 323
    move-object v15, v6

    .line 324
    move v5, v7

    .line 325
    move-wide/from16 v6, v22

    .line 326
    .line 327
    const/4 v14, -0x1

    .line 328
    const/16 v36, 0x0

    .line 329
    .line 330
    goto :goto_d

    .line 331
    :cond_e
    move-object v3, v7

    .line 332
    move-object v6, v15

    .line 333
    cmp-long v4, v22, v16

    .line 334
    .line 335
    if-nez v4, :cond_f

    .line 336
    .line 337
    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    iget v7, v4, Landroidx/media3/common/Timeline$Period;->c:I

    .line 342
    .line 343
    move-object v15, v6

    .line 344
    move v5, v7

    .line 345
    goto :goto_b

    .line 346
    :cond_f
    if-eqz v9, :cond_12

    .line 347
    .line 348
    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 349
    .line 350
    iget-object v5, v13, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 351
    .line 352
    invoke-virtual {v4, v5, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 353
    .line 354
    .line 355
    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 356
    .line 357
    iget v5, v8, Landroidx/media3/common/Timeline$Period;->c:I

    .line 358
    .line 359
    const-wide/16 v14, 0x0

    .line 360
    .line 361
    invoke-virtual {v4, v5, v3, v14, v15}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    iget v4, v4, Landroidx/media3/common/Timeline$Window;->l:I

    .line 366
    .line 367
    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 368
    .line 369
    iget-object v7, v13, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 370
    .line 371
    invoke-virtual {v5, v7}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    if-ne v4, v5, :cond_10

    .line 376
    .line 377
    iget-wide v4, v8, Landroidx/media3/common/Timeline$Period;->e:J

    .line 378
    .line 379
    add-long v4, v22, v4

    .line 380
    .line 381
    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    iget v6, v6, Landroidx/media3/common/Timeline$Period;->c:I

    .line 386
    .line 387
    move-wide/from16 v42, v4

    .line 388
    .line 389
    move v5, v6

    .line 390
    move-wide/from16 v6, v42

    .line 391
    .line 392
    move-object v4, v8

    .line 393
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 394
    .line 395
    .line 396
    move-result-object v5

    .line 397
    iget-object v15, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 398
    .line 399
    iget-object v4, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 400
    .line 401
    check-cast v4, Ljava/lang/Long;

    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 404
    .line 405
    .line 406
    move-result-wide v4

    .line 407
    goto :goto_f

    .line 408
    :cond_10
    invoke-virtual {v2, v6, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    iget-wide v4, v4, Landroidx/media3/common/Timeline$Period;->d:J

    .line 413
    .line 414
    cmp-long v4, v4, v16

    .line 415
    .line 416
    if-eqz v4, :cond_11

    .line 417
    .line 418
    iget-wide v4, v8, Landroidx/media3/common/Timeline$Period;->d:J

    .line 419
    .line 420
    sub-long v26, v4, v28

    .line 421
    .line 422
    const-wide/16 v24, 0x0

    .line 423
    .line 424
    invoke-static/range {v22 .. v27}, Landroidx/media3/common/util/Util;->h(JJJ)J

    .line 425
    .line 426
    .line 427
    move-result-wide v4

    .line 428
    move-object v15, v6

    .line 429
    goto :goto_f

    .line 430
    :cond_11
    move-object v15, v6

    .line 431
    move-wide/from16 v4, v22

    .line 432
    .line 433
    :goto_f
    move-wide v6, v4

    .line 434
    const/4 v5, -0x1

    .line 435
    const/4 v14, -0x1

    .line 436
    const/16 v36, 0x0

    .line 437
    .line 438
    const/16 v37, 0x0

    .line 439
    .line 440
    const/16 v38, 0x1

    .line 441
    .line 442
    goto :goto_10

    .line 443
    :cond_12
    move-object v15, v6

    .line 444
    move-wide/from16 v6, v22

    .line 445
    .line 446
    const/4 v5, -0x1

    .line 447
    goto/16 :goto_c

    .line 448
    .line 449
    :goto_10
    if-eq v5, v14, :cond_13

    .line 450
    .line 451
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    move-object v4, v8

    .line 457
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    iget-object v15, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 462
    .line 463
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v2, Ljava/lang/Long;

    .line 466
    .line 467
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 468
    .line 469
    .line 470
    move-result-wide v6

    .line 471
    move-object v3, v0

    .line 472
    move-object v0, v8

    .line 473
    move v8, v10

    .line 474
    move-object v2, v11

    .line 475
    move-wide/from16 v10, v16

    .line 476
    .line 477
    :goto_11
    move-object/from16 v4, p1

    .line 478
    .line 479
    move-object v5, v15

    .line 480
    goto :goto_12

    .line 481
    :cond_13
    move-object v3, v0

    .line 482
    move-object v0, v8

    .line 483
    move v8, v10

    .line 484
    move-object v2, v11

    .line 485
    move-wide v10, v6

    .line 486
    goto :goto_11

    .line 487
    :goto_12
    invoke-virtual/range {v2 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->v(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Ljava/lang/Object;JZZ)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    move-object v15, v4

    .line 492
    move-object v4, v3

    .line 493
    move-object v3, v15

    .line 494
    move-object v15, v5

    .line 495
    iget v5, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    .line 496
    .line 497
    if-eq v5, v14, :cond_15

    .line 498
    .line 499
    iget v8, v13, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    .line 500
    .line 501
    if-eq v8, v14, :cond_14

    .line 502
    .line 503
    if-lt v5, v8, :cond_14

    .line 504
    .line 505
    goto :goto_13

    .line 506
    :cond_14
    const/4 v5, 0x0

    .line 507
    goto :goto_14

    .line 508
    :cond_15
    :goto_13
    const/4 v5, 0x1

    .line 509
    :goto_14
    iget-object v8, v13, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 510
    .line 511
    invoke-virtual {v8, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    move-result v8

    .line 515
    if-eqz v8, :cond_16

    .line 516
    .line 517
    invoke-virtual {v13}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 518
    .line 519
    .line 520
    move-result v14

    .line 521
    if-nez v14, :cond_16

    .line 522
    .line 523
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 524
    .line 525
    .line 526
    move-result v14

    .line 527
    if-nez v14, :cond_16

    .line 528
    .line 529
    if-eqz v5, :cond_16

    .line 530
    .line 531
    const/4 v5, 0x1

    .line 532
    goto :goto_15

    .line 533
    :cond_16
    const/4 v5, 0x0

    .line 534
    :goto_15
    invoke-virtual {v3, v15, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 535
    .line 536
    .line 537
    move-result-object v14

    .line 538
    if-nez v9, :cond_19

    .line 539
    .line 540
    cmp-long v9, v22, v10

    .line 541
    .line 542
    if-nez v9, :cond_19

    .line 543
    .line 544
    iget-object v9, v13, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 545
    .line 546
    iget v12, v13, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 547
    .line 548
    move/from16 v23, v5

    .line 549
    .line 550
    iget-object v5, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 551
    .line 552
    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 553
    .line 554
    .line 555
    move-result v5

    .line 556
    if-nez v5, :cond_17

    .line 557
    .line 558
    goto :goto_16

    .line 559
    :cond_17
    invoke-virtual {v13}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 560
    .line 561
    .line 562
    move-result v5

    .line 563
    if-eqz v5, :cond_18

    .line 564
    .line 565
    invoke-virtual {v14, v12}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    .line 566
    .line 567
    .line 568
    :cond_18
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 569
    .line 570
    .line 571
    move-result v5

    .line 572
    if-eqz v5, :cond_1a

    .line 573
    .line 574
    iget v5, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 575
    .line 576
    invoke-virtual {v14, v5}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    .line 577
    .line 578
    .line 579
    goto :goto_16

    .line 580
    :cond_19
    move/from16 v23, v5

    .line 581
    .line 582
    :cond_1a
    :goto_16
    if-nez v23, :cond_1b

    .line 583
    .line 584
    goto :goto_17

    .line 585
    :cond_1b
    move-object v2, v13

    .line 586
    :goto_17
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 587
    .line 588
    .line 589
    move-result v5

    .line 590
    if-eqz v5, :cond_1e

    .line 591
    .line 592
    invoke-virtual {v2, v13}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v5

    .line 596
    if-eqz v5, :cond_1c

    .line 597
    .line 598
    iget-wide v13, v4, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 599
    .line 600
    move-wide/from16 v34, v10

    .line 601
    .line 602
    move-wide/from16 v32, v13

    .line 603
    .line 604
    goto/16 :goto_1a

    .line 605
    .line 606
    :cond_1c
    iget-object v5, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 607
    .line 608
    invoke-virtual {v3, v5, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 609
    .line 610
    .line 611
    iget v5, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 612
    .line 613
    iget v6, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 614
    .line 615
    invoke-virtual {v0, v6}, Landroidx/media3/common/Timeline$Period;->e(I)I

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    if-ne v5, v6, :cond_1d

    .line 620
    .line 621
    iget-object v5, v0, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 622
    .line 623
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    :cond_1d
    move-wide/from16 v34, v10

    .line 627
    .line 628
    const-wide/16 v32, 0x0

    .line 629
    .line 630
    goto :goto_1a

    .line 631
    :cond_1e
    if-eqz v8, :cond_21

    .line 632
    .line 633
    invoke-virtual {v13}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    if-eqz v5, :cond_21

    .line 638
    .line 639
    invoke-virtual {v3, v15, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    iget-object v5, v5, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 644
    .line 645
    iget v8, v13, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 646
    .line 647
    invoke-virtual {v5, v8}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 648
    .line 649
    .line 650
    move-result-object v5

    .line 651
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    .line 653
    .line 654
    iget-wide v8, v4, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 655
    .line 656
    cmp-long v12, v8, v16

    .line 657
    .line 658
    if-eqz v12, :cond_1f

    .line 659
    .line 660
    const-wide/16 v20, 0x0

    .line 661
    .line 662
    cmp-long v8, v20, v8

    .line 663
    .line 664
    if-gtz v8, :cond_1f

    .line 665
    .line 666
    goto :goto_19

    .line 667
    :cond_1f
    iget v8, v5, Landroidx/media3/common/AdPlaybackState$AdGroup;->a:I

    .line 668
    .line 669
    iget v9, v13, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 670
    .line 671
    if-le v8, v9, :cond_21

    .line 672
    .line 673
    iget-object v5, v5, Landroidx/media3/common/AdPlaybackState$AdGroup;->e:[I

    .line 674
    .line 675
    aget v5, v5, v9

    .line 676
    .line 677
    const/4 v8, 0x2

    .line 678
    if-ne v5, v8, :cond_21

    .line 679
    .line 680
    invoke-virtual {v3, v15, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 681
    .line 682
    .line 683
    move-result-object v5

    .line 684
    iget-wide v8, v5, Landroidx/media3/common/Timeline$Period;->d:J

    .line 685
    .line 686
    cmp-long v5, v8, v16

    .line 687
    .line 688
    if-eqz v5, :cond_20

    .line 689
    .line 690
    sub-long v8, v8, v28

    .line 691
    .line 692
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 693
    .line 694
    .line 695
    move-result-wide v5

    .line 696
    move-wide v13, v5

    .line 697
    goto :goto_18

    .line 698
    :cond_20
    move-wide v13, v6

    .line 699
    :goto_18
    move-wide/from16 v32, v13

    .line 700
    .line 701
    move-wide/from16 v34, v32

    .line 702
    .line 703
    goto :goto_1a

    .line 704
    :cond_21
    :goto_19
    move-wide/from16 v32, v6

    .line 705
    .line 706
    move-wide/from16 v34, v10

    .line 707
    .line 708
    :goto_1a
    iget-object v5, v4, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 709
    .line 710
    invoke-virtual {v2, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v5

    .line 714
    if-eqz v5, :cond_23

    .line 715
    .line 716
    iget-wide v5, v4, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 717
    .line 718
    cmp-long v5, v32, v5

    .line 719
    .line 720
    if-eqz v5, :cond_22

    .line 721
    .line 722
    goto :goto_1b

    .line 723
    :cond_22
    const/16 v39, 0x0

    .line 724
    .line 725
    goto :goto_1c

    .line 726
    :cond_23
    :goto_1b
    const/16 v39, 0x1

    .line 727
    .line 728
    :goto_1c
    iget-object v5, v4, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 729
    .line 730
    iget-object v5, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 731
    .line 732
    invoke-virtual {v3, v5}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 733
    .line 734
    .line 735
    move-result v5

    .line 736
    const/4 v14, -0x1

    .line 737
    if-ne v5, v14, :cond_24

    .line 738
    .line 739
    const/4 v5, 0x4

    .line 740
    goto :goto_1d

    .line 741
    :cond_24
    const/4 v5, 0x3

    .line 742
    :goto_1d
    iget-object v6, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 743
    .line 744
    iget-object v7, v4, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 745
    .line 746
    iget-object v7, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 747
    .line 748
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    move-result v6

    .line 752
    if-eqz v6, :cond_26

    .line 753
    .line 754
    iget v6, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 755
    .line 756
    if-eq v6, v14, :cond_26

    .line 757
    .line 758
    iget-object v6, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 759
    .line 760
    invoke-virtual {v3, v6, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 761
    .line 762
    .line 763
    move-result-object v6

    .line 764
    iget-object v6, v6, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 765
    .line 766
    iget v7, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 767
    .line 768
    invoke-virtual {v6, v7}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 769
    .line 770
    .line 771
    move-result-object v6

    .line 772
    iget v7, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 773
    .line 774
    iget-object v6, v6, Landroidx/media3/common/AdPlaybackState$AdGroup;->e:[I

    .line 775
    .line 776
    array-length v8, v6

    .line 777
    if-ge v7, v8, :cond_25

    .line 778
    .line 779
    aget v6, v6, v7

    .line 780
    .line 781
    const/4 v8, 0x2

    .line 782
    if-eq v6, v8, :cond_26

    .line 783
    .line 784
    :cond_25
    const/16 v41, 0x0

    .line 785
    .line 786
    goto :goto_1e

    .line 787
    :cond_26
    move/from16 v41, v5

    .line 788
    .line 789
    :goto_1e
    if-eqz v39, :cond_27

    .line 790
    .line 791
    if-eqz p2, :cond_27

    .line 792
    .line 793
    iget-object v5, v4, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 794
    .line 795
    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->p()Z

    .line 796
    .line 797
    .line 798
    move-result v5

    .line 799
    if-nez v5, :cond_27

    .line 800
    .line 801
    iget-object v5, v4, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 802
    .line 803
    iget-object v4, v4, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 804
    .line 805
    iget-object v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 806
    .line 807
    invoke-virtual {v5, v4, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Period;->f:Z

    .line 812
    .line 813
    if-nez v0, :cond_27

    .line 814
    .line 815
    const/16 v40, 0x1

    .line 816
    .line 817
    goto :goto_1f

    .line 818
    :cond_27
    const/16 v40, 0x0

    .line 819
    .line 820
    :goto_1f
    new-instance v30, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 821
    .line 822
    move-object/from16 v31, v2

    .line 823
    .line 824
    invoke-direct/range {v30 .. v41}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJZZZZZI)V

    .line 825
    .line 826
    .line 827
    move-object/from16 v9, v30

    .line 828
    .line 829
    :goto_20
    iget-object v8, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 830
    .line 831
    iget-wide v10, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->b:J

    .line 832
    .line 833
    const/4 v12, 0x0

    .line 834
    :try_start_0
    iget-boolean v0, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->e:Z

    .line 835
    .line 836
    if-eqz v0, :cond_29

    .line 837
    .line 838
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 839
    .line 840
    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->e:I

    .line 841
    .line 842
    const/4 v2, 0x1

    .line 843
    if-eq v0, v2, :cond_28

    .line 844
    .line 845
    const/4 v0, 0x4

    .line 846
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->u0(I)V

    .line 847
    .line 848
    .line 849
    :cond_28
    const/4 v4, 0x0

    .line 850
    goto :goto_22

    .line 851
    :catchall_0
    move-exception v0

    .line 852
    move-object v13, v3

    .line 853
    :goto_21
    move-object v2, v8

    .line 854
    goto/16 :goto_2d

    .line 855
    .line 856
    :goto_22
    invoke-virtual {v1, v4, v4, v4, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->S(ZZZZ)V

    .line 857
    .line 858
    .line 859
    :cond_29
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 860
    .line 861
    array-length v2, v0

    .line 862
    const/4 v4, 0x0

    .line 863
    :goto_23
    if-ge v4, v2, :cond_2c

    .line 864
    .line 865
    aget-object v5, v0, v4

    .line 866
    .line 867
    iget-object v6, v5, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 868
    .line 869
    check-cast v6, Landroidx/media3/exoplayer/BaseRenderer;

    .line 870
    .line 871
    iget-object v7, v6, Landroidx/media3/exoplayer/BaseRenderer;->y:Landroidx/media3/common/Timeline;

    .line 872
    .line 873
    invoke-static {v7, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    move-result v7

    .line 877
    if-nez v7, :cond_2a

    .line 878
    .line 879
    iput-object v3, v6, Landroidx/media3/exoplayer/BaseRenderer;->y:Landroidx/media3/common/Timeline;

    .line 880
    .line 881
    invoke-virtual {v6}, Landroidx/media3/exoplayer/BaseRenderer;->F()V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v6}, Landroidx/media3/exoplayer/BaseRenderer;->B()V

    .line 885
    .line 886
    .line 887
    :cond_2a
    iget-object v5, v5, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 888
    .line 889
    if-eqz v5, :cond_2b

    .line 890
    .line 891
    check-cast v5, Landroidx/media3/exoplayer/BaseRenderer;

    .line 892
    .line 893
    iget-object v6, v5, Landroidx/media3/exoplayer/BaseRenderer;->y:Landroidx/media3/common/Timeline;

    .line 894
    .line 895
    invoke-static {v6, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 896
    .line 897
    .line 898
    move-result v6

    .line 899
    if-nez v6, :cond_2b

    .line 900
    .line 901
    iput-object v3, v5, Landroidx/media3/exoplayer/BaseRenderer;->y:Landroidx/media3/common/Timeline;

    .line 902
    .line 903
    invoke-virtual {v5}, Landroidx/media3/exoplayer/BaseRenderer;->F()V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v5}, Landroidx/media3/exoplayer/BaseRenderer;->B()V

    .line 907
    .line 908
    .line 909
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    .line 910
    .line 911
    goto :goto_23

    .line 912
    :cond_2c
    iget-boolean v0, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    .line 914
    if-nez v0, :cond_31

    .line 915
    .line 916
    :try_start_1
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 917
    .line 918
    array-length v0, v0

    .line 919
    new-array v6, v0, [J

    .line 920
    .line 921
    const/4 v0, 0x0

    .line 922
    :goto_24
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 923
    .line 924
    array-length v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 925
    if-ge v0, v4, :cond_2d

    .line 926
    .line 927
    :try_start_2
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 928
    .line 929
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 930
    .line 931
    aget-object v2, v2, v0

    .line 932
    .line 933
    invoke-virtual {v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r(Landroidx/media3/exoplayer/MediaPeriodHolder;I)J

    .line 934
    .line 935
    .line 936
    move-result-wide v4

    .line 937
    aput-wide v4, v6, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 938
    .line 939
    add-int/lit8 v0, v0, 0x1

    .line 940
    .line 941
    goto :goto_24

    .line 942
    :cond_2d
    :try_start_3
    array-length v0, v2

    .line 943
    new-array v7, v0, [J

    .line 944
    .line 945
    const/4 v0, 0x0

    .line 946
    :goto_25
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 947
    .line 948
    array-length v2, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 949
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 950
    .line 951
    if-ge v0, v2, :cond_2e

    .line 952
    .line 953
    :try_start_4
    iget-object v2, v4, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 954
    .line 955
    aget-object v2, v2, v0

    .line 956
    .line 957
    invoke-virtual {v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->r(Landroidx/media3/exoplayer/MediaPeriodHolder;I)J

    .line 958
    .line 959
    .line 960
    move-result-wide v4

    .line 961
    aput-wide v4, v7, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 962
    .line 963
    add-int/lit8 v0, v0, 0x1

    .line 964
    .line 965
    goto :goto_25

    .line 966
    :cond_2e
    move-object v2, v4

    .line 967
    :try_start_5
    iget-wide v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->f0:J

    .line 968
    .line 969
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->y(Landroidx/media3/common/Timeline;J[J[J)I

    .line 970
    .line 971
    .line 972
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 973
    move-object v7, v3

    .line 974
    and-int/lit8 v2, v0, 0x1

    .line 975
    .line 976
    if-eqz v2, :cond_2f

    .line 977
    .line 978
    const/4 v4, 0x0

    .line 979
    :try_start_6
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Z(Z)V

    .line 980
    .line 981
    .line 982
    goto :goto_27

    .line 983
    :catchall_1
    move-exception v0

    .line 984
    :goto_26
    move-object v13, v7

    .line 985
    goto/16 :goto_21

    .line 986
    .line 987
    :cond_2f
    const/16 v19, 0x2

    .line 988
    .line 989
    and-int/lit8 v0, v0, 0x2

    .line 990
    .line 991
    if-eqz v0, :cond_30

    .line 992
    .line 993
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j()V

    .line 994
    .line 995
    .line 996
    :cond_30
    :goto_27
    move-object v2, v8

    .line 997
    goto :goto_2a

    .line 998
    :catchall_2
    move-exception v0

    .line 999
    move-object v7, v3

    .line 1000
    goto :goto_26

    .line 1001
    :cond_31
    move-object v7, v3

    .line 1002
    invoke-virtual {v7}, Landroidx/media3/common/Timeline;->p()Z

    .line 1003
    .line 1004
    .line 1005
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1006
    if-nez v0, :cond_30

    .line 1007
    .line 1008
    :try_start_7
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 1009
    .line 1010
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1011
    .line 1012
    :goto_28
    if-eqz v0, :cond_33

    .line 1013
    .line 1014
    :try_start_8
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 1015
    .line 1016
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1017
    .line 1018
    invoke-virtual {v2, v8}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v2

    .line 1022
    if-eqz v2, :cond_32

    .line 1023
    .line 1024
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 1025
    .line 1026
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 1027
    .line 1028
    invoke-virtual {v2, v7, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->m(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 1029
    .line 1030
    .line 1031
    move-result-object v2

    .line 1032
    iput-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 1033
    .line 1034
    :cond_32
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1035
    .line 1036
    goto :goto_28

    .line 1037
    :cond_33
    :try_start_9
    iget-boolean v6, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->d:Z

    .line 1038
    .line 1039
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D()Z

    .line 1040
    .line 1041
    .line 1042
    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1043
    move-object v2, v8

    .line 1044
    move-wide v3, v10

    .line 1045
    :try_start_a
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->b0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZZ)J

    .line 1046
    .line 1047
    .line 1048
    move-result-wide v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1049
    goto :goto_2a

    .line 1050
    :catchall_3
    move-exception v0

    .line 1051
    move-wide v10, v3

    .line 1052
    :goto_29
    move-object v13, v7

    .line 1053
    goto/16 :goto_2d

    .line 1054
    .line 1055
    :catchall_4
    move-exception v0

    .line 1056
    move-object v2, v8

    .line 1057
    goto :goto_29

    .line 1058
    :goto_2a
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1059
    .line 1060
    iget-object v4, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 1061
    .line 1062
    iget-object v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1063
    .line 1064
    iget-boolean v0, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->f:Z

    .line 1065
    .line 1066
    if-eqz v0, :cond_34

    .line 1067
    .line 1068
    move-wide v6, v10

    .line 1069
    goto :goto_2b

    .line 1070
    :cond_34
    move-wide/from16 v6, v16

    .line 1071
    .line 1072
    :goto_2b
    const/4 v8, 0x0

    .line 1073
    move-object v3, v2

    .line 1074
    move-object/from16 v2, p1

    .line 1075
    .line 1076
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    .line 1077
    .line 1078
    .line 1079
    move-object v13, v2

    .line 1080
    move-object v2, v3

    .line 1081
    iget-boolean v0, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->g:Z

    .line 1082
    .line 1083
    if-nez v0, :cond_35

    .line 1084
    .line 1085
    iget-wide v3, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->c:J

    .line 1086
    .line 1087
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1088
    .line 1089
    iget-wide v5, v0, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 1090
    .line 1091
    cmp-long v0, v3, v5

    .line 1092
    .line 1093
    if-eqz v0, :cond_37

    .line 1094
    .line 1095
    :cond_35
    iget-wide v5, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->c:J

    .line 1096
    .line 1097
    iget-boolean v0, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->h:Z

    .line 1098
    .line 1099
    if-eqz v0, :cond_36

    .line 1100
    .line 1101
    move-wide v3, v10

    .line 1102
    move-wide v7, v3

    .line 1103
    goto :goto_2c

    .line 1104
    :cond_36
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1105
    .line 1106
    iget-wide v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    .line 1107
    .line 1108
    move-wide v7, v3

    .line 1109
    move-wide v3, v10

    .line 1110
    :goto_2c
    iget v10, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->i:I

    .line 1111
    .line 1112
    move v9, v0

    .line 1113
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1114
    .line 1115
    .line 1116
    move-result-object v0

    .line 1117
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1118
    .line 1119
    :cond_37
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T()V

    .line 1120
    .line 1121
    .line 1122
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1123
    .line 1124
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 1125
    .line 1126
    invoke-virtual {v1, v13, v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    .line 1127
    .line 1128
    .line 1129
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1130
    .line 1131
    invoke-virtual {v0, v13}, Landroidx/media3/exoplayer/PlaybackInfo;->j(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v0

    .line 1135
    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1136
    .line 1137
    invoke-virtual {v13}, Landroidx/media3/common/Timeline;->p()Z

    .line 1138
    .line 1139
    .line 1140
    move-result v0

    .line 1141
    if-nez v0, :cond_38

    .line 1142
    .line 1143
    iput-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 1144
    .line 1145
    :cond_38
    const/4 v4, 0x0

    .line 1146
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 1147
    .line 1148
    .line 1149
    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 1150
    .line 1151
    const/4 v8, 0x2

    .line 1152
    invoke-interface {v0, v8}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 1153
    .line 1154
    .line 1155
    return-void

    .line 1156
    :goto_2d
    iget-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1157
    .line 1158
    iget-object v4, v3, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 1159
    .line 1160
    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1161
    .line 1162
    iget-boolean v3, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->f:Z

    .line 1163
    .line 1164
    if-eqz v3, :cond_39

    .line 1165
    .line 1166
    move-wide v6, v10

    .line 1167
    goto :goto_2e

    .line 1168
    :cond_39
    move-wide/from16 v6, v16

    .line 1169
    .line 1170
    :goto_2e
    const/4 v8, 0x0

    .line 1171
    move-object v3, v2

    .line 1172
    move-object v2, v13

    .line 1173
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->I0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JZ)V

    .line 1174
    .line 1175
    .line 1176
    move-object v2, v3

    .line 1177
    iget-boolean v3, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->g:Z

    .line 1178
    .line 1179
    if-nez v3, :cond_3a

    .line 1180
    .line 1181
    iget-wide v3, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->c:J

    .line 1182
    .line 1183
    iget-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1184
    .line 1185
    iget-wide v5, v5, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 1186
    .line 1187
    cmp-long v3, v3, v5

    .line 1188
    .line 1189
    if-eqz v3, :cond_3c

    .line 1190
    .line 1191
    :cond_3a
    iget-wide v5, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->c:J

    .line 1192
    .line 1193
    iget-boolean v3, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->h:Z

    .line 1194
    .line 1195
    if-eqz v3, :cond_3b

    .line 1196
    .line 1197
    move-wide v7, v10

    .line 1198
    goto :goto_2f

    .line 1199
    :cond_3b
    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1200
    .line 1201
    iget-wide v7, v4, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    .line 1202
    .line 1203
    :goto_2f
    iget v4, v9, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->i:I

    .line 1204
    .line 1205
    move v9, v3

    .line 1206
    move-wide/from16 v42, v10

    .line 1207
    .line 1208
    move v10, v4

    .line 1209
    move-wide/from16 v3, v42

    .line 1210
    .line 1211
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v2

    .line 1215
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1216
    .line 1217
    :cond_3c
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->T()V

    .line 1218
    .line 1219
    .line 1220
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1221
    .line 1222
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 1223
    .line 1224
    invoke-virtual {v1, v13, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->V(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)V

    .line 1225
    .line 1226
    .line 1227
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1228
    .line 1229
    invoke-virtual {v2, v13}, Landroidx/media3/exoplayer/PlaybackInfo;->j(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1230
    .line 1231
    .line 1232
    move-result-object v2

    .line 1233
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 1234
    .line 1235
    invoke-virtual {v13}, Landroidx/media3/common/Timeline;->p()Z

    .line 1236
    .line 1237
    .line 1238
    move-result v2

    .line 1239
    if-nez v2, :cond_3d

    .line 1240
    .line 1241
    iput-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0:Landroidx/media3/exoplayer/ExoPlayerImplInternal$SeekPosition;

    .line 1242
    .line 1243
    :cond_3d
    const/4 v4, 0x0

    .line 1244
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->x(Z)V

    .line 1245
    .line 1246
    .line 1247
    iget-object v1, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->p:Landroidx/media3/common/util/HandlerWrapper;

    .line 1248
    .line 1249
    const/4 v8, 0x2

    .line 1250
    invoke-interface {v1, v8}, Landroidx/media3/common/util/HandlerWrapper;->i(I)Z

    .line 1251
    .line 1252
    .line 1253
    throw v0
.end method

.method public final y0()Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->l:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->n:I

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    return p0
.end method

.method public final z(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->z:Landroidx/media3/exoplayer/MediaPeriodQueue;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->v:Landroidx/media3/exoplayer/DefaultMediaClock;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v4, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 11
    .line 12
    if-ne v4, p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-boolean p1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget p1, p1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 26
    .line 27
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 28
    .line 29
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 30
    .line 31
    invoke-virtual {v1, p1, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->f(FLandroidx/media3/common/Timeline;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 35
    .line 36
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 37
    .line 38
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->o:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    .line 39
    .line 40
    invoke-virtual {p0, p1, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->E0(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 44
    .line 45
    if-ne v1, p1, :cond_1

    .line 46
    .line 47
    iget-object p1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 48
    .line 49
    iget-wide v4, p1, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 50
    .line 51
    invoke-virtual {p0, v4, v5, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->U(JZ)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->D()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    xor-int/2addr p1, v3

    .line 59
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->j:[Landroidx/media3/exoplayer/RendererHolder;

    .line 63
    .line 64
    array-length p1, p1

    .line 65
    new-array p1, p1, [Z

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->d()Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    invoke-virtual {p0, p1, v2, v3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->o([ZJ)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->e0(Landroidx/media3/exoplayer/MediaPeriodHolder;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 82
    .line 83
    iget-object v3, p1, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 84
    .line 85
    iget-object v0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 86
    .line 87
    iget-wide v4, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 88
    .line 89
    iget-wide v6, p1, Landroidx/media3/exoplayer/PlaybackInfo;->c:J

    .line 90
    .line 91
    const/4 v10, 0x0

    .line 92
    const/4 v11, 0x5

    .line 93
    move-wide v8, v4

    .line 94
    move-object v2, p0

    .line 95
    invoke-virtual/range {v2 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->B(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJZI)Landroidx/media3/exoplayer/PlaybackInfo;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    move-object v1, v2

    .line 100
    iput-object p0, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    move-object v1, p0

    .line 104
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->G()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_2
    move-object v1, p0

    .line 109
    const/4 p0, 0x0

    .line 110
    :goto_1
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-ge p0, v4, :cond_4

    .line 117
    .line 118
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 125
    .line 126
    iget-object v5, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 127
    .line 128
    if-ne v5, p1, :cond_3

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    const/4 v4, 0x0

    .line 135
    :goto_2
    if-eqz v4, :cond_5

    .line 136
    .line 137
    iget-boolean p0, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 138
    .line 139
    xor-int/2addr p0, v3

    .line 140
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Landroidx/media3/exoplayer/DefaultMediaClock;->e()Landroidx/media3/common/PlaybackParameters;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 148
    .line 149
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->Q:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 150
    .line 151
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 152
    .line 153
    invoke-virtual {v4, p0, v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->f(FLandroidx/media3/common/Timeline;)V

    .line 154
    .line 155
    .line 156
    iget-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 157
    .line 158
    if-eqz p0, :cond_5

    .line 159
    .line 160
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 161
    .line 162
    if-ne p0, p1, :cond_5

    .line 163
    .line 164
    invoke-virtual {v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->H()V

    .line 165
    .line 166
    .line 167
    :cond_5
    return-void
.end method

.method public final z0(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->t:Landroidx/media3/common/Timeline$Period;

    .line 17
    .line 18
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iget p2, p2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 23
    .line 24
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->s:Landroidx/media3/common/Timeline$Window;

    .line 25
    .line 26
    invoke-virtual {p1, p2, p0}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->a()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-boolean p1, p0, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-wide p0, p0, Landroidx/media3/common/Timeline$Window;->d:J

    .line 40
    .line 41
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long p0, p0, v0

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 53
    return p0
.end method
