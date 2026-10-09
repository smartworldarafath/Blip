.class public final Lio/sentry/ProfilingTraceData$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/ProfilingTraceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/ProfilingTraceData;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-interface {v0}, Lio/sentry/ObjectReader;->H0()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lio/sentry/ProfilingTraceData;

    .line 9
    .line 10
    new-instance v3, Ljava/io/File;

    .line 11
    .line 12
    const-string v4, "dummy"

    .line 13
    .line 14
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    sget-object v6, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 27
    .line 28
    invoke-virtual {v6}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    sget-object v6, Lio/sentry/NoOpTransaction;->a:Lio/sentry/NoOpTransaction;

    .line 33
    .line 34
    invoke-virtual {v6}, Lio/sentry/NoOpTransaction;->r()Lio/sentry/SpanContext;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-object v6, v6, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 39
    .line 40
    invoke-virtual {v6}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    new-instance v12, Lio/sentry/b;

    .line 45
    .line 46
    const/4 v6, 0x2

    .line 47
    invoke-direct {v12, v6}, Lio/sentry/b;-><init>(I)V

    .line 48
    .line 49
    .line 50
    new-instance v22, Ljava/util/HashMap;

    .line 51
    .line 52
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    move v9, v6

    .line 56
    const-string v6, ""

    .line 57
    .line 58
    move v10, v9

    .line 59
    const-string v9, "0"

    .line 60
    .line 61
    move v11, v10

    .line 62
    const/4 v10, 0x0

    .line 63
    move v13, v11

    .line 64
    const-string v11, ""

    .line 65
    .line 66
    move v14, v13

    .line 67
    const/4 v13, 0x0

    .line 68
    move v15, v14

    .line 69
    const/4 v14, 0x0

    .line 70
    move/from16 v16, v15

    .line 71
    .line 72
    const/4 v15, 0x0

    .line 73
    move/from16 v17, v16

    .line 74
    .line 75
    const/16 v16, 0x0

    .line 76
    .line 77
    move/from16 v18, v17

    .line 78
    .line 79
    const/16 v17, 0x0

    .line 80
    .line 81
    move/from16 v19, v18

    .line 82
    .line 83
    const/16 v18, 0x0

    .line 84
    .line 85
    move/from16 v20, v19

    .line 86
    .line 87
    const/16 v19, 0x0

    .line 88
    .line 89
    move/from16 v21, v20

    .line 90
    .line 91
    const/16 v20, 0x0

    .line 92
    .line 93
    move/from16 v23, v21

    .line 94
    .line 95
    const-string v21, "normal"

    .line 96
    .line 97
    invoke-direct/range {v2 .. v22}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Ljava/util/Date;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    :cond_0
    :goto_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    sget-object v5, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 106
    .line 107
    if-ne v4, v5, :cond_1c

    .line 108
    .line 109
    invoke-interface {v0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    const/4 v6, -0x1

    .line 121
    sparse-switch v5, :sswitch_data_0

    .line 122
    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :sswitch_0
    const-string v5, "transactions"

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_1

    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_1
    const/16 v6, 0x19

    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :sswitch_1
    const-string v5, "sampled_profile"

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-nez v5, :cond_2

    .line 147
    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :cond_2
    const/16 v6, 0x18

    .line 151
    .line 152
    goto/16 :goto_1

    .line 153
    .line 154
    :sswitch_2
    const-string v5, "platform"

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-nez v5, :cond_3

    .line 161
    .line 162
    goto/16 :goto_1

    .line 163
    .line 164
    :cond_3
    const/16 v6, 0x17

    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :sswitch_3
    const-string v5, "trace_id"

    .line 169
    .line 170
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    if-nez v5, :cond_4

    .line 175
    .line 176
    goto/16 :goto_1

    .line 177
    .line 178
    :cond_4
    const/16 v6, 0x16

    .line 179
    .line 180
    goto/16 :goto_1

    .line 181
    .line 182
    :sswitch_4
    const-string v5, "truncation_reason"

    .line 183
    .line 184
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-nez v5, :cond_5

    .line 189
    .line 190
    goto/16 :goto_1

    .line 191
    .line 192
    :cond_5
    const/16 v6, 0x15

    .line 193
    .line 194
    goto/16 :goto_1

    .line 195
    .line 196
    :sswitch_5
    const-string v5, "device_os_version"

    .line 197
    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v5

    .line 202
    if-nez v5, :cond_6

    .line 203
    .line 204
    goto/16 :goto_1

    .line 205
    .line 206
    :cond_6
    const/16 v6, 0x14

    .line 207
    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :sswitch_6
    const-string v5, "transaction_id"

    .line 211
    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v5

    .line 216
    if-nez v5, :cond_7

    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :cond_7
    const/16 v6, 0x13

    .line 221
    .line 222
    goto/16 :goto_1

    .line 223
    .line 224
    :sswitch_7
    const-string v5, "architecture"

    .line 225
    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    if-nez v5, :cond_8

    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_8
    const/16 v6, 0x12

    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :sswitch_8
    const-string v5, "device_os_name"

    .line 239
    .line 240
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-nez v5, :cond_9

    .line 245
    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :cond_9
    const/16 v6, 0x11

    .line 249
    .line 250
    goto/16 :goto_1

    .line 251
    .line 252
    :sswitch_9
    const-string v5, "transaction_name"

    .line 253
    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_a

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_a
    const/16 v6, 0x10

    .line 263
    .line 264
    goto/16 :goto_1

    .line 265
    .line 266
    :sswitch_a
    const-string v5, "timestamp"

    .line 267
    .line 268
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-nez v5, :cond_b

    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_b
    const/16 v6, 0xf

    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :sswitch_b
    const-string v5, "environment"

    .line 281
    .line 282
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    if-nez v5, :cond_c

    .line 287
    .line 288
    goto/16 :goto_1

    .line 289
    .line 290
    :cond_c
    const/16 v6, 0xe

    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :sswitch_c
    const-string v5, "version_name"

    .line 295
    .line 296
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    if-nez v5, :cond_d

    .line 301
    .line 302
    goto/16 :goto_1

    .line 303
    .line 304
    :cond_d
    const/16 v6, 0xd

    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :sswitch_d
    const-string v5, "version_code"

    .line 309
    .line 310
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    if-nez v5, :cond_e

    .line 315
    .line 316
    goto/16 :goto_1

    .line 317
    .line 318
    :cond_e
    const/16 v6, 0xc

    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :sswitch_e
    const-string v5, "device_cpu_frequencies"

    .line 323
    .line 324
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v5

    .line 328
    if-nez v5, :cond_f

    .line 329
    .line 330
    goto/16 :goto_1

    .line 331
    .line 332
    :cond_f
    const/16 v6, 0xb

    .line 333
    .line 334
    goto/16 :goto_1

    .line 335
    .line 336
    :sswitch_f
    const-string v5, "device_physical_memory_bytes"

    .line 337
    .line 338
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v5

    .line 342
    if-nez v5, :cond_10

    .line 343
    .line 344
    goto/16 :goto_1

    .line 345
    .line 346
    :cond_10
    const/16 v6, 0xa

    .line 347
    .line 348
    goto/16 :goto_1

    .line 349
    .line 350
    :sswitch_10
    const-string v5, "measurements"

    .line 351
    .line 352
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v5

    .line 356
    if-nez v5, :cond_11

    .line 357
    .line 358
    goto/16 :goto_1

    .line 359
    .line 360
    :cond_11
    const/16 v6, 0x9

    .line 361
    .line 362
    goto/16 :goto_1

    .line 363
    .line 364
    :sswitch_11
    const-string v5, "duration_ns"

    .line 365
    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-nez v5, :cond_12

    .line 371
    .line 372
    goto/16 :goto_1

    .line 373
    .line 374
    :cond_12
    const/16 v6, 0x8

    .line 375
    .line 376
    goto/16 :goto_1

    .line 377
    .line 378
    :sswitch_12
    const-string v5, "device_is_emulator"

    .line 379
    .line 380
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-nez v5, :cond_13

    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_13
    const/4 v6, 0x7

    .line 388
    goto :goto_1

    .line 389
    :sswitch_13
    const-string v5, "device_model"

    .line 390
    .line 391
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    if-nez v5, :cond_14

    .line 396
    .line 397
    goto :goto_1

    .line 398
    :cond_14
    const/4 v6, 0x6

    .line 399
    goto :goto_1

    .line 400
    :sswitch_14
    const-string v5, "device_os_build_number"

    .line 401
    .line 402
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-nez v5, :cond_15

    .line 407
    .line 408
    goto :goto_1

    .line 409
    :cond_15
    const/4 v6, 0x5

    .line 410
    goto :goto_1

    .line 411
    :sswitch_15
    const-string v5, "profile_id"

    .line 412
    .line 413
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    if-nez v5, :cond_16

    .line 418
    .line 419
    goto :goto_1

    .line 420
    :cond_16
    const/4 v6, 0x4

    .line 421
    goto :goto_1

    .line 422
    :sswitch_16
    const-string v5, "device_locale"

    .line 423
    .line 424
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v5

    .line 428
    if-nez v5, :cond_17

    .line 429
    .line 430
    goto :goto_1

    .line 431
    :cond_17
    const/4 v6, 0x3

    .line 432
    goto :goto_1

    .line 433
    :sswitch_17
    const-string v5, "build_id"

    .line 434
    .line 435
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    if-nez v5, :cond_18

    .line 440
    .line 441
    goto :goto_1

    .line 442
    :cond_18
    move/from16 v6, v23

    .line 443
    .line 444
    goto :goto_1

    .line 445
    :sswitch_18
    const-string v5, "android_api_level"

    .line 446
    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-nez v5, :cond_19

    .line 452
    .line 453
    goto :goto_1

    .line 454
    :cond_19
    const/4 v6, 0x1

    .line 455
    goto :goto_1

    .line 456
    :sswitch_19
    const-string v5, "device_manufacturer"

    .line 457
    .line 458
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-nez v5, :cond_1a

    .line 463
    .line 464
    goto :goto_1

    .line 465
    :cond_1a
    const/4 v6, 0x0

    .line 466
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 467
    .line 468
    .line 469
    if-nez v3, :cond_1b

    .line 470
    .line 471
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 472
    .line 473
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 474
    .line 475
    .line 476
    :cond_1b
    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    goto/16 :goto_0

    .line 480
    .line 481
    :pswitch_0
    new-instance v4, Lio/sentry/ProfilingTransactionData$Deserializer;

    .line 482
    .line 483
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 484
    .line 485
    .line 486
    invoke-interface {v0, v1, v4}, Lio/sentry/ObjectReader;->R0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/ArrayList;

    .line 487
    .line 488
    .line 489
    move-result-object v4

    .line 490
    if-eqz v4, :cond_0

    .line 491
    .line 492
    iget-object v5, v2, Lio/sentry/ProfilingTraceData;->y:Ljava/util/ArrayList;

    .line 493
    .line 494
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 495
    .line 496
    .line 497
    goto/16 :goto_0

    .line 498
    .line 499
    :pswitch_1
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    if-eqz v4, :cond_0

    .line 504
    .line 505
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->K:Ljava/lang/String;

    .line 506
    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :pswitch_2
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    if-eqz v4, :cond_0

    .line 514
    .line 515
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->w:Ljava/lang/String;

    .line 516
    .line 517
    goto/16 :goto_0

    .line 518
    .line 519
    :pswitch_3
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    if-eqz v4, :cond_0

    .line 524
    .line 525
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->E:Ljava/lang/String;

    .line 526
    .line 527
    goto/16 :goto_0

    .line 528
    .line 529
    :pswitch_4
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    if-eqz v4, :cond_0

    .line 534
    .line 535
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->H:Ljava/lang/String;

    .line 536
    .line 537
    goto/16 :goto_0

    .line 538
    .line 539
    :pswitch_5
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    if-eqz v4, :cond_0

    .line 544
    .line 545
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->r:Ljava/lang/String;

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :pswitch_6
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v4

    .line 553
    if-eqz v4, :cond_0

    .line 554
    .line 555
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->D:Ljava/lang/String;

    .line 556
    .line 557
    goto/16 :goto_0

    .line 558
    .line 559
    :pswitch_7
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v4

    .line 563
    if-eqz v4, :cond_0

    .line 564
    .line 565
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->t:Ljava/lang/String;

    .line 566
    .line 567
    goto/16 :goto_0

    .line 568
    .line 569
    :pswitch_8
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    if-eqz v4, :cond_0

    .line 574
    .line 575
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->q:Ljava/lang/String;

    .line 576
    .line 577
    goto/16 :goto_0

    .line 578
    .line 579
    :pswitch_9
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v4

    .line 583
    if-eqz v4, :cond_0

    .line 584
    .line 585
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->z:Ljava/lang/String;

    .line 586
    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :pswitch_a
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 590
    .line 591
    .line 592
    move-result-object v4

    .line 593
    if-eqz v4, :cond_0

    .line 594
    .line 595
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->I:Ljava/util/Date;

    .line 596
    .line 597
    goto/16 :goto_0

    .line 598
    .line 599
    :pswitch_b
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    if-eqz v4, :cond_0

    .line 604
    .line 605
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->G:Ljava/lang/String;

    .line 606
    .line 607
    goto/16 :goto_0

    .line 608
    .line 609
    :pswitch_c
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v4

    .line 613
    if-eqz v4, :cond_0

    .line 614
    .line 615
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->C:Ljava/lang/String;

    .line 616
    .line 617
    goto/16 :goto_0

    .line 618
    .line 619
    :pswitch_d
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v4

    .line 623
    if-eqz v4, :cond_0

    .line 624
    .line 625
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->B:Ljava/lang/String;

    .line 626
    .line 627
    goto/16 :goto_0

    .line 628
    .line 629
    :pswitch_e
    invoke-interface {v0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    check-cast v4, Ljava/util/List;

    .line 634
    .line 635
    if-eqz v4, :cond_0

    .line 636
    .line 637
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->u:Ljava/util/List;

    .line 638
    .line 639
    goto/16 :goto_0

    .line 640
    .line 641
    :pswitch_f
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    if-eqz v4, :cond_0

    .line 646
    .line 647
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->v:Ljava/lang/String;

    .line 648
    .line 649
    goto/16 :goto_0

    .line 650
    .line 651
    :pswitch_10
    new-instance v4, Lio/sentry/profilemeasurements/ProfileMeasurement$Deserializer;

    .line 652
    .line 653
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 654
    .line 655
    .line 656
    invoke-interface {v0, v1, v4}, Lio/sentry/ObjectReader;->Q(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/HashMap;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    if-eqz v4, :cond_0

    .line 661
    .line 662
    iget-object v5, v2, Lio/sentry/ProfilingTraceData;->J:Ljava/util/Map;

    .line 663
    .line 664
    invoke-interface {v5, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 665
    .line 666
    .line 667
    goto/16 :goto_0

    .line 668
    .line 669
    :pswitch_11
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v4

    .line 673
    if-eqz v4, :cond_0

    .line 674
    .line 675
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->A:Ljava/lang/String;

    .line 676
    .line 677
    goto/16 :goto_0

    .line 678
    .line 679
    :pswitch_12
    invoke-interface {v0}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 680
    .line 681
    .line 682
    move-result-object v4

    .line 683
    if-eqz v4, :cond_0

    .line 684
    .line 685
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    iput-boolean v4, v2, Lio/sentry/ProfilingTraceData;->s:Z

    .line 690
    .line 691
    goto/16 :goto_0

    .line 692
    .line 693
    :pswitch_13
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v4

    .line 697
    if-eqz v4, :cond_0

    .line 698
    .line 699
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->o:Ljava/lang/String;

    .line 700
    .line 701
    goto/16 :goto_0

    .line 702
    .line 703
    :pswitch_14
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    if-eqz v4, :cond_0

    .line 708
    .line 709
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->p:Ljava/lang/String;

    .line 710
    .line 711
    goto/16 :goto_0

    .line 712
    .line 713
    :pswitch_15
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v4

    .line 717
    if-eqz v4, :cond_0

    .line 718
    .line 719
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->F:Ljava/lang/String;

    .line 720
    .line 721
    goto/16 :goto_0

    .line 722
    .line 723
    :pswitch_16
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    if-eqz v4, :cond_0

    .line 728
    .line 729
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->m:Ljava/lang/String;

    .line 730
    .line 731
    goto/16 :goto_0

    .line 732
    .line 733
    :pswitch_17
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v4

    .line 737
    if-eqz v4, :cond_0

    .line 738
    .line 739
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->x:Ljava/lang/String;

    .line 740
    .line 741
    goto/16 :goto_0

    .line 742
    .line 743
    :pswitch_18
    invoke-interface {v0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 744
    .line 745
    .line 746
    move-result-object v4

    .line 747
    if-eqz v4, :cond_0

    .line 748
    .line 749
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 750
    .line 751
    .line 752
    move-result v4

    .line 753
    iput v4, v2, Lio/sentry/ProfilingTraceData;->l:I

    .line 754
    .line 755
    goto/16 :goto_0

    .line 756
    .line 757
    :pswitch_19
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v4

    .line 761
    if-eqz v4, :cond_0

    .line 762
    .line 763
    iput-object v4, v2, Lio/sentry/ProfilingTraceData;->n:Ljava/lang/String;

    .line 764
    .line 765
    goto/16 :goto_0

    .line 766
    .line 767
    :cond_1c
    iput-object v3, v2, Lio/sentry/ProfilingTraceData;->L:Ljava/util/concurrent/ConcurrentHashMap;

    .line 768
    .line 769
    invoke-interface {v0}, Lio/sentry/ObjectReader;->i0()V

    .line 770
    .line 771
    .line 772
    return-object v2

    .line 773
    :sswitch_data_0
    .sparse-switch
        -0x7f2b14e6 -> :sswitch_19
        -0x761ad0b1 -> :sswitch_18
        -0x55461374 -> :sswitch_17
        -0x45ddbf9d -> :sswitch_16
        -0x41b8e48f -> :sswitch_15
        -0x2ab74f34 -> :sswitch_14
        -0x233b1c00 -> :sswitch_13
        -0x1e8c4ddf -> :sswitch_12
        -0x1c7eb3b0 -> :sswitch_11
        -0x159763c9 -> :sswitch_10
        -0x13d06b14 -> :sswitch_f
        -0xca6e506 -> :sswitch_e
        -0x6236f0c -> :sswitch_d
        -0x61ea26e -> :sswitch_c
        -0x51ecded -> :sswitch_b
        0x3492916 -> :sswitch_a
        0x1e547b4c -> :sswitch_9
        0x2f79431d -> :sswitch_8
        0x320c6953 -> :sswitch_7
        0x3c3c4a1c -> :sswitch_6
        0x3ebcb306 -> :sswitch_5
        0x4560227a -> :sswitch_4
        0x4bb73e55 -> :sswitch_3
        0x6fbd6873 -> :sswitch_2
        0x746ad664 -> :sswitch_1
        0x74798955 -> :sswitch_0
    .end sparse-switch

    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
