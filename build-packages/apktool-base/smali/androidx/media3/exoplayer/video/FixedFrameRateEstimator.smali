.class public final Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Listener;,
        Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;
    }
.end annotation


# instance fields
.field public a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

.field public b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

.field public c:Z

.field public d:J

.field public e:I

.field public f:F

.field public g:F

.field public h:J

.field public final i:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Listener;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Listener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->i:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Listener;

    .line 5
    .line 6
    new-instance p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 7
    .line 8
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 12
    .line 13
    new-instance p1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 14
    .line 15
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 19
    .line 20
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    .line 26
    .line 27
    const/high16 p1, -0x40800000    # -1.0f

    .line 28
    .line 29
    iput p1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->f:F

    .line 30
    .line 31
    iput p1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->g:F

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 10
    .line 11
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->e:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    return-wide v2

    .line 20
    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->f:J

    .line 21
    .line 22
    div-long/2addr v2, v0

    .line 23
    return-wide v2

    .line 24
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    return-wide v0
.end method

.method public final b(J)V
    .locals 9

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->h:J

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    add-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->h:J

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->b(J)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->a()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iput-boolean v4, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-wide v5, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    .line 34
    .line 35
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    cmp-long v0, v5, v7

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 49
    .line 50
    iget-wide v5, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->d:J

    .line 51
    .line 52
    const-wide/16 v7, 0x0

    .line 53
    .line 54
    cmp-long v7, v5, v7

    .line 55
    .line 56
    if-nez v7, :cond_2

    .line 57
    .line 58
    move v0, v4

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->g:[Z

    .line 61
    .line 62
    sub-long/2addr v5, v2

    .line 63
    const-wide/16 v2, 0xf

    .line 64
    .line 65
    rem-long/2addr v5, v2

    .line 66
    long-to-int v2, v5

    .line 67
    aget-boolean v0, v0, v2

    .line 68
    .line 69
    :goto_0
    if-eqz v0, :cond_4

    .line 70
    .line 71
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->c()V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 77
    .line 78
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    .line 79
    .line 80
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->b(J)V

    .line 81
    .line 82
    .line 83
    :cond_4
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    .line 84
    .line 85
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 86
    .line 87
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->b(J)V

    .line 88
    .line 89
    .line 90
    :cond_5
    :goto_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->a()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_6

    .line 101
    .line 102
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 103
    .line 104
    iget-object v2, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 105
    .line 106
    iput-object v2, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 107
    .line 108
    iput-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 109
    .line 110
    iput-boolean v4, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c:Z

    .line 111
    .line 112
    :cond_6
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->d:J

    .line 113
    .line 114
    iget-object p1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->a()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_7
    iget p1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->e:I

    .line 124
    .line 125
    add-int/lit8 v4, p1, 0x1

    .line 126
    .line 127
    :goto_2
    iput v4, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->e:I

    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->c()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 10
    .line 11
    iget-wide v2, v1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->e:J

    .line 12
    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    cmp-long v6, v2, v4

    .line 16
    .line 17
    if-nez v6, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v4, v1, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->f:J

    .line 21
    .line 22
    div-long/2addr v4, v2

    .line 23
    :goto_0
    long-to-double v1, v4

    .line 24
    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    div-double/2addr v3, v1

    .line 30
    double-to-float v1, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget v1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->f:F

    .line 33
    .line 34
    :goto_1
    iget v2, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->g:F

    .line 35
    .line 36
    cmpl-float v3, v1, v2

    .line 37
    .line 38
    if-nez v3, :cond_2

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    .line 42
    .line 43
    cmpl-float v4, v1, v3

    .line 44
    .line 45
    if-eqz v4, :cond_4

    .line 46
    .line 47
    cmpl-float v3, v2, v3

    .line 48
    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;

    .line 54
    .line 55
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Matcher;->f:J

    .line 56
    .line 57
    const-wide v5, 0x12a05f200L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmp-long v0, v3, v5

    .line 63
    .line 64
    if-ltz v0, :cond_3

    .line 65
    .line 66
    const v0, 0x3dcccccd    # 0.1f

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 71
    .line 72
    :goto_2
    sub-float v2, v1, v2

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    cmpl-float v0, v2, v0

    .line 79
    .line 80
    if-ltz v0, :cond_6

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    if-eqz v4, :cond_5

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    iget v0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->e:I

    .line 87
    .line 88
    const/16 v2, 0x1e

    .line 89
    .line 90
    if-lt v0, v2, :cond_6

    .line 91
    .line 92
    :goto_3
    iput v1, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->g:F

    .line 93
    .line 94
    iget-object p0, p0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->i:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Listener;

    .line 95
    .line 96
    invoke-interface {p0, v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator$Listener;->g(F)V

    .line 97
    .line 98
    .line 99
    :cond_6
    :goto_4
    return-void
.end method
