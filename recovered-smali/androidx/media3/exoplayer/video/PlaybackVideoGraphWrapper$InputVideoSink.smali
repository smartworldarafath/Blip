.class final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputVideoSink"
.end annotation


# instance fields
.field public a:Lcom/google/common/collect/ImmutableList;

.field public b:Landroidx/media3/common/Format;

.field public c:J

.field public d:J

.field public e:I

.field public f:Ljava/util/concurrent/Executor;

.field public final synthetic g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 5
    .line 6
    invoke-static {p2}, Landroidx/media3/common/util/Util;->B(Landroid/content/Context;)Z

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->r()Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->a:Lcom/google/common/collect/ImmutableList;

    .line 14
    .line 15
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->d:J

    .line 21
    .line 22
    sget-object p1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->q:Lz2;

    .line 23
    .line 24
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->f:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 2
    .line 3
    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:I

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->k:Landroidx/media3/common/util/HandlerWrapper;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Landroidx/media3/common/util/HandlerWrapper;->f()V

    .line 14
    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->l:Landroid/util/Pair;

    .line 18
    .line 19
    iput v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:I

    .line 20
    .line 21
    return-void
.end method

.method public final b()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final d(JJ)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->c:J

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 7
    .line 8
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d(JJ)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final e()Landroid/view/Surface;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 3
    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    throw p0
.end method

.method public final f(Landroid/view/Surface;Landroidx/media3/common/util/Size;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->l:Landroid/util/Pair;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Landroid/view/Surface;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->l:Landroid/util/Pair;

    .line 18
    .line 19
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroidx/media3/common/util/Size;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Landroidx/media3/common/util/Size;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->l:Landroid/util/Pair;

    .line 35
    .line 36
    iget p0, p2, Landroidx/media3/common/util/Size;->a:I

    .line 37
    .line 38
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->d:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 8
    .line 9
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->g()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final h(JLandroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;)Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 3
    .line 4
    .line 5
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->c:J

    .line 6
    .line 7
    add-long/2addr p1, v1

    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 9
    .line 10
    iget-object v2, v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->i:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 11
    .line 12
    iget-wide v3, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->a:J

    .line 13
    .line 14
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v7, v3, v5

    .line 20
    .line 21
    if-nez v7, :cond_0

    .line 22
    .line 23
    move-wide p1, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-wide v7, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->b:J

    .line 26
    .line 27
    long-to-double v7, v7

    .line 28
    sub-long/2addr p1, v3

    .line 29
    long-to-double p1, p1

    .line 30
    iget-wide v2, v2, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->c:D

    .line 31
    .line 32
    mul-double/2addr p1, v2

    .line 33
    add-double/2addr p1, v7

    .line 34
    double-to-long p1, p1

    .line 35
    :goto_0
    cmp-long v2, p1, v5

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    iget-wide v2, v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->h:J

    .line 40
    .line 41
    cmp-long v4, v2, v5

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    cmp-long p1, p1, v2

    .line 46
    .line 47
    if-gez p1, :cond_1

    .line 48
    .line 49
    iget p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->e:I

    .line 50
    .line 51
    const/4 p2, 0x2

    .line 52
    if-ge p1, p2, :cond_1

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    add-int/2addr p1, p2

    .line 56
    iput p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->e:I

    .line 57
    .line 58
    check-cast p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;

    .line 59
    .line 60
    iget-object p0, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->c:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 61
    .line 62
    iget-object p1, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 63
    .line 64
    iget p3, p3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->b:I

    .line 65
    .line 66
    const-string v1, "dropVideoBuffer"

    .line 67
    .line 68
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->f(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0(II)V

    .line 78
    .line 79
    .line 80
    return p2

    .line 81
    :cond_1
    iget p0, v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->p:I

    .line 82
    .line 83
    const/4 p1, -0x1

    .line 84
    if-eq p0, p1, :cond_3

    .line 85
    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 p0, 0x0

    .line 90
    throw p0

    .line 91
    :cond_3
    :goto_1
    return v0
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->d:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 8
    .line 9
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->i()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final j(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public final k(Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->k:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 8
    .line 9
    return-void
.end method

.method public final l()V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->d:J

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 4
    .line 5
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->o:J

    .line 6
    .line 7
    cmp-long v0, v2, v0

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->l()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final m(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->m(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final n(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->i:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->c(F)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 9
    .line 10
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->n(F)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final o()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/media3/common/util/Size;->c:Landroidx/media3/common/util/Size;

    .line 2
    .line 3
    iget v0, v0, Landroidx/media3/common/util/Size;->a:I

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->l:Landroid/util/Pair;

    .line 9
    .line 10
    return-void
.end method

.method public final p(Landroidx/media3/common/Format;JILjava/util/List;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p5}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    iput-object p2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->a:Lcom/google/common/collect/ImmutableList;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->b:Landroidx/media3/common/Format;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    iget-object p1, p1, Landroidx/media3/common/Format;->H:Landroidx/media3/common/ColorInfo;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/media3/common/ColorInfo;->d()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;

    .line 29
    .line 30
    :goto_0
    iput-object p1, p0, Landroidx/media3/common/Format$Builder;->G:Landroidx/media3/common/ColorInfo;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->a()Landroidx/media3/common/Format;

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    throw p0
.end method

.method public final q(Z)V
    .locals 5

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->d:J

    .line 7
    .line 8
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 11
    .line 12
    iget v3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne v3, v4, :cond_2

    .line 16
    .line 17
    iget v3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->m:I

    .line 18
    .line 19
    add-int/2addr v3, v4

    .line 20
    iput v3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->m:I

    .line 21
    .line 22
    check-cast v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->q(Z)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iget-object v2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    .line 34
    .line 35
    if-le p1, v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v2}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eq p1, v4, :cond_1

    .line 46
    .line 47
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->o:J

    .line 48
    .line 49
    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->k:Landroidx/media3/common/util/HandlerWrapper;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    new-instance v0, Le;

    .line 55
    .line 56
    const/16 v1, 0xb

    .line 57
    .line 58
    invoke-direct {v0, v1, p0}, Le;-><init>(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v0}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;

    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const/4 p0, 0x0

    .line 77
    throw p0

    .line 78
    :cond_2
    :goto_1
    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->a:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->m(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->a:Lcom/google/common/collect/ImmutableList;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->b:Landroidx/media3/common/Format;

    .line 17
    .line 18
    if-nez p0, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p0, p0, Landroidx/media3/common/Format;->H:Landroidx/media3/common/ColorInfo;

    .line 26
    .line 27
    if-eqz p0, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo;->d()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    sget-object p0, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;

    .line 37
    .line 38
    :goto_1
    iput-object p0, p1, Landroidx/media3/common/Format$Builder;->G:Landroidx/media3/common/ColorInfo;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->a()Landroidx/media3/common/Format;

    .line 41
    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    throw p0
.end method

.method public final s(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->d:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 8
    .line 9
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->s(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final t(Z)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;->a:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b(Z)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final u()V
    .locals 0

    .line 1
    return-void
.end method

.method public final v(Landroidx/media3/exoplayer/video/VideoSink$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->f:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-void
.end method

.method public final w(Landroidx/media3/common/Format;)Z
    .locals 12

    .line 1
    const-string v0, "Color transfer "

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 4
    .line 5
    iget v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->n:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move v1, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v1, v3

    .line 14
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p1, Landroidx/media3/common/Format;->H:Landroidx/media3/common/ColorInfo;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo;->d()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    sget-object v1, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;

    .line 29
    .line 30
    :goto_1
    :try_start_0
    iget v4, v1, Landroidx/media3/common/ColorInfo;->c:I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    const/4 v5, 0x2

    .line 33
    const-string v6, "EGL_EXT_gl_colorspace_bt2020_pq"

    .line 34
    .line 35
    const/16 v7, 0x21

    .line 36
    .line 37
    const/4 v8, 0x6

    .line 38
    const/4 v9, 0x7

    .line 39
    if-ne v4, v9, :cond_4

    .line 40
    .line 41
    :try_start_1
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v11, 0x22

    .line 44
    .line 45
    if-ge v10, v11, :cond_4

    .line 46
    .line 47
    if-lt v10, v7, :cond_2

    .line 48
    .line 49
    invoke-static {v6}, Landroidx/media3/common/util/GlUtil;->d(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-eqz v10, :cond_2

    .line 54
    .line 55
    move v10, v2

    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto/16 :goto_7

    .line 59
    .line 60
    :cond_2
    move v10, v3

    .line 61
    :goto_2
    if-nez v10, :cond_3

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_3
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iget v2, v1, Landroidx/media3/common/ColorInfo;->a:I

    .line 70
    .line 71
    iput v2, v0, Landroidx/media3/common/ColorInfo$Builder;->a:I

    .line 72
    .line 73
    iget v2, v1, Landroidx/media3/common/ColorInfo;->b:I

    .line 74
    .line 75
    iput v2, v0, Landroidx/media3/common/ColorInfo$Builder;->b:I

    .line 76
    .line 77
    iget-object v2, v1, Landroidx/media3/common/ColorInfo;->d:[B

    .line 78
    .line 79
    iput-object v2, v0, Landroidx/media3/common/ColorInfo$Builder;->d:[B

    .line 80
    .line 81
    iget v2, v1, Landroidx/media3/common/ColorInfo;->e:I

    .line 82
    .line 83
    iput v2, v0, Landroidx/media3/common/ColorInfo$Builder;->e:I

    .line 84
    .line 85
    iget v1, v1, Landroidx/media3/common/ColorInfo;->f:I

    .line 86
    .line 87
    iput v1, v0, Landroidx/media3/common/ColorInfo$Builder;->f:I

    .line 88
    .line 89
    iput v8, v0, Landroidx/media3/common/ColorInfo$Builder;->c:I

    .line 90
    .line 91
    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_6

    .line 96
    :cond_4
    :goto_3
    if-ne v4, v8, :cond_6

    .line 97
    .line 98
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 99
    .line 100
    if-lt v8, v7, :cond_5

    .line 101
    .line 102
    invoke-static {v6}, Landroidx/media3/common/util/GlUtil;->d(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_5

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    move v2, v3

    .line 110
    goto :goto_4

    .line 111
    :cond_6
    if-ne v4, v9, :cond_7

    .line 112
    .line 113
    const-string v2, "EGL_EXT_gl_colorspace_bt2020_hlg"

    .line 114
    .line 115
    invoke-static {v2}, Landroidx/media3/common/util/GlUtil;->d(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    :cond_7
    :goto_4
    if-nez v2, :cond_9

    .line 120
    .line 121
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 122
    .line 123
    const/16 v3, 0x1d

    .line 124
    .line 125
    if-ge v2, v3, :cond_8

    .line 126
    .line 127
    goto :goto_5

    .line 128
    :cond_8
    const-string v1, "PlaybackVidGraphWrapper"

    .line 129
    .line 130
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v0, " is not supported. Falling back to OpenGl tone mapping."

    .line 141
    .line 142
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    sget-object v1, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;

    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_9
    :goto_5
    if-eq v4, v5, :cond_a

    .line 156
    .line 157
    const/16 v0, 0xa

    .line 158
    .line 159
    if-ne v4, v0, :cond_b

    .line 160
    .line 161
    :cond_a
    sget-object v1, Landroidx/media3/common/ColorInfo;->h:Landroidx/media3/common/ColorInfo;
    :try_end_1
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    .line 163
    :cond_b
    :goto_6
    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->f:Landroidx/media3/common/util/Clock;

    .line 164
    .line 165
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    check-cast p1, Landroidx/media3/common/util/SystemClock;

    .line 173
    .line 174
    const/4 v2, 0x0

    .line 175
    invoke-virtual {p1, v0, v2}, Landroidx/media3/common/util/SystemClock;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->k:Landroidx/media3/common/util/HandlerWrapper;

    .line 180
    .line 181
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->b:Landroidx/media3/common/VideoGraph$Factory;

    .line 182
    .line 183
    iget-object v3, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->a:Landroid/content/Context;

    .line 184
    .line 185
    new-instance v4, Lu3;

    .line 186
    .line 187
    invoke-direct {v4, v5, p1}, Lu3;-><init>(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    check-cast v0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;

    .line 191
    .line 192
    invoke-virtual {v0, v3, v1, p0, v4}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$ReflectiveSingleInputVideoGraphFactory;->a(Landroid/content/Context;Landroidx/media3/common/ColorInfo;Landroidx/media3/common/VideoGraph$Listener;Lu3;)V

    .line 193
    .line 194
    .line 195
    throw v2

    .line 196
    :goto_7
    new-instance v0, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 197
    .line 198
    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Exception;Landroidx/media3/common/Format;)V

    .line 199
    .line 200
    .line 201
    throw v0
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$InputVideoSink;->g:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->e:Landroidx/media3/exoplayer/video/VideoSink;

    .line 12
    .line 13
    check-cast p0, Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/DefaultVideoSink;->x()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    .line 20
    .line 21
    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/media3/common/util/TimedValueQueue;->h()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-gtz v1, :cond_1

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->j:Landroidx/media3/common/util/TimedValueQueue;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->e()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$StreamChangeInfo;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    throw p0
.end method
