.class public abstract Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.super Landroidx/media3/common/Timeline;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final b:I

.field public final c:Landroidx/media3/exoplayer/source/ShuffleOrder;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/ShuffleOrder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->c:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 5
    .line 6
    check-cast p1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 7
    .line 8
    iget-object p1, p1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->b:[I

    .line 9
    .line 10
    array-length p1, p1

    .line 11
    iput p1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->b:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Z)I
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->c:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 11
    .line 12
    check-cast v2, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 13
    .line 14
    iget-object v2, v2, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->b:[I

    .line 15
    .line 16
    array-length v3, v2

    .line 17
    if-lez v3, :cond_1

    .line 18
    .line 19
    aget v0, v2, v0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v0, v1

    .line 23
    :cond_2
    :goto_0
    move-object v2, p0

    .line 24
    check-cast v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 25
    .line 26
    iget-object v3, v2, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 27
    .line 28
    aget-object v4, v3, v0

    .line 29
    .line 30
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->q(IZ)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v1, :cond_2

    .line 41
    .line 42
    :goto_1
    return v1

    .line 43
    :cond_3
    iget-object p0, v2, Landroidx/media3/exoplayer/PlaylistTimeline;->h:[I

    .line 44
    .line 45
    aget p0, p0, v0

    .line 46
    .line 47
    aget-object v0, v3, v0

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroidx/media3/common/Timeline;->a(Z)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    add-int/2addr p1, p0

    .line 54
    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/util/Pair;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    check-cast p1, Landroid/util/Pair;

    .line 8
    .line 9
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->k:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Integer;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    if-ne v0, v1, :cond_2

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 35
    .line 36
    aget-object v2, v2, v0

    .line 37
    .line 38
    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->b(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-ne p1, v1, :cond_3

    .line 43
    .line 44
    :goto_1
    return v1

    .line 45
    :cond_3
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->g:[I

    .line 46
    .line 47
    aget p0, p0, v0

    .line 48
    .line 49
    add-int/2addr p0, p1

    .line 50
    return p0
.end method

.method public final c(Z)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->b:I

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->c:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 10
    .line 11
    check-cast v1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 12
    .line 13
    iget-object v1, v1, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->b:[I

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    aget v1, v1, v2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move v1, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    :cond_3
    :goto_0
    move-object v2, p0

    .line 29
    check-cast v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 30
    .line 31
    iget-object v3, v2, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 32
    .line 33
    aget-object v4, v3, v1

    .line 34
    .line 35
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_4

    .line 40
    .line 41
    invoke-virtual {p0, v1, p1}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->r(IZ)I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-ne v1, v0, :cond_3

    .line 46
    .line 47
    :goto_1
    return v0

    .line 48
    :cond_4
    iget-object p0, v2, Landroidx/media3/exoplayer/PlaylistTimeline;->h:[I

    .line 49
    .line 50
    aget p0, p0, v1

    .line 51
    .line 52
    aget-object v0, v3, v1

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroidx/media3/common/Timeline;->c(Z)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    add-int/2addr p1, p0

    .line 59
    return p1
.end method

.method public final e(IIZ)I
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 3
    .line 4
    add-int/lit8 v1, p1, 0x1

    .line 5
    .line 6
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->h:[I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v1, v3, v3}, Landroidx/media3/common/util/Util;->c([IIZZ)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget v4, v2, v1

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 16
    .line 17
    aget-object v5, v0, v1

    .line 18
    .line 19
    sub-int/2addr p1, v4

    .line 20
    const/4 v6, 0x2

    .line 21
    if-ne p2, v6, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, p2

    .line 25
    :goto_0
    invoke-virtual {v5, p1, v3, p3}, Landroidx/media3/common/Timeline;->e(IIZ)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v3, -0x1

    .line 30
    if-eq p1, v3, :cond_1

    .line 31
    .line 32
    add-int/2addr v4, p1

    .line 33
    return v4

    .line 34
    :cond_1
    invoke-virtual {p0, v1, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->q(IZ)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    :goto_1
    if-eq p1, v3, :cond_2

    .line 39
    .line 40
    aget-object v1, v0, p1

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->q(IZ)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    if-eq p1, v3, :cond_3

    .line 54
    .line 55
    aget p0, v2, p1

    .line 56
    .line 57
    aget-object p1, v0, p1

    .line 58
    .line 59
    invoke-virtual {p1, p3}, Landroidx/media3/common/Timeline;->a(Z)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    add-int/2addr p1, p0

    .line 64
    return p1

    .line 65
    :cond_3
    if-ne p2, v6, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->a(Z)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :cond_4
    return v3
.end method

.method public final f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 4

    .line 1
    check-cast p0, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->g:[I

    .line 7
    .line 8
    invoke-static {v2, v0, v1, v1}, Landroidx/media3/common/util/Util;->c([IIZZ)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->h:[I

    .line 13
    .line 14
    aget v1, v1, v0

    .line 15
    .line 16
    aget v2, v2, v0

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 19
    .line 20
    aget-object v3, v3, v0

    .line 21
    .line 22
    sub-int/2addr p1, v2

    .line 23
    invoke-virtual {v3, p1, p2, p3}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 24
    .line 25
    .line 26
    iget p1, p2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 27
    .line 28
    add-int/2addr p1, v1

    .line 29
    iput p1, p2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 30
    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->j:[Ljava/lang/Object;

    .line 34
    .line 35
    aget-object p0, p0, v0

    .line 36
    .line 37
    iget-object p1, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iput-object p0, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    .line 47
    .line 48
    :cond_0
    return-object p2
.end method

.method public final g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 3

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Landroid/util/Pair;

    .line 3
    .line 4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->k:Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->h:[I

    .line 27
    .line 28
    aget v2, v2, v1

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 31
    .line 32
    aget-object p0, p0, v1

    .line 33
    .line 34
    invoke-virtual {p0, v0, p2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 35
    .line 36
    .line 37
    iget p0, p2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 38
    .line 39
    add-int/2addr p0, v2

    .line 40
    iput p0, p2, Landroidx/media3/common/Timeline$Period;->c:I

    .line 41
    .line 42
    iput-object p1, p2, Landroidx/media3/common/Timeline$Period;->b:Ljava/lang/Object;

    .line 43
    .line 44
    return-object p2
.end method

.method public final k(IIZ)I
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 3
    .line 4
    add-int/lit8 v1, p1, 0x1

    .line 5
    .line 6
    iget-object v2, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->h:[I

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v1, v3, v3}, Landroidx/media3/common/util/Util;->c([IIZZ)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    aget v4, v2, v1

    .line 14
    .line 15
    iget-object v0, v0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 16
    .line 17
    aget-object v5, v0, v1

    .line 18
    .line 19
    sub-int/2addr p1, v4

    .line 20
    const/4 v6, 0x2

    .line 21
    if-ne p2, v6, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, p2

    .line 25
    :goto_0
    invoke-virtual {v5, p1, v3, p3}, Landroidx/media3/common/Timeline;->k(IIZ)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v3, -0x1

    .line 30
    if-eq p1, v3, :cond_1

    .line 31
    .line 32
    add-int/2addr v4, p1

    .line 33
    return v4

    .line 34
    :cond_1
    invoke-virtual {p0, v1, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->r(IZ)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    :goto_1
    if-eq p1, v3, :cond_2

    .line 39
    .line 40
    aget-object v1, v0, p1

    .line 41
    .line 42
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->r(IZ)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    if-eq p1, v3, :cond_3

    .line 54
    .line 55
    aget p0, v2, p1

    .line 56
    .line 57
    aget-object p1, v0, p1

    .line 58
    .line 59
    invoke-virtual {p1, p3}, Landroidx/media3/common/Timeline;->c(Z)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    add-int/2addr p1, p0

    .line 64
    return p1

    .line 65
    :cond_3
    if-ne p2, v6, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0, p3}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->c(Z)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :cond_4
    return v3
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p0, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->g:[I

    .line 7
    .line 8
    invoke-static {v2, v0, v1, v1}, Landroidx/media3/common/util/Util;->c([IIZZ)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    aget v1, v2, v0

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 15
    .line 16
    aget-object v2, v2, v0

    .line 17
    .line 18
    sub-int/2addr p1, v1

    .line 19
    invoke-virtual {v2, p1}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->j:[Ljava/lang/Object;

    .line 24
    .line 25
    aget-object p0, p0, v0

    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public final m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 4

    .line 1
    check-cast p0, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 2
    .line 3
    add-int/lit8 v0, p1, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->h:[I

    .line 7
    .line 8
    invoke-static {v2, v0, v1, v1}, Landroidx/media3/common/util/Util;->c([IIZZ)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    aget v1, v2, v0

    .line 13
    .line 14
    iget-object v2, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->g:[I

    .line 15
    .line 16
    aget v2, v2, v0

    .line 17
    .line 18
    iget-object v3, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 19
    .line 20
    aget-object v3, v3, v0

    .line 21
    .line 22
    sub-int/2addr p1, v1

    .line 23
    invoke-virtual {v3, p1, p2, p3, p4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 24
    .line 25
    .line 26
    iget-object p0, p0, Landroidx/media3/exoplayer/PlaylistTimeline;->j:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object p0, p0, v0

    .line 29
    .line 30
    sget-object p1, Landroidx/media3/common/Timeline$Window;->n:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object p3, p2, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 33
    .line 34
    if-eq p1, p3, :cond_0

    .line 35
    .line 36
    invoke-static {p0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_0
    iput-object p0, p2, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 41
    .line 42
    iget p0, p2, Landroidx/media3/common/Timeline$Window;->l:I

    .line 43
    .line 44
    add-int/2addr p0, v2

    .line 45
    iput p0, p2, Landroidx/media3/common/Timeline$Window;->l:I

    .line 46
    .line 47
    iget p0, p2, Landroidx/media3/common/Timeline$Window;->m:I

    .line 48
    .line 49
    add-int/2addr p0, v2

    .line 50
    iput p0, p2, Landroidx/media3/common/Timeline$Window;->m:I

    .line 51
    .line 52
    return-object p2
.end method

.method public final q(IZ)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->c:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 5
    .line 6
    check-cast p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->c:[I

    .line 9
    .line 10
    aget p1, p2, p1

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->b:[I

    .line 15
    .line 16
    array-length p2, p0

    .line 17
    if-ge p1, p2, :cond_0

    .line 18
    .line 19
    aget p0, p0, p1

    .line 20
    .line 21
    return p0

    .line 22
    :cond_0
    return v0

    .line 23
    :cond_1
    iget p0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->b:I

    .line 24
    .line 25
    add-int/lit8 p0, p0, -0x1

    .line 26
    .line 27
    if-ge p1, p0, :cond_2

    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    return p1

    .line 32
    :cond_2
    return v0
.end method

.method public final r(IZ)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    iget-object p0, p0, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;->c:Landroidx/media3/exoplayer/source/ShuffleOrder;

    .line 5
    .line 6
    check-cast p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    .line 7
    .line 8
    iget-object p2, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->c:[I

    .line 9
    .line 10
    aget p1, p2, p1

    .line 11
    .line 12
    add-int/2addr p1, v0

    .line 13
    if-ltz p1, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;->b:[I

    .line 16
    .line 17
    aget p0, p0, p1

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    return v0

    .line 21
    :cond_1
    if-lez p1, :cond_2

    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    return v0
.end method
