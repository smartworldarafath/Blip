.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StuckBufferingDetector"
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:J

.field public f:J

.field public g:Z

.field public h:J

.field public final synthetic i:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->i:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->i:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    .line 8
    .line 9
    invoke-interface {v3}, Landroidx/media3/common/Player;->y()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, 0x2

    .line 14
    if-ne v4, v5, :cond_0

    .line 15
    .line 16
    invoke-interface {v3}, Landroidx/media3/common/Player;->i()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-interface {v3}, Landroidx/media3/common/Player;->I()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v13, 0x1

    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    invoke-interface {v3}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_2

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-interface {v3}, Landroidx/media3/common/Player;->l()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual {v4, v5}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    :goto_0
    invoke-interface {v3}, Landroidx/media3/common/Player;->C()I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-interface {v3}, Landroidx/media3/common/Player;->q()I

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    invoke-interface {v3}, Landroidx/media3/common/Player;->x()J

    .line 60
    .line 61
    .line 62
    move-result-wide v9

    .line 63
    invoke-interface {v3}, Landroidx/media3/common/Player;->S()J

    .line 64
    .line 65
    .line 66
    move-result-wide v11

    .line 67
    sub-long v11, v9, v11

    .line 68
    .line 69
    const-wide/16 v13, 0x0

    .line 70
    .line 71
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 72
    .line 73
    .line 74
    move-result-wide v11

    .line 75
    invoke-interface {v3}, Landroidx/media3/common/Player;->g()J

    .line 76
    .line 77
    .line 78
    move-result-wide v15

    .line 79
    sub-long v11, v15, v11

    .line 80
    .line 81
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 82
    .line 83
    .line 84
    move-result-wide v11

    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    const/4 v3, -0x1

    .line 88
    if-ne v7, v3, :cond_3

    .line 89
    .line 90
    iget-object v3, v1, Landroidx/media3/common/util/StuckPlayerDetector;->e:Landroidx/media3/common/Timeline$Period;

    .line 91
    .line 92
    invoke-virtual {v4, v5, v3}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget-wide v3, v3, Landroidx/media3/common/Timeline$Period;->e:J

    .line 97
    .line 98
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->N(J)J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    sub-long/2addr v9, v3

    .line 103
    :cond_3
    iget-object v3, v1, Landroidx/media3/common/util/StuckPlayerDetector;->d:Landroidx/media3/common/util/Clock;

    .line 104
    .line 105
    check-cast v3, Landroidx/media3/common/util/SystemClock;

    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 111
    .line 112
    .line 113
    move-result-wide v3

    .line 114
    iget-boolean v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->g:Z

    .line 115
    .line 116
    iget v14, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->a:I

    .line 117
    .line 118
    if-eqz v13, :cond_6

    .line 119
    .line 120
    iget-object v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->b:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-static {v5, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v13

    .line 126
    if-eqz v13, :cond_6

    .line 127
    .line 128
    iget v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->c:I

    .line 129
    .line 130
    if-ne v7, v13, :cond_6

    .line 131
    .line 132
    iget v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->d:I

    .line 133
    .line 134
    if-ne v8, v13, :cond_6

    .line 135
    .line 136
    move v15, v7

    .line 137
    iget-wide v6, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->e:J

    .line 138
    .line 139
    cmp-long v6, v9, v6

    .line 140
    .line 141
    if-nez v6, :cond_5

    .line 142
    .line 143
    iget-wide v6, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->f:J

    .line 144
    .line 145
    cmp-long v6, v11, v6

    .line 146
    .line 147
    if-nez v6, :cond_5

    .line 148
    .line 149
    iget-wide v5, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->h:J

    .line 150
    .line 151
    sub-long/2addr v3, v5

    .line 152
    int-to-long v5, v14

    .line 153
    cmp-long v0, v3, v5

    .line 154
    .line 155
    if-ltz v0, :cond_4

    .line 156
    .line 157
    iget-object v0, v1, Landroidx/media3/common/util/StuckPlayerDetector;->c:Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    .line 158
    .line 159
    new-instance v1, Landroidx/media3/common/util/StuckPlayerException;

    .line 160
    .line 161
    const/4 v13, 0x1

    .line 162
    invoke-direct {v1, v13, v14}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v0, v1}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->t(Landroidx/media3/common/util/StuckPlayerException;)V

    .line 166
    .line 167
    .line 168
    :cond_4
    return-void

    .line 169
    :cond_5
    :goto_1
    const/4 v13, 0x1

    .line 170
    goto :goto_2

    .line 171
    :cond_6
    move v15, v7

    .line 172
    goto :goto_1

    .line 173
    :goto_2
    iput-boolean v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->g:Z

    .line 174
    .line 175
    iput-wide v3, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->h:J

    .line 176
    .line 177
    iput-object v5, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->b:Ljava/lang/Object;

    .line 178
    .line 179
    iput v15, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->c:I

    .line 180
    .line 181
    iput v8, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->d:I

    .line 182
    .line 183
    iput-wide v9, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->e:J

    .line 184
    .line 185
    iput-wide v11, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->f:J

    .line 186
    .line 187
    move-object v0, v2

    .line 188
    check-cast v0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 189
    .line 190
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/SystemHandlerWrapper;->j(I)V

    .line 191
    .line 192
    .line 193
    check-cast v2, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 194
    .line 195
    iget-object v0, v2, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 196
    .line 197
    int-to-long v1, v14

    .line 198
    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :goto_3
    iget-boolean v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->g:Z

    .line 203
    .line 204
    if-eqz v1, :cond_7

    .line 205
    .line 206
    check-cast v2, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 207
    .line 208
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/SystemHandlerWrapper;->j(I)V

    .line 209
    .line 210
    .line 211
    :cond_7
    const/4 v1, 0x0

    .line 212
    iput-boolean v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->g:Z

    .line 213
    .line 214
    return-void
.end method
