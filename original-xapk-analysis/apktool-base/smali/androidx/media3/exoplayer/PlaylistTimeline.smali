.class final Landroidx/media3/exoplayer/PlaylistTimeline;
.super Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final e:I

.field public final f:I

.field public final g:[I

.field public final h:[I

.field public final i:[Landroidx/media3/common/Timeline;

.field public final j:[Ljava/lang/Object;

.field public final k:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 6

    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/common/Timeline;

    .line 82
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/MediaSourceInfoHolder;

    add-int/lit8 v5, v3, 0x1

    .line 83
    invoke-interface {v4}, Landroidx/media3/exoplayer/MediaSourceInfoHolder;->b()Landroidx/media3/common/Timeline;

    move-result-object v4

    aput-object v4, v0, v3

    move v3, v5

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/MediaSourceInfoHolder;

    add-int/lit8 v4, v2, 0x1

    .line 86
    invoke-interface {v3}, Landroidx/media3/exoplayer/MediaSourceInfoHolder;->a()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v4

    goto :goto_1

    .line 87
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    return-void
.end method

.method public constructor <init>([Landroidx/media3/common/Timeline;[Ljava/lang/Object;Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 7

    .line 1
    invoke-direct {p0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;-><init>(Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 2
    .line 3
    .line 4
    array-length p3, p1

    .line 5
    iput-object p1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 6
    .line 7
    new-array v0, p3, [I

    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->g:[I

    .line 10
    .line 11
    new-array p3, p3, [I

    .line 12
    .line 13
    iput-object p3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->h:[I

    .line 14
    .line 15
    iput-object p2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->j:[Ljava/lang/Object;

    .line 16
    .line 17
    new-instance p3, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->k:Ljava/util/HashMap;

    .line 23
    .line 24
    array-length p3, p1

    .line 25
    const/4 v0, 0x0

    .line 26
    move v1, v0

    .line 27
    move v2, v1

    .line 28
    move v3, v2

    .line 29
    :goto_0
    if-ge v0, p3, :cond_0

    .line 30
    .line 31
    aget-object v4, p1, v0

    .line 32
    .line 33
    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 34
    .line 35
    aput-object v4, v5, v3

    .line 36
    .line 37
    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->h:[I

    .line 38
    .line 39
    aput v1, v5, v3

    .line 40
    .line 41
    iget-object v5, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->g:[I

    .line 42
    .line 43
    aput v2, v5, v3

    .line 44
    .line 45
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->o()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    add-int/2addr v1, v4

    .line 50
    iget-object v4, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 51
    .line 52
    aget-object v4, v4, v3

    .line 53
    .line 54
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->h()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    add-int/2addr v2, v4

    .line 59
    iget-object v4, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->k:Ljava/util/HashMap;

    .line 60
    .line 61
    aget-object v5, p2, v3

    .line 62
    .line 63
    add-int/lit8 v6, v3, 0x1

    .line 64
    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 73
    .line 74
    move v3, v6

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->e:I

    .line 77
    .line 78
    iput v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->f:I

    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final h()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public final o()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->e:I

    .line 2
    .line 3
    return p0
.end method
