.class public final Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# instance fields
.field public final j:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final k:J

.field public final l:Landroidx/media3/exoplayer/upstream/Allocator;

.field public m:Landroidx/media3/exoplayer/source/MediaSource;

.field public n:Landroidx/media3/exoplayer/source/MediaPeriod;

.field public o:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->j:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->l:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->k:J

    .line 9
    .line 10
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->p:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->p:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->k:J

    .line 14
    .line 15
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->m:Landroidx/media3/exoplayer/source/MediaSource;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->l:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 21
    .line 22
    invoke-interface {v2, p1, v3, v0, v1}, Landroidx/media3/exoplayer/source/MediaSource;->b(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 27
    .line 28
    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->q:Z

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->d()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->o:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 40
    .line 41
    invoke-interface {p1, p0, v0, v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->p(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public final b(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->b(Landroidx/media3/exoplayer/LoadingInfo;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

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

.method public final c(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->o:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->c(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->q:Z

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->d()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->e()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final g()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->g()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->m:Landroidx/media3/exoplayer/source/MediaSource;

    .line 10
    .line 11
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->d()V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public final h(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->h(JLandroidx/media3/exoplayer/SeekParameters;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public final i(J)J
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->i(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public final j(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->j(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final k([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->p:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->k:J

    .line 13
    .line 14
    cmp-long v4, p5, v4

    .line 15
    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    move-wide p5, v0

    .line 19
    :cond_0
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->p:J

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 22
    .line 23
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface/range {p0 .. p6}, Landroidx/media3/exoplayer/source/MediaPeriod;->k([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    .line 26
    .line 27
    .line 28
    move-result-wide p0

    .line 29
    return-wide p0
.end method

.method public final l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->o:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 4
    .line 5
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final m()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->m()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

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

.method public final o()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->o()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final p(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->o:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->p:J

    .line 8
    .line 9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v0, p2, v0

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->k:J

    .line 20
    .line 21
    :goto_0
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->p(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final q()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->q()Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final t()J
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->t()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final u(J)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 2
    .line 3
    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->u(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
