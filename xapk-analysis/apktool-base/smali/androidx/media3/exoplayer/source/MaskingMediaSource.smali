.class public final Landroidx/media3/exoplayer/source/MaskingMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;,
        Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;
    }
.end annotation


# instance fields
.field public final l:Z

.field public final m:Landroidx/media3/common/Timeline$Window;

.field public final n:Landroidx/media3/common/Timeline$Period;

.field public o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

.field public p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->e()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    move p2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    :goto_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->l:Z

    .line 17
    .line 18
    new-instance p2, Landroidx/media3/common/Timeline$Window;

    .line 19
    .line 20
    invoke-direct {p2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->m:Landroidx/media3/common/Timeline$Window;

    .line 24
    .line 25
    new-instance p2, Landroidx/media3/common/Timeline$Period;

    .line 26
    .line 27
    invoke-direct {p2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->n:Landroidx/media3/common/Timeline$Period;

    .line 31
    .line 32
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->f()Landroidx/media3/common/Timeline;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    new-instance p1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-direct {p1, p2, v1, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 45
    .line 46
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->s:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->c()Landroidx/media3/common/MediaItem;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance p2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 54
    .line 55
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;-><init>(Landroidx/media3/common/MediaItem;)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Landroidx/media3/common/Timeline$Window;->n:Ljava/lang/Object;

    .line 61
    .line 62
    sget-object v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->e:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-direct {p2, v0, p1, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/MediaItem;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ForwardingTimeline;->b:Landroidx/media3/common/Timeline;

    .line 8
    .line 9
    instance-of v2, v1, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    .line 14
    .line 15
    check-cast v1, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/media3/exoplayer/source/ForwardingTimeline;->b:Landroidx/media3/common/Timeline;

    .line 18
    .line 19
    invoke-direct {v2, v1, p1}, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v2, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    .line 24
    .line 25
    invoke-direct {v2, v1, p1}, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    new-instance v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 29
    .line 30
    iget-object v3, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->c:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-direct {v1, v2, v3, v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 41
    .line 42
    new-instance v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;

    .line 43
    .line 44
    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;-><init>(Landroidx/media3/common/MediaItem;)V

    .line 45
    .line 46
    .line 47
    sget-object v2, Landroidx/media3/common/Timeline$Window;->n:Ljava/lang/Object;

    .line 48
    .line 49
    sget-object v3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->e:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 55
    .line 56
    :goto_1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    .line 57
    .line 58
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->a(Landroidx/media3/common/MediaItem;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final bridge synthetic b(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->t(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final g(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 3
    .line 4
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->m:Landroidx/media3/exoplayer/source/MediaSource;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->n:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/MediaSource;->g(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public final q()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->r:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->q:Z

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource;->i:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;

    .line 27
    .line 28
    iget-object v2, v1, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->a:Landroidx/media3/exoplayer/source/MediaSource;

    .line 29
    .line 30
    iget-object v3, v1, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->c:Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/media3/exoplayer/source/CompositeMediaSource$MediaSourceAndListener;->b:Landroidx/media3/exoplayer/source/a;

    .line 33
    .line 34
    check-cast v2, Landroidx/media3/exoplayer/source/BaseMediaSource;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->p(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/BaseMediaSource;->r(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v2, Landroidx/media3/exoplayer/source/BaseMediaSource;->d:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final t(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)V

    .line 4
    .line 5
    .line 6
    iget-object p2, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->m:Landroidx/media3/exoplayer/source/MediaSource;

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    move p2, p3

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Landroidx/media3/exoplayer/source/WrappingMediaSource;->k:Landroidx/media3/exoplayer/source/MediaSource;

    .line 18
    .line 19
    iput-object p2, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->m:Landroidx/media3/exoplayer/source/MediaSource;

    .line 20
    .line 21
    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->r:Z

    .line 22
    .line 23
    if-eqz p2, :cond_2

    .line 24
    .line 25
    iget-object p2, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 28
    .line 29
    iget-object p3, p3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 30
    .line 31
    if-eqz p3, :cond_1

    .line 32
    .line 33
    sget-object p3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->e:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 42
    .line 43
    iget-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->a(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 54
    .line 55
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->q:Z

    .line 56
    .line 57
    if-nez p1, :cond_3

    .line 58
    .line 59
    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->q:Z

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->s()V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-object v0
.end method

.method public final u(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->j:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->b(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    return v3

    .line 18
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 19
    .line 20
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource;->n:Landroidx/media3/common/Timeline$Period;

    .line 21
    .line 22
    invoke-virtual {v2, v1, p0, v3}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 23
    .line 24
    .line 25
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Period;->d:J

    .line 26
    .line 27
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long p0, v1, v3

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    cmp-long p0, p1, v1

    .line 37
    .line 38
    if-ltz p0, :cond_1

    .line 39
    .line 40
    const-wide/16 p0, 0x1

    .line 41
    .line 42
    sub-long/2addr v1, p0

    .line 43
    const-wide/16 p0, 0x0

    .line 44
    .line 45
    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 46
    .line 47
    .line 48
    move-result-wide p1

    .line 49
    :cond_1
    iput-wide p1, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->p:J

    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    return p0
.end method
