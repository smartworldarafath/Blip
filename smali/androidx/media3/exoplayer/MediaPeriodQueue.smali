.class final Landroidx/media3/exoplayer/MediaPeriodQueue;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/media3/common/Timeline$Period;

.field public final b:Landroidx/media3/common/Timeline$Window;

.field public final c:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field public final d:Landroidx/media3/common/util/HandlerWrapper;

.field public final e:Landroidx/media3/exoplayer/b;

.field public f:J

.field public g:I

.field public h:Z

.field public i:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public final j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public final k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public l:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public m:Landroidx/media3/exoplayer/MediaPeriodHolder;

.field public n:I

.field public o:Ljava/lang/Object;

.field public p:J

.field public q:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/common/util/HandlerWrapper;Landroidx/media3/exoplayer/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->c:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->d:Landroidx/media3/common/util/HandlerWrapper;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->e:Landroidx/media3/exoplayer/b;

    .line 9
    .line 10
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    .line 11
    .line 12
    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 16
    .line 17
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    .line 18
    .line 19
    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 23
    .line 24
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 30
    .line 31
    new-array p1, p4, [Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 34
    .line 35
    new-array p1, p4, [Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 36
    .line 37
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 38
    .line 39
    return-void
.end method

.method public static n([Landroidx/media3/exoplayer/MediaPeriodHolder;[JLandroidx/media3/exoplayer/MediaPeriodHolder;J)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p0

    .line 4
    if-ge v1, v2, :cond_5

    .line 5
    .line 6
    aget-object v2, p0, v1

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    iget-object v3, p2, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 12
    .line 13
    :goto_1
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-eq v3, v2, :cond_4

    .line 16
    .line 17
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    if-eq v2, p2, :cond_2

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_2
    aget-wide v2, p1, v1

    .line 24
    .line 25
    const-wide/high16 v4, -0x8000000000000000L

    .line 26
    .line 27
    cmp-long v4, v2, v4

    .line 28
    .line 29
    if-eqz v4, :cond_4

    .line 30
    .line 31
    cmp-long v2, v2, p3

    .line 32
    .line 33
    if-ltz v2, :cond_3

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_4
    :goto_3
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_5
    return v0
.end method

.method public static u(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p7}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 2
    .line 3
    .line 4
    iget v5, p7, Landroidx/media3/common/Timeline$Period;->c:I

    .line 5
    .line 6
    invoke-virtual {p0, v5, p6}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    iget-object v5, p7, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 13
    .line 14
    iget v5, v5, Landroidx/media3/common/AdPlaybackState;->a:I

    .line 15
    .line 16
    if-eqz v5, :cond_1

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    if-ne v5, v6, :cond_0

    .line 21
    .line 22
    invoke-virtual {p7, v7}, Landroidx/media3/common/Timeline$Period;->f(I)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v5, p7, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p7, v7}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0, p1, p7}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/Timeline$Period;->c(J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v5, -0x1

    .line 41
    if-ne v0, v5, :cond_2

    .line 42
    .line 43
    invoke-virtual {p7, p2, p3}, Landroidx/media3/common/Timeline$Period;->b(J)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    new-instance v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 48
    .line 49
    invoke-direct {v2, v0, p4, p5, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(IJLjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object v2

    .line 53
    :cond_2
    invoke-virtual {p7, v0}, Landroidx/media3/common/Timeline$Period;->e(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    move v2, v0

    .line 58
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 59
    .line 60
    const/4 v6, -0x1

    .line 61
    move-object v1, p1

    .line 62
    move-wide v4, p4

    .line 63
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    move v2, v0

    .line 9
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 10
    .line 11
    array-length v4, v3

    .line 12
    if-ge v2, v4, :cond_2

    .line 13
    .line 14
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 15
    .line 16
    aget-object v5, v3, v2

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 25
    .line 26
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 27
    .line 28
    aput-object v4, v3, v2

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 39
    .line 40
    array-length v3, v2

    .line 41
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 42
    .line 43
    if-ge v0, v3, :cond_4

    .line 44
    .line 45
    aget-object v3, v2, v0

    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 54
    .line 55
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 56
    .line 57
    aput-object v3, v2, v0

    .line 58
    .line 59
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()V

    .line 68
    .line 69
    .line 70
    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:I

    .line 71
    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:I

    .line 75
    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 81
    .line 82
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 83
    .line 84
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:Ljava/lang/Object;

    .line 85
    .line 86
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 87
    .line 88
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 89
    .line 90
    iget-wide v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 91
    .line 92
    iput-wide v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->p:J

    .line 93
    .line 94
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 95
    .line 96
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 97
    .line 98
    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 104
    .line 105
    return-object p0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 18
    .line 19
    iget-wide v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 20
    .line 21
    iput-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->p:J

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 33
    .line 34
    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 37
    .line 38
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 42
    .line 43
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:I

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final c()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_1
    if-ge v3, v2, :cond_1

    .line 10
    .line 11
    aget-object v4, v1, v3

    .line 12
    .line 13
    if-eq v0, v4, :cond_0

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    return-object v0

    .line 19
    :cond_1
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    return-object v0
.end method

.method public final d()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    :goto_0
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_1
    if-ge v3, v2, :cond_1

    .line 10
    .line 11
    aget-object v4, v1, v3

    .line 12
    .line 13
    if-eq v0, v4, :cond_0

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    return-object v0

    .line 19
    :cond_1
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    return-object v0
.end method

.method public final e(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v9, p2

    .line 6
    .line 7
    iget-object v8, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 8
    .line 9
    iget-wide v2, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 10
    .line 11
    iget-wide v4, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    .line 12
    .line 13
    add-long/2addr v2, v4

    .line 14
    sub-long v10, v2, p3

    .line 15
    .line 16
    iget-boolean v2, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->g:Z

    .line 17
    .line 18
    const/4 v7, -0x1

    .line 19
    iget-object v13, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 20
    .line 21
    const-wide/16 v14, 0x0

    .line 22
    .line 23
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    if-eqz v2, :cond_8

    .line 29
    .line 30
    iget-object v2, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 31
    .line 32
    iget-object v8, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 33
    .line 34
    iget-wide v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    .line 35
    .line 36
    iget-object v4, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v1, v4}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->g:I

    .line 43
    .line 44
    iget-boolean v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->h:Z

    .line 45
    .line 46
    move-wide/from16 v18, v2

    .line 47
    .line 48
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 49
    .line 50
    move v2, v4

    .line 51
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 52
    .line 53
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->d(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ne v2, v7, :cond_0

    .line 58
    .line 59
    const/16 p3, 0x0

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-virtual {v1, v2, v3, v4}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget v4, v4, Landroidx/media3/common/Timeline$Period;->c:I

    .line 70
    .line 71
    iget-object v5, v3, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    iget-wide v6, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 77
    .line 78
    const/16 p3, 0x0

    .line 79
    .line 80
    invoke-virtual {v1, v4, v13, v14, v15}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    iget v12, v12, Landroidx/media3/common/Timeline$Window;->l:I

    .line 85
    .line 86
    if-ne v12, v2, :cond_6

    .line 87
    .line 88
    iget v2, v3, Landroidx/media3/common/Timeline$Period;->c:I

    .line 89
    .line 90
    iget-wide v5, v3, Landroidx/media3/common/Timeline$Period;->d:J

    .line 91
    .line 92
    cmp-long v5, v5, v16

    .line 93
    .line 94
    if-eqz v5, :cond_1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {v1, v2, v13}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    .line 98
    .line 99
    .line 100
    iget-boolean v2, v13, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 101
    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    iget-boolean v2, v13, Landroidx/media3/common/Timeline$Window;->i:Z

    .line 105
    .line 106
    if-nez v2, :cond_2

    .line 107
    .line 108
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    :goto_0
    move-object v2, v3

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    :goto_1
    move-wide/from16 v5, v16

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :goto_2
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 118
    .line 119
    move-object v10, v8

    .line 120
    move-wide v7, v5

    .line 121
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    move-object v11, v2

    .line 127
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 128
    .line 129
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/common/Timeline;->j(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-nez v2, :cond_3

    .line 134
    .line 135
    :goto_3
    move-object/from16 v12, p3

    .line 136
    .line 137
    goto/16 :goto_6

    .line 138
    .line 139
    :cond_3
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 140
    .line 141
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Ljava/lang/Long;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 146
    .line 147
    .line 148
    move-result-wide v14

    .line 149
    iget-object v1, v9, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 150
    .line 151
    if-eqz v1, :cond_5

    .line 152
    .line 153
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_5

    .line 160
    .line 161
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 162
    .line 163
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 164
    .line 165
    iget-wide v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 166
    .line 167
    :cond_4
    :goto_4
    move-wide v3, v1

    .line 168
    move-object v2, v5

    .line 169
    move-wide v5, v3

    .line 170
    move-wide v12, v7

    .line 171
    move-wide v3, v14

    .line 172
    move-wide/from16 v14, v16

    .line 173
    .line 174
    goto :goto_5

    .line 175
    :cond_5
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->w(Ljava/lang/Object;)J

    .line 176
    .line 177
    .line 178
    move-result-wide v1

    .line 179
    const-wide/16 v3, -0x1

    .line 180
    .line 181
    cmp-long v3, v1, v3

    .line 182
    .line 183
    if-nez v3, :cond_4

    .line 184
    .line 185
    iget-wide v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->f:J

    .line 186
    .line 187
    const-wide/16 v3, 0x1

    .line 188
    .line 189
    add-long/2addr v3, v1

    .line 190
    iput-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->f:J

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_6
    move-object v11, v3

    .line 194
    move-object v10, v8

    .line 195
    move-object v2, v5

    .line 196
    move-wide v5, v6

    .line 197
    move-wide v3, v14

    .line 198
    move-wide/from16 v12, v16

    .line 199
    .line 200
    :goto_5
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 201
    .line 202
    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 203
    .line 204
    move-object/from16 v1, p1

    .line 205
    .line 206
    invoke-static/range {v1 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->u(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    cmp-long v5, v14, v16

    .line 211
    .line 212
    if-eqz v5, :cond_7

    .line 213
    .line 214
    cmp-long v5, v18, v16

    .line 215
    .line 216
    if-eqz v5, :cond_7

    .line 217
    .line 218
    iget-object v5, v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 219
    .line 220
    invoke-virtual {v1, v5, v11}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    iget-object v5, v5, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 225
    .line 226
    iget v5, v5, Landroidx/media3/common/AdPlaybackState;->a:I

    .line 227
    .line 228
    iget-object v6, v11, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    if-lez v5, :cond_7

    .line 234
    .line 235
    const/4 v5, 0x0

    .line 236
    invoke-virtual {v11, v5}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    .line 237
    .line 238
    .line 239
    :cond_7
    move-wide v5, v3

    .line 240
    move-wide v7, v12

    .line 241
    move-wide v3, v14

    .line 242
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->h(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    :goto_6
    return-object v12

    .line 247
    :cond_8
    const/16 p3, 0x0

    .line 248
    .line 249
    iget-object v9, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 250
    .line 251
    iget-object v12, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 252
    .line 253
    iget v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    .line 254
    .line 255
    move v3, v2

    .line 256
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 257
    .line 258
    invoke-virtual {v1, v12, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-eqz v4, :cond_f

    .line 266
    .line 267
    iget v3, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 268
    .line 269
    iget-object v4, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 270
    .line 271
    invoke-virtual {v4, v3}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    iget v4, v4, Landroidx/media3/common/AdPlaybackState$AdGroup;->a:I

    .line 276
    .line 277
    if-ne v4, v7, :cond_9

    .line 278
    .line 279
    goto :goto_8

    .line 280
    :cond_9
    iget v5, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 281
    .line 282
    iget-object v6, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 283
    .line 284
    invoke-virtual {v6, v3}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-virtual {v6, v5}, Landroidx/media3/common/AdPlaybackState$AdGroup;->a(I)I

    .line 289
    .line 290
    .line 291
    move-result v5

    .line 292
    if-ge v5, v4, :cond_a

    .line 293
    .line 294
    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 295
    .line 296
    move v4, v5

    .line 297
    iget-wide v5, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    .line 298
    .line 299
    iget-wide v7, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 300
    .line 301
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->i(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    return-object v0

    .line 306
    :cond_a
    iget-wide v3, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    .line 307
    .line 308
    cmp-long v5, v3, v16

    .line 309
    .line 310
    if-nez v5, :cond_e

    .line 311
    .line 312
    iget v3, v2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 313
    .line 314
    iget-wide v4, v2, Landroidx/media3/common/Timeline$Period;->d:J

    .line 315
    .line 316
    cmp-long v4, v4, v16

    .line 317
    .line 318
    if-eqz v4, :cond_b

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_b
    invoke-virtual {v1, v3, v13}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    .line 322
    .line 323
    .line 324
    iget-boolean v3, v13, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 325
    .line 326
    if-eqz v3, :cond_c

    .line 327
    .line 328
    iget-boolean v3, v13, Landroidx/media3/common/Timeline$Window;->i:Z

    .line 329
    .line 330
    if-nez v3, :cond_c

    .line 331
    .line 332
    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 333
    .line 334
    .line 335
    move-result-wide v16

    .line 336
    :cond_c
    :goto_7
    move-wide/from16 v6, v16

    .line 337
    .line 338
    iget v3, v2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 339
    .line 340
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 346
    .line 347
    move-object/from16 v0, p1

    .line 348
    .line 349
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/common/Timeline;->j(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJJ)Landroid/util/Pair;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    if-nez v1, :cond_d

    .line 354
    .line 355
    :goto_8
    return-object p3

    .line 356
    :cond_d
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v1, Ljava/lang/Long;

    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 361
    .line 362
    .line 363
    move-result-wide v3

    .line 364
    move-wide v5, v6

    .line 365
    goto :goto_9

    .line 366
    :cond_e
    move-object v0, v1

    .line 367
    move-wide/from16 v5, v16

    .line 368
    .line 369
    :goto_9
    iget v1, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 370
    .line 371
    invoke-virtual {v0, v12, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, v1}, Landroidx/media3/common/Timeline$Period;->d(I)J

    .line 375
    .line 376
    .line 377
    iget-object v2, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 378
    .line 379
    invoke-virtual {v2, v1}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 387
    .line 388
    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 389
    .line 390
    .line 391
    move-result-wide v3

    .line 392
    iget-wide v7, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    .line 393
    .line 394
    iget-wide v9, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 395
    .line 396
    move-object v1, v0

    .line 397
    move-object/from16 v0, p0

    .line 398
    .line 399
    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->j(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    return-object v0

    .line 404
    :cond_f
    if-eq v3, v7, :cond_10

    .line 405
    .line 406
    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline$Period;->f(I)Z

    .line 407
    .line 408
    .line 409
    :cond_10
    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline$Period;->e(I)I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    .line 414
    .line 415
    .line 416
    iget-object v0, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 417
    .line 418
    invoke-virtual {v0, v3}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget v0, v0, Landroidx/media3/common/AdPlaybackState$AdGroup;->a:I

    .line 423
    .line 424
    if-eq v4, v0, :cond_11

    .line 425
    .line 426
    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 427
    .line 428
    iget v3, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    .line 429
    .line 430
    iget-wide v5, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    .line 431
    .line 432
    iget-wide v7, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 433
    .line 434
    move-object/from16 v0, p0

    .line 435
    .line 436
    move-object/from16 v1, p1

    .line 437
    .line 438
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/MediaPeriodQueue;->i(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    return-object v0

    .line 443
    :cond_11
    move-object/from16 v1, p1

    .line 444
    .line 445
    invoke-virtual {v1, v12, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v2, v3}, Landroidx/media3/common/Timeline$Period;->d(I)J

    .line 449
    .line 450
    .line 451
    iget-object v0, v2, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 452
    .line 453
    invoke-virtual {v0, v3}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    iget-object v2, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 461
    .line 462
    iget-wide v7, v8, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    .line 463
    .line 464
    iget-wide v9, v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 465
    .line 466
    const-wide/16 v3, 0x0

    .line 467
    .line 468
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    move-object/from16 v0, p0

    .line 474
    .line 475
    invoke-virtual/range {v0 .. v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->j(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    return-object v0
.end method

.method public final f()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    aget-object v2, v0, v1

    .line 12
    .line 13
    :goto_0
    if-eqz p0, :cond_3

    .line 14
    .line 15
    array-length v3, v0

    .line 16
    move v4, v1

    .line 17
    :goto_1
    if-ge v4, v3, :cond_2

    .line 18
    .line 19
    aget-object v5, v0, v4

    .line 20
    .line 21
    if-eq p0, v5, :cond_1

    .line 22
    .line 23
    add-int/lit8 v4, v4, 0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move-object v2, p0

    .line 27
    :cond_2
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    return-object v2
.end method

.method public final g(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)J
    .locals 1

    .line 1
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 4
    .line 5
    invoke-virtual {p1, v0, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget p1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 15
    .line 16
    iget p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/Timeline$Period;->a(II)J

    .line 19
    .line 20
    .line 21
    move-result-wide p0

    .line 22
    return-wide p0

    .line 23
    :cond_0
    iget p1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    .line 24
    .line 25
    const/4 p2, -0x1

    .line 26
    if-eq p1, p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroidx/media3/common/Timeline$Period;->d(I)J

    .line 29
    .line 30
    .line 31
    const-wide/16 p0, 0x0

    .line 32
    .line 33
    return-wide p0

    .line 34
    :cond_1
    iget-wide p0, p0, Landroidx/media3/common/Timeline$Period;->d:J

    .line 35
    .line 36
    return-wide p0
.end method

.method public final h(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 12

    .line 1
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v3, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v4, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 17
    .line 18
    iget v5, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c:I

    .line 19
    .line 20
    iget-wide v8, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 21
    .line 22
    move-object v1, p0

    .line 23
    move-object v2, p1

    .line 24
    move-wide v6, p3

    .line 25
    invoke-virtual/range {v1 .. v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->i(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    iget-wide v10, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 31
    .line 32
    move-object v1, p0

    .line 33
    move-object v2, p1

    .line 34
    move-wide v8, p3

    .line 35
    move-wide/from16 v4, p5

    .line 36
    .line 37
    move-wide/from16 v6, p7

    .line 38
    .line 39
    invoke-virtual/range {v1 .. v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->j(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public final i(Landroidx/media3/common/Timeline;Ljava/lang/Object;IIJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 14

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 2
    .line 3
    const/4 v6, -0x1

    .line 4
    move-object/from16 v1, p2

    .line 5
    .line 6
    move/from16 v2, p3

    .line 7
    .line 8
    move/from16 v3, p4

    .line 9
    .line 10
    move-wide/from16 v4, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;IIJI)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 16
    .line 17
    invoke-virtual {p1, v1, p0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1, v2, v3}, Landroidx/media3/common/Timeline$Period;->a(II)J

    .line 22
    .line 23
    .line 24
    move-result-wide v8

    .line 25
    invoke-virtual {p0, v2}, Landroidx/media3/common/Timeline$Period;->e(I)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-ne v3, p1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    .line 37
    .line 38
    .line 39
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    cmp-long p0, v8, p0

    .line 45
    .line 46
    const-wide/16 v1, 0x0

    .line 47
    .line 48
    if-eqz p0, :cond_1

    .line 49
    .line 50
    cmp-long p0, v1, v8

    .line 51
    .line 52
    if-ltz p0, :cond_1

    .line 53
    .line 54
    const-wide/16 p0, 0x1

    .line 55
    .line 56
    sub-long p0, v8, p0

    .line 57
    .line 58
    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->max(JJ)J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    :cond_1
    move-wide v2, v1

    .line 63
    move-object v1, v0

    .line 64
    new-instance v0, Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 65
    .line 66
    const/4 v12, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v11, 0x0

    .line 75
    move-wide/from16 v6, p5

    .line 76
    .line 77
    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    .line 78
    .line 79
    .line 80
    return-object v0
.end method

.method public final j(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJJJ)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v3, p3

    .line 8
    .line 9
    iget-object v5, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v5}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v5, v3, v4}, Landroidx/media3/common/Timeline$Period;->b(J)I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/4 v7, -0x1

    .line 19
    if-eq v6, v7, :cond_0

    .line 20
    .line 21
    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    if-eq v6, v7, :cond_1

    .line 25
    .line 26
    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    new-instance v9, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 30
    .line 31
    move-wide/from16 v10, p9

    .line 32
    .line 33
    invoke-direct {v9, v6, v10, v11, v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(IJLjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    if-ne v6, v7, :cond_2

    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v2, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0, v1, v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->p(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 48
    .line 49
    .line 50
    move-result v20

    .line 51
    invoke-virtual {v0, v1, v9, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->o(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    .line 52
    .line 53
    .line 54
    move-result v21

    .line 55
    invoke-virtual {v0, v1, v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->g(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v16

    .line 59
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    cmp-long v0, v16, v0

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    cmp-long v0, v3, v16

    .line 69
    .line 70
    if-ltz v0, :cond_3

    .line 71
    .line 72
    const-wide/16 v0, 0x1

    .line 73
    .line 74
    sub-long v0, v16, v0

    .line 75
    .line 76
    const-wide/16 v3, 0x0

    .line 77
    .line 78
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    move-wide v10, v0

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move-wide v10, v3

    .line 85
    :goto_1
    new-instance v8, Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 86
    .line 87
    const/16 v18, 0x0

    .line 88
    .line 89
    move-wide/from16 v12, p5

    .line 90
    .line 91
    move-wide/from16 v14, p7

    .line 92
    .line 93
    move/from16 v19, v2

    .line 94
    .line 95
    invoke-direct/range {v8 .. v21}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    .line 96
    .line 97
    .line 98
    return-object v8
.end method

.method public final k()Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final l(I)Landroidx/media3/exoplayer/MediaPeriodHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    aget-object p0, p0, p1

    .line 4
    .line 5
    return-object p0
.end method

.method public final m(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget v5, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    .line 14
    .line 15
    const/4 v6, -0x1

    .line 16
    if-nez v4, :cond_0

    .line 17
    .line 18
    if-ne v5, v6, :cond_0

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    :goto_0
    move v11, v4

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v4, 0x0

    .line 24
    goto :goto_0

    .line 25
    :goto_1
    invoke-virtual {v0, v1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->p(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 26
    .line 27
    .line 28
    move-result v12

    .line 29
    invoke-virtual {v0, v1, v3, v11}, Landroidx/media3/exoplayer/MediaPeriodQueue;->o(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z

    .line 30
    .line 31
    .line 32
    move-result v13

    .line 33
    invoke-virtual {v0, v1, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->g(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    iget-object v4, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 38
    .line 39
    iget-object v0, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 40
    .line 41
    invoke-virtual {v1, v4, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget v1, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    if-eq v5, v6, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v5}, Landroidx/media3/common/Timeline$Period;->g(I)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_2
    new-instance v0, Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 62
    .line 63
    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 64
    .line 65
    move-wide v6, v4

    .line 66
    iget-wide v4, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->c:J

    .line 67
    .line 68
    iget-wide v1, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    .line 69
    .line 70
    const/4 v10, 0x0

    .line 71
    move-wide v14, v1

    .line 72
    move-object v1, v3

    .line 73
    move-wide v2, v6

    .line 74
    move-wide v6, v14

    .line 75
    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/MediaPeriodInfo;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJZZZZ)V

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method public final o(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Z)Z
    .locals 7

    .line 1
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object p2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    invoke-virtual {p1, v1, p2, v6}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iget p2, p2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iget-boolean p2, p2, Landroidx/media3/common/Timeline$Window;->g:Z

    .line 25
    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    iget v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->g:I

    .line 29
    .line 30
    iget-boolean v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->h:Z

    .line 31
    .line 32
    iget-object v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 33
    .line 34
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->d(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    const/4 p1, -0x1

    .line 42
    if-ne p0, p1, :cond_0

    .line 43
    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :cond_0
    return v6
.end method

.method public final p(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    if-ne v0, v3, :cond_0

    .line 13
    .line 14
    move v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v2

    .line 17
    :goto_0
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 23
    .line 24
    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v0, v0, Landroidx/media3/common/Timeline$Period;->c:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 35
    .line 36
    const-wide/16 v3, 0x0

    .line 37
    .line 38
    invoke-virtual {p1, v0, p0, v3, v4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    iget p0, p0, Landroidx/media3/common/Timeline$Window;->m:I

    .line 43
    .line 44
    if-ne p0, p2, :cond_2

    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    :goto_1
    return v2
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_2

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->h()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iput-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->k()Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    .line 7
    :goto_0
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 10
    .line 11
    iget-object v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->d(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    aget-object v1, v1, v3

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 31
    .line 32
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 36
    :goto_2
    new-instance v2, Landroidx/media3/exoplayer/q;

    .line 37
    .line 38
    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/media3/exoplayer/q;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->d:Landroidx/media3/common/util/HandlerWrapper;

    .line 42
    .line 43
    invoke-interface {p0, v2}, Landroidx/media3/common/util/HandlerWrapper;->d(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final s(J)V
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->a:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 20
    .line 21
    iget-wide v1, p0, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 22
    .line 23
    sub-long/2addr p1, v1

    .line 24
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->u(J)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq p1, v0, :cond_6

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 10
    .line 11
    move v0, v1

    .line 12
    :goto_0
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    move v2, v1

    .line 17
    :goto_1
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 18
    .line 19
    array-length v4, v3

    .line 20
    iget-object v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 21
    .line 22
    if-ge v2, v4, :cond_1

    .line 23
    .line 24
    aget-object v4, v3, v2

    .line 25
    .line 26
    if-eq p1, v4, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 30
    .line 31
    aput-object v0, v3, v2

    .line 32
    .line 33
    aput-object v0, v5, v2

    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v2, v1

    .line 40
    :goto_3
    array-length v4, v5

    .line 41
    if-ge v2, v4, :cond_3

    .line 42
    .line 43
    aget-object v4, v5, v2

    .line 44
    .line 45
    if-eq p1, v4, :cond_2

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_2
    aget-object v4, v3, v2

    .line 49
    .line 50
    aput-object v4, v5, v2

    .line 51
    .line 52
    or-int/lit8 v0, v0, 0x2

    .line 53
    .line 54
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->i()V

    .line 58
    .line 59
    .line 60
    iget v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:I

    .line 61
    .line 62
    add-int/lit8 v2, v2, -0x1

    .line 63
    .line 64
    iput v2, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->n:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    iget-object p1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->l:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget-object v1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 73
    .line 74
    if-nez v1, :cond_5

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_5
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->b()V

    .line 78
    .line 79
    .line 80
    const/4 v1, 0x0

    .line 81
    iput-object v1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/media3/exoplayer/MediaPeriodHolder;->c()V

    .line 84
    .line 85
    .line 86
    :goto_5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->r()V

    .line 87
    .line 88
    .line 89
    return v0

    .line 90
    :cond_6
    return v1
.end method

.method public final v(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Ljava/lang/Object;JZZ)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v8, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget v3, v3, Landroidx/media3/common/Timeline$Period;->c:I

    .line 14
    .line 15
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v9, -0x1

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eq v4, v9, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v4, v8, v5}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget v4, v4, Landroidx/media3/common/Timeline$Period;->c:I

    .line 32
    .line 33
    if-ne v4, v3, :cond_0

    .line 34
    .line 35
    iget-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->p:J

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 39
    .line 40
    :goto_0
    if-eqz v4, :cond_2

    .line 41
    .line 42
    iget-object v6, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_1

    .line 49
    .line 50
    iget-object v3, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 51
    .line 52
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 53
    .line 54
    iget-wide v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v4, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 61
    .line 62
    :goto_1
    if-eqz v4, :cond_4

    .line 63
    .line 64
    iget-object v6, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eq v6, v9, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1, v6, v8, v5}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    iget v6, v6, Landroidx/media3/common/Timeline$Period;->c:I

    .line 77
    .line 78
    if-ne v6, v3, :cond_3

    .line 79
    .line 80
    iget-object v3, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 81
    .line 82
    iget-object v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 83
    .line 84
    iget-wide v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_3
    iget-object v4, v4, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->w(Ljava/lang/Object;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    const-wide/16 v6, -0x1

    .line 95
    .line 96
    cmp-long v6, v3, v6

    .line 97
    .line 98
    if-eqz v6, :cond_5

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    iget-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->f:J

    .line 102
    .line 103
    const-wide/16 v6, 0x1

    .line 104
    .line 105
    add-long/2addr v6, v3

    .line 106
    iput-wide v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->f:J

    .line 107
    .line 108
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 109
    .line 110
    if-nez v6, :cond_6

    .line 111
    .line 112
    iput-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->o:Ljava/lang/Object;

    .line 113
    .line 114
    iput-wide v3, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->p:J

    .line 115
    .line 116
    :cond_6
    :goto_2
    if-nez p6, :cond_8

    .line 117
    .line 118
    if-nez p7, :cond_8

    .line 119
    .line 120
    move-object/from16 v6, p1

    .line 121
    .line 122
    iget-object v9, v6, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 123
    .line 124
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 125
    .line 126
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 127
    .line 128
    move-object v0, v1

    .line 129
    move-object v1, v2

    .line 130
    move-wide v4, v3

    .line 131
    move-wide/from16 v2, p4

    .line 132
    .line 133
    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->u(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    move-wide v10, v4

    .line 138
    move-wide v3, v2

    .line 139
    move-object v2, v1

    .line 140
    move-object v1, v0

    .line 141
    invoke-virtual {v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_7

    .line 146
    .line 147
    invoke-virtual {v9, v6}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    return-object v9

    .line 154
    :cond_7
    invoke-virtual {v1, v2, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v3, v4}, Landroidx/media3/common/Timeline$Period;->b(J)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    new-instance v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 162
    .line 163
    invoke-direct {v1, v0, v10, v11, v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(IJLjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    return-object v1

    .line 167
    :cond_8
    move-wide v10, v3

    .line 168
    move-wide/from16 v3, p4

    .line 169
    .line 170
    invoke-virtual {v1, v2, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 171
    .line 172
    .line 173
    iget v6, v8, Landroidx/media3/common/Timeline$Period;->c:I

    .line 174
    .line 175
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 176
    .line 177
    invoke-virtual {v1, v6, v7}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {p2 .. p3}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    move v12, v5

    .line 185
    :goto_3
    iget v13, v7, Landroidx/media3/common/Timeline$Window;->l:I

    .line 186
    .line 187
    if-lt v6, v13, :cond_c

    .line 188
    .line 189
    const/4 v13, 0x1

    .line 190
    invoke-virtual {v1, v6, v8, v13}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 191
    .line 192
    .line 193
    iget-object v5, v8, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 194
    .line 195
    iget v5, v5, Landroidx/media3/common/AdPlaybackState;->a:I

    .line 196
    .line 197
    if-lez v5, :cond_9

    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_9
    const/4 v13, 0x0

    .line 201
    :goto_4
    or-int/2addr v12, v13

    .line 202
    const-wide/16 v16, 0x0

    .line 203
    .line 204
    iget-wide v14, v8, Landroidx/media3/common/Timeline$Period;->d:J

    .line 205
    .line 206
    invoke-virtual {v8, v14, v15}, Landroidx/media3/common/Timeline$Period;->c(J)I

    .line 207
    .line 208
    .line 209
    move-result v5

    .line 210
    if-eq v5, v9, :cond_a

    .line 211
    .line 212
    iget-object v2, v8, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    .line 216
    .line 217
    :cond_a
    if-eqz v12, :cond_b

    .line 218
    .line 219
    if-eqz v13, :cond_d

    .line 220
    .line 221
    iget-wide v13, v8, Landroidx/media3/common/Timeline$Period;->d:J

    .line 222
    .line 223
    cmp-long v5, v13, v16

    .line 224
    .line 225
    if-eqz v5, :cond_b

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_b
    add-int/lit8 v6, v6, -0x1

    .line 229
    .line 230
    const/4 v5, 0x0

    .line 231
    goto :goto_3

    .line 232
    :cond_c
    const-wide/16 v16, 0x0

    .line 233
    .line 234
    :cond_d
    :goto_5
    iget-object v6, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 235
    .line 236
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 237
    .line 238
    move-object v0, v1

    .line 239
    move-object v1, v2

    .line 240
    move-wide v2, v3

    .line 241
    move-wide v4, v10

    .line 242
    invoke-static/range {v0 .. v7}, Landroidx/media3/exoplayer/MediaPeriodQueue;->u(Landroidx/media3/common/Timeline;Ljava/lang/Object;JJLandroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    iget-object v4, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 247
    .line 248
    iget v5, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b:I

    .line 249
    .line 250
    if-eq v5, v9, :cond_e

    .line 251
    .line 252
    if-nez p6, :cond_e

    .line 253
    .line 254
    invoke-virtual {v0, v4, v8}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 255
    .line 256
    .line 257
    iget-object v0, v8, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    .line 258
    .line 259
    invoke-virtual {v0, v5}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    cmp-long v0, v16, v2

    .line 267
    .line 268
    if-eqz v0, :cond_e

    .line 269
    .line 270
    invoke-virtual {v8, v2, v3}, Landroidx/media3/common/Timeline$Period;->b(J)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    new-instance v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 275
    .line 276
    iget-wide v5, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 277
    .line 278
    invoke-direct {v2, v0, v5, v6, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(IJLjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    return-object v2

    .line 282
    :cond_e
    return-object v1
.end method

.method public final w(Ljava/lang/Object;)J
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->q:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 17
    .line 18
    iget-object v2, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object p0, v1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 29
    .line 30
    iget-wide p0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->d:J

    .line 31
    .line 32
    return-wide p0

    .line 33
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-wide/16 p0, -0x1

    .line 37
    .line 38
    return-wide p0
.end method

.method public final x(Landroidx/media3/common/Timeline;)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    move v2, v1

    .line 14
    :goto_0
    iget v5, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->g:I

    .line 15
    .line 16
    iget-boolean v6, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->h:Z

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->a:Landroidx/media3/common/Timeline$Period;

    .line 19
    .line 20
    iget-object v4, p0, Landroidx/media3/exoplayer/MediaPeriodQueue;->b:Landroidx/media3/common/Timeline$Window;

    .line 21
    .line 22
    move-object v1, p1

    .line 23
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/common/Timeline;->d(ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;IZ)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    :goto_1
    iget-object p1, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object v3, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 32
    .line 33
    iget-boolean v3, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->g:Z

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    move-object v0, p1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v3, -0x1

    .line 40
    if-eq v2, v3, :cond_4

    .line 41
    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    iget-object v3, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->b:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eq v3, v2, :cond_3

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    move-object v0, p1

    .line 55
    move-object p1, v1

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 62
    .line 63
    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->m(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    iput-object p0, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 68
    .line 69
    return p1
.end method

.method public final y(Landroidx/media3/common/Timeline;J[J[J)I
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->i:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-eqz v2, :cond_d

    .line 9
    .line 10
    iget-object v5, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 11
    .line 12
    iget-object v6, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 13
    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1, v5}, Landroidx/media3/exoplayer/MediaPeriodQueue;->m(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodInfo;)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    const/16 v18, 0x0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    move-wide/from16 v9, p2

    .line 29
    .line 30
    invoke-virtual {v0, v1, v3, v9, v10}, Landroidx/media3/exoplayer/MediaPeriodQueue;->e(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/MediaPeriodHolder;J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    if-eqz v11, :cond_c

    .line 35
    .line 36
    iget-wide v12, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 37
    .line 38
    iget-wide v14, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->c:J

    .line 39
    .line 40
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    iget-wide v7, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->b:J

    .line 46
    .line 47
    const/16 v18, 0x0

    .line 48
    .line 49
    iget-object v4, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 50
    .line 51
    invoke-virtual {v6, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    goto/16 :goto_6

    .line 58
    .line 59
    :cond_1
    cmp-long v4, v7, v12

    .line 60
    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    cmp-long v19, v14, v16

    .line 65
    .line 66
    if-eqz v19, :cond_c

    .line 67
    .line 68
    iget-wide v9, v11, Landroidx/media3/exoplayer/MediaPeriodInfo;->c:J

    .line 69
    .line 70
    cmp-long v19, v9, v16

    .line 71
    .line 72
    if-nez v19, :cond_3

    .line 73
    .line 74
    goto/16 :goto_6

    .line 75
    .line 76
    :cond_3
    sub-long v19, v7, v14

    .line 77
    .line 78
    sub-long/2addr v12, v9

    .line 79
    sub-long v12, v12, v19

    .line 80
    .line 81
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v9

    .line 85
    const-wide/32 v12, 0x4c4b40

    .line 86
    .line 87
    .line 88
    cmp-long v9, v9, v12

    .line 89
    .line 90
    if-gez v9, :cond_c

    .line 91
    .line 92
    :goto_1
    if-eqz v4, :cond_4

    .line 93
    .line 94
    invoke-virtual {v11, v7, v8, v14, v15}, Landroidx/media3/exoplayer/MediaPeriodInfo;->b(JJ)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    goto :goto_2

    .line 99
    :cond_4
    move-object v3, v11

    .line 100
    :goto_2
    iget-wide v7, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->d:J

    .line 101
    .line 102
    iget-wide v4, v5, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    .line 103
    .line 104
    invoke-virtual {v3, v7, v8}, Landroidx/media3/exoplayer/MediaPeriodInfo;->a(J)Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    iput-object v7, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 109
    .line 110
    iget-wide v8, v3, Landroidx/media3/exoplayer/MediaPeriodInfo;->e:J

    .line 111
    .line 112
    cmp-long v3, v4, v8

    .line 113
    .line 114
    if-eqz v3, :cond_b

    .line 115
    .line 116
    cmp-long v1, v8, v16

    .line 117
    .line 118
    if-nez v1, :cond_5

    .line 119
    .line 120
    const-wide v8, 0x7fffffffffffffffL

    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :cond_5
    iget-wide v10, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 127
    .line 128
    add-long/2addr v8, v10

    .line 129
    :goto_3
    iget-boolean v1, v7, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:Z

    .line 130
    .line 131
    const/4 v3, 0x1

    .line 132
    if-nez v1, :cond_6

    .line 133
    .line 134
    iget-object v1, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->j:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 135
    .line 136
    move-object/from16 v7, p4

    .line 137
    .line 138
    invoke-static {v1, v7, v2, v8, v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->n([Landroidx/media3/exoplayer/MediaPeriodHolder;[JLandroidx/media3/exoplayer/MediaPeriodHolder;J)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_6

    .line 143
    .line 144
    move v1, v3

    .line 145
    goto :goto_4

    .line 146
    :cond_6
    move/from16 v1, v18

    .line 147
    .line 148
    :goto_4
    iget-object v7, v0, Landroidx/media3/exoplayer/MediaPeriodQueue;->k:[Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 149
    .line 150
    move-object/from16 v10, p5

    .line 151
    .line 152
    invoke-static {v7, v10, v2, v8, v9}, Landroidx/media3/exoplayer/MediaPeriodQueue;->n([Landroidx/media3/exoplayer/MediaPeriodHolder;[JLandroidx/media3/exoplayer/MediaPeriodHolder;J)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    return v0

    .line 163
    :cond_7
    if-eqz v1, :cond_9

    .line 164
    .line 165
    cmp-long v0, v4, v16

    .line 166
    .line 167
    if-nez v0, :cond_8

    .line 168
    .line 169
    iget v0, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->e:I

    .line 170
    .line 171
    const/4 v1, -0x1

    .line 172
    if-eq v0, v1, :cond_9

    .line 173
    .line 174
    :cond_8
    move v4, v3

    .line 175
    goto :goto_5

    .line 176
    :cond_9
    move/from16 v4, v18

    .line 177
    .line 178
    :goto_5
    if-eqz v7, :cond_a

    .line 179
    .line 180
    or-int/lit8 v0, v4, 0x2

    .line 181
    .line 182
    return v0

    .line 183
    :cond_a
    return v4

    .line 184
    :cond_b
    move-object/from16 v7, p4

    .line 185
    .line 186
    move-object/from16 v10, p5

    .line 187
    .line 188
    iget-object v3, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 189
    .line 190
    move-object/from16 v21, v3

    .line 191
    .line 192
    move-object v3, v2

    .line 193
    move-object/from16 v2, v21

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_c
    :goto_6
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/MediaPeriodQueue;->t(Landroidx/media3/exoplayer/MediaPeriodHolder;)I

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    return v0

    .line 202
    :cond_d
    const/16 v18, 0x0

    .line 203
    .line 204
    return v18
.end method
