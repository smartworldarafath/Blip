.class final Landroidx/media3/exoplayer/video/DefaultVideoSink;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final b:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

.field public final c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

.field public final d:Ljava/util/ArrayDeque;

.field public final e:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

.field public f:Landroid/view/Surface;

.field public g:Landroidx/media3/common/Format;

.field public h:J

.field public i:Landroidx/media3/exoplayer/video/VideoSink$Listener;

.field public j:Ljava/util/concurrent/Executor;

.field public k:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;Landroidx/media3/common/util/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 7
    .line 8
    iput-object p3, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 9
    .line 10
    new-instance p3, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 11
    .line 12
    new-instance v0, Lp;

    .line 13
    .line 14
    const/4 v1, 0x6

    .line 15
    invoke-direct {v0, v1, p1}, Lp;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p3, v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;-><init>(Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Listener;)V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->e:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 22
    .line 23
    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 24
    .line 25
    new-instance v1, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v1, p1, p2, p3}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 34
    .line 35
    new-instance p1, Ljava/util/ArrayDeque;

    .line 36
    .line 37
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d:Ljava/util/ArrayDeque;

    .line 41
    .line 42
    new-instance p1, Landroidx/media3/common/Format$Builder;

    .line 43
    .line 44
    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance p2, Landroidx/media3/common/Format;

    .line 48
    .line 49
    invoke-direct {p2, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->g:Landroidx/media3/common/Format;

    .line 53
    .line 54
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->h:J

    .line 60
    .line 61
    sget-object p1, Landroidx/media3/exoplayer/video/VideoSink$Listener;->a:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 62
    .line 63
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 64
    .line 65
    new-instance p1, Lz2;

    .line 66
    .line 67
    const/4 p2, 0x1

    .line 68
    invoke-direct {p1, p2}, Lz2;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j:Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    new-instance p1, Lp7;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->k:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->k:J

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    .line 15
    .line 16
    cmp-long p0, v2, v0

    .line 17
    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final d(JJ)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->a(JJ)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->g:Landroidx/media3/common/Format;

    .line 11
    .line 12
    invoke-direct {p2, p1, p0}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Exception;Landroidx/media3/common/Format;)V

    .line 13
    .line 14
    .line 15
    throw p2
.end method

.method public final e()Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->f:Landroid/view/Surface;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final f(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->f:Landroid/view/Surface;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f(Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    .line 10
    .line 11
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 19
    .line 20
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d:Z

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->b()V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final h(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p3, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 7
    .line 8
    iget-object v0, p3, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->f:Landroidx/media3/common/util/LongArrayQueue;

    .line 9
    .line 10
    iget v1, v0, Landroidx/media3/common/util/LongArrayQueue;->c:I

    .line 11
    .line 12
    iget-object v2, v0, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    .line 13
    .line 14
    array-length v3, v2

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v1, v3, :cond_1

    .line 18
    .line 19
    array-length v1, v2

    .line 20
    shl-int/2addr v1, v5

    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    new-array v3, v1, [J

    .line 24
    .line 25
    array-length v6, v2

    .line 26
    iget v7, v0, Landroidx/media3/common/util/LongArrayQueue;->a:I

    .line 27
    .line 28
    sub-int/2addr v6, v7

    .line 29
    invoke-static {v2, v7, v3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    .line 33
    .line 34
    invoke-static {v2, v4, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iput v4, v0, Landroidx/media3/common/util/LongArrayQueue;->a:I

    .line 38
    .line 39
    iget v2, v0, Landroidx/media3/common/util/LongArrayQueue;->c:I

    .line 40
    .line 41
    sub-int/2addr v2, v5

    .line 42
    iput v2, v0, Landroidx/media3/common/util/LongArrayQueue;->b:I

    .line 43
    .line 44
    iput-object v3, v0, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    .line 45
    .line 46
    sub-int/2addr v1, v5

    .line 47
    iput v1, v0, Landroidx/media3/common/util/LongArrayQueue;->e:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 51
    .line 52
    .line 53
    return v4

    .line 54
    :cond_1
    :goto_0
    iget v1, v0, Landroidx/media3/common/util/LongArrayQueue;->b:I

    .line 55
    .line 56
    add-int/2addr v1, v5

    .line 57
    iget v2, v0, Landroidx/media3/common/util/LongArrayQueue;->e:I

    .line 58
    .line 59
    and-int/2addr v1, v2

    .line 60
    iput v1, v0, Landroidx/media3/common/util/LongArrayQueue;->b:I

    .line 61
    .line 62
    iget-object v2, v0, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    .line 63
    .line 64
    aput-wide p1, v2, v1

    .line 65
    .line 66
    iget v1, v0, Landroidx/media3/common/util/LongArrayQueue;->c:I

    .line 67
    .line 68
    add-int/2addr v1, v5

    .line 69
    iput v1, v0, Landroidx/media3/common/util/LongArrayQueue;->c:I

    .line 70
    .line 71
    iput-wide p1, p3, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    .line 72
    .line 73
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    iput-wide p1, p3, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->k:J

    .line 79
    .line 80
    iget-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j:Ljava/util/concurrent/Executor;

    .line 81
    .line 82
    new-instance p2, Landroidx/media3/exoplayer/video/a;

    .line 83
    .line 84
    invoke-direct {p2, v4, p0}, Landroidx/media3/exoplayer/video/a;-><init>(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    .line 89
    .line 90
    return v5
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j(J)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final k(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->k:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 2
    .line 3
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 2
    .line 3
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    .line 16
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    .line 17
    .line 18
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    .line 19
    .line 20
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->k:J

    .line 23
    .line 24
    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 4
    .line 5
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->i:I

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->i:I

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final n(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->f:Landroid/view/Surface;

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f(Landroid/view/Surface;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final p(Landroidx/media3/common/Format;JILjava/util/List;)V
    .locals 10

    .line 1
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result p5

    .line 5
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 6
    .line 7
    .line 8
    iget p5, p1, Landroidx/media3/common/Format;->w:I

    .line 9
    .line 10
    iget v0, p1, Landroidx/media3/common/Format;->x:I

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->g:Landroidx/media3/common/Format;

    .line 13
    .line 14
    iget v2, v1, Landroidx/media3/common/Format;->w:I

    .line 15
    .line 16
    const-wide/16 v3, 0x1

    .line 17
    .line 18
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iget-object v7, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 24
    .line 25
    if-ne p5, v2, :cond_0

    .line 26
    .line 27
    iget v1, v1, Landroidx/media3/common/Format;->x:I

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    :cond_0
    iget-object v1, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->d:Landroidx/media3/common/util/TimedValueQueue;

    .line 32
    .line 33
    iget-wide v8, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    .line 34
    .line 35
    cmp-long v2, v8, v5

    .line 36
    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    const-wide/16 v8, 0x0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    add-long/2addr v8, v3

    .line 43
    :goto_0
    new-instance v2, Landroidx/media3/common/VideoSize;

    .line 44
    .line 45
    invoke-direct {v2, p5, v0}, Landroidx/media3/common/VideoSize;-><init>(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v8, v9, v2}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget p5, p1, Landroidx/media3/common/Format;->B:F

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->g:Landroidx/media3/common/Format;

    .line 54
    .line 55
    iget v0, v0, Landroidx/media3/common/Format;->B:F

    .line 56
    .line 57
    cmpl-float v0, p5, v0

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    iget-object v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->e:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 62
    .line 63
    iput p5, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->f:F

    .line 64
    .line 65
    iget-object p5, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 66
    .line 67
    invoke-virtual {p5}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->c()V

    .line 68
    .line 69
    .line 70
    iget-object p5, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 71
    .line 72
    invoke-virtual {p5}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->c()V

    .line 73
    .line 74
    .line 75
    const/4 p5, 0x0

    .line 76
    iput-boolean p5, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    .line 77
    .line 78
    iput-wide v5, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    .line 79
    .line 80
    iput p5, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->e:I

    .line 81
    .line 82
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c()V

    .line 83
    .line 84
    .line 85
    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->g:Landroidx/media3/common/Format;

    .line 86
    .line 87
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->h:J

    .line 88
    .line 89
    cmp-long p1, p2, v0

    .line 90
    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    iget-object p1, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->f:Landroidx/media3/common/util/LongArrayQueue;

    .line 94
    .line 95
    iget p1, p1, Landroidx/media3/common/util/LongArrayQueue;->c:I

    .line 96
    .line 97
    if-nez p1, :cond_4

    .line 98
    .line 99
    iget-object p1, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 100
    .line 101
    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e(I)V

    .line 102
    .line 103
    .line 104
    iput-wide p2, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->m:J

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_4
    iget-object p1, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->e:Landroidx/media3/common/util/TimedValueQueue;

    .line 108
    .line 109
    iget-wide p4, v7, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    .line 110
    .line 111
    cmp-long v0, p4, v5

    .line 112
    .line 113
    if-nez v0, :cond_5

    .line 114
    .line 115
    const-wide/high16 p4, -0x4000000000000000L    # -2.0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    add-long/2addr p4, v3

    .line 119
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, p4, p5, v0}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    iput-wide p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->h:J

    .line 127
    .line 128
    :cond_6
    return-void
.end method

.method public final q(Z)V
    .locals 7

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 11
    .line 12
    iget-object v4, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 13
    .line 14
    invoke-virtual {v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b()V

    .line 15
    .line 16
    .line 17
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    .line 18
    .line 19
    iget v4, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 20
    .line 21
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iput v4, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 26
    .line 27
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 28
    .line 29
    iput-boolean v3, p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->m:Z

    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->c:Landroidx/media3/exoplayer/video/VideoFrameRenderControl;

    .line 37
    .line 38
    iget-object v4, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->d:Landroidx/media3/common/util/TimedValueQueue;

    .line 39
    .line 40
    iget-object v5, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->f:Landroidx/media3/common/util/LongArrayQueue;

    .line 41
    .line 42
    iput v3, v5, Landroidx/media3/common/util/LongArrayQueue;->a:I

    .line 43
    .line 44
    const/4 v6, -0x1

    .line 45
    iput v6, v5, Landroidx/media3/common/util/LongArrayQueue;->b:I

    .line 46
    .line 47
    iput v3, v5, Landroidx/media3/common/util/LongArrayQueue;->c:I

    .line 48
    .line 49
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    .line 50
    .line 51
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    .line 52
    .line 53
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->k:J

    .line 54
    .line 55
    iget-object v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->e:Landroidx/media3/common/util/TimedValueQueue;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-lez v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lez v1, :cond_1

    .line 68
    .line 69
    move v1, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move v1, v3

    .line 72
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 73
    .line 74
    .line 75
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-le v1, v2, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    check-cast v0, Ljava/lang/Long;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    iput-wide v0, p1, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->m:J

    .line 99
    .line 100
    :cond_3
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-lez p1, :cond_6

    .line 105
    .line 106
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-lez p1, :cond_4

    .line 111
    .line 112
    move v3, v2

    .line 113
    :cond_4
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 114
    .line 115
    .line 116
    :goto_2
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-le p1, v2, :cond_5

    .line 121
    .line 122
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    invoke-virtual {v4}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    check-cast p1, Landroidx/media3/common/VideoSize;

    .line 134
    .line 135
    const-wide/16 v0, 0x0

    .line 136
    .line 137
    invoke-virtual {v4, v0, v1, p1}, Landroidx/media3/common/util/TimedValueQueue;->a(JLjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_6
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d:Ljava/util/ArrayDeque;

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final t(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final u()V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p0
.end method

.method public final v(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i:Landroidx/media3/exoplayer/video/VideoSink$Listener;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    return-void
.end method

.method public final w(Landroidx/media3/common/Format;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 2
    .line 3
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 9
    .line 10
    :cond_0
    return-void
.end method
