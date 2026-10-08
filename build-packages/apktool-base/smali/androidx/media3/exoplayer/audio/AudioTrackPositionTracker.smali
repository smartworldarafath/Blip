.class final Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:J

.field public final a:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

.field public final b:Landroidx/media3/common/util/Clock;

.field public final c:[J

.field public final d:Landroid/media/AudioTrack;

.field public final e:I

.field public final f:J

.field public final g:Z

.field public final h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

.field public i:F

.field public j:J

.field public k:J

.field public l:J

.field public m:Ljava/lang/reflect/Method;

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:I

.field public t:I

.field public u:J

.field public v:J

.field public w:J

.field public x:J

.field public y:J

.field public z:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;Landroidx/media3/common/util/Clock;Landroid/media/AudioTrack;III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d:Landroid/media/AudioTrack;

    .line 9
    .line 10
    :try_start_0
    const-class p2, Landroid/media/AudioTrack;

    .line 11
    .line 12
    const-string v0, "getLatency"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->m:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    :catch_0
    const/16 p2, 0xa

    .line 22
    .line 23
    new-array p2, p2, [J

    .line 24
    .line 25
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->c:[J

    .line 26
    .line 27
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->z:J

    .line 33
    .line 34
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->y:J

    .line 35
    .line 36
    new-instance p2, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 37
    .line 38
    invoke-direct {p2, p3, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->h:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e:I

    .line 48
    .line 49
    invoke-static {p4}, Landroidx/media3/common/util/Util;->A(I)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iput-boolean p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->g:Z

    .line 54
    .line 55
    if-eqz p2, :cond_0

    .line 56
    .line 57
    div-int/2addr p6, p5

    .line 58
    int-to-long p2, p6

    .line 59
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 60
    .line 61
    .line 62
    move-result-wide p1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-wide p1, v0

    .line 65
    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->f:J

    .line 66
    .line 67
    const-wide/16 p1, 0x0

    .line 68
    .line 69
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->q:J

    .line 70
    .line 71
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->r:J

    .line 72
    .line 73
    const/4 p3, 0x0

    .line 74
    iput-boolean p3, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->A:Z

    .line 75
    .line 76
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->B:J

    .line 77
    .line 78
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    .line 79
    .line 80
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->v:J

    .line 81
    .line 82
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->o:J

    .line 83
    .line 84
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J

    .line 85
    .line 86
    const/high16 p1, 0x3f800000    # 1.0f

    .line 87
    .line 88
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    .line 89
    .line 90
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->j:J

    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 12

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->c()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->x:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    .line 24
    .line 25
    check-cast v0, Landroidx/media3/common/util/SystemClock;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->p:J

    .line 35
    .line 36
    sub-long v4, v0, v4

    .line 37
    .line 38
    const-wide/16 v6, 0x5

    .line 39
    .line 40
    cmp-long v4, v4, v6

    .line 41
    .line 42
    if-ltz v4, :cond_7

    .line 43
    .line 44
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d:Landroid/media/AudioTrack;

    .line 45
    .line 46
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    const/4 v6, 0x1

    .line 51
    if-ne v5, v6, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    int-to-long v6, v4

    .line 59
    const-wide v8, 0xffffffffL

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    and-long/2addr v6, v8

    .line 65
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 66
    .line 67
    const/16 v8, 0x1d

    .line 68
    .line 69
    if-gt v4, v8, :cond_3

    .line 70
    .line 71
    const-wide/16 v8, 0x0

    .line 72
    .line 73
    cmp-long v4, v6, v8

    .line 74
    .line 75
    if-nez v4, :cond_2

    .line 76
    .line 77
    iget-wide v10, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->q:J

    .line 78
    .line 79
    cmp-long v4, v10, v8

    .line 80
    .line 81
    if-lez v4, :cond_2

    .line 82
    .line 83
    const/4 v4, 0x3

    .line 84
    if-ne v5, v4, :cond_2

    .line 85
    .line 86
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->v:J

    .line 87
    .line 88
    cmp-long v2, v4, v2

    .line 89
    .line 90
    if-nez v2, :cond_6

    .line 91
    .line 92
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->v:J

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->v:J

    .line 96
    .line 97
    :cond_3
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->q:J

    .line 98
    .line 99
    cmp-long v4, v2, v6

    .line 100
    .line 101
    if-lez v4, :cond_5

    .line 102
    .line 103
    iget-boolean v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->A:Z

    .line 104
    .line 105
    if-eqz v4, :cond_4

    .line 106
    .line 107
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->B:J

    .line 108
    .line 109
    add-long/2addr v4, v2

    .line 110
    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->B:J

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->A:Z

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->r:J

    .line 117
    .line 118
    const-wide/16 v4, 0x1

    .line 119
    .line 120
    add-long/2addr v2, v4

    .line 121
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->r:J

    .line 122
    .line 123
    :cond_5
    :goto_0
    iput-wide v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->q:J

    .line 124
    .line 125
    :cond_6
    :goto_1
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->p:J

    .line 126
    .line 127
    :cond_7
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->q:J

    .line 128
    .line 129
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->B:J

    .line 130
    .line 131
    add-long/2addr v0, v2

    .line 132
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->r:J

    .line 133
    .line 134
    const/16 p0, 0x20

    .line 135
    .line 136
    shl-long/2addr v2, p0

    .line 137
    add-long/2addr v0, v2

    .line 138
    return-wide v0
.end method

.method public final b(J)J
    .locals 6

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->t:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e:I

    .line 4
    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    .line 13
    .line 14
    cmp-long p1, p1, v2

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->c()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    invoke-static {v1, p1, p2}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    invoke-static {v1, p1, p2}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide p1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k:J

    .line 37
    .line 38
    add-long/2addr p1, v4

    .line 39
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    .line 40
    .line 41
    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/Util;->s(JF)J

    .line 42
    .line 43
    .line 44
    move-result-wide p1

    .line 45
    :goto_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->n:J

    .line 46
    .line 47
    sub-long/2addr p1, v4

    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide p1

    .line 54
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    .line 55
    .line 56
    cmp-long v0, v4, v2

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->x:J

    .line 61
    .line 62
    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/Util;->H(IJ)J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide p0

    .line 70
    return-wide p0

    .line 71
    :cond_2
    return-wide p1
.end method

.method public final c()J
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->d:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->w:J

    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    .line 14
    .line 15
    check-cast v0, Landroidx/media3/common/util/SystemClock;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->D(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->u:J

    .line 29
    .line 30
    sub-long/2addr v0, v2

    .line 31
    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->s(JF)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->e:I

    .line 38
    .line 39
    int-to-long v5, v0

    .line 40
    const-wide/32 v7, 0xf4240

    .line 41
    .line 42
    .line 43
    sget-object v9, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    .line 44
    .line 45
    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->J(JJJLjava/math/RoundingMode;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->w:J

    .line 50
    .line 51
    add-long/2addr v2, v0

    .line 52
    return-wide v2
.end method

.method public final d(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->j:J

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
    if-eqz v4, :cond_2

    .line 11
    .line 12
    cmp-long v4, p1, v0

    .line 13
    .line 14
    if-gez v4, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sub-long/2addr p1, v0

    .line 18
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->i:F

    .line 19
    .line 20
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 21
    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    .line 24
    cmpl-float v1, v0, v1

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    long-to-double p1, p1

    .line 30
    float-to-double v0, v0

    .line 31
    div-double/2addr p1, v0

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->b:Landroidx/media3/common/util/Clock;

    .line 37
    .line 38
    check-cast v0, Landroidx/media3/common/util/SystemClock;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->N(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide p1

    .line 51
    sub-long/2addr v0, p1

    .line 52
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->j:J

    .line 53
    .line 54
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->a:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 55
    .line 56
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;

    .line 57
    .line 58
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput$PositionTrackerListener;->a:Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;

    .line 59
    .line 60
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->j:Landroidx/media3/common/util/ListenerSet;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Landroidx/media3/common/util/ListenerSet;->a:Ljava/lang/Thread;

    .line 70
    .line 71
    if-ne p1, p2, :cond_2

    .line 72
    .line 73
    new-instance p1, Landroidx/media3/exoplayer/audio/d;

    .line 74
    .line 75
    invoke-direct {p1, v0, v1}, Landroidx/media3/exoplayer/audio/d;-><init>(J)V

    .line 76
    .line 77
    .line 78
    const/4 p2, -0x1

    .line 79
    invoke-virtual {p0, p2, p1}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->k:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->t:I

    .line 7
    .line 8
    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->s:I

    .line 9
    .line 10
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->l:J

    .line 11
    .line 12
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->y:J

    .line 18
    .line 19
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->z:J

    .line 20
    .line 21
    return-void
.end method
