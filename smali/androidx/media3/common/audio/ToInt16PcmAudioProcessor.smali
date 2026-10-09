.class public final Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final a(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 2

    .line 1
    iget p0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    .line 2
    .line 3
    invoke-static {p0}, Landroidx/media3/common/util/Util;->A(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 13
    .line 14
    iget v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    .line 15
    .line 16
    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->b:I

    .line 17
    .line 18
    invoke-direct {p0, v1, p1, v0}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public final j(Ljava/nio/ByteBuffer;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sub-int v4, v3, v2

    .line 14
    .line 15
    iget-object v5, v0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 16
    .line 17
    iget v5, v5, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    .line 18
    .line 19
    const/high16 v6, 0x72000000

    .line 20
    .line 21
    const/high16 v7, 0x71000000

    .line 22
    .line 23
    const/high16 v8, 0x70000000

    .line 24
    .line 25
    const/high16 v9, 0x60000000

    .line 26
    .line 27
    const/high16 v10, 0x50000000

    .line 28
    .line 29
    const/high16 v11, 0x10000000

    .line 30
    .line 31
    const/16 v12, 0x16

    .line 32
    .line 33
    const/16 v13, 0x15

    .line 34
    .line 35
    const/4 v14, 0x4

    .line 36
    const/4 v15, 0x3

    .line 37
    if-eq v5, v15, :cond_3

    .line 38
    .line 39
    if-eq v5, v14, :cond_4

    .line 40
    .line 41
    if-eq v5, v13, :cond_2

    .line 42
    .line 43
    if-eq v5, v12, :cond_4

    .line 44
    .line 45
    if-eq v5, v11, :cond_5

    .line 46
    .line 47
    if-eq v5, v10, :cond_2

    .line 48
    .line 49
    if-eq v5, v9, :cond_4

    .line 50
    .line 51
    if-eq v5, v8, :cond_1

    .line 52
    .line 53
    if-eq v5, v7, :cond_4

    .line 54
    .line 55
    if-ne v5, v6, :cond_0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Lio/sentry/d;->d()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    :goto_0
    div-int/lit8 v4, v4, 0x4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    div-int/lit8 v4, v4, 0x3

    .line 66
    .line 67
    :cond_3
    mul-int/lit8 v4, v4, 0x2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    div-int/lit8 v4, v4, 0x2

    .line 71
    .line 72
    :cond_5
    :goto_1
    invoke-virtual {v0, v4}, Landroidx/media3/common/audio/BaseAudioProcessor;->f(I)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    iget-object v0, v0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 77
    .line 78
    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    .line 79
    .line 80
    if-eq v0, v15, :cond_f

    .line 81
    .line 82
    const/high16 v15, 0x3f800000    # 1.0f

    .line 83
    .line 84
    const p0, 0x46fffe00    # 32767.0f

    .line 85
    .line 86
    .line 87
    const/high16 v5, -0x40800000    # -1.0f

    .line 88
    .line 89
    if-eq v0, v14, :cond_e

    .line 90
    .line 91
    if-eq v0, v13, :cond_d

    .line 92
    .line 93
    if-eq v0, v12, :cond_c

    .line 94
    .line 95
    if-eq v0, v11, :cond_b

    .line 96
    .line 97
    if-eq v0, v10, :cond_a

    .line 98
    .line 99
    if-eq v0, v9, :cond_9

    .line 100
    .line 101
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 102
    .line 103
    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    .line 104
    .line 105
    const-wide v13, 0x40dfffc000000000L    # 32767.0

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    if-eq v0, v8, :cond_8

    .line 111
    .line 112
    if-eq v0, v7, :cond_7

    .line 113
    .line 114
    if-ne v0, v6, :cond_6

    .line 115
    .line 116
    :goto_2
    if-ge v2, v3, :cond_10

    .line 117
    .line 118
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    .line 123
    .line 124
    .line 125
    move-result-wide v5

    .line 126
    invoke-static {v5, v6}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 127
    .line 128
    .line 129
    move-result-wide v5

    .line 130
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(DD)D

    .line 131
    .line 132
    .line 133
    move-result-wide v5

    .line 134
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 135
    .line 136
    .line 137
    move-result-wide v5

    .line 138
    mul-double/2addr v5, v13

    .line 139
    double-to-int v0, v5

    .line 140
    int-to-short v0, v0

    .line 141
    and-int/lit16 v5, v0, 0xff

    .line 142
    .line 143
    int-to-byte v5, v5

    .line 144
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 145
    .line 146
    .line 147
    shr-int/lit8 v0, v0, 0x8

    .line 148
    .line 149
    and-int/lit16 v0, v0, 0xff

    .line 150
    .line 151
    int-to-byte v0, v0

    .line 152
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 153
    .line 154
    .line 155
    add-int/lit8 v2, v2, 0x8

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    invoke-static {}, Lio/sentry/d;->d()V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_7
    :goto_3
    if-ge v2, v3, :cond_10

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-static {v0, v5, v15}, Landroidx/media3/common/util/Util;->f(FFF)F

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    mul-float v0, v0, p0

    .line 181
    .line 182
    float-to-int v0, v0

    .line 183
    int-to-short v0, v0

    .line 184
    and-int/lit16 v6, v0, 0xff

    .line 185
    .line 186
    int-to-byte v6, v6

    .line 187
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    .line 189
    .line 190
    shr-int/lit8 v0, v0, 0x8

    .line 191
    .line 192
    and-int/lit16 v0, v0, 0xff

    .line 193
    .line 194
    int-to-byte v0, v0

    .line 195
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 196
    .line 197
    .line 198
    add-int/lit8 v2, v2, 0x4

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_8
    :goto_4
    if-ge v2, v3, :cond_10

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getDouble(I)D

    .line 204
    .line 205
    .line 206
    move-result-wide v5

    .line 207
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(DD)D

    .line 208
    .line 209
    .line 210
    move-result-wide v5

    .line 211
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(DD)D

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    mul-double/2addr v5, v13

    .line 216
    double-to-int v0, v5

    .line 217
    int-to-short v0, v0

    .line 218
    and-int/lit16 v5, v0, 0xff

    .line 219
    .line 220
    int-to-byte v5, v5

    .line 221
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 222
    .line 223
    .line 224
    shr-int/lit8 v0, v0, 0x8

    .line 225
    .line 226
    and-int/lit16 v0, v0, 0xff

    .line 227
    .line 228
    int-to-byte v0, v0

    .line 229
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 230
    .line 231
    .line 232
    add-int/lit8 v2, v2, 0x8

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_9
    :goto_5
    if-ge v2, v3, :cond_10

    .line 236
    .line 237
    add-int/lit8 v0, v2, 0x1

    .line 238
    .line 239
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 251
    .line 252
    .line 253
    add-int/lit8 v2, v2, 0x4

    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_a
    :goto_6
    if-ge v2, v3, :cond_10

    .line 257
    .line 258
    add-int/lit8 v0, v2, 0x1

    .line 259
    .line 260
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 272
    .line 273
    .line 274
    add-int/lit8 v2, v2, 0x3

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_b
    :goto_7
    if-ge v2, v3, :cond_10

    .line 278
    .line 279
    add-int/lit8 v0, v2, 0x1

    .line 280
    .line 281
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 293
    .line 294
    .line 295
    add-int/lit8 v2, v2, 0x2

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_c
    :goto_8
    if-ge v2, v3, :cond_10

    .line 299
    .line 300
    add-int/lit8 v0, v2, 0x2

    .line 301
    .line 302
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 307
    .line 308
    .line 309
    add-int/lit8 v0, v2, 0x3

    .line 310
    .line 311
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 316
    .line 317
    .line 318
    add-int/lit8 v2, v2, 0x4

    .line 319
    .line 320
    goto :goto_8

    .line 321
    :cond_d
    :goto_9
    if-ge v2, v3, :cond_10

    .line 322
    .line 323
    add-int/lit8 v0, v2, 0x1

    .line 324
    .line 325
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 330
    .line 331
    .line 332
    add-int/lit8 v0, v2, 0x2

    .line 333
    .line 334
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 339
    .line 340
    .line 341
    add-int/lit8 v2, v2, 0x3

    .line 342
    .line 343
    goto :goto_9

    .line 344
    :cond_e
    :goto_a
    if-ge v2, v3, :cond_10

    .line 345
    .line 346
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getFloat(I)F

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    invoke-static {v0, v5, v15}, Landroidx/media3/common/util/Util;->f(FFF)F

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    mul-float v0, v0, p0

    .line 355
    .line 356
    float-to-int v0, v0

    .line 357
    int-to-short v0, v0

    .line 358
    and-int/lit16 v6, v0, 0xff

    .line 359
    .line 360
    int-to-byte v6, v6

    .line 361
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 362
    .line 363
    .line 364
    shr-int/lit8 v0, v0, 0x8

    .line 365
    .line 366
    and-int/lit16 v0, v0, 0xff

    .line 367
    .line 368
    int-to-byte v0, v0

    .line 369
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 370
    .line 371
    .line 372
    add-int/lit8 v2, v2, 0x4

    .line 373
    .line 374
    goto :goto_a

    .line 375
    :cond_f
    :goto_b
    if-ge v2, v3, :cond_10

    .line 376
    .line 377
    const/4 v0, 0x0

    .line 378
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    and-int/lit16 v0, v0, 0xff

    .line 386
    .line 387
    add-int/lit8 v0, v0, -0x80

    .line 388
    .line 389
    int-to-byte v0, v0

    .line 390
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 391
    .line 392
    .line 393
    add-int/lit8 v2, v2, 0x1

    .line 394
    .line 395
    goto :goto_b

    .line 396
    :cond_10
    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 404
    .line 405
    .line 406
    return-void
.end method
