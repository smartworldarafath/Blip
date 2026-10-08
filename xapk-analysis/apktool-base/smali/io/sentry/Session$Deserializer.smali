.class public final Lio/sentry/Session$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/Session;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;
    .locals 2

    .line 1
    const-string v0, "Missing required field \""

    .line 2
    .line 3
    const-string v1, "\""

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 15
    .line 16
    invoke-interface {p1, v1, p0, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->H0()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move-object v2, v1

    .line 8
    move-object v3, v2

    .line 9
    move-object v4, v3

    .line 10
    move-object v5, v4

    .line 11
    move-object v7, v5

    .line 12
    move-object v8, v7

    .line 13
    move-object v9, v8

    .line 14
    move-object v10, v9

    .line 15
    move-object v11, v10

    .line 16
    move-object v12, v11

    .line 17
    move-object v13, v12

    .line 18
    move-object v14, v13

    .line 19
    move-object v15, v14

    .line 20
    move-object/from16 v16, v15

    .line 21
    .line 22
    :goto_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    move-object/from16 p0, v1

    .line 27
    .line 28
    sget-object v1, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 29
    .line 30
    move-object/from16 v17, v2

    .line 31
    .line 32
    const-string v2, "release"

    .line 33
    .line 34
    move-object/from16 v18, v3

    .line 35
    .line 36
    const-string v3, "status"

    .line 37
    .line 38
    move-object/from16 v19, v4

    .line 39
    .line 40
    const-string v4, "errors"

    .line 41
    .line 42
    move-object/from16 v20, v5

    .line 43
    .line 44
    const-string v5, "started"

    .line 45
    .line 46
    if-ne v6, v1, :cond_14

    .line 47
    .line 48
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const/16 v21, 0x3

    .line 60
    .line 61
    const/16 v22, 0x2

    .line 62
    .line 63
    const/16 v23, 0x1

    .line 64
    .line 65
    const/16 v24, 0x0

    .line 66
    .line 67
    const/16 v25, -0x1

    .line 68
    .line 69
    sparse-switch v6, :sswitch_data_0

    .line 70
    .line 71
    .line 72
    :goto_1
    move/from16 v3, v25

    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :sswitch_0
    const-string v3, "abnormal_mechanism"

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_0

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const/16 v3, 0xa

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :sswitch_1
    const-string v3, "attrs"

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_1
    const/16 v3, 0x9

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :sswitch_2
    const-string v3, "timestamp"

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    const/16 v3, 0x8

    .line 112
    .line 113
    goto/16 :goto_2

    .line 114
    .line 115
    :sswitch_3
    const-string v3, "init"

    .line 116
    .line 117
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_3

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    const/4 v3, 0x7

    .line 125
    goto :goto_2

    .line 126
    :sswitch_4
    const-string v3, "sid"

    .line 127
    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_4

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    const/4 v3, 0x6

    .line 136
    goto :goto_2

    .line 137
    :sswitch_5
    const-string v3, "seq"

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    if-nez v3, :cond_5

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_5
    const/4 v3, 0x5

    .line 147
    goto :goto_2

    .line 148
    :sswitch_6
    const-string v3, "did"

    .line 149
    .line 150
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_6

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_6
    const/4 v3, 0x4

    .line 158
    goto :goto_2

    .line 159
    :sswitch_7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-nez v3, :cond_7

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_7
    move/from16 v3, v21

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :sswitch_8
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_8

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_8
    move/from16 v3, v22

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :sswitch_9
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-nez v3, :cond_9

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_9
    move/from16 v3, v23

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :sswitch_a
    const-string v3, "duration"

    .line 190
    .line 191
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-nez v3, :cond_a

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_a
    move/from16 v3, v24

    .line 199
    .line 200
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 201
    .line 202
    .line 203
    if-nez v17, :cond_b

    .line 204
    .line 205
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 206
    .line 207
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 208
    .line 209
    .line 210
    :goto_3
    move-object/from16 v6, p1

    .line 211
    .line 212
    goto :goto_4

    .line 213
    :cond_b
    move-object/from16 v2, v17

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :goto_4
    invoke-interface {v6, v0, v2, v1}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    move-object/from16 v1, p0

    .line 220
    .line 221
    :goto_5
    move-object/from16 v3, v18

    .line 222
    .line 223
    move-object/from16 v4, v19

    .line 224
    .line 225
    move-object/from16 v5, v20

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :pswitch_0
    move-object/from16 v6, p1

    .line 230
    .line 231
    invoke-interface {v6}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    move-object/from16 v16, v1

    .line 236
    .line 237
    :goto_6
    move-object/from16 v2, v17

    .line 238
    .line 239
    move-object/from16 v3, v18

    .line 240
    .line 241
    :goto_7
    move-object/from16 v4, v19

    .line 242
    .line 243
    :goto_8
    move-object/from16 v5, v20

    .line 244
    .line 245
    :goto_9
    move-object/from16 v1, p0

    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :pswitch_1
    move-object/from16 v6, p1

    .line 250
    .line 251
    invoke-interface {v6}, Lio/sentry/ObjectReader;->H0()V

    .line 252
    .line 253
    .line 254
    :goto_a
    invoke-interface {v6}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 259
    .line 260
    if-ne v1, v3, :cond_10

    .line 261
    .line 262
    invoke-interface {v6}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    sparse-switch v3, :sswitch_data_1

    .line 274
    .line 275
    .line 276
    :goto_b
    move/from16 v1, v25

    .line 277
    .line 278
    goto :goto_c

    .line 279
    :sswitch_b
    const-string v3, "user_agent"

    .line 280
    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_c

    .line 286
    .line 287
    goto :goto_b

    .line 288
    :cond_c
    move/from16 v1, v21

    .line 289
    .line 290
    goto :goto_c

    .line 291
    :sswitch_c
    const-string v3, "ip_address"

    .line 292
    .line 293
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-nez v1, :cond_d

    .line 298
    .line 299
    goto :goto_b

    .line 300
    :cond_d
    move/from16 v1, v22

    .line 301
    .line 302
    goto :goto_c

    .line 303
    :sswitch_d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_e

    .line 308
    .line 309
    goto :goto_b

    .line 310
    :cond_e
    move/from16 v1, v23

    .line 311
    .line 312
    goto :goto_c

    .line 313
    :sswitch_e
    const-string v3, "environment"

    .line 314
    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_f

    .line 320
    .line 321
    goto :goto_b

    .line 322
    :cond_f
    move/from16 v1, v24

    .line 323
    .line 324
    :goto_c
    packed-switch v1, :pswitch_data_1

    .line 325
    .line 326
    .line 327
    invoke-interface {v6}, Lio/sentry/ObjectReader;->x()V

    .line 328
    .line 329
    .line 330
    goto :goto_a

    .line 331
    :pswitch_2
    invoke-interface {v6}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    move-object v13, v1

    .line 336
    goto :goto_a

    .line 337
    :pswitch_3
    invoke-interface {v6}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    move-object v12, v1

    .line 342
    goto :goto_a

    .line 343
    :pswitch_4
    invoke-interface {v6}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    move-object v15, v1

    .line 348
    goto :goto_a

    .line 349
    :pswitch_5
    invoke-interface {v6}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    move-object v14, v1

    .line 354
    goto :goto_a

    .line 355
    :cond_10
    invoke-interface {v6}, Lio/sentry/ObjectReader;->i0()V

    .line 356
    .line 357
    .line 358
    :cond_11
    :goto_d
    move-object/from16 v1, p0

    .line 359
    .line 360
    :goto_e
    move-object/from16 v2, v17

    .line 361
    .line 362
    goto/16 :goto_5

    .line 363
    .line 364
    :pswitch_6
    move-object/from16 v6, p1

    .line 365
    .line 366
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    move-object v5, v1

    .line 371
    move-object/from16 v2, v17

    .line 372
    .line 373
    move-object/from16 v3, v18

    .line 374
    .line 375
    move-object/from16 v4, v19

    .line 376
    .line 377
    goto/16 :goto_9

    .line 378
    .line 379
    :pswitch_7
    move-object/from16 v6, p1

    .line 380
    .line 381
    invoke-interface {v6}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    move-object v9, v1

    .line 386
    goto/16 :goto_6

    .line 387
    .line 388
    :pswitch_8
    move-object/from16 v6, p1

    .line 389
    .line 390
    invoke-interface {v6}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    if-eqz v1, :cond_13

    .line 395
    .line 396
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    const/16 v3, 0x24

    .line 401
    .line 402
    if-eq v2, v3, :cond_12

    .line 403
    .line 404
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    const/16 v3, 0x20

    .line 409
    .line 410
    if-ne v2, v3, :cond_13

    .line 411
    .line 412
    :cond_12
    move-object v8, v1

    .line 413
    goto/16 :goto_6

    .line 414
    .line 415
    :cond_13
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 416
    .line 417
    const-string v3, "%s sid is not valid."

    .line 418
    .line 419
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    invoke-interface {v0, v2, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    .line 425
    .line 426
    goto :goto_d

    .line 427
    :pswitch_9
    move-object/from16 v6, p1

    .line 428
    .line 429
    invoke-interface {v6}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    move-object v10, v1

    .line 434
    goto/16 :goto_6

    .line 435
    .line 436
    :pswitch_a
    move-object/from16 v6, p1

    .line 437
    .line 438
    invoke-interface {v6}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    move-object v7, v1

    .line 443
    goto/16 :goto_6

    .line 444
    .line 445
    :pswitch_b
    move-object/from16 v6, p1

    .line 446
    .line 447
    invoke-interface {v6}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-static {v1}, Lio/sentry/util/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    if-eqz v1, :cond_11

    .line 456
    .line 457
    invoke-static {v1}, Lio/sentry/Session$State;->valueOf(Ljava/lang/String;)Lio/sentry/Session$State;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    move-object v3, v1

    .line 462
    move-object/from16 v2, v17

    .line 463
    .line 464
    goto/16 :goto_7

    .line 465
    .line 466
    :pswitch_c
    move-object/from16 v6, p1

    .line 467
    .line 468
    invoke-interface {v6}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    goto :goto_e

    .line 473
    :pswitch_d
    move-object/from16 v6, p1

    .line 474
    .line 475
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    move-object v4, v1

    .line 480
    move-object/from16 v2, v17

    .line 481
    .line 482
    move-object/from16 v3, v18

    .line 483
    .line 484
    goto/16 :goto_8

    .line 485
    .line 486
    :pswitch_e
    move-object/from16 v6, p1

    .line 487
    .line 488
    invoke-interface {v6}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    move-object v11, v1

    .line 493
    goto/16 :goto_6

    .line 494
    .line 495
    :cond_14
    move-object/from16 v6, p1

    .line 496
    .line 497
    if-eqz v18, :cond_18

    .line 498
    .line 499
    if-eqz v19, :cond_17

    .line 500
    .line 501
    if-eqz p0, :cond_16

    .line 502
    .line 503
    if-eqz v15, :cond_15

    .line 504
    .line 505
    new-instance v2, Lio/sentry/Session;

    .line 506
    .line 507
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    move v6, v0

    .line 512
    move-object/from16 v1, v17

    .line 513
    .line 514
    move-object/from16 v3, v18

    .line 515
    .line 516
    move-object/from16 v4, v19

    .line 517
    .line 518
    move-object/from16 v5, v20

    .line 519
    .line 520
    invoke-direct/range {v2 .. v16}, Lio/sentry/Session;-><init>(Lio/sentry/Session$State;Ljava/util/Date;Ljava/util/Date;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    iput-object v1, v2, Lio/sentry/Session;->y:Ljava/util/concurrent/ConcurrentHashMap;

    .line 524
    .line 525
    invoke-interface/range {p1 .. p1}, Lio/sentry/ObjectReader;->i0()V

    .line 526
    .line 527
    .line 528
    return-object v2

    .line 529
    :cond_15
    invoke-static {v2, v0}, Lio/sentry/Session$Deserializer;->b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    throw v0

    .line 534
    :cond_16
    invoke-static {v4, v0}, Lio/sentry/Session$Deserializer;->b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    throw v0

    .line 539
    :cond_17
    invoke-static {v5, v0}, Lio/sentry/Session$Deserializer;->b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    throw v0

    .line 544
    :cond_18
    invoke-static {v3, v0}, Lio/sentry/Session$Deserializer;->b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    throw v0

    .line 549
    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_a
        -0x7114bf7f -> :sswitch_9
        -0x4d2a9095 -> :sswitch_8
        -0x3532300e -> :sswitch_7
        0x1847f -> :sswitch_6
        0x1bc5f -> :sswitch_5
        0x1bcce -> :sswitch_4
        0x316510 -> :sswitch_3
        0x3492916 -> :sswitch_2
        0x58d64a2 -> :sswitch_1
        0xcbd1022 -> :sswitch_0
    .end sparse-switch

    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    :sswitch_data_1
    .sparse-switch
        -0x51ecded -> :sswitch_e
        0x41012807 -> :sswitch_d
        0x583738dc -> :sswitch_c
        0x724f4d91 -> :sswitch_b
    .end sparse-switch

    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
