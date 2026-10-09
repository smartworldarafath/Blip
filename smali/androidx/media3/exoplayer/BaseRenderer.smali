.class public abstract Landroidx/media3/exoplayer/BaseRenderer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;
.implements Landroidx/media3/exoplayer/RendererCapabilities;


# instance fields
.field public A:J

.field public B:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

.field public final j:Ljava/lang/Object;

.field public final k:I

.field public final l:Landroidx/media3/exoplayer/FormatHolder;

.field public m:Landroidx/media3/exoplayer/RendererConfiguration;

.field public n:I

.field public o:Landroidx/media3/exoplayer/analytics/PlayerId;

.field public p:Landroidx/media3/common/util/Clock;

.field public q:I

.field public r:Landroidx/media3/exoplayer/source/SampleStream;

.field public s:[Landroidx/media3/common/Format;

.field public t:J

.field public u:J

.field public v:J

.field public w:Z

.field public x:Z

.field public y:Landroidx/media3/common/Timeline;

.field public z:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->j:Ljava/lang/Object;

    .line 10
    .line 11
    iput p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->k:I

    .line 12
    .line 13
    new-instance p1, Landroidx/media3/exoplayer/FormatHolder;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->l:Landroidx/media3/exoplayer/FormatHolder;

    .line 19
    .line 20
    const-wide/high16 v0, -0x8000000000000000L

    .line 21
    .line 22
    iput-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->v:J

    .line 23
    .line 24
    sget-object p1, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    .line 25
    .line 26
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->y:Landroidx/media3/common/Timeline;

    .line 27
    .line 28
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    iput-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public A([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 1
    return-void
.end method

.method public B()V
    .locals 0

    .line 1
    return-void
.end method

.method public final C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 5

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-interface {v1, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleStream;->e(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    const/4 v1, -0x4

    .line 18
    if-ne p3, v1, :cond_4

    .line 19
    .line 20
    const/4 p1, 0x4

    .line 21
    invoke-virtual {p2, p1}, Landroidx/media3/decoder/Buffer;->e(I)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-wide/high16 p1, -0x8000000000000000L

    .line 30
    .line 31
    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->v:J

    .line 32
    .line 33
    :cond_1
    iget-boolean p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    return v1

    .line 38
    :cond_2
    const/4 p0, -0x3

    .line 39
    return p0

    .line 40
    :cond_3
    iget-wide v1, p2, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 41
    .line 42
    iget-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->t:J

    .line 43
    .line 44
    add-long/2addr v1, v3

    .line 45
    iput-wide v1, p2, Landroidx/media3/decoder/DecoderInputBuffer;->n:J

    .line 46
    .line 47
    if-nez v0, :cond_5

    .line 48
    .line 49
    iget-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->v:J

    .line 50
    .line 51
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide p1

    .line 55
    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->v:J

    .line 56
    .line 57
    return p3

    .line 58
    :cond_4
    const/4 p2, -0x5

    .line 59
    if-ne p3, p2, :cond_5

    .line 60
    .line 61
    iget-object p2, p1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iget-wide v0, p2, Landroidx/media3/common/Format;->u:J

    .line 67
    .line 68
    const-wide v2, 0x7fffffffffffffffL

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    cmp-long v2, v0, v2

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    invoke-virtual {p2}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iget-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->t:J

    .line 82
    .line 83
    add-long/2addr v0, v2

    .line 84
    iput-wide v0, p2, Landroidx/media3/common/Format$Builder;->t:J

    .line 85
    .line 86
    new-instance p0, Landroidx/media3/common/Format;

    .line 87
    .line 88
    invoke-direct {p0, p2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 89
    .line 90
    .line 91
    iput-object p0, p1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    .line 92
    .line 93
    :cond_5
    return p3
.end method

.method public final D([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 9
    .line 10
    iput-object p7, p0, Landroidx/media3/exoplayer/BaseRenderer;->z:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->F()V

    .line 13
    .line 14
    .line 15
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->v:J

    .line 16
    .line 17
    const-wide/high16 v2, -0x8000000000000000L

    .line 18
    .line 19
    cmp-long p2, v0, v2

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    iput-wide p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->v:J

    .line 24
    .line 25
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->s:[Landroidx/media3/common/Format;

    .line 26
    .line 27
    iput-wide p5, p0, Landroidx/media3/exoplayer/BaseRenderer;->t:J

    .line 28
    .line 29
    move-object v0, p0

    .line 30
    move-object v1, p1

    .line 31
    move-wide v2, p3

    .line 32
    move-wide v4, p5

    .line 33
    move-object v6, p7

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/BaseRenderer;->A([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final E(JZZ)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->u:J

    .line 5
    .line 6
    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->v:J

    .line 7
    .line 8
    if-nez p4, :cond_1

    .line 9
    .line 10
    iget-object p4, p0, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 11
    .line 12
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->t:J

    .line 16
    .line 17
    sub-long v1, p1, v1

    .line 18
    .line 19
    invoke-interface {p4, v1, v2}, Landroidx/media3/exoplayer/source/SampleStream;->d(J)I

    .line 20
    .line 21
    .line 22
    move-result p4

    .line 23
    if-eqz p4, :cond_0

    .line 24
    .line 25
    const/4 p4, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p4, v0

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/BaseRenderer;->v(JZZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final F()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->y:Landroidx/media3/common/Timeline;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    if-nez v0, :cond_4

    .line 13
    .line 14
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->z:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->y:Landroidx/media3/common/Timeline;

    .line 20
    .line 21
    iget-object v4, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, -0x1

    .line 28
    if-ne v3, v4, :cond_1

    .line 29
    .line 30
    iput-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->y:Landroidx/media3/common/Timeline;

    .line 34
    .line 35
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    .line 36
    .line 37
    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-virtual {v1, v3, v2, v5}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-wide v2, v1, Landroidx/media3/common/Timeline$Period;->d:J

    .line 46
    .line 47
    iput-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 48
    .line 49
    iget v2, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 50
    .line 51
    if-eq v2, v4, :cond_2

    .line 52
    .line 53
    iget-object v1, v1, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iget-object v1, v1, Landroidx/media3/common/AdPlaybackState$AdGroup;->f:[J

    .line 60
    .line 61
    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 62
    .line 63
    aget-wide v0, v1, v0

    .line 64
    .line 65
    iput-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    .line 69
    .line 70
    if-eq v0, v4, :cond_3

    .line 71
    .line 72
    iget-object v1, v1, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    const-wide/16 v0, 0x0

    .line 82
    .line 83
    iput-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 84
    .line 85
    :cond_3
    return-void

    .line 86
    :cond_4
    :goto_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 87
    .line 88
    return-void
.end method

.method public b()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public n()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public o(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public q()Landroidx/media3/exoplayer/MediaClock;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final r(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    iget-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->x:Z

    .line 5
    .line 6
    if-nez v2, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->x:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    :try_start_0
    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/RendererCapabilities;->f(Landroidx/media3/common/Format;)I

    .line 13
    .line 14
    .line 15
    move-result v3
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    and-int/lit8 v3, v3, 0x7

    .line 17
    .line 18
    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->x:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->x:Z

    .line 23
    .line 24
    throw v0

    .line 25
    :catch_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->x:Z

    .line 26
    .line 27
    :cond_0
    move v3, v0

    .line 28
    :goto_0
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    iget v5, p0, Landroidx/media3/exoplayer/BaseRenderer;->n:I

    .line 33
    .line 34
    iget-object v8, p0, Landroidx/media3/exoplayer/BaseRenderer;->z:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 35
    .line 36
    move v1, v0

    .line 37
    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 38
    .line 39
    if-nez p2, :cond_1

    .line 40
    .line 41
    move v7, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v7, v3

    .line 44
    :goto_1
    const/4 v1, 0x1

    .line 45
    move-object v2, p1

    .line 46
    move-object v6, p2

    .line 47
    move v9, p3

    .line 48
    move v3, p4

    .line 49
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Exception;ILjava/lang/String;ILandroidx/media3/common/Format;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public final s()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->v:J

    .line 2
    .line 3
    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    .line 5
    cmp-long p0, v0, v2

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method

.method public abstract t()V
.end method

.method public u(ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract v(JZZ)V
.end method

.method public w()V
    .locals 0

    .line 1
    return-void
.end method

.method public x()V
    .locals 0

    .line 1
    return-void
.end method

.method public y()V
    .locals 0

    .line 1
    return-void
.end method

.method public z()V
    .locals 0

    .line 1
    return-void
.end method
