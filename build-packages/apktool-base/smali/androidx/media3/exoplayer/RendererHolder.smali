.class Landroidx/media3/exoplayer/RendererHolder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/media3/exoplayer/Renderer;

.field public final b:I

.field public final c:Landroidx/media3/exoplayer/Renderer;

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/Renderer;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 5
    .line 6
    iput p3, p0, Landroidx/media3/exoplayer/RendererHolder;->b:I

    .line 7
    .line 8
    iput-object p2, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 12
    .line 13
    iput-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->e:Z

    .line 14
    .line 15
    iput-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->f:Z

    .line 16
    .line 17
    return-void
.end method

.method public static b(Landroidx/media3/exoplayer/Renderer;)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/media3/exoplayer/BaseRenderer;

    .line 3
    .line 4
    iget v0, v0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Landroidx/media3/exoplayer/BaseRenderer;

    .line 10
    .line 11
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 20
    .line 21
    .line 22
    iput v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->z()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public static d(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    move-object v1, p0

    .line 5
    check-cast v1, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 6
    .line 7
    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->c:[I

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    new-array v2, v1, [Landroidx/media3/common/Format;

    .line 13
    .line 14
    :goto_1
    if-ge v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-object v3, p0

    .line 20
    check-cast v3, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 21
    .line 22
    iget-object v3, v3, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->d:[Landroidx/media3/common/Format;

    .line 23
    .line 24
    aget-object v3, v3, v0

    .line 25
    .line 26
    aput-object v3, v2, v0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return-object v2
.end method

.method public static m(Landroidx/media3/exoplayer/Renderer;)Z
    .locals 0

    .line 1
    check-cast p0, Landroidx/media3/exoplayer/BaseRenderer;

    .line 2
    .line 3
    iget p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public static q(Landroidx/media3/exoplayer/Renderer;J)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/media3/exoplayer/BaseRenderer;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    .line 6
    .line 7
    instance-of v0, p0, Landroidx/media3/exoplayer/text/TextRenderer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Landroidx/media3/exoplayer/text/TextRenderer;

    .line 12
    .line 13
    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    .line 14
    .line 15
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, Landroidx/media3/exoplayer/text/TextRenderer;->U:J

    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 8
    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p0, v1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move p0, v2

    .line 15
    :goto_1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object p0, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->l:Landroidx/media3/exoplayer/Renderer;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    if-ne p1, p0, :cond_3

    .line 29
    .line 30
    iput-object v0, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->m:Landroidx/media3/exoplayer/MediaClock;

    .line 31
    .line 32
    iput-object v0, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->l:Landroidx/media3/exoplayer/Renderer;

    .line 33
    .line 34
    iput-boolean v2, p2, Landroidx/media3/exoplayer/DefaultMediaClock;->n:Z

    .line 35
    .line 36
    :cond_3
    invoke-static {p1}, Landroidx/media3/exoplayer/RendererHolder;->b(Landroidx/media3/exoplayer/Renderer;)V

    .line 37
    .line 38
    .line 39
    check-cast p1, Landroidx/media3/exoplayer/BaseRenderer;

    .line 40
    .line 41
    iget p0, p1, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 42
    .line 43
    if-ne p0, v2, :cond_4

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    move v2, v1

    .line 47
    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p0, p1, Landroidx/media3/exoplayer/BaseRenderer;->l:Landroidx/media3/exoplayer/FormatHolder;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 53
    .line 54
    .line 55
    iput v1, p1, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 56
    .line 57
    iput-object v0, p1, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 58
    .line 59
    iput-object v0, p1, Landroidx/media3/exoplayer/BaseRenderer;->s:[Landroidx/media3/common/Format;

    .line 60
    .line 61
    iput-boolean v1, p1, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/media3/exoplayer/BaseRenderer;->t()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p1, Landroidx/media3/exoplayer/BaseRenderer;->z:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 67
    .line 68
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    iput-wide v0, p1, Landroidx/media3/exoplayer/BaseRenderer;->A:J

    .line 74
    .line 75
    return-void
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    add-int/2addr v0, p0

    .line 21
    return v0
.end method

.method public final e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 5
    .line 6
    iget v1, p0, Landroidx/media3/exoplayer/RendererHolder;->b:I

    .line 7
    .line 8
    aget-object p1, p1, v1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 14
    .line 15
    move-object v2, v1

    .line 16
    check-cast v2, Landroidx/media3/exoplayer/BaseRenderer;

    .line 17
    .line 18
    iget-object v2, v2, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 19
    .line 20
    if-ne v2, p1, :cond_1

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 24
    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    move-object v1, p0

    .line 28
    check-cast v1, Landroidx/media3/exoplayer/BaseRenderer;

    .line 29
    .line 30
    iget-object v1, v1, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 31
    .line 32
    if-ne v1, p1, :cond_2

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final f()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    check-cast p0, Landroidx/media3/exoplayer/BaseRenderer;

    .line 4
    .line 5
    iget p0, p0, Landroidx/media3/exoplayer/BaseRenderer;->k:I

    .line 6
    .line 7
    return p0
.end method

.method public final g(Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/Renderer;)Z
    .locals 6

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 5
    .line 6
    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->b:I

    .line 7
    .line 8
    aget-object v0, v0, p0

    .line 9
    .line 10
    move-object v1, p2

    .line 11
    check-cast v1, Landroidx/media3/exoplayer/BaseRenderer;

    .line 12
    .line 13
    iget-object v2, v1, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 14
    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    if-ne v2, v0, :cond_1

    .line 18
    .line 19
    if-eqz v0, :cond_4

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/media3/exoplayer/BaseRenderer;->s()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_4

    .line 26
    .line 27
    iget-object v0, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 28
    .line 29
    iget-object v2, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 30
    .line 31
    iget-boolean v2, v2, Landroidx/media3/exoplayer/MediaPeriodInfo;->f:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-boolean v2, v0, Landroidx/media3/exoplayer/MediaPeriodHolder;->e:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    instance-of v2, p2, Landroidx/media3/exoplayer/text/TextRenderer;

    .line 42
    .line 43
    if-nez v2, :cond_4

    .line 44
    .line 45
    instance-of p2, p2, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    .line 46
    .line 47
    if-nez p2, :cond_4

    .line 48
    .line 49
    iget-wide v2, v1, Landroidx/media3/exoplayer/BaseRenderer;->v:J

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4

    .line 55
    cmp-long p2, v2, v4

    .line 56
    .line 57
    if-ltz p2, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 61
    .line 62
    :goto_0
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object p2, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 65
    .line 66
    aget-object p2, p2, p0

    .line 67
    .line 68
    iget-object v0, v1, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 69
    .line 70
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object p1, p1, Landroidx/media3/exoplayer/MediaPeriodHolder;->m:Landroidx/media3/exoplayer/MediaPeriodHolder;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const/4 p0, 0x0

    .line 81
    return p0

    .line 82
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 83
    return p0
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->b()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    and-int/2addr p0, v0

    .line 30
    return p0

    .line 31
    :cond_1
    return v0
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x3

    .line 11
    if-ne p0, v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public final j(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-ne v0, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    move v0, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v2

    .line 22
    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 23
    .line 24
    const/4 v4, 0x3

    .line 25
    if-ne v1, v4, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 32
    .line 33
    if-ne p1, p0, :cond_2

    .line 34
    .line 35
    move p0, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move p0, v2

    .line 38
    :goto_1
    if-nez v0, :cond_4

    .line 39
    .line 40
    if-eqz p0, :cond_3

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    return v2

    .line 44
    :cond_4
    :goto_2
    return v3
.end method

.method public final k(Landroidx/media3/exoplayer/MediaPeriodHolder;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/RendererHolder;->e(Landroidx/media3/exoplayer/MediaPeriodHolder;)Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0

    .line 22
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final n(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->e:Z

    .line 6
    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 10
    .line 11
    check-cast p1, Landroidx/media3/exoplayer/BaseRenderer;

    .line 12
    .line 13
    iget v2, p1, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Landroidx/media3/exoplayer/BaseRenderer;->l:Landroidx/media3/exoplayer/FormatHolder;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/media3/exoplayer/BaseRenderer;->x()V

    .line 28
    .line 29
    .line 30
    iput-boolean v1, p0, Landroidx/media3/exoplayer/RendererHolder;->e:Z

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/RendererHolder;->f:Z

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    check-cast p1, Landroidx/media3/exoplayer/BaseRenderer;

    .line 43
    .line 44
    iget v2, p1, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 45
    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v0, v1

    .line 50
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Landroidx/media3/exoplayer/BaseRenderer;->l:Landroidx/media3/exoplayer/FormatHolder;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/media3/exoplayer/BaseRenderer;->x()V

    .line 59
    .line 60
    .line 61
    iput-boolean v1, p0, Landroidx/media3/exoplayer/RendererHolder;->f:Z

    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public final o(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/MediaPeriodHolder;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/DefaultMediaClock;)I
    .locals 17

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
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->c:[Landroidx/media3/exoplayer/source/SampleStream;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v1, :cond_9

    .line 13
    .line 14
    invoke-static {v1}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    if-eqz v6, :cond_9

    .line 19
    .line 20
    iget-object v6, v0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 21
    .line 22
    if-ne v1, v6, :cond_1

    .line 23
    .line 24
    iget v7, v0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 25
    .line 26
    const/4 v8, 0x2

    .line 27
    if-eq v7, v8, :cond_0

    .line 28
    .line 29
    const/4 v8, 0x4

    .line 30
    if-ne v7, v8, :cond_1

    .line 31
    .line 32
    :cond_0
    return v5

    .line 33
    :cond_1
    iget-object v7, v0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    if-ne v1, v7, :cond_2

    .line 37
    .line 38
    iget v7, v0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 39
    .line 40
    if-ne v7, v8, :cond_2

    .line 41
    .line 42
    return v5

    .line 43
    :cond_2
    move-object v9, v1

    .line 44
    check-cast v9, Landroidx/media3/exoplayer/BaseRenderer;

    .line 45
    .line 46
    iget-object v7, v9, Landroidx/media3/exoplayer/BaseRenderer;->r:Landroidx/media3/exoplayer/source/SampleStream;

    .line 47
    .line 48
    iget v10, v0, Landroidx/media3/exoplayer/RendererHolder;->b:I

    .line 49
    .line 50
    aget-object v11, v4, v10

    .line 51
    .line 52
    const/4 v12, 0x0

    .line 53
    if-eq v7, v11, :cond_3

    .line 54
    .line 55
    move v7, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move v7, v12

    .line 58
    :goto_0
    invoke-virtual {v3, v10}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->b(I)Z

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    if-eqz v11, :cond_4

    .line 63
    .line 64
    if-nez v7, :cond_4

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_4
    iget-boolean v7, v9, Landroidx/media3/exoplayer/BaseRenderer;->w:Z

    .line 68
    .line 69
    if-nez v7, :cond_5

    .line 70
    .line 71
    iget-object v0, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->c:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 72
    .line 73
    aget-object v0, v0, v10

    .line 74
    .line 75
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->d(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)[Landroidx/media3/common/Format;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    aget-object v11, v4, v10

    .line 80
    .line 81
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Landroidx/media3/exoplayer/MediaPeriodHolder;->e()J

    .line 85
    .line 86
    .line 87
    move-result-wide v12

    .line 88
    iget-wide v14, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->p:J

    .line 89
    .line 90
    iget-object v1, v2, Landroidx/media3/exoplayer/MediaPeriodHolder;->g:Landroidx/media3/exoplayer/MediaPeriodInfo;

    .line 91
    .line 92
    iget-object v1, v1, Landroidx/media3/exoplayer/MediaPeriodInfo;->a:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 93
    .line 94
    move-object v10, v0

    .line 95
    move-object/from16 v16, v1

    .line 96
    .line 97
    invoke-virtual/range {v9 .. v16}, Landroidx/media3/exoplayer/BaseRenderer;->D([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 98
    .line 99
    .line 100
    return v8

    .line 101
    :cond_5
    invoke-interface {v1}, Landroidx/media3/exoplayer/Renderer;->b()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_8

    .line 106
    .line 107
    move-object/from16 v2, p4

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/RendererHolder;->a(Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/DefaultMediaClock;)V

    .line 110
    .line 111
    .line 112
    if-eqz v11, :cond_6

    .line 113
    .line 114
    invoke-virtual {v0}, Landroidx/media3/exoplayer/RendererHolder;->i()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_9

    .line 119
    .line 120
    :cond_6
    if-ne v1, v6, :cond_7

    .line 121
    .line 122
    move v12, v5

    .line 123
    :cond_7
    invoke-virtual {v0, v12}, Landroidx/media3/exoplayer/RendererHolder;->n(Z)V

    .line 124
    .line 125
    .line 126
    return v5

    .line 127
    :cond_8
    return v12

    .line 128
    :cond_9
    :goto_1
    return v5
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->n(Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/exoplayer/RendererHolder;->m(Landroidx/media3/exoplayer/Renderer;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/RendererHolder;->n(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final r()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->a:Landroidx/media3/exoplayer/Renderer;

    .line 2
    .line 3
    check-cast v0, Landroidx/media3/exoplayer/BaseRenderer;

    .line 4
    .line 5
    iget v1, v0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x1

    .line 10
    if-ne v1, v4, :cond_1

    .line 11
    .line 12
    iget v5, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 13
    .line 14
    const/4 v6, 0x4

    .line 15
    if-eq v5, v6, :cond_1

    .line 16
    .line 17
    if-ne v1, v4, :cond_0

    .line 18
    .line 19
    move v3, v4

    .line 20
    :cond_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 21
    .line 22
    .line 23
    iput v2, v0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->y()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/RendererHolder;->c:Landroidx/media3/exoplayer/Renderer;

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    check-cast v0, Landroidx/media3/exoplayer/BaseRenderer;

    .line 34
    .line 35
    iget v1, v0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 36
    .line 37
    if-ne v1, v4, :cond_3

    .line 38
    .line 39
    iget p0, p0, Landroidx/media3/exoplayer/RendererHolder;->d:I

    .line 40
    .line 41
    const/4 v5, 0x3

    .line 42
    if-eq p0, v5, :cond_3

    .line 43
    .line 44
    if-ne v1, v4, :cond_2

    .line 45
    .line 46
    move v3, v4

    .line 47
    :cond_2
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 48
    .line 49
    .line 50
    iput v2, v0, Landroidx/media3/exoplayer/BaseRenderer;->q:I

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/media3/exoplayer/BaseRenderer;->y()V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method
