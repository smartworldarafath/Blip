.class public final Lio/sentry/protocol/Device$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Device;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Device;
    .locals 5

    .line 1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/protocol/Device;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 15
    .line 16
    if-ne v2, v3, :cond_24

    .line 17
    .line 18
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, -0x1

    .line 30
    sparse-switch v3, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :sswitch_0
    const-string v3, "screen_height_pixels"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_1
    const/16 v4, 0x21

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_1
    const-string v3, "free_storage"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_2

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :cond_2
    const/16 v4, 0x20

    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :sswitch_2
    const-string v3, "external_free_storage"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_3

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_3
    const/16 v4, 0x1f

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :sswitch_3
    const-string v3, "charging"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_4

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_4
    const/16 v4, 0x1e

    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :sswitch_4
    const-string v3, "memory_size"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_5

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_5
    const/16 v4, 0x1d

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :sswitch_5
    const-string v3, "usable_memory"

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_6

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_6
    const/16 v4, 0x1c

    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :sswitch_6
    const-string v3, "storage_size"

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-nez v3, :cond_7

    .line 126
    .line 127
    goto/16 :goto_1

    .line 128
    .line 129
    :cond_7
    const/16 v4, 0x1b

    .line 130
    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :sswitch_7
    const-string v3, "external_storage_size"

    .line 134
    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_8

    .line 140
    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :cond_8
    const/16 v4, 0x1a

    .line 144
    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :sswitch_8
    const-string v3, "screen_width_pixels"

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-nez v3, :cond_9

    .line 154
    .line 155
    goto/16 :goto_1

    .line 156
    .line 157
    :cond_9
    const/16 v4, 0x19

    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :sswitch_9
    const-string v3, "chipset"

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-nez v3, :cond_a

    .line 168
    .line 169
    goto/16 :goto_1

    .line 170
    .line 171
    :cond_a
    const/16 v4, 0x18

    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :sswitch_a
    const-string v3, "connection_type"

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_b

    .line 182
    .line 183
    goto/16 :goto_1

    .line 184
    .line 185
    :cond_b
    const/16 v4, 0x17

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :sswitch_b
    const-string v3, "processor_frequency"

    .line 190
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-nez v3, :cond_c

    .line 196
    .line 197
    goto/16 :goto_1

    .line 198
    .line 199
    :cond_c
    const/16 v4, 0x16

    .line 200
    .line 201
    goto/16 :goto_1

    .line 202
    .line 203
    :sswitch_c
    const-string v3, "cpu_description"

    .line 204
    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-nez v3, :cond_d

    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :cond_d
    const/16 v4, 0x15

    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :sswitch_d
    const-string v3, "model"

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_e

    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_e
    const/16 v4, 0x14

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :sswitch_e
    const-string v3, "brand"

    .line 232
    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-nez v3, :cond_f

    .line 238
    .line 239
    goto/16 :goto_1

    .line 240
    .line 241
    :cond_f
    const/16 v4, 0x13

    .line 242
    .line 243
    goto/16 :goto_1

    .line 244
    .line 245
    :sswitch_f
    const-string v3, "archs"

    .line 246
    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-nez v3, :cond_10

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_10
    const/16 v4, 0x12

    .line 256
    .line 257
    goto/16 :goto_1

    .line 258
    .line 259
    :sswitch_10
    const-string v3, "low_memory"

    .line 260
    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-nez v3, :cond_11

    .line 266
    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_11
    const/16 v4, 0x11

    .line 270
    .line 271
    goto/16 :goto_1

    .line 272
    .line 273
    :sswitch_11
    const-string v3, "name"

    .line 274
    .line 275
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-nez v3, :cond_12

    .line 280
    .line 281
    goto/16 :goto_1

    .line 282
    .line 283
    :cond_12
    const/16 v4, 0x10

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :sswitch_12
    const-string v3, "id"

    .line 288
    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-nez v3, :cond_13

    .line 294
    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_13
    const/16 v4, 0xf

    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :sswitch_13
    const-string v3, "free_memory"

    .line 302
    .line 303
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-nez v3, :cond_14

    .line 308
    .line 309
    goto/16 :goto_1

    .line 310
    .line 311
    :cond_14
    const/16 v4, 0xe

    .line 312
    .line 313
    goto/16 :goto_1

    .line 314
    .line 315
    :sswitch_14
    const-string v3, "screen_dpi"

    .line 316
    .line 317
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-nez v3, :cond_15

    .line 322
    .line 323
    goto/16 :goto_1

    .line 324
    .line 325
    :cond_15
    const/16 v4, 0xd

    .line 326
    .line 327
    goto/16 :goto_1

    .line 328
    .line 329
    :sswitch_15
    const-string v3, "screen_density"

    .line 330
    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-nez v3, :cond_16

    .line 336
    .line 337
    goto/16 :goto_1

    .line 338
    .line 339
    :cond_16
    const/16 v4, 0xc

    .line 340
    .line 341
    goto/16 :goto_1

    .line 342
    .line 343
    :sswitch_16
    const-string v3, "model_id"

    .line 344
    .line 345
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v3

    .line 349
    if-nez v3, :cond_17

    .line 350
    .line 351
    goto/16 :goto_1

    .line 352
    .line 353
    :cond_17
    const/16 v4, 0xb

    .line 354
    .line 355
    goto/16 :goto_1

    .line 356
    .line 357
    :sswitch_17
    const-string v3, "battery_level"

    .line 358
    .line 359
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    if-nez v3, :cond_18

    .line 364
    .line 365
    goto/16 :goto_1

    .line 366
    .line 367
    :cond_18
    const/16 v4, 0xa

    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :sswitch_18
    const-string v3, "online"

    .line 372
    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-nez v3, :cond_19

    .line 378
    .line 379
    goto/16 :goto_1

    .line 380
    .line 381
    :cond_19
    const/16 v4, 0x9

    .line 382
    .line 383
    goto/16 :goto_1

    .line 384
    .line 385
    :sswitch_19
    const-string v3, "locale"

    .line 386
    .line 387
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result v3

    .line 391
    if-nez v3, :cond_1a

    .line 392
    .line 393
    goto/16 :goto_1

    .line 394
    .line 395
    :cond_1a
    const/16 v4, 0x8

    .line 396
    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :sswitch_1a
    const-string v3, "family"

    .line 400
    .line 401
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-nez v3, :cond_1b

    .line 406
    .line 407
    goto :goto_1

    .line 408
    :cond_1b
    const/4 v4, 0x7

    .line 409
    goto :goto_1

    .line 410
    :sswitch_1b
    const-string v3, "battery_temperature"

    .line 411
    .line 412
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-nez v3, :cond_1c

    .line 417
    .line 418
    goto :goto_1

    .line 419
    :cond_1c
    const/4 v4, 0x6

    .line 420
    goto :goto_1

    .line 421
    :sswitch_1c
    const-string v3, "orientation"

    .line 422
    .line 423
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-nez v3, :cond_1d

    .line 428
    .line 429
    goto :goto_1

    .line 430
    :cond_1d
    const/4 v4, 0x5

    .line 431
    goto :goto_1

    .line 432
    :sswitch_1d
    const-string v3, "processor_count"

    .line 433
    .line 434
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    if-nez v3, :cond_1e

    .line 439
    .line 440
    goto :goto_1

    .line 441
    :cond_1e
    const/4 v4, 0x4

    .line 442
    goto :goto_1

    .line 443
    :sswitch_1e
    const-string v3, "manufacturer"

    .line 444
    .line 445
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    if-nez v3, :cond_1f

    .line 450
    .line 451
    goto :goto_1

    .line 452
    :cond_1f
    const/4 v4, 0x3

    .line 453
    goto :goto_1

    .line 454
    :sswitch_1f
    const-string v3, "simulator"

    .line 455
    .line 456
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    if-nez v3, :cond_20

    .line 461
    .line 462
    goto :goto_1

    .line 463
    :cond_20
    const/4 v4, 0x2

    .line 464
    goto :goto_1

    .line 465
    :sswitch_20
    const-string v3, "boot_time"

    .line 466
    .line 467
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-nez v3, :cond_21

    .line 472
    .line 473
    goto :goto_1

    .line 474
    :cond_21
    const/4 v4, 0x1

    .line 475
    goto :goto_1

    .line 476
    :sswitch_21
    const-string v3, "timezone"

    .line 477
    .line 478
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v3

    .line 482
    if-nez v3, :cond_22

    .line 483
    .line 484
    goto :goto_1

    .line 485
    :cond_22
    const/4 v4, 0x0

    .line 486
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 487
    .line 488
    .line 489
    if-nez v1, :cond_23

    .line 490
    .line 491
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 492
    .line 493
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 494
    .line 495
    .line 496
    :cond_23
    invoke-interface {p0, p1, v1, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_0

    .line 500
    .line 501
    :pswitch_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    iput-object v2, v0, Lio/sentry/protocol/Device;->E:Ljava/lang/Integer;

    .line 506
    .line 507
    goto/16 :goto_0

    .line 508
    .line 509
    :pswitch_1
    invoke-interface {p0}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 510
    .line 511
    .line 512
    move-result-object v2

    .line 513
    iput-object v2, v0, Lio/sentry/protocol/Device;->A:Ljava/lang/Long;

    .line 514
    .line 515
    goto/16 :goto_0

    .line 516
    .line 517
    :pswitch_2
    invoke-interface {p0}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 518
    .line 519
    .line 520
    move-result-object v2

    .line 521
    iput-object v2, v0, Lio/sentry/protocol/Device;->C:Ljava/lang/Long;

    .line 522
    .line 523
    goto/16 :goto_0

    .line 524
    .line 525
    :pswitch_3
    invoke-interface {p0}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    iput-object v2, v0, Lio/sentry/protocol/Device;->r:Ljava/lang/Boolean;

    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :pswitch_4
    invoke-interface {p0}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    iput-object v2, v0, Lio/sentry/protocol/Device;->v:Ljava/lang/Long;

    .line 538
    .line 539
    goto/16 :goto_0

    .line 540
    .line 541
    :pswitch_5
    invoke-interface {p0}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    iput-object v2, v0, Lio/sentry/protocol/Device;->x:Ljava/lang/Long;

    .line 546
    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :pswitch_6
    invoke-interface {p0}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    iput-object v2, v0, Lio/sentry/protocol/Device;->z:Ljava/lang/Long;

    .line 554
    .line 555
    goto/16 :goto_0

    .line 556
    .line 557
    :pswitch_7
    invoke-interface {p0}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    iput-object v2, v0, Lio/sentry/protocol/Device;->B:Ljava/lang/Long;

    .line 562
    .line 563
    goto/16 :goto_0

    .line 564
    .line 565
    :pswitch_8
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 566
    .line 567
    .line 568
    move-result-object v2

    .line 569
    iput-object v2, v0, Lio/sentry/protocol/Device;->D:Ljava/lang/Integer;

    .line 570
    .line 571
    goto/16 :goto_0

    .line 572
    .line 573
    :pswitch_9
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    iput-object v2, v0, Lio/sentry/protocol/Device;->Q:Ljava/lang/String;

    .line 578
    .line 579
    goto/16 :goto_0

    .line 580
    .line 581
    :pswitch_a
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    iput-object v2, v0, Lio/sentry/protocol/Device;->L:Ljava/lang/String;

    .line 586
    .line 587
    goto/16 :goto_0

    .line 588
    .line 589
    :pswitch_b
    invoke-interface {p0}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    iput-object v2, v0, Lio/sentry/protocol/Device;->O:Ljava/lang/Double;

    .line 594
    .line 595
    goto/16 :goto_0

    .line 596
    .line 597
    :pswitch_c
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    iput-object v2, v0, Lio/sentry/protocol/Device;->P:Ljava/lang/String;

    .line 602
    .line 603
    goto/16 :goto_0

    .line 604
    .line 605
    :pswitch_d
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    iput-object v2, v0, Lio/sentry/protocol/Device;->n:Ljava/lang/String;

    .line 610
    .line 611
    goto/16 :goto_0

    .line 612
    .line 613
    :pswitch_e
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v2

    .line 617
    iput-object v2, v0, Lio/sentry/protocol/Device;->l:Ljava/lang/String;

    .line 618
    .line 619
    goto/16 :goto_0

    .line 620
    .line 621
    :pswitch_f
    invoke-interface {p0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    check-cast v2, Ljava/util/List;

    .line 626
    .line 627
    if-eqz v2, :cond_0

    .line 628
    .line 629
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 630
    .line 631
    .line 632
    move-result v3

    .line 633
    new-array v3, v3, [Ljava/lang/String;

    .line 634
    .line 635
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    iput-object v3, v0, Lio/sentry/protocol/Device;->p:[Ljava/lang/String;

    .line 639
    .line 640
    goto/16 :goto_0

    .line 641
    .line 642
    :pswitch_10
    invoke-interface {p0}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    iput-object v2, v0, Lio/sentry/protocol/Device;->y:Ljava/lang/Boolean;

    .line 647
    .line 648
    goto/16 :goto_0

    .line 649
    .line 650
    :pswitch_11
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    iput-object v2, v0, Lio/sentry/protocol/Device;->j:Ljava/lang/String;

    .line 655
    .line 656
    goto/16 :goto_0

    .line 657
    .line 658
    :pswitch_12
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    iput-object v2, v0, Lio/sentry/protocol/Device;->J:Ljava/lang/String;

    .line 663
    .line 664
    goto/16 :goto_0

    .line 665
    .line 666
    :pswitch_13
    invoke-interface {p0}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 667
    .line 668
    .line 669
    move-result-object v2

    .line 670
    iput-object v2, v0, Lio/sentry/protocol/Device;->w:Ljava/lang/Long;

    .line 671
    .line 672
    goto/16 :goto_0

    .line 673
    .line 674
    :pswitch_14
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 675
    .line 676
    .line 677
    move-result-object v2

    .line 678
    iput-object v2, v0, Lio/sentry/protocol/Device;->G:Ljava/lang/Integer;

    .line 679
    .line 680
    goto/16 :goto_0

    .line 681
    .line 682
    :pswitch_15
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y0()Ljava/lang/Float;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    iput-object v2, v0, Lio/sentry/protocol/Device;->F:Ljava/lang/Float;

    .line 687
    .line 688
    goto/16 :goto_0

    .line 689
    .line 690
    :pswitch_16
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    iput-object v2, v0, Lio/sentry/protocol/Device;->o:Ljava/lang/String;

    .line 695
    .line 696
    goto/16 :goto_0

    .line 697
    .line 698
    :pswitch_17
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y0()Ljava/lang/Float;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    iput-object v2, v0, Lio/sentry/protocol/Device;->q:Ljava/lang/Float;

    .line 703
    .line 704
    goto/16 :goto_0

    .line 705
    .line 706
    :pswitch_18
    invoke-interface {p0}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    iput-object v2, v0, Lio/sentry/protocol/Device;->s:Ljava/lang/Boolean;

    .line 711
    .line 712
    goto/16 :goto_0

    .line 713
    .line 714
    :pswitch_19
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    iput-object v2, v0, Lio/sentry/protocol/Device;->K:Ljava/lang/String;

    .line 719
    .line 720
    goto/16 :goto_0

    .line 721
    .line 722
    :pswitch_1a
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v2

    .line 726
    iput-object v2, v0, Lio/sentry/protocol/Device;->m:Ljava/lang/String;

    .line 727
    .line 728
    goto/16 :goto_0

    .line 729
    .line 730
    :pswitch_1b
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y0()Ljava/lang/Float;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    iput-object v2, v0, Lio/sentry/protocol/Device;->M:Ljava/lang/Float;

    .line 735
    .line 736
    goto/16 :goto_0

    .line 737
    .line 738
    :pswitch_1c
    new-instance v2, Lio/sentry/protocol/Device$DeviceOrientation$Deserializer;

    .line 739
    .line 740
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 741
    .line 742
    .line 743
    invoke-interface {p0, p1, v2}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    check-cast v2, Lio/sentry/protocol/Device$DeviceOrientation;

    .line 748
    .line 749
    iput-object v2, v0, Lio/sentry/protocol/Device;->t:Lio/sentry/protocol/Device$DeviceOrientation;

    .line 750
    .line 751
    goto/16 :goto_0

    .line 752
    .line 753
    :pswitch_1d
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    iput-object v2, v0, Lio/sentry/protocol/Device;->N:Ljava/lang/Integer;

    .line 758
    .line 759
    goto/16 :goto_0

    .line 760
    .line 761
    :pswitch_1e
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    iput-object v2, v0, Lio/sentry/protocol/Device;->k:Ljava/lang/String;

    .line 766
    .line 767
    goto/16 :goto_0

    .line 768
    .line 769
    :pswitch_1f
    invoke-interface {p0}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 770
    .line 771
    .line 772
    move-result-object v2

    .line 773
    iput-object v2, v0, Lio/sentry/protocol/Device;->u:Ljava/lang/Boolean;

    .line 774
    .line 775
    goto/16 :goto_0

    .line 776
    .line 777
    :pswitch_20
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 778
    .line 779
    .line 780
    move-result-object v2

    .line 781
    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->STRING:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 782
    .line 783
    if-ne v2, v3, :cond_0

    .line 784
    .line 785
    invoke-interface {p0, p1}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 786
    .line 787
    .line 788
    move-result-object v2

    .line 789
    iput-object v2, v0, Lio/sentry/protocol/Device;->H:Ljava/util/Date;

    .line 790
    .line 791
    goto/16 :goto_0

    .line 792
    .line 793
    :pswitch_21
    invoke-interface {p0, p1}, Lio/sentry/ObjectReader;->K(Lio/sentry/ILogger;)Ljava/util/TimeZone;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    iput-object v2, v0, Lio/sentry/protocol/Device;->I:Ljava/util/TimeZone;

    .line 798
    .line 799
    goto/16 :goto_0

    .line 800
    .line 801
    :cond_24
    iput-object v1, v0, Lio/sentry/protocol/Device;->R:Ljava/util/concurrent/ConcurrentHashMap;

    .line 802
    .line 803
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 804
    .line 805
    .line 806
    return-object v0

    .line 807
    :sswitch_data_0
    .sparse-switch
        -0x7bc0b807 -> :sswitch_21
        -0x77f42806 -> :sswitch_20
        -0x7618bbfc -> :sswitch_1f
        -0x7561dc2f -> :sswitch_1e
        -0x5fd834de -> :sswitch_1d
        -0x55cd0a30 -> :sswitch_1c
        -0x5412d9be -> :sswitch_1b
        -0x4c67a49c -> :sswitch_1a
        -0x4169f1a6 -> :sswitch_19
        -0x3c5549ad -> :sswitch_18
        -0x3449d12e -> :sswitch_17
        -0x24e5c60f -> :sswitch_16
        -0x21df2feb -> :sswitch_15
        -0x18dba0f6 -> :sswitch_14
        -0x8232dcc -> :sswitch_13
        0xd1b -> :sswitch_12
        0x337a8b -> :sswitch_11
        0x386704c -> :sswitch_10
        0x58c3add -> :sswitch_f
        0x59a4b87 -> :sswitch_e
        0x633fb29 -> :sswitch_d
        0x6e627e5 -> :sswitch_c
        0xe92bdef -> :sswitch_b
        0x2b9f63fb -> :sswitch_a
        0x2c7d3496 -> :sswitch_9
        0x30bf1c39 -> :sswitch_8
        0x311b7339 -> :sswitch_7
        0x357dab45 -> :sswitch_6
        0x4f5c8e28 -> :sswitch_5
        0x5490d47f -> :sswitch_4
        0x55996271 -> :sswitch_3
        0x56769b9c -> :sswitch_2
        0x5ad8d3a8 -> :sswitch_1
        0x5cc30632 -> :sswitch_0
    .end sparse-switch

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
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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


# virtual methods
.method public final bridge synthetic a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/protocol/Device$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Device;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
