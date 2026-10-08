.class final Landroidx/media3/exoplayer/video/VideoFrameRenderControl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

.field public final b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field public final c:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

.field public final d:Landroidx/media3/common/util/TimedValueQueue;

.field public final e:Landroidx/media3/common/util/TimedValueQueue;

.field public final f:Landroidx/media3/common/util/LongArrayQueue;

.field public final g:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

.field public final h:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

.field public i:J

.field public j:J

.field public k:J

.field public l:Landroidx/media3/common/VideoSize;

.field public m:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->a:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->g:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->h:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 11
    .line 12
    new-instance p1, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 13
    .line 14
    invoke-direct {p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 18
    .line 19
    new-instance p1, Landroidx/media3/common/util/TimedValueQueue;

    .line 20
    .line 21
    invoke-direct {p1}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->d:Landroidx/media3/common/util/TimedValueQueue;

    .line 25
    .line 26
    new-instance p1, Landroidx/media3/common/util/TimedValueQueue;

    .line 27
    .line 28
    invoke-direct {p1}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->e:Landroidx/media3/common/util/TimedValueQueue;

    .line 32
    .line 33
    new-instance p1, Landroidx/media3/common/util/LongArrayQueue;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    const/16 p2, 0x10

    .line 39
    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    const/4 p4, 0x1

    .line 45
    if-eq p3, p4, :cond_0

    .line 46
    .line 47
    const/16 p2, 0xf

    .line 48
    .line 49
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    shl-int/2addr p2, p4

    .line 54
    :cond_0
    const/4 p3, 0x0

    .line 55
    iput p3, p1, Landroidx/media3/common/util/LongArrayQueue;->a:I

    .line 56
    .line 57
    const/4 v0, -0x1

    .line 58
    iput v0, p1, Landroidx/media3/common/util/LongArrayQueue;->b:I

    .line 59
    .line 60
    iput p3, p1, Landroidx/media3/common/util/LongArrayQueue;->c:I

    .line 61
    .line 62
    new-array p3, p2, [J

    .line 63
    .line 64
    iput-object p3, p1, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    .line 65
    .line 66
    sub-int/2addr p2, p4

    .line 67
    iput p2, p1, Landroidx/media3/common/util/LongArrayQueue;->e:I

    .line 68
    .line 69
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->f:Landroidx/media3/common/util/LongArrayQueue;

    .line 70
    .line 71
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->i:J

    .line 77
    .line 78
    sget-object p3, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    .line 79
    .line 80
    iput-object p3, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->l:Landroidx/media3/common/VideoSize;

    .line 81
    .line 82
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    .line 83
    .line 84
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->k:J

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->a:Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->b:Landroidx/media3/exoplayer/video/DefaultVideoSink;

    .line 6
    .line 7
    :goto_0
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->f:Landroidx/media3/common/util/LongArrayQueue;

    .line 8
    .line 9
    iget v4, v3, Landroidx/media3/common/util/LongArrayQueue;->c:I

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz v4, :cond_d

    .line 15
    .line 16
    iget-object v4, v3, Landroidx/media3/common/util/LongArrayQueue;->d:[J

    .line 17
    .line 18
    iget v5, v3, Landroidx/media3/common/util/LongArrayQueue;->a:I

    .line 19
    .line 20
    aget-wide v7, v4, v5

    .line 21
    .line 22
    iget-object v4, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->e:Landroidx/media3/common/util/TimedValueQueue;

    .line 23
    .line 24
    invoke-virtual {v4, v7, v8}, Landroidx/media3/common/util/TimedValueQueue;->f(J)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/Long;

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    iget-object v6, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v9

    .line 39
    iget-wide v11, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->m:J

    .line 40
    .line 41
    cmp-long v9, v9, v11

    .line 42
    .line 43
    if-eqz v9, :cond_1

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 46
    .line 47
    .line 48
    move-result-wide v9

    .line 49
    iput-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->m:J

    .line 50
    .line 51
    invoke-virtual {v6, v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const-wide/16 v9, 0x3e8

    .line 55
    .line 56
    mul-long/2addr v9, v7

    .line 57
    iget-object v4, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->h:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 58
    .line 59
    invoke-virtual {v4, v9, v10}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->b(J)V

    .line 60
    .line 61
    .line 62
    iget-wide v13, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->m:J

    .line 63
    .line 64
    invoke-virtual {v4}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->a()J

    .line 65
    .line 66
    .line 67
    move-result-wide v17

    .line 68
    iget-wide v9, v4, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->h:J

    .line 69
    .line 70
    move-object v4, v6

    .line 71
    iget-object v6, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 72
    .line 73
    const/4 v15, 0x0

    .line 74
    const/16 v16, 0x0

    .line 75
    .line 76
    iget-object v11, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 77
    .line 78
    move-wide/from16 v19, v9

    .line 79
    .line 80
    move-object/from16 v21, v11

    .line 81
    .line 82
    move-wide/from16 v9, p1

    .line 83
    .line 84
    move-wide/from16 v11, p3

    .line 85
    .line 86
    invoke-virtual/range {v6 .. v21}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a(JJJJZZJJLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    move-object/from16 v9, v21

    .line 91
    .line 92
    const/4 v10, 0x4

    .line 93
    const/4 v11, 0x5

    .line 94
    if-eq v6, v11, :cond_2

    .line 95
    .line 96
    if-eq v6, v10, :cond_2

    .line 97
    .line 98
    iget-object v12, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->g:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 99
    .line 100
    iget-wide v13, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 101
    .line 102
    invoke-virtual {v12, v7, v8, v13, v14}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->a(JJ)V

    .line 103
    .line 104
    .line 105
    :cond_2
    const/4 v12, 0x3

    .line 106
    const/4 v13, 0x0

    .line 107
    const/4 v14, 0x1

    .line 108
    if-eqz v6, :cond_6

    .line 109
    .line 110
    if-eq v6, v14, :cond_6

    .line 111
    .line 112
    if-eq v6, v5, :cond_5

    .line 113
    .line 114
    if-eq v6, v12, :cond_5

    .line 115
    .line 116
    if-eq v6, v10, :cond_4

    .line 117
    .line 118
    if-ne v6, v11, :cond_3

    .line 119
    .line 120
    return-void

    .line 121
    :cond_3
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_4
    iput-wide v7, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_5
    iput-wide v7, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    .line 133
    .line 134
    invoke-virtual {v3}, Landroidx/media3/common/util/LongArrayQueue;->a()J

    .line 135
    .line 136
    .line 137
    iget-object v3, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j:Ljava/util/concurrent/Executor;

    .line 138
    .line 139
    new-instance v4, Landroidx/media3/exoplayer/video/b;

    .line 140
    .line 141
    invoke-direct {v4, v1, v14}, Landroidx/media3/exoplayer/video/b;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;I)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 145
    .line 146
    .line 147
    iget-object v3, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d:Ljava/util/ArrayDeque;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    .line 154
    .line 155
    check-cast v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;

    .line 156
    .line 157
    iget-object v4, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->c:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 158
    .line 159
    iget-object v5, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 160
    .line 161
    iget v3, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->b:I

    .line 162
    .line 163
    const-string v6, "dropVideoBuffer"

    .line 164
    .line 165
    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v5, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->f(I)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v13, v14}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->W0(II)V

    .line 175
    .line 176
    .line 177
    goto/16 :goto_0

    .line 178
    .line 179
    :cond_6
    iput-wide v7, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->j:J

    .line 180
    .line 181
    if-nez v6, :cond_7

    .line 182
    .line 183
    move v5, v14

    .line 184
    goto :goto_1

    .line 185
    :cond_7
    move v5, v13

    .line 186
    :goto_1
    invoke-virtual {v3}, Landroidx/media3/common/util/LongArrayQueue;->a()J

    .line 187
    .line 188
    .line 189
    move-result-wide v6

    .line 190
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->d:Landroidx/media3/common/util/TimedValueQueue;

    .line 191
    .line 192
    invoke-virtual {v3, v6, v7}, Landroidx/media3/common/util/TimedValueQueue;->f(J)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    check-cast v3, Landroidx/media3/common/VideoSize;

    .line 197
    .line 198
    if-eqz v3, :cond_8

    .line 199
    .line 200
    sget-object v8, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    .line 201
    .line 202
    invoke-virtual {v3, v8}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    if-nez v8, :cond_8

    .line 207
    .line 208
    iget-object v8, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->l:Landroidx/media3/common/VideoSize;

    .line 209
    .line 210
    invoke-virtual {v3, v8}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    if-nez v8, :cond_8

    .line 215
    .line 216
    iput-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->l:Landroidx/media3/common/VideoSize;

    .line 217
    .line 218
    new-instance v8, Landroidx/media3/common/Format$Builder;

    .line 219
    .line 220
    invoke-direct {v8}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 221
    .line 222
    .line 223
    iget v10, v3, Landroidx/media3/common/VideoSize;->a:I

    .line 224
    .line 225
    iput v10, v8, Landroidx/media3/common/Format$Builder;->v:I

    .line 226
    .line 227
    iget v10, v3, Landroidx/media3/common/VideoSize;->b:I

    .line 228
    .line 229
    iput v10, v8, Landroidx/media3/common/Format$Builder;->w:I

    .line 230
    .line 231
    const-string v10, "video/raw"

    .line 232
    .line 233
    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    iput-object v10, v8, Landroidx/media3/common/Format$Builder;->o:Ljava/lang/String;

    .line 238
    .line 239
    new-instance v10, Landroidx/media3/common/Format;

    .line 240
    .line 241
    invoke-direct {v10, v8}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 242
    .line 243
    .line 244
    iput-object v10, v1, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->a:Landroidx/media3/common/Format;

    .line 245
    .line 246
    iget-object v8, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j:Ljava/util/concurrent/Executor;

    .line 247
    .line 248
    new-instance v10, Landroidx/media3/exoplayer/video/c;

    .line 249
    .line 250
    invoke-direct {v10, v1, v3}, Landroidx/media3/exoplayer/video/c;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;Landroidx/media3/common/VideoSize;)V

    .line 251
    .line 252
    .line 253
    invoke-interface {v8, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 254
    .line 255
    .line 256
    :cond_8
    if-eqz v5, :cond_9

    .line 257
    .line 258
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 259
    .line 260
    .line 261
    move-result-wide v8

    .line 262
    :goto_2
    move-wide/from16 v18, v8

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_9
    iget-wide v8, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->b:J

    .line 266
    .line 267
    goto :goto_2

    .line 268
    :goto_3
    iget v3, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 269
    .line 270
    if-eq v3, v12, :cond_a

    .line 271
    .line 272
    goto :goto_4

    .line 273
    :cond_a
    move v14, v13

    .line 274
    :goto_4
    iput v12, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 275
    .line 276
    iget-object v3, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 277
    .line 278
    check-cast v3, Landroidx/media3/common/util/SystemClock;

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 281
    .line 282
    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 284
    .line 285
    .line 286
    move-result-wide v8

    .line 287
    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->D(J)J

    .line 288
    .line 289
    .line 290
    move-result-wide v8

    .line 291
    iput-wide v8, v4, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g:J

    .line 292
    .line 293
    if-eqz v14, :cond_b

    .line 294
    .line 295
    iget-object v3, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->f:Landroid/view/Surface;

    .line 296
    .line 297
    if-eqz v3, :cond_b

    .line 298
    .line 299
    iget-object v3, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->j:Ljava/util/concurrent/Executor;

    .line 300
    .line 301
    new-instance v4, Landroidx/media3/exoplayer/video/b;

    .line 302
    .line 303
    invoke-direct {v4, v1, v13}, Landroidx/media3/exoplayer/video/b;-><init>(Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;I)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 307
    .line 308
    .line 309
    :cond_b
    iget-object v3, v1, Landroidx/media3/exoplayer/video/DefaultVideoSink$FrameRendererImpl;->a:Landroidx/media3/common/Format;

    .line 310
    .line 311
    if-nez v3, :cond_c

    .line 312
    .line 313
    new-instance v3, Landroidx/media3/common/Format$Builder;

    .line 314
    .line 315
    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 316
    .line 317
    .line 318
    new-instance v4, Landroidx/media3/common/Format;

    .line 319
    .line 320
    invoke-direct {v4, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    .line 321
    .line 322
    .line 323
    move-object/from16 v20, v4

    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_c
    move-object/from16 v20, v3

    .line 327
    .line 328
    :goto_5
    iget-object v15, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->k:Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;

    .line 329
    .line 330
    const/16 v21, 0x0

    .line 331
    .line 332
    move-wide/from16 v16, v6

    .line 333
    .line 334
    invoke-interface/range {v15 .. v21}, Landroidx/media3/exoplayer/video/VideoFrameMetadataListener;->f(JJLandroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 335
    .line 336
    .line 337
    move-wide/from16 v8, v18

    .line 338
    .line 339
    iget-object v3, v2, Landroidx/media3/exoplayer/video/DefaultVideoSink;->d:Ljava/util/ArrayDeque;

    .line 340
    .line 341
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    check-cast v3, Landroidx/media3/exoplayer/video/VideoSink$VideoFrameHandler;

    .line 346
    .line 347
    check-cast v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;

    .line 348
    .line 349
    iget-object v4, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->c:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 350
    .line 351
    iget-object v5, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 352
    .line 353
    iget v3, v3, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$2;->b:I

    .line 354
    .line 355
    invoke-virtual {v4, v5, v3, v8, v9}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->R0(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;IJ)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_0

    .line 359
    .line 360
    :cond_d
    invoke-static {}, Lk8;->o()V

    .line 361
    .line 362
    .line 363
    return-void
.end method
