.class public final synthetic Landroidx/media3/exoplayer/i;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/media3/exoplayer/ExoPlayerImpl;

.field public final synthetic k:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/i;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/i;->k:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/i;->j:Landroidx/media3/exoplayer/ExoPlayerImpl;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/media3/exoplayer/i;->k:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 4
    .line 5
    iget v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 6
    .line 7
    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->c:I

    .line 8
    .line 9
    sub-int/2addr v1, v2

    .line 10
    iput v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->I:I

    .line 11
    .line 12
    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->d:Z

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->e:I

    .line 18
    .line 19
    iput v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    .line 20
    .line 21
    iput-boolean v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->K:Z

    .line 22
    .line 23
    :cond_0
    if-nez v1, :cond_c

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 26
    .line 27
    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 28
    .line 29
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 30
    .line 31
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/4 v4, -0x1

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iput v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o0:I

    .line 47
    .line 48
    const-wide/16 v5, 0x0

    .line 49
    .line 50
    iput-wide v5, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p0:J

    .line 51
    .line 52
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    const/4 v5, 0x0

    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    move-object v2, v1

    .line 60
    check-cast v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    .line 61
    .line 62
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaylistTimeline;->i:[Landroidx/media3/common/Timeline;

    .line 63
    .line 64
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-ne v6, v7, :cond_2

    .line 79
    .line 80
    move v6, v3

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move v6, v5

    .line 83
    :goto_0
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->n(Z)V

    .line 84
    .line 85
    .line 86
    move v6, v5

    .line 87
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-ge v6, v7, :cond_3

    .line 92
    .line 93
    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->p:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    check-cast v7, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    .line 100
    .line 101
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    check-cast v8, Landroidx/media3/common/Timeline;

    .line 106
    .line 107
    iput-object v8, v7, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->b:Landroidx/media3/common/Timeline;

    .line 108
    .line 109
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->K:Z

    .line 113
    .line 114
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    if-eqz v2, :cond_b

    .line 120
    .line 121
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 122
    .line 123
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 124
    .line 125
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 132
    .line 133
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->a:Landroidx/media3/common/Timeline;

    .line 134
    .line 135
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_4

    .line 140
    .line 141
    move v2, v3

    .line 142
    goto :goto_2

    .line 143
    :cond_4
    move v2, v5

    .line 144
    :goto_2
    iget-object v8, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 145
    .line 146
    iget-object v8, v8, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 147
    .line 148
    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 149
    .line 150
    iget-object v9, v9, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 151
    .line 152
    invoke-virtual {v8, v9}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->b(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    iget-object v9, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 157
    .line 158
    iget-wide v9, v9, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    .line 159
    .line 160
    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->n0:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 161
    .line 162
    iget-wide v11, v11, Landroidx/media3/exoplayer/PlaybackInfo;->s:J

    .line 163
    .line 164
    cmp-long v9, v9, v11

    .line 165
    .line 166
    if-nez v9, :cond_5

    .line 167
    .line 168
    move v9, v3

    .line 169
    goto :goto_3

    .line 170
    :cond_5
    move v9, v5

    .line 171
    :goto_3
    if-nez v2, :cond_6

    .line 172
    .line 173
    if-eqz v8, :cond_7

    .line 174
    .line 175
    if-nez v9, :cond_6

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_6
    move v3, v5

    .line 179
    :cond_7
    :goto_4
    if-eqz v3, :cond_a

    .line 180
    .line 181
    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->D()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-nez v2, :cond_9

    .line 190
    .line 191
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 192
    .line 193
    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 194
    .line 195
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->c()Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-eqz v2, :cond_8

    .line 200
    .line 201
    goto :goto_5

    .line 202
    :cond_8
    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 203
    .line 204
    iget-object v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 205
    .line 206
    iget-wide v7, v2, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    .line 207
    .line 208
    iget-object v2, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    .line 209
    .line 210
    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->o:Landroidx/media3/common/Timeline$Period;

    .line 211
    .line 212
    invoke-virtual {v1, v2, v6}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 213
    .line 214
    .line 215
    iget-wide v1, v6, Landroidx/media3/common/Timeline$Period;->e:J

    .line 216
    .line 217
    add-long/2addr v7, v1

    .line 218
    move-wide v6, v7

    .line 219
    goto :goto_6

    .line 220
    :cond_9
    :goto_5
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 221
    .line 222
    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->d:J

    .line 223
    .line 224
    move-wide v6, v1

    .line 225
    :cond_a
    :goto_6
    move v1, v5

    .line 226
    :goto_7
    move-wide v5, v6

    .line 227
    move v7, v4

    .line 228
    goto :goto_8

    .line 229
    :cond_b
    move v1, v5

    .line 230
    move v3, v1

    .line 231
    goto :goto_7

    .line 232
    :goto_8
    iput-boolean v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->K:Z

    .line 233
    .line 234
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->b:Landroidx/media3/exoplayer/PlaybackInfo;

    .line 235
    .line 236
    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->J:I

    .line 237
    .line 238
    const/4 v8, 0x0

    .line 239
    const/4 v2, 0x1

    .line 240
    invoke-virtual/range {v0 .. v8}, Landroidx/media3/exoplayer/ExoPlayerImpl;->u0(Landroidx/media3/exoplayer/PlaybackInfo;IZIJIZ)V

    .line 241
    .line 242
    .line 243
    :cond_c
    return-void
.end method
