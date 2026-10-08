.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "StuckPlayingDetector"
.end annotation


# instance fields
.field public final a:I

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public e:J

.field public f:Z

.field public g:J

.field public final synthetic h:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->h:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 5
    .line 6
    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->h:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector;->f:Landroidx/media3/common/util/HandlerWrapper;

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector;->a:Landroidx/media3/common/Player;

    .line 6
    .line 7
    move-object v3, v2

    .line 8
    check-cast v3, Landroidx/media3/common/BasePlayer;

    .line 9
    .line 10
    invoke-virtual {v3}, Landroidx/media3/common/BasePlayer;->X()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x2

    .line 15
    if-nez v3, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->f:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast v1, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 22
    .line 23
    invoke-virtual {v1, v4}, Landroidx/media3/common/util/SystemHandlerWrapper;->j(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->f:Z

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-interface {v2}, Landroidx/media3/common/Player;->K()Landroidx/media3/common/Timeline;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-interface {v2}, Landroidx/media3/common/Player;->l()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-virtual {v3, v5}, Landroidx/media3/common/Timeline;->l(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    :goto_0
    invoke-interface {v2}, Landroidx/media3/common/Player;->C()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    invoke-interface {v2}, Landroidx/media3/common/Player;->q()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-interface {v2}, Landroidx/media3/common/Player;->S()J

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    if-eqz v5, :cond_3

    .line 63
    .line 64
    const/4 v2, -0x1

    .line 65
    if-ne v6, v2, :cond_3

    .line 66
    .line 67
    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector;->e:Landroidx/media3/common/Timeline$Period;

    .line 68
    .line 69
    invoke-virtual {v3, v5, v2}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-wide v2, v2, Landroidx/media3/common/Timeline$Period;->e:J

    .line 74
    .line 75
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->N(J)J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    sub-long/2addr v8, v2

    .line 80
    :cond_3
    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector;->d:Landroidx/media3/common/util/Clock;

    .line 81
    .line 82
    check-cast v2, Landroidx/media3/common/util/SystemClock;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    iget-boolean v10, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->f:Z

    .line 92
    .line 93
    iget v11, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->a:I

    .line 94
    .line 95
    if-eqz v10, :cond_5

    .line 96
    .line 97
    iget-object v10, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->b:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-static {v5, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-eqz v10, :cond_5

    .line 104
    .line 105
    iget v10, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->c:I

    .line 106
    .line 107
    if-ne v6, v10, :cond_5

    .line 108
    .line 109
    iget v10, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->d:I

    .line 110
    .line 111
    if-ne v7, v10, :cond_5

    .line 112
    .line 113
    iget-wide v12, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->e:J

    .line 114
    .line 115
    cmp-long v10, v8, v12

    .line 116
    .line 117
    if-nez v10, :cond_5

    .line 118
    .line 119
    iget-wide v5, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->g:J

    .line 120
    .line 121
    sub-long/2addr v2, v5

    .line 122
    int-to-long v5, v11

    .line 123
    cmp-long p0, v2, v5

    .line 124
    .line 125
    if-ltz p0, :cond_4

    .line 126
    .line 127
    iget-object p0, v0, Landroidx/media3/common/util/StuckPlayerDetector;->c:Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    .line 128
    .line 129
    new-instance v0, Landroidx/media3/common/util/StuckPlayerException;

    .line 130
    .line 131
    invoke-direct {v0, v4, v11}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p0, v0}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->t(Landroidx/media3/common/util/StuckPlayerException;)V

    .line 135
    .line 136
    .line 137
    :cond_4
    return-void

    .line 138
    :cond_5
    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->f:Z

    .line 140
    .line 141
    iput-wide v2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->g:J

    .line 142
    .line 143
    iput-object v5, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->b:Ljava/lang/Object;

    .line 144
    .line 145
    iput v6, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->c:I

    .line 146
    .line 147
    iput v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->d:I

    .line 148
    .line 149
    iput-wide v8, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->e:J

    .line 150
    .line 151
    move-object p0, v1

    .line 152
    check-cast p0, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 153
    .line 154
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/SystemHandlerWrapper;->j(I)V

    .line 155
    .line 156
    .line 157
    check-cast v1, Landroidx/media3/common/util/SystemHandlerWrapper;

    .line 158
    .line 159
    iget-object p0, v1, Landroidx/media3/common/util/SystemHandlerWrapper;->a:Landroid/os/Handler;

    .line 160
    .line 161
    int-to-long v0, v11

    .line 162
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 163
    .line 164
    .line 165
    return-void
.end method
