.class final Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoRendererEventListener;
.implements Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
.implements Landroidx/media3/exoplayer/text/TextOutput;
.implements Landroidx/media3/exoplayer/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
.implements Landroidx/media3/common/audio/AudioBecomingNoisyManager$Listener;
.implements Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;
.implements Landroidx/media3/common/util/StuckPlayerDetector$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/ExoPlayerImpl;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lb7;

    .line 12
    .line 13
    const/16 v1, 0xc

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x406

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final B(JLjava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ln5;

    .line 12
    .line 13
    invoke-direct {v2, v1, p3, p1, p2}, Ln5;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    .line 14
    .line 15
    .line 16
    const/16 p1, 0x1a

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->T:Ljava/lang/Object;

    .line 22
    .line 23
    if-ne p2, p3, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 26
    .line 27
    new-instance p2, Lf7;

    .line 28
    .line 29
    const/16 p3, 0x19

    .line 30
    .line 31
    invoke-direct {p2, p3}, Lf7;-><init>(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final C(JJLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lb7;

    .line 12
    .line 13
    const/16 p3, 0x17

    .line 14
    .line 15
    invoke-direct {p2, p3}, Lb7;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 p3, 0x3f8

    .line 19
    .line 20
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final D(IJJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lf7;

    .line 12
    .line 13
    const/4 p3, 0x2

    .line 14
    invoke-direct {p2, p3}, Lf7;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/16 p3, 0x3f3

    .line 18
    .line 19
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final E(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->K()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lb7;

    .line 12
    .line 13
    const/16 v1, 0x10

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x3f5

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final F(JJLjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lu2;

    .line 12
    .line 13
    const/16 p3, 0x1b

    .line 14
    .line 15
    invoke-direct {p2, p3}, Lu2;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 p3, 0x3f0

    .line 19
    .line 20
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final a(Landroidx/media3/common/VideoSize;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->i0:Landroidx/media3/common/VideoSize;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 6
    .line 7
    new-instance v0, Lg7;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lg7;-><init>(Landroidx/media3/common/VideoSize;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x19

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->B:Landroidx/media3/common/util/BackgroundThreadStateHandler;

    .line 4
    .line 5
    new-instance v0, Ld7;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, p1, v1}, Ld7;-><init>(II)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ld7;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, p1, v2}, Ld7;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/BackgroundThreadStateHandler;->d(Ld7;Ld7;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c(Landroidx/media3/common/text/CueGroup;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->d0:Landroidx/media3/common/text/CueGroup;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 6
    .line 7
    new-instance v0, Lp;

    .line 8
    .line 9
    const/4 v1, 0x7

    .line 10
    invoke-direct {v0, v1, p1}, Lp;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x1b

    .line 14
    .line 15
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d(Landroidx/media3/common/Metadata;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0:Landroidx/media3/common/MediaMetadata;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata;->a()Landroidx/media3/common/MediaMetadata$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    iget-object v4, p1, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    .line 13
    .line 14
    array-length v5, v4

    .line 15
    if-ge v3, v5, :cond_0

    .line 16
    .line 17
    aget-object v4, v4, v3

    .line 18
    .line 19
    invoke-interface {v4, v2}, Landroidx/media3/common/Metadata$Entry;->b(Landroidx/media3/common/MediaMetadata$Builder;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v3, v3, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v3, Landroidx/media3/common/MediaMetadata;

    .line 26
    .line 27
    invoke-direct {v3, v2}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    .line 28
    .line 29
    .line 30
    iput-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0:Landroidx/media3/common/MediaMetadata;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0()Landroidx/media3/common/MediaMetadata;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    iput-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->S:Landroidx/media3/common/MediaMetadata;

    .line 45
    .line 46
    new-instance v0, Landroidx/media3/exoplayer/b;

    .line 47
    .line 48
    const/4 v2, 0x2

    .line 49
    invoke-direct {v0, v2, p0}, Landroidx/media3/exoplayer/b;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const/16 p0, 0xe

    .line 53
    .line 54
    invoke-virtual {v1, p0, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    new-instance p0, Lp;

    .line 58
    .line 59
    const/16 v0, 0x8

    .line 60
    .line 61
    invoke-direct {p0, v0, p1}, Lp;-><init>(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    const/16 p1, 0x1c

    .line 65
    .line 66
    invoke-virtual {v1, p1, p0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Landroidx/media3/common/util/ListenerSet;->b()V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0:Z

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->c0:Z

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 11
    .line 12
    new-instance v0, Lf8;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Lf8;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    const/16 p1, 0x17

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->m:Landroidx/media3/common/util/ListenerSet;

    .line 4
    .line 5
    new-instance v0, Lp;

    .line 6
    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Lp;-><init>(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/16 p1, 0x1b

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final g(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->K()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lp;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {v1, v0, p1, v2}, Lp;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    const/16 p1, 0x3fc

    .line 18
    .line 19
    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lb7;

    .line 12
    .line 13
    const/16 v1, 0xd

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x3fb

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final i(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->F:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;->a(Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;Landroidx/media3/exoplayer/CodecParameters;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j(IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->K()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lb7;

    .line 12
    .line 13
    const/16 p3, 0xf

    .line 14
    .line 15
    invoke-direct {p2, p3}, Lb7;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 p3, 0x3fd

    .line 19
    .line 20
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final k(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lb7;

    .line 12
    .line 13
    const/16 v1, 0x12

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x407

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lf7;

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    invoke-direct {v0, v1}, Lf7;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x3f4

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final m(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lf7;

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-direct {v0, v1}, Lf7;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x408

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final n(IJ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->K()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lb7;

    .line 12
    .line 13
    const/16 p3, 0xe

    .line 14
    .line 15
    invoke-direct {p2, p3}, Lb7;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 p3, 0x3fa

    .line 19
    .line 20
    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0(IZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    new-instance v0, Landroid/view/Surface;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->U:Landroid/view/Surface;

    .line 14
    .line 15
    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final p(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->E:Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;->a(Landroidx/media3/exoplayer/ExoPlayerImpl$CodecParameterListenerManager;Landroidx/media3/exoplayer/CodecParameters;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    .line 1
    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 6
    .line 7
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lb7;

    .line 14
    .line 15
    const/16 v1, 0xb

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x3ef

    .line 21
    .line 22
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final r()V
    .locals 1

    .line 1
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final s(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    .line 1
    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 6
    .line 7
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lb7;

    .line 14
    .line 15
    const/16 v1, 0x16

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x3f7

    .line 21
    .line 22
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p3, p4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->X:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->X:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->m0(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final t(Landroidx/media3/common/util/StuckPlayerException;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0x3eb

    .line 5
    .line 6
    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;I)V

    .line 7
    .line 8
    .line 9
    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->r0(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final u(Landroid/view/Surface;)V
    .locals 1

    .line 1
    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final v(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 1

    .line 1
    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 6
    .line 7
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Lb7;

    .line 14
    .line 15
    const/16 v0, 0x11

    .line 16
    .line 17
    invoke-direct {p2, v0}, Lb7;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x3f9

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final w(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lb7;

    .line 12
    .line 13
    const/16 v1, 0x18

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x3f6

    .line 19
    .line 20
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final x(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance p2, Lf7;

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-direct {p2, v0}, Lf7;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x3f2

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final y(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 1

    .line 1
    sget p1, Landroidx/media3/exoplayer/ExoPlayerImpl;->q0:I

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 6
    .line 7
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance p2, Lb7;

    .line 14
    .line 15
    const/16 v0, 0x15

    .line 16
    .line 17
    invoke-direct {p2, v0}, Lb7;-><init>(I)V

    .line 18
    .line 19
    .line 20
    const/16 v0, 0x3f1

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final z(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->r:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->L()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    new-instance v0, Lb7;

    .line 12
    .line 13
    const/4 v1, 0x7

    .line 14
    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x405

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
