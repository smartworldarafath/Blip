.class public final synthetic Landroidx/media3/exoplayer/source/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/source/WrappingMediaSource;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/WrappingMediaSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/a;->a:Landroidx/media3/exoplayer/source/WrappingMediaSource;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/Timeline;)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/a;->a:Landroidx/media3/exoplayer/source/WrappingMediaSource;

    .line 2
    .line 3
    move-object v6, v0

    .line 4
    check-cast v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 5
    .line 6
    iget-object v0, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->n:Landroidx/media3/common/Timeline$Period;

    .line 7
    .line 8
    iget-object v2, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->m:Landroidx/media3/common/Timeline$Window;

    .line 9
    .line 10
    iget-boolean v3, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->r:Z

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    iget-object v0, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 15
    .line 16
    new-instance v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 17
    .line 18
    iget-object v3, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->c:Ljava/lang/Object;

    .line 19
    .line 20
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v2, p1, v3, v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 26
    .line 27
    iget-object v0, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 28
    .line 29
    if-eqz v0, :cond_6

    .line 30
    .line 31
    iget-wide v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->p:J

    .line 32
    .line 33
    invoke-virtual {v6, v0, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->u(J)Z

    .line 34
    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iget-boolean v0, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->s:Z

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 49
    .line 50
    new-instance v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 51
    .line 52
    iget-object v3, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->c:Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 55
    .line 56
    invoke-direct {v2, p1, v3, v0}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object v0, Landroidx/media3/common/Timeline$Window;->n:Ljava/lang/Object;

    .line 61
    .line 62
    sget-object v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->e:Ljava/lang/Object;

    .line 63
    .line 64
    new-instance v3, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 65
    .line 66
    invoke-direct {v3, p1, v0, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object v2, v3

    .line 70
    :goto_0
    iput-object v2, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_2
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p1, v3, v2}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    .line 76
    .line 77
    .line 78
    iget-wide v4, v2, Landroidx/media3/common/Timeline$Window;->j:J

    .line 79
    .line 80
    iget-object v7, v2, Landroidx/media3/common/Timeline$Window;->a:Ljava/lang/Object;

    .line 81
    .line 82
    iget-object v8, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 83
    .line 84
    if-eqz v8, :cond_3

    .line 85
    .line 86
    iget-wide v9, v8, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->k:J

    .line 87
    .line 88
    iget-object v11, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 89
    .line 90
    iget-object v8, v8, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->j:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 91
    .line 92
    iget-object v8, v8, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {v11, v8, v0}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 95
    .line 96
    .line 97
    iget-wide v11, v0, Landroidx/media3/common/Timeline$Period;->e:J

    .line 98
    .line 99
    add-long/2addr v11, v9

    .line 100
    iget-object v0, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 101
    .line 102
    const-wide/16 v8, 0x0

    .line 103
    .line 104
    invoke-virtual {v0, v3, v2, v8, v9}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 105
    .line 106
    .line 107
    iget-wide v2, v2, Landroidx/media3/common/Timeline$Window;->j:J

    .line 108
    .line 109
    cmp-long v0, v11, v2

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    move-wide v4, v11

    .line 114
    :cond_3
    iget-object v1, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->m:Landroidx/media3/common/Timeline$Window;

    .line 115
    .line 116
    iget-object v2, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->n:Landroidx/media3/common/Timeline$Period;

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    move-object v0, p1

    .line 120
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->i(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 125
    .line 126
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v1, Ljava/lang/Long;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 131
    .line 132
    .line 133
    move-result-wide v3

    .line 134
    iget-boolean v1, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->s:Z

    .line 135
    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    iget-object v1, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 139
    .line 140
    new-instance v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 141
    .line 142
    iget-object v5, v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->c:Ljava/lang/Object;

    .line 143
    .line 144
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 145
    .line 146
    invoke-direct {v2, p1, v5, v1}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    new-instance v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 151
    .line 152
    invoke-direct {v1, p1, v7, v2}, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    move-object v2, v1

    .line 156
    :goto_1
    iput-object v2, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 157
    .line 158
    iget-object v0, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 159
    .line 160
    if-eqz v0, :cond_6

    .line 161
    .line 162
    invoke-virtual {v6, v3, v4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->u(J)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_6

    .line 167
    .line 168
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->j:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 169
    .line 170
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 171
    .line 172
    iget-object v2, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 173
    .line 174
    iget-object v2, v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 175
    .line 176
    if-eqz v2, :cond_5

    .line 177
    .line 178
    sget-object v2, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->e:Ljava/lang/Object;

    .line 179
    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eqz v2, :cond_5

    .line 185
    .line 186
    iget-object v1, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 187
    .line 188
    iget-object v1, v1, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->d:Ljava/lang/Object;

    .line 189
    .line 190
    :cond_5
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    goto :goto_3

    .line 195
    :cond_6
    :goto_2
    const/4 v0, 0x0

    .line 196
    :goto_3
    const/4 v1, 0x1

    .line 197
    iput-boolean v1, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->s:Z

    .line 198
    .line 199
    iput-boolean v1, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->r:Z

    .line 200
    .line 201
    iget-object v1, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->o:Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;

    .line 202
    .line 203
    invoke-virtual {v6, v1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->o(Landroidx/media3/common/Timeline;)V

    .line 204
    .line 205
    .line 206
    if-eqz v0, :cond_7

    .line 207
    .line 208
    iget-object v1, v6, Landroidx/media3/exoplayer/source/MaskingMediaSource;->p:Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->a(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 214
    .line 215
    .line 216
    :cond_7
    return-void
.end method
