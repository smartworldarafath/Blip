.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

.field public final b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field public final c:J

.field public d:Z

.field public e:I

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public j:F

.field public k:Landroidx/media3/common/util/Clock;

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 5
    .line 6
    iput-wide p3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->c:J

    .line 7
    .line 8
    new-instance p2, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 17
    .line 18
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    .line 24
    .line 25
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 26
    .line 27
    const/high16 p1, 0x3f800000    # 1.0f

    .line 28
    .line 29
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->j:F

    .line 30
    .line 31
    sget-object p1, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    .line 32
    .line 33
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final a(JJJJZZJJLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    move-wide/from16 v5, p13

    .line 8
    .line 9
    move-object/from16 v8, p15

    .line 10
    .line 11
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    iput-wide v9, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 17
    .line 18
    iput-wide v9, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->b:J

    .line 19
    .line 20
    iget-boolean v7, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    iget-wide v11, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    .line 25
    .line 26
    cmp-long v11, v11, v9

    .line 27
    .line 28
    if-nez v11, :cond_0

    .line 29
    .line 30
    iput-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    .line 31
    .line 32
    :cond_0
    sub-long v11, v1, v3

    .line 33
    .line 34
    long-to-double v11, v11

    .line 35
    iget v13, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->j:F

    .line 36
    .line 37
    float-to-double v13, v13

    .line 38
    div-double/2addr v11, v13

    .line 39
    double-to-long v11, v11

    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    iget-object v7, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 43
    .line 44
    check-cast v7, Landroidx/media3/common/util/SystemClock;

    .line 45
    .line 46
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v13

    .line 53
    invoke-static {v13, v14}, Landroidx/media3/common/util/Util;->D(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v13

    .line 57
    sub-long v13, v13, p5

    .line 58
    .line 59
    sub-long/2addr v11, v13

    .line 60
    :cond_1
    iput-wide v11, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 61
    .line 62
    const/4 v13, 0x3

    .line 63
    if-eqz p9, :cond_2

    .line 64
    .line 65
    if-nez p10, :cond_2

    .line 66
    .line 67
    :goto_0
    move/from16 p5, v13

    .line 68
    .line 69
    goto/16 :goto_d

    .line 70
    .line 71
    :cond_2
    iget-boolean v7, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Z

    .line 72
    .line 73
    const/4 v14, 0x5

    .line 74
    const/4 v15, 0x1

    .line 75
    if-nez v7, :cond_5

    .line 76
    .line 77
    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 78
    .line 79
    const/4 v7, 0x1

    .line 80
    move/from16 v6, p10

    .line 81
    .line 82
    move-wide v4, v3

    .line 83
    move-wide v2, v11

    .line 84
    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T0(JJZZ)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    goto/16 :goto_c

    .line 91
    .line 92
    :cond_3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    .line 93
    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    iget-wide v1, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 97
    .line 98
    const-wide/16 v3, 0x7530

    .line 99
    .line 100
    cmp-long v1, v1, v3

    .line 101
    .line 102
    if-gez v1, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    iput-boolean v15, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->m:Z

    .line 106
    .line 107
    return v14

    .line 108
    :cond_5
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 109
    .line 110
    cmp-long v3, v3, v9

    .line 111
    .line 112
    const-wide/16 v16, -0x7530

    .line 113
    .line 114
    const/4 v7, 0x2

    .line 115
    const/16 v18, 0x0

    .line 116
    .line 117
    if-eqz v3, :cond_7

    .line 118
    .line 119
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:Z

    .line 120
    .line 121
    if-nez v3, :cond_7

    .line 122
    .line 123
    move-wide/from16 v19, v9

    .line 124
    .line 125
    :cond_6
    move/from16 v3, v18

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    iget v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 129
    .line 130
    if-eqz v3, :cond_b

    .line 131
    .line 132
    if-eq v3, v15, :cond_a

    .line 133
    .line 134
    if-eq v3, v7, :cond_9

    .line 135
    .line 136
    if-ne v3, v13, :cond_8

    .line 137
    .line 138
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 139
    .line 140
    check-cast v3, Landroidx/media3/common/util/SystemClock;

    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 146
    .line 147
    .line 148
    move-result-wide v3

    .line 149
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->D(J)J

    .line 150
    .line 151
    .line 152
    move-result-wide v3

    .line 153
    move-wide/from16 v19, v9

    .line 154
    .line 155
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g:J

    .line 156
    .line 157
    sub-long/2addr v3, v9

    .line 158
    iget-boolean v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    .line 159
    .line 160
    if-eqz v9, :cond_6

    .line 161
    .line 162
    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    .line 163
    .line 164
    cmp-long v21, v9, v19

    .line 165
    .line 166
    if-eqz v21, :cond_6

    .line 167
    .line 168
    cmp-long v9, v9, p3

    .line 169
    .line 170
    if-eqz v9, :cond_6

    .line 171
    .line 172
    cmp-long v9, v11, v16

    .line 173
    .line 174
    if-gez v9, :cond_6

    .line 175
    .line 176
    const-wide/32 v9, 0x186a0

    .line 177
    .line 178
    .line 179
    cmp-long v3, v3, v9

    .line 180
    .line 181
    if-lez v3, :cond_6

    .line 182
    .line 183
    :goto_1
    move v3, v15

    .line 184
    goto :goto_2

    .line 185
    :cond_8
    invoke-static {}, Lio/sentry/d;->d()V

    .line 186
    .line 187
    .line 188
    return v18

    .line 189
    :cond_9
    move-wide/from16 v19, v9

    .line 190
    .line 191
    cmp-long v3, p3, p7

    .line 192
    .line 193
    if-ltz v3, :cond_6

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_a
    move-wide/from16 v19, v9

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_b
    move-wide/from16 v19, v9

    .line 200
    .line 201
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    .line 202
    .line 203
    :goto_2
    if-eqz v3, :cond_c

    .line 204
    .line 205
    return v18

    .line 206
    :cond_c
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    .line 207
    .line 208
    if-eqz v3, :cond_d

    .line 209
    .line 210
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->f:J

    .line 211
    .line 212
    cmp-long v3, p3, v3

    .line 213
    .line 214
    if-nez v3, :cond_e

    .line 215
    .line 216
    :cond_d
    move/from16 p6, v14

    .line 217
    .line 218
    goto/16 :goto_e

    .line 219
    .line 220
    :cond_e
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 221
    .line 222
    check-cast v3, Landroidx/media3/common/util/SystemClock;

    .line 223
    .line 224
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 228
    .line 229
    .line 230
    move-result-wide v3

    .line 231
    iget-object v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 232
    .line 233
    iget-wide v10, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 234
    .line 235
    const-wide/16 v21, 0x3e8

    .line 236
    .line 237
    mul-long v10, v10, v21

    .line 238
    .line 239
    add-long/2addr v10, v3

    .line 240
    move/from16 p5, v13

    .line 241
    .line 242
    move/from16 p6, v14

    .line 243
    .line 244
    iget-wide v13, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->n:J

    .line 245
    .line 246
    cmp-long v12, v1, v13

    .line 247
    .line 248
    move/from16 p9, v7

    .line 249
    .line 250
    if-eqz v12, :cond_f

    .line 251
    .line 252
    iget-wide v7, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->l:J

    .line 253
    .line 254
    iput-wide v7, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->o:J

    .line 255
    .line 256
    iget-wide v7, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->m:J

    .line 257
    .line 258
    iput-wide v7, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->p:J

    .line 259
    .line 260
    iput-wide v13, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->q:J

    .line 261
    .line 262
    iget-wide v7, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->k:J

    .line 263
    .line 264
    iput-wide v7, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->j:J

    .line 265
    .line 266
    :cond_f
    iget-wide v7, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->o:J

    .line 267
    .line 268
    const-wide/16 v12, -0x1

    .line 269
    .line 270
    cmp-long v12, v7, v12

    .line 271
    .line 272
    if-eqz v12, :cond_12

    .line 273
    .line 274
    cmp-long v12, p11, v19

    .line 275
    .line 276
    if-eqz v12, :cond_10

    .line 277
    .line 278
    sub-long v7, v5, v7

    .line 279
    .line 280
    mul-long v7, v7, p11

    .line 281
    .line 282
    long-to-float v7, v7

    .line 283
    iget v8, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->h:F

    .line 284
    .line 285
    :goto_3
    div-float/2addr v7, v8

    .line 286
    float-to-long v7, v7

    .line 287
    goto :goto_4

    .line 288
    :cond_10
    iget-wide v7, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->q:J

    .line 289
    .line 290
    sub-long v7, v1, v7

    .line 291
    .line 292
    mul-long v7, v7, v21

    .line 293
    .line 294
    long-to-float v7, v7

    .line 295
    iget v8, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->h:F

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :goto_4
    iget-wide v12, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->p:J

    .line 299
    .line 300
    add-long/2addr v12, v7

    .line 301
    sub-long v7, v10, v12

    .line 302
    .line 303
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 304
    .line 305
    .line 306
    move-result-wide v7

    .line 307
    const-wide/32 v23, 0x1312d00

    .line 308
    .line 309
    .line 310
    cmp-long v7, v7, v23

    .line 311
    .line 312
    if-gtz v7, :cond_11

    .line 313
    .line 314
    move-wide v10, v12

    .line 315
    goto :goto_5

    .line 316
    :cond_11
    invoke-virtual {v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b()V

    .line 317
    .line 318
    .line 319
    :cond_12
    :goto_5
    iput-wide v5, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->l:J

    .line 320
    .line 321
    iput-wide v10, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->m:J

    .line 322
    .line 323
    iput-wide v1, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->n:J

    .line 324
    .line 325
    iget-object v1, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 326
    .line 327
    if-nez v1, :cond_14

    .line 328
    .line 329
    :cond_13
    :goto_6
    move-wide/from16 p7, v3

    .line 330
    .line 331
    goto/16 :goto_a

    .line 332
    .line 333
    :cond_14
    iget-wide v1, v1, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->l:J

    .line 334
    .line 335
    iget-object v5, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 336
    .line 337
    iget-wide v5, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->m:J

    .line 338
    .line 339
    cmp-long v7, v1, v19

    .line 340
    .line 341
    if-eqz v7, :cond_13

    .line 342
    .line 343
    cmp-long v7, v5, v19

    .line 344
    .line 345
    if-nez v7, :cond_15

    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_15
    sub-long v7, v10, v1

    .line 349
    .line 350
    div-long/2addr v7, v5

    .line 351
    mul-long/2addr v7, v5

    .line 352
    add-long/2addr v7, v1

    .line 353
    cmp-long v1, v10, v7

    .line 354
    .line 355
    if-gtz v1, :cond_16

    .line 356
    .line 357
    sub-long v1, v7, v5

    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_16
    add-long v1, v7, v5

    .line 361
    .line 362
    move-wide/from16 v27, v7

    .line 363
    .line 364
    move-wide v7, v1

    .line 365
    move-wide/from16 v1, v27

    .line 366
    .line 367
    :goto_7
    sub-long v12, v7, v10

    .line 368
    .line 369
    sub-long/2addr v10, v1

    .line 370
    sub-long v23, v12, v10

    .line 371
    .line 372
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(J)J

    .line 373
    .line 374
    .line 375
    move-result-wide v23

    .line 376
    const-wide/16 v25, 0x2

    .line 377
    .line 378
    div-long v25, v5, v25

    .line 379
    .line 380
    cmp-long v14, v23, v25

    .line 381
    .line 382
    if-gez v14, :cond_1a

    .line 383
    .line 384
    const-wide/16 v25, 0x4

    .line 385
    .line 386
    move-wide/from16 p1, v1

    .line 387
    .line 388
    div-long v1, v5, v25

    .line 389
    .line 390
    cmp-long v14, v23, v1

    .line 391
    .line 392
    move-wide/from16 p7, v3

    .line 393
    .line 394
    if-gez v14, :cond_19

    .line 395
    .line 396
    const-wide/16 p11, 0x0

    .line 397
    .line 398
    iget-wide v3, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->j:J

    .line 399
    .line 400
    cmp-long v14, v3, p11

    .line 401
    .line 402
    if-eqz v14, :cond_17

    .line 403
    .line 404
    iput-wide v3, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->k:J

    .line 405
    .line 406
    goto :goto_8

    .line 407
    :cond_17
    cmp-long v3, v12, v10

    .line 408
    .line 409
    if-gez v3, :cond_18

    .line 410
    .line 411
    neg-long v1, v1

    .line 412
    :cond_18
    iput-wide v1, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->k:J

    .line 413
    .line 414
    goto :goto_8

    .line 415
    :cond_19
    const-wide/16 v1, 0x0

    .line 416
    .line 417
    iput-wide v1, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->k:J

    .line 418
    .line 419
    goto :goto_8

    .line 420
    :cond_1a
    move-wide/from16 p1, v1

    .line 421
    .line 422
    move-wide/from16 p7, v3

    .line 423
    .line 424
    iget-wide v1, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->j:J

    .line 425
    .line 426
    iput-wide v1, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->k:J

    .line 427
    .line 428
    :goto_8
    iget-wide v1, v9, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->k:J

    .line 429
    .line 430
    add-long/2addr v12, v1

    .line 431
    cmp-long v1, v12, v10

    .line 432
    .line 433
    if-gez v1, :cond_1b

    .line 434
    .line 435
    goto :goto_9

    .line 436
    :cond_1b
    move-wide/from16 v7, p1

    .line 437
    .line 438
    :goto_9
    const-wide/16 v1, 0x50

    .line 439
    .line 440
    mul-long/2addr v5, v1

    .line 441
    const-wide/16 v1, 0x64

    .line 442
    .line 443
    div-long/2addr v5, v1

    .line 444
    sub-long v10, v7, v5

    .line 445
    .line 446
    :goto_a
    move-object/from16 v8, p15

    .line 447
    .line 448
    iput-wide v10, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->b:J

    .line 449
    .line 450
    sub-long v10, v10, p7

    .line 451
    .line 452
    div-long v1, v10, v21

    .line 453
    .line 454
    iput-wide v1, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 455
    .line 456
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 457
    .line 458
    cmp-long v3, v3, v19

    .line 459
    .line 460
    if-eqz v3, :cond_1c

    .line 461
    .line 462
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:Z

    .line 463
    .line 464
    if-nez v3, :cond_1c

    .line 465
    .line 466
    move v6, v15

    .line 467
    goto :goto_b

    .line 468
    :cond_1c
    move/from16 v6, v18

    .line 469
    .line 470
    :goto_b
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->a:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    .line 471
    .line 472
    move-wide/from16 v3, p3

    .line 473
    .line 474
    move/from16 v5, p10

    .line 475
    .line 476
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->T0(JJZZ)Z

    .line 477
    .line 478
    .line 479
    move-result v0

    .line 480
    if-eqz v0, :cond_1d

    .line 481
    .line 482
    :goto_c
    const/4 v0, 0x4

    .line 483
    return v0

    .line 484
    :cond_1d
    iget-wide v0, v8, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->a:J

    .line 485
    .line 486
    cmp-long v2, v0, v16

    .line 487
    .line 488
    if-gez v2, :cond_1e

    .line 489
    .line 490
    if-nez p10, :cond_1e

    .line 491
    .line 492
    move/from16 v18, v15

    .line 493
    .line 494
    :cond_1e
    if-eqz v18, :cond_20

    .line 495
    .line 496
    if-eqz v6, :cond_1f

    .line 497
    .line 498
    :goto_d
    return p5

    .line 499
    :cond_1f
    return p9

    .line 500
    :cond_20
    const-wide/32 v2, 0xc350

    .line 501
    .line 502
    .line 503
    cmp-long v0, v0, v2

    .line 504
    .line 505
    if-lez v0, :cond_21

    .line 506
    .line 507
    goto :goto_e

    .line 508
    :cond_21
    return v15

    .line 509
    :goto_e
    return p6
.end method

.method public final b(Z)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq p1, v3, :cond_0

    .line 13
    .line 14
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->m:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Z

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 27
    .line 28
    cmp-long p1, v3, v1

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    return v3

    .line 34
    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 35
    .line 36
    check-cast p1, Landroidx/media3/common/util/SystemClock;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    iget-wide v6, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 46
    .line 47
    cmp-long p1, v4, v6

    .line 48
    .line 49
    if-gez p1, :cond_3

    .line 50
    .line 51
    return v0

    .line 52
    :cond_3
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 53
    .line 54
    return v3
.end method

.method public final c(Z)V
    .locals 4

    .line 1
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->i:Z

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->c:J

    .line 6
    .line 7
    cmp-long p1, v2, v0

    .line 8
    .line 9
    if-lez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 12
    .line 13
    check-cast p1, Landroidx/media3/common/util/SystemClock;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    add-long/2addr v0, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->h:J

    .line 30
    .line 31
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->d:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->k:Landroidx/media3/common/util/Clock;

    .line 5
    .line 6
    check-cast v1, Landroidx/media3/common/util/SystemClock;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->D(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->g:J

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 22
    .line 23
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->d:Z

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b()V

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b:Z

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a:Landroid/content/Context;

    .line 33
    .line 34
    const-string v2, "display"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 47
    .line 48
    .line 49
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v4, 0x21

    .line 53
    .line 54
    if-lt v3, v4, :cond_1

    .line 55
    .line 56
    new-instance v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33;

    .line 57
    .line 58
    invoke-direct {v3, v2, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    move-object v2, v3

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    new-instance v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerBase;

    .line 64
    .line 65
    invoke-direct {v3, v2, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;-><init>(Landroid/view/Choreographer;Landroid/hardware/display/DisplayManager;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    const-string v3, "VideoFrameReleaseHelper"

    .line 71
    .line 72
    const-string v4, "Vsync sampling disabled due to platform error"

    .line 73
    .line 74
    invoke-static {v3, v4, v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    iput-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 78
    .line 79
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b:Z

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->a()V

    .line 86
    .line 87
    .line 88
    :cond_3
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c(Z)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 10
    .line 11
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 27
    .line 28
    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->b()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final f(Landroid/view/Surface;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->l:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->m:Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 13
    .line 14
    iget-object v2, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->e:Landroid/view/Surface;

    .line 15
    .line 16
    if-ne v2, p1, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->a()V

    .line 20
    .line 21
    .line 22
    iput-object p1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->e:Landroid/view/Surface;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c(Z)V

    .line 25
    .line 26
    .line 27
    :goto_1
    iget p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 28
    .line 29
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->e:I

    .line 34
    .line 35
    return-void
.end method

.method public final g(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->j:F

    .line 14
    .line 15
    cmpl-float v0, p1, v0

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->j:F

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->b:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 23
    .line 24
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->h:F

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->c(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
