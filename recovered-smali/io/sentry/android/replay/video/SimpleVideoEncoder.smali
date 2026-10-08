.class public final Lio/sentry/android/replay/video/SimpleVideoEncoder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseRequiresApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field public final a:Lio/sentry/SentryOptions;

.field public final b:Lio/sentry/android/replay/video/MuxerConfig;

.field public final c:Landroid/media/MediaCodec;

.field public final d:Lkotlin/Lazy;

.field public final e:Landroid/media/MediaCodec$BufferInfo;

.field public final f:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

.field public g:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/android/replay/video/MuxerConfig;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->a:Lio/sentry/SentryOptions;

    .line 8
    .line 9
    iput-object p2, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->b:Lio/sentry/android/replay/video/MuxerConfig;

    .line 10
    .line 11
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 12
    .line 13
    sget-object v0, Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;->k:Lio/sentry/android/replay/video/SimpleVideoEncoder$hasExynosCodec$2;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const-string v0, "c2.android.avc.encoder"

    .line 32
    .line 33
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p2, Lio/sentry/android/replay/video/MuxerConfig;->f:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->c:Landroid/media/MediaCodec;

    .line 48
    .line 49
    new-instance v0, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;

    .line 50
    .line 51
    invoke-direct {v0, p0}, Lio/sentry/android/replay/video/SimpleVideoEncoder$mediaFormat$2;-><init>(Lio/sentry/android/replay/video/SimpleVideoEncoder;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->d:Lkotlin/Lazy;

    .line 59
    .line 60
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    .line 61
    .line 62
    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->e:Landroid/media/MediaCodec$BufferInfo;

    .line 66
    .line 67
    new-instance p1, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    .line 68
    .line 69
    iget-object v0, p2, Lio/sentry/android/replay/video/MuxerConfig;->a:Ljava/io/File;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    iget p2, p2, Lio/sentry/android/replay/video/MuxerConfig;->d:I

    .line 79
    .line 80
    int-to-float p2, p2

    .line 81
    invoke-direct {p1, v0, p2}, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;-><init>(Ljava/lang/String;F)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->f:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->a:Lio/sentry/SentryOptions;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v1, v1, Lio/sentry/SentryReplayOptions;->m:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v5, "[Encoder]: drainCodec("

    .line 21
    .line 22
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v5, 0x29

    .line 29
    .line 30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-array v5, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-interface {v1, v3, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->c:Landroid/media/MediaCodec;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-boolean v3, v3, Lio/sentry/SentryReplayOptions;->m:Z

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 59
    .line 60
    const-string v5, "[Encoder]: sending EOS to encoder"

    .line 61
    .line 62
    new-array v6, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 68
    .line 69
    .line 70
    :cond_2
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_3
    :goto_0
    const-wide/32 v4, 0x186a0

    .line 75
    .line 76
    .line 77
    iget-object v6, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->e:Landroid/media/MediaCodec$BufferInfo;

    .line 78
    .line 79
    invoke-virtual {v1, v6, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    const/4 v5, -0x1

    .line 84
    if-ne v4, v5, :cond_5

    .line 85
    .line 86
    if-nez p1, :cond_4

    .line 87
    .line 88
    goto/16 :goto_2

    .line 89
    .line 90
    :cond_4
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    iget-boolean v4, v4, Lio/sentry/SentryReplayOptions;->m:Z

    .line 95
    .line 96
    if-eqz v4, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    sget-object v5, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 103
    .line 104
    const-string v6, "[Encoder]: no output available, spinning to await EOS"

    .line 105
    .line 106
    new-array v7, v2, [Ljava/lang/Object;

    .line 107
    .line 108
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    const/4 v5, -0x3

    .line 113
    if-ne v4, v5, :cond_6

    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    goto :goto_0

    .line 120
    :cond_6
    const/4 v5, -0x2

    .line 121
    iget-object v7, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->f:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    .line 122
    .line 123
    if-ne v4, v5, :cond_9

    .line 124
    .line 125
    iget-boolean v4, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->c:Z

    .line 126
    .line 127
    if-nez v4, :cond_8

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    iget-boolean v5, v5, Lio/sentry/SentryReplayOptions;->m:Z

    .line 141
    .line 142
    if-eqz v5, :cond_7

    .line 143
    .line 144
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 149
    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string v9, "[Encoder]: encoder output format changed: "

    .line 153
    .line 154
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    new-array v9, v2, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-interface {v5, v6, v8, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_7
    iget-object v5, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->b:Landroid/media/MediaMuxer;

    .line 170
    .line 171
    invoke-virtual {v5, v4}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    iput v4, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->d:I

    .line 176
    .line 177
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->start()V

    .line 178
    .line 179
    .line 180
    const/4 v4, 0x1

    .line 181
    iput-boolean v4, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->c:Z

    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_8
    const-string p0, "format changed twice"

    .line 185
    .line 186
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_9
    if-gez v4, :cond_a

    .line 191
    .line 192
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    iget-boolean v5, v5, Lio/sentry/SentryReplayOptions;->m:Z

    .line 197
    .line 198
    if-eqz v5, :cond_3

    .line 199
    .line 200
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 205
    .line 206
    const-string v7, "[Encoder]: unexpected result from encoder.dequeueOutputBuffer: "

    .line 207
    .line 208
    invoke-static {v4, v7}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    new-array v7, v2, [Ljava/lang/Object;

    .line 213
    .line 214
    invoke-interface {v5, v6, v4, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_a
    if-eqz v3, :cond_11

    .line 220
    .line 221
    aget-object v5, v3, v4

    .line 222
    .line 223
    if-eqz v5, :cond_11

    .line 224
    .line 225
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 226
    .line 227
    and-int/lit8 v8, v8, 0x2

    .line 228
    .line 229
    if-eqz v8, :cond_c

    .line 230
    .line 231
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    iget-boolean v8, v8, Lio/sentry/SentryReplayOptions;->m:Z

    .line 236
    .line 237
    if-eqz v8, :cond_b

    .line 238
    .line 239
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    sget-object v9, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 244
    .line 245
    const-string v10, "[Encoder]: ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 246
    .line 247
    new-array v11, v2, [Ljava/lang/Object;

    .line 248
    .line 249
    invoke-interface {v8, v9, v10, v11}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    :cond_b
    iput v2, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 253
    .line 254
    :cond_c
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 255
    .line 256
    if-eqz v8, :cond_e

    .line 257
    .line 258
    iget-boolean v8, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->c:Z

    .line 259
    .line 260
    if-eqz v8, :cond_d

    .line 261
    .line 262
    iget-wide v8, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->a:J

    .line 263
    .line 264
    iget v10, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->e:I

    .line 265
    .line 266
    add-int/lit8 v11, v10, 0x1

    .line 267
    .line 268
    iput v11, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->e:I

    .line 269
    .line 270
    int-to-long v10, v10

    .line 271
    mul-long/2addr v8, v10

    .line 272
    iput-wide v8, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->f:J

    .line 273
    .line 274
    iput-wide v8, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 275
    .line 276
    iget-object v8, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->b:Landroid/media/MediaMuxer;

    .line 277
    .line 278
    iget v7, v7, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->d:I

    .line 279
    .line 280
    invoke-virtual {v8, v7, v5, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    iget-boolean v5, v5, Lio/sentry/SentryReplayOptions;->m:Z

    .line 288
    .line 289
    if-eqz v5, :cond_e

    .line 290
    .line 291
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 296
    .line 297
    new-instance v8, Ljava/lang/StringBuilder;

    .line 298
    .line 299
    const-string v9, "[Encoder]: sent "

    .line 300
    .line 301
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    iget v9, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 305
    .line 306
    const-string v10, " bytes to muxer"

    .line 307
    .line 308
    invoke-static {v8, v9, v10}, Ljb;->i(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v8

    .line 312
    new-array v9, v2, [Ljava/lang/Object;

    .line 313
    .line 314
    invoke-interface {v5, v7, v8, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    goto :goto_1

    .line 318
    :cond_d
    const-string p0, "muxer hasn\'t started"

    .line 319
    .line 320
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_e
    :goto_1
    invoke-virtual {v1, v4, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 325
    .line 326
    .line 327
    iget v4, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 328
    .line 329
    and-int/lit8 v4, v4, 0x4

    .line 330
    .line 331
    if-eqz v4, :cond_3

    .line 332
    .line 333
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    iget-boolean p0, p0, Lio/sentry/SentryReplayOptions;->m:Z

    .line 338
    .line 339
    if-eqz p0, :cond_10

    .line 340
    .line 341
    if-nez p1, :cond_f

    .line 342
    .line 343
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 344
    .line 345
    .line 346
    move-result-object p0

    .line 347
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 348
    .line 349
    const-string v0, "[Encoder]: reached end of stream unexpectedly"

    .line 350
    .line 351
    new-array v1, v2, [Ljava/lang/Object;

    .line 352
    .line 353
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :cond_f
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 358
    .line 359
    .line 360
    move-result-object p0

    .line 361
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 362
    .line 363
    const-string v0, "[Encoder]: end of stream reached"

    .line 364
    .line 365
    new-array v1, v2, [Ljava/lang/Object;

    .line 366
    .line 367
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    :cond_10
    :goto_2
    return-void

    .line 371
    :cond_11
    const-string p0, "encoderOutputBuffer "

    .line 372
    .line 373
    const-string p1, " was null"

    .line 374
    .line 375
    invoke-static {p0, v4, p1}, Ljb;->d(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p0

    .line 379
    invoke-static {p0}, Lu2;->n(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    return-void
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "xiaomi"

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_2

    .line 15
    .line 16
    const-string v1, "motorola"

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    sget-object v0, Lio/sentry/android/replay/util/SystemProperties$Property;->SOC_MANUFACTURER:Lio/sentry/android/replay/util/SystemProperties$Property;

    .line 25
    .line 26
    invoke-static {v0}, Lio/sentry/android/replay/util/SystemProperties;->a(Lio/sentry/android/replay/util/SystemProperties$Property;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "spreadtrum"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    invoke-static {v0}, Lio/sentry/android/replay/util/SystemProperties;->a(Lio/sentry/android/replay/util/SystemProperties$Property;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "unisoc"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->g:Landroid/view/Surface;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object v0, v3

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->g:Landroid/view/Surface;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_1
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, p1, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object p1, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->g:Landroid/view/Surface;

    .line 77
    .line 78
    if-eqz p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 81
    .line 82
    .line 83
    :cond_4
    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->a(Z)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->c:Landroid/media/MediaCodec;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {p0, v1}, Lio/sentry/android/replay/video/SimpleVideoEncoder;->a(Z)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->g:Landroid/view/Surface;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->f:Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;

    .line 24
    .line 25
    iget-object v0, v0, Lio/sentry/android/replay/video/SimpleMp4FrameMuxer;->b:Landroid/media/MediaMuxer;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :goto_1
    iget-object p0, p0, Lio/sentry/android/replay/video/SimpleVideoEncoder;->a:Lio/sentry/SentryOptions;

    .line 35
    .line 36
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 41
    .line 42
    const-string v2, "Failed to properly release video encoder"

    .line 43
    .line 44
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
