.class final Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceEventListener;
.implements Landroidx/media3/exoplayer/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field public j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public k:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final synthetic l:Landroidx/media3/exoplayer/source/WrappingMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/WrappingMediaSource;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->l:Landroidx/media3/exoplayer/source/WrappingMediaSource;

    .line 5
    .line 6
    iget-object v0, p1, Landroidx/media3/exoplayer/source/BaseMediaSource;->c:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 7
    .line 8
    new-instance v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 9
    .line 10
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v1, v0, v2, v3}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 18
    .line 19
    iget-object p1, p1, Landroidx/media3/exoplayer/source/BaseMediaSource;->d:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 20
    .line 21
    new-instance v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 22
    .line 23
    iget-object p1, p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-direct {v0, p1, v2, v3}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->k:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final B(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->a(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 5
    .line 6
    invoke-virtual {p0, p4}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->b(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-object p2, p3

    .line 14
    move-object p3, p0

    .line 15
    new-instance p0, Lgb;

    .line 16
    .line 17
    move-object p4, p5

    .line 18
    move p5, p6

    .line 19
    invoke-direct/range {p0 .. p5}, Lgb;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final E(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->a(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 5
    .line 6
    invoke-virtual {p0, p4}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->b(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p2, Lfb;

    .line 14
    .line 15
    const/4 p4, 0x1

    .line 16
    invoke-direct {p2, p1, p3, p0, p4}, Lfb;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final a(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->l:Landroidx/media3/exoplayer/source/WrappingMediaSource;

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 7
    .line 8
    iget-object v2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    sget-object v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->e:Ljava/lang/Object;

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p2, v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p2, 0x0

    .line 30
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 31
    .line 32
    iget v2, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a:I

    .line 33
    .line 34
    if-ne v2, p1, :cond_2

    .line 35
    .line 36
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 37
    .line 38
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->c:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 45
    .line 46
    new-instance v2, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 47
    .line 48
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-direct {v2, v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 54
    .line 55
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->k:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 56
    .line 57
    iget v2, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->a:I

    .line 58
    .line 59
    if-ne v2, p1, :cond_4

    .line 60
    .line 61
    iget-object v1, v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 62
    .line 63
    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_5

    .line 68
    .line 69
    :cond_4
    iget-object v0, v0, Landroidx/media3/exoplayer/source/BaseMediaSource;->d:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 70
    .line 71
    new-instance v1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 72
    .line 73
    iget-object v0, v0, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 74
    .line 75
    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->k:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 79
    .line 80
    :cond_5
    return-void
.end method

.method public final b(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;
    .locals 8

    .line 1
    iget-wide v4, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->d:J

    .line 2
    .line 3
    iget-wide v6, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->e:J

    .line 4
    .line 5
    cmp-long p0, v4, v4

    .line 6
    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    cmp-long p0, v6, v6

    .line 10
    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 15
    .line 16
    iget v1, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->a:I

    .line 17
    .line 18
    iget v2, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->b:I

    .line 19
    .line 20
    iget-object v3, p1, Landroidx/media3/exoplayer/source/MediaLoadData;->c:Landroidx/media3/common/Format;

    .line 21
    .line 22
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;JJ)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public final g(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->a(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 5
    .line 6
    invoke-virtual {p0, p4}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->b(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p2, Lfb;

    .line 14
    .line 15
    const/4 p4, 0x0

    .line 16
    invoke-direct {p2, p1, p3, p0, p4}, Lfb;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final o(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->a(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 5
    .line 6
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->b(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p2, Ln5;

    .line 14
    .line 15
    const/4 p3, 0x6

    .line 16
    invoke-direct {p2, p3, p1, p0}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final z(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->a(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->j:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    .line 5
    .line 6
    invoke-virtual {p0, p4}, Landroidx/media3/exoplayer/source/CompositeMediaSource$ForwardingEventListener;->b(Landroidx/media3/exoplayer/source/MediaLoadData;)Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p2, Leb;

    .line 14
    .line 15
    invoke-direct {p2, p1, p3, p0, p5}, Leb;-><init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
