.class public final Landroidx/media3/exoplayer/StandaloneMediaClock;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# instance fields
.field public final j:Landroidx/media3/common/util/Clock;

.field public k:Z

.field public l:J

.field public m:J

.field public n:Landroidx/media3/common/PlaybackParameters;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->j:Landroidx/media3/common/util/Clock;

    .line 5
    .line 6
    sget-object p1, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    .line 7
    .line 8
    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->n:Landroidx/media3/common/PlaybackParameters;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->l:J

    .line 2
    .line 3
    iget-boolean p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->j:Landroidx/media3/common/util/Clock;

    .line 8
    .line 9
    check-cast p1, Landroidx/media3/common/util/SystemClock;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iput-wide p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->m:J

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->j:Landroidx/media3/common/util/Clock;

    .line 6
    .line 7
    check-cast v0, Landroidx/media3/common/util/SystemClock;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->m:J

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final c(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->k()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->a(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->n:Landroidx/media3/common/PlaybackParameters;

    .line 13
    .line 14
    return-void
.end method

.method public final e()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->n:Landroidx/media3/common/PlaybackParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method public final k()J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->l:J

    .line 2
    .line 3
    iget-boolean v2, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->k:Z

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->j:Landroidx/media3/common/util/Clock;

    .line 8
    .line 9
    check-cast v2, Landroidx/media3/common/util/SystemClock;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->m:J

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->n:Landroidx/media3/common/PlaybackParameters;

    .line 22
    .line 23
    iget v4, p0, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 24
    .line 25
    const/high16 v5, 0x3f800000    # 1.0f

    .line 26
    .line 27
    cmpl-float v4, v4, v5

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->D(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    :goto_0
    add-long/2addr v2, v0

    .line 36
    return-wide v2

    .line 37
    :cond_0
    iget p0, p0, Landroidx/media3/common/PlaybackParameters;->c:I

    .line 38
    .line 39
    int-to-long v4, p0

    .line 40
    mul-long/2addr v2, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-wide v0
.end method
