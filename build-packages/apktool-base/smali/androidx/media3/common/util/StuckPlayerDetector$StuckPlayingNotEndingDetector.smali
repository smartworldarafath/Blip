.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StuckPlayingNotEndingDetector"
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:Z

.field public f:J

.field public final synthetic g:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->g:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->g:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->e:Landroidx/media3/common/Timeline$Period;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    .line 8
    .line 9
    invoke-interface {v3}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-interface {v3}, Landroidx/media3/common/Player;->l()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {v4, v5}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    :goto_0
    invoke-interface {v3}, Landroidx/media3/common/Player;->C()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-interface {v3}, Landroidx/media3/common/Player;->q()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    invoke-interface {v3}, Landroidx/media3/common/Player;->S()J

    .line 38
    .line 39
    .line 40
    move-result-wide v8

    .line 41
    const/4 v10, -0x1

    .line 42
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    if-ne v6, v10, :cond_1

    .line 50
    .line 51
    invoke-virtual {v4, v5, v1}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 52
    .line 53
    .line 54
    iget-wide v13, v1, Landroidx/media3/common/Timeline$Period;->e:J

    .line 55
    .line 56
    invoke-static {v13, v14}, Landroidx/media3/common/util/Util;->N(J)J

    .line 57
    .line 58
    .line 59
    move-result-wide v13

    .line 60
    sub-long/2addr v8, v13

    .line 61
    iget-wide v13, v1, Landroidx/media3/common/Timeline$Period;->d:J

    .line 62
    .line 63
    invoke-static {v13, v14}, Landroidx/media3/common/util/Util;->N(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v13

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    if-eq v6, v10, :cond_2

    .line 69
    .line 70
    invoke-interface {v3}, Landroidx/media3/common/Player;->getDuration()J

    .line 71
    .line 72
    .line 73
    move-result-wide v13

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move-wide v13, v11

    .line 76
    :goto_1
    move-object v1, v3

    .line 77
    check-cast v1, Landroidx/media3/common/BasePlayer;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroidx/media3/common/BasePlayer;->X()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v4, 0x3

    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    cmp-long v10, v13, v11

    .line 87
    .line 88
    if-eqz v10, :cond_6

    .line 89
    .line 90
    cmp-long v10, v8, v13

    .line 91
    .line 92
    if-gez v10, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->d:Landroidx/media3/common/util/Clock;

    .line 96
    .line 97
    check-cast v1, Landroidx/media3/common/util/SystemClock;

    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 103
    .line 104
    .line 105
    move-result-wide v8

    .line 106
    iget-boolean v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->e:Z

    .line 107
    .line 108
    iget v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->a:I

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    iget-object v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->b:Ljava/lang/Object;

    .line 113
    .line 114
    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_5

    .line 119
    .line 120
    iget v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->c:I

    .line 121
    .line 122
    if-ne v6, v1, :cond_5

    .line 123
    .line 124
    iget v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->d:I

    .line 125
    .line 126
    if-ne v7, v1, :cond_5

    .line 127
    .line 128
    iget-wide v1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->f:J

    .line 129
    .line 130
    sub-long/2addr v8, v1

    .line 131
    int-to-long v1, v3

    .line 132
    cmp-long p0, v8, v1

    .line 133
    .line 134
    if-ltz p0, :cond_4

    .line 135
    .line 136
    iget-object p0, v0, Landroidx/media3/common/util/StuckPlayerDetector;->c:Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    .line 137
    .line 138
    new-instance v0, Landroidx/media3/common/util/StuckPlayerException;

    .line 139
    .line 140
    invoke-direct {v0, v4, v3}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    .line 141
    .line 142
    .line 143
    invoke-interface {p0, v0}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->t(Landroidx/media3/common/util/StuckPlayerException;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    return-void

    .line 147
    :cond_5
    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->e:Z

    .line 149
    .line 150
    iput-wide v8, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->f:J

    .line 151
    .line 152
    iput-object v5, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->b:Ljava/lang/Object;

    .line 153
    .line 154
    iput v6, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->c:I

    .line 155
    .line 156
    iput v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->d:I

    .line 157
    .line 158
    move-object p0, v2

    .line 159
    check-cast p0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 160
    .line 161
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/SystemHandlerWrapper;->j(I)V

    .line 162
    .line 163
    .line 164
    check-cast v2, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 165
    .line 166
    iget-object p0, v2, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 167
    .line 168
    int-to-long v0, v3

    .line 169
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    :goto_2
    move-object v0, v2

    .line 174
    check-cast v0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 175
    .line 176
    invoke-virtual {v0, v4}, Landroidx/media3/common/util/SystemHandlerWrapper;->j(I)V

    .line 177
    .line 178
    .line 179
    if-eqz v1, :cond_7

    .line 180
    .line 181
    cmp-long v0, v13, v11

    .line 182
    .line 183
    if-eqz v0, :cond_7

    .line 184
    .line 185
    sub-long/2addr v13, v8

    .line 186
    long-to-float v0, v13

    .line 187
    invoke-interface {v3}, Landroidx/media3/common/Player;->e()Landroidx/media3/common/PlaybackParameters;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    .line 192
    .line 193
    div-float/2addr v0, v1

    .line 194
    float-to-double v0, v0

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    double-to-int v0, v0

    .line 200
    check-cast v2, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 201
    .line 202
    iget-object v1, v2, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 203
    .line 204
    int-to-long v2, v0

    .line 205
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 206
    .line 207
    .line 208
    :cond_7
    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->e:Z

    .line 210
    .line 211
    return-void
.end method
