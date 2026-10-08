.class public final Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/rrweb/RRWebVideoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/rrweb/RRWebVideoEvent;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebVideoEvent;
    .locals 10

    .line 1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/rrweb/RRWebVideoEvent;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/rrweb/RRWebVideoEvent;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 16
    .line 17
    if-ne v3, v4, :cond_20

    .line 18
    .line 19
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-string v4, "data"

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_2

    .line 33
    .line 34
    invoke-static {v0, v3, p0, p1}, Lio/sentry/rrweb/RRWebEvent$Deserializer;->a(Lio/sentry/rrweb/RRWebEvent;Ljava/lang/String;Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    new-instance v2, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-interface {p0, p1, v2, v3}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 52
    .line 53
    .line 54
    move-object v3, v1

    .line 55
    :goto_1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 60
    .line 61
    if-ne v4, v5, :cond_1f

    .line 62
    .line 63
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v5, "payload"

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    const-string v6, ""

    .line 77
    .line 78
    if-nez v5, :cond_6

    .line 79
    .line 80
    const-string v5, "tag"

    .line 81
    .line 82
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_4

    .line 87
    .line 88
    if-nez v3, :cond_3

    .line 89
    .line 90
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-interface {p0, p1, v3, v4}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-nez v4, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    move-object v6, v4

    .line 107
    :goto_2
    iput-object v6, v0, Lio/sentry/rrweb/RRWebVideoEvent;->l:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_6
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 111
    .line 112
    .line 113
    move-object v4, v1

    .line 114
    :goto_3
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    sget-object v7, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 119
    .line 120
    if-ne v5, v7, :cond_1e

    .line 121
    .line 122
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v7

    .line 133
    const/4 v8, 0x0

    .line 134
    const/4 v9, -0x1

    .line 135
    sparse-switch v7, :sswitch_data_0

    .line 136
    .line 137
    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :sswitch_0
    const-string v7, "frameRateType"

    .line 141
    .line 142
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-nez v7, :cond_7

    .line 147
    .line 148
    goto/16 :goto_4

    .line 149
    .line 150
    :cond_7
    const/16 v9, 0xb

    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :sswitch_1
    const-string v7, "encoding"

    .line 155
    .line 156
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v7

    .line 160
    if-nez v7, :cond_8

    .line 161
    .line 162
    goto/16 :goto_4

    .line 163
    .line 164
    :cond_8
    const/16 v9, 0xa

    .line 165
    .line 166
    goto/16 :goto_4

    .line 167
    .line 168
    :sswitch_2
    const-string v7, "frameRate"

    .line 169
    .line 170
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-nez v7, :cond_9

    .line 175
    .line 176
    goto/16 :goto_4

    .line 177
    .line 178
    :cond_9
    const/16 v9, 0x9

    .line 179
    .line 180
    goto/16 :goto_4

    .line 181
    .line 182
    :sswitch_3
    const-string v7, "width"

    .line 183
    .line 184
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-nez v7, :cond_a

    .line 189
    .line 190
    goto/16 :goto_4

    .line 191
    .line 192
    :cond_a
    const/16 v9, 0x8

    .line 193
    .line 194
    goto/16 :goto_4

    .line 195
    .line 196
    :sswitch_4
    const-string v7, "size"

    .line 197
    .line 198
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    if-nez v7, :cond_b

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_b
    const/4 v9, 0x7

    .line 206
    goto :goto_4

    .line 207
    :sswitch_5
    const-string v7, "left"

    .line 208
    .line 209
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-nez v7, :cond_c

    .line 214
    .line 215
    goto :goto_4

    .line 216
    :cond_c
    const/4 v9, 0x6

    .line 217
    goto :goto_4

    .line 218
    :sswitch_6
    const-string v7, "top"

    .line 219
    .line 220
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    if-nez v7, :cond_d

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_d
    const/4 v9, 0x5

    .line 228
    goto :goto_4

    .line 229
    :sswitch_7
    const-string v7, "frameCount"

    .line 230
    .line 231
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    if-nez v7, :cond_e

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_e
    const/4 v9, 0x4

    .line 239
    goto :goto_4

    .line 240
    :sswitch_8
    const-string v7, "container"

    .line 241
    .line 242
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    if-nez v7, :cond_f

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_f
    const/4 v9, 0x3

    .line 250
    goto :goto_4

    .line 251
    :sswitch_9
    const-string v7, "height"

    .line 252
    .line 253
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    if-nez v7, :cond_10

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_10
    const/4 v9, 0x2

    .line 261
    goto :goto_4

    .line 262
    :sswitch_a
    const-string v7, "segmentId"

    .line 263
    .line 264
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    if-nez v7, :cond_11

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :cond_11
    const/4 v9, 0x1

    .line 272
    goto :goto_4

    .line 273
    :sswitch_b
    const-string v7, "duration"

    .line 274
    .line 275
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    if-nez v7, :cond_12

    .line 280
    .line 281
    goto :goto_4

    .line 282
    :cond_12
    move v9, v8

    .line 283
    :goto_4
    packed-switch v9, :pswitch_data_0

    .line 284
    .line 285
    .line 286
    if-nez v4, :cond_13

    .line 287
    .line 288
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    .line 289
    .line 290
    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 291
    .line 292
    .line 293
    :cond_13
    invoke-interface {p0, p1, v4, v5}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_3

    .line 297
    .line 298
    :pswitch_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    if-nez v5, :cond_14

    .line 303
    .line 304
    move-object v5, v6

    .line 305
    :cond_14
    iput-object v5, v0, Lio/sentry/rrweb/RRWebVideoEvent;->u:Ljava/lang/String;

    .line 306
    .line 307
    goto/16 :goto_3

    .line 308
    .line 309
    :pswitch_1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v5

    .line 313
    if-nez v5, :cond_15

    .line 314
    .line 315
    move-object v5, v6

    .line 316
    :cond_15
    iput-object v5, v0, Lio/sentry/rrweb/RRWebVideoEvent;->p:Ljava/lang/String;

    .line 317
    .line 318
    goto/16 :goto_3

    .line 319
    .line 320
    :pswitch_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    if-nez v5, :cond_16

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_16
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result v8

    .line 331
    :goto_5
    iput v8, v0, Lio/sentry/rrweb/RRWebVideoEvent;->v:I

    .line 332
    .line 333
    goto/16 :goto_3

    .line 334
    .line 335
    :pswitch_3
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 336
    .line 337
    .line 338
    move-result-object v5

    .line 339
    if-nez v5, :cond_17

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_17
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 343
    .line 344
    .line 345
    move-result v8

    .line 346
    :goto_6
    iput v8, v0, Lio/sentry/rrweb/RRWebVideoEvent;->s:I

    .line 347
    .line 348
    goto/16 :goto_3

    .line 349
    .line 350
    :pswitch_4
    invoke-interface {p0}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    if-nez v5, :cond_18

    .line 355
    .line 356
    const-wide/16 v7, 0x0

    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_18
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 360
    .line 361
    .line 362
    move-result-wide v7

    .line 363
    :goto_7
    iput-wide v7, v0, Lio/sentry/rrweb/RRWebVideoEvent;->n:J

    .line 364
    .line 365
    goto/16 :goto_3

    .line 366
    .line 367
    :pswitch_5
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    if-nez v5, :cond_19

    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_19
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 375
    .line 376
    .line 377
    move-result v8

    .line 378
    :goto_8
    iput v8, v0, Lio/sentry/rrweb/RRWebVideoEvent;->w:I

    .line 379
    .line 380
    goto/16 :goto_3

    .line 381
    .line 382
    :pswitch_6
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    if-nez v5, :cond_1a

    .line 387
    .line 388
    goto :goto_9

    .line 389
    :cond_1a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    :goto_9
    iput v8, v0, Lio/sentry/rrweb/RRWebVideoEvent;->x:I

    .line 394
    .line 395
    goto/16 :goto_3

    .line 396
    .line 397
    :pswitch_7
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    if-nez v5, :cond_1b

    .line 402
    .line 403
    goto :goto_a

    .line 404
    :cond_1b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 405
    .line 406
    .line 407
    move-result v8

    .line 408
    :goto_a
    iput v8, v0, Lio/sentry/rrweb/RRWebVideoEvent;->t:I

    .line 409
    .line 410
    goto/16 :goto_3

    .line 411
    .line 412
    :pswitch_8
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    if-nez v5, :cond_1c

    .line 417
    .line 418
    move-object v5, v6

    .line 419
    :cond_1c
    iput-object v5, v0, Lio/sentry/rrweb/RRWebVideoEvent;->q:Ljava/lang/String;

    .line 420
    .line 421
    goto/16 :goto_3

    .line 422
    .line 423
    :pswitch_9
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v5

    .line 427
    if-nez v5, :cond_1d

    .line 428
    .line 429
    goto :goto_b

    .line 430
    :cond_1d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 431
    .line 432
    .line 433
    move-result v8

    .line 434
    :goto_b
    iput v8, v0, Lio/sentry/rrweb/RRWebVideoEvent;->r:I

    .line 435
    .line 436
    goto/16 :goto_3

    .line 437
    .line 438
    :pswitch_a
    invoke-interface {p0}, Lio/sentry/ObjectReader;->nextInt()I

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    iput v5, v0, Lio/sentry/rrweb/RRWebVideoEvent;->m:I

    .line 443
    .line 444
    goto/16 :goto_3

    .line 445
    .line 446
    :pswitch_b
    invoke-interface {p0}, Lio/sentry/ObjectReader;->nextLong()J

    .line 447
    .line 448
    .line 449
    move-result-wide v7

    .line 450
    iput-wide v7, v0, Lio/sentry/rrweb/RRWebVideoEvent;->o:J

    .line 451
    .line 452
    goto/16 :goto_3

    .line 453
    .line 454
    :cond_1e
    iput-object v4, v0, Lio/sentry/rrweb/RRWebVideoEvent;->z:Ljava/util/concurrent/ConcurrentHashMap;

    .line 455
    .line 456
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_1

    .line 460
    .line 461
    :cond_1f
    iput-object v3, v0, Lio/sentry/rrweb/RRWebVideoEvent;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 462
    .line 463
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_0

    .line 467
    .line 468
    :cond_20
    iput-object v2, v0, Lio/sentry/rrweb/RRWebVideoEvent;->y:Ljava/util/HashMap;

    .line 469
    .line 470
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 471
    .line 472
    .line 473
    return-object v0

    .line 474
    nop

    .line 475
    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_b
        -0x61065852 -> :sswitch_a
        -0x48c76ed9 -> :sswitch_9
        -0x187eb37f -> :sswitch_8
        -0x11ac6c5e -> :sswitch_7
        0x1c155 -> :sswitch_6
        0x32a007 -> :sswitch_5
        0x35e001 -> :sswitch_4
        0x6be2dc6 -> :sswitch_3
        0x207cebed -> :sswitch_2
        0x65ff2d53 -> :sswitch_1
        0x7f4330c7 -> :sswitch_0
    .end sparse-switch

    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/rrweb/RRWebVideoEvent$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/rrweb/RRWebVideoEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
