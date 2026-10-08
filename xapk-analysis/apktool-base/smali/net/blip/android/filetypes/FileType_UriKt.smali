.class public abstract Lnet/blip/android/filetypes/FileType_UriKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lnet/blip/libblip/FileType$Companion;Landroid/content/Context;Landroid/net/Uri;)Lnet/blip/libblip/FileType;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const v2, 0x38b73479

    .line 22
    .line 23
    .line 24
    if-eq v0, v2, :cond_1

    .line 25
    .line 26
    :cond_0
    move-object v3, p2

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const-string v0, "content"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_0

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v3, p2

    .line 45
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 46
    .line 47
    .line 48
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 52
    .line 53
    .line 54
    const-string p1, "_display_name"

    .line 55
    .line 56
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    move-object p0, v0

    .line 70
    goto :goto_0

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    move-object p1, v0

    .line 73
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    :catchall_2
    move-exception v0

    .line 75
    move-object p2, v0

    .line 76
    :try_start_4
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 80
    :cond_2
    move-object p1, v1

    .line 81
    goto :goto_1

    .line 82
    :goto_0
    new-instance p1, Lkotlin/Result$Failure;

    .line 83
    .line 84
    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    instance-of p0, p1, Lkotlin/Result$Failure;

    .line 88
    .line 89
    if-eqz p0, :cond_3

    .line 90
    .line 91
    move-object p1, v1

    .line 92
    :cond_3
    check-cast p1, Ljava/lang/String;

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :goto_2
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    if-eqz p0, :cond_4

    .line 100
    .line 101
    new-instance p1, Ljava/io/File;

    .line 102
    .line 103
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    goto :goto_3

    .line 111
    :cond_4
    move-object p1, v1

    .line 112
    :goto_3
    if-eqz p1, :cond_18

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    const/4 p2, 0x1

    .line 119
    if-nez p0, :cond_5

    .line 120
    .line 121
    move-object p0, v1

    .line 122
    goto :goto_4

    .line 123
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    sub-int/2addr p0, p2

    .line 128
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result p0

    .line 132
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    :goto_4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    sget-object v0, Lokio/Path;->k:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p0

    .line 146
    if-eqz p0, :cond_6

    .line 147
    .line 148
    sget-object p0, Lnet/blip/libblip/FileType;->k:Lnet/blip/libblip/FileType;

    .line 149
    .line 150
    goto/16 :goto_8

    .line 151
    .line 152
    :cond_6
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 153
    .line 154
    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    new-array v0, p2, [C

    .line 162
    .line 163
    const/16 v2, 0x2e

    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    aput-char v2, v0, v3

    .line 167
    .line 168
    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;[C)Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    const-string v2, "gz"

    .line 177
    .line 178
    const-string v3, "tar"

    .line 179
    .line 180
    if-ne v0, p2, :cond_7

    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_7
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p2

    .line 187
    check-cast p2, Ljava/lang/String;

    .line 188
    .line 189
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v0

    .line 193
    const/4 v4, 0x2

    .line 194
    if-le v0, v4, :cond_8

    .line 195
    .line 196
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    sub-int/2addr v0, v4

    .line 201
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    move-object v1, v0

    .line 206
    check-cast v1, Ljava/lang/String;

    .line 207
    .line 208
    :cond_8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    new-instance v0, Lkotlin/Pair;

    .line 213
    .line 214
    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    new-instance p1, Lkotlin/Pair;

    .line 218
    .line 219
    invoke-direct {p1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, p1}, Lkotlin/Pair;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_9

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_9
    new-instance p1, Lkotlin/Pair;

    .line 230
    .line 231
    const-string v4, "bz2"

    .line 232
    .line 233
    invoke-direct {p1, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, p1}, Lkotlin/Pair;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    if-eqz p1, :cond_a

    .line 241
    .line 242
    :goto_5
    const-string p1, "."

    .line 243
    .line 244
    invoke-static {v1, p1, p2}, Ljb;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    goto :goto_6

    .line 249
    :cond_a
    move-object v1, p2

    .line 250
    :goto_6
    if-eqz v1, :cond_17

    .line 251
    .line 252
    invoke-virtual {v1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object p0

    .line 256
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    sparse-switch p1, :sswitch_data_0

    .line 264
    .line 265
    .line 266
    packed-switch p1, :pswitch_data_0

    .line 267
    .line 268
    .line 269
    packed-switch p1, :pswitch_data_1

    .line 270
    .line 271
    .line 272
    packed-switch p1, :pswitch_data_2

    .line 273
    .line 274
    .line 275
    packed-switch p1, :pswitch_data_3

    .line 276
    .line 277
    .line 278
    packed-switch p1, :pswitch_data_4

    .line 279
    .line 280
    .line 281
    goto/16 :goto_7

    .line 282
    .line 283
    :pswitch_0
    const-string p1, "z09"

    .line 284
    .line 285
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result p0

    .line 289
    if-nez p0, :cond_15

    .line 290
    .line 291
    goto/16 :goto_7

    .line 292
    .line 293
    :pswitch_1
    const-string p1, "z08"

    .line 294
    .line 295
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result p0

    .line 299
    if-nez p0, :cond_15

    .line 300
    .line 301
    goto/16 :goto_7

    .line 302
    .line 303
    :pswitch_2
    const-string p1, "z07"

    .line 304
    .line 305
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result p0

    .line 309
    if-nez p0, :cond_15

    .line 310
    .line 311
    goto/16 :goto_7

    .line 312
    .line 313
    :pswitch_3
    const-string p1, "z06"

    .line 314
    .line 315
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    if-nez p0, :cond_15

    .line 320
    .line 321
    goto/16 :goto_7

    .line 322
    .line 323
    :pswitch_4
    const-string p1, "xls"

    .line 324
    .line 325
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result p1

    .line 329
    if-nez p1, :cond_16

    .line 330
    .line 331
    const-string p1, "z05"

    .line 332
    .line 333
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    if-nez p0, :cond_15

    .line 338
    .line 339
    goto/16 :goto_7

    .line 340
    .line 341
    :pswitch_5
    const-string p1, "z04"

    .line 342
    .line 343
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    move-result p0

    .line 347
    if-nez p0, :cond_15

    .line 348
    .line 349
    goto/16 :goto_7

    .line 350
    .line 351
    :pswitch_6
    const-string p1, "z03"

    .line 352
    .line 353
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result p0

    .line 357
    if-nez p0, :cond_15

    .line 358
    .line 359
    goto/16 :goto_7

    .line 360
    .line 361
    :pswitch_7
    const-string p1, "z02"

    .line 362
    .line 363
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result p0

    .line 367
    if-nez p0, :cond_15

    .line 368
    .line 369
    goto/16 :goto_7

    .line 370
    .line 371
    :pswitch_8
    const-string p1, "z01"

    .line 372
    .line 373
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    move-result p0

    .line 377
    if-nez p0, :cond_15

    .line 378
    .line 379
    goto/16 :goto_7

    .line 380
    .line 381
    :pswitch_9
    const-string p1, "r09"

    .line 382
    .line 383
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result p0

    .line 387
    if-nez p0, :cond_15

    .line 388
    .line 389
    goto/16 :goto_7

    .line 390
    .line 391
    :pswitch_a
    const-string p1, "r08"

    .line 392
    .line 393
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result p0

    .line 397
    if-nez p0, :cond_15

    .line 398
    .line 399
    goto/16 :goto_7

    .line 400
    .line 401
    :pswitch_b
    const-string p1, "r07"

    .line 402
    .line 403
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result p0

    .line 407
    if-nez p0, :cond_15

    .line 408
    .line 409
    goto/16 :goto_7

    .line 410
    .line 411
    :pswitch_c
    const-string p1, "r06"

    .line 412
    .line 413
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result p0

    .line 417
    if-nez p0, :cond_15

    .line 418
    .line 419
    goto/16 :goto_7

    .line 420
    .line 421
    :pswitch_d
    const-string p1, "r05"

    .line 422
    .line 423
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result p0

    .line 427
    if-nez p0, :cond_15

    .line 428
    .line 429
    goto/16 :goto_7

    .line 430
    .line 431
    :pswitch_e
    const-string p1, "r04"

    .line 432
    .line 433
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result p0

    .line 437
    if-nez p0, :cond_15

    .line 438
    .line 439
    goto/16 :goto_7

    .line 440
    .line 441
    :pswitch_f
    const-string p1, "r03"

    .line 442
    .line 443
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result p0

    .line 447
    if-nez p0, :cond_15

    .line 448
    .line 449
    goto/16 :goto_7

    .line 450
    .line 451
    :pswitch_10
    const-string p1, "r02"

    .line 452
    .line 453
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result p0

    .line 457
    if-nez p0, :cond_15

    .line 458
    .line 459
    goto/16 :goto_7

    .line 460
    .line 461
    :pswitch_11
    const-string p1, "r01"

    .line 462
    .line 463
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result p0

    .line 467
    if-nez p0, :cond_15

    .line 468
    .line 469
    goto/16 :goto_7

    .line 470
    .line 471
    :pswitch_12
    const-string p1, "odt"

    .line 472
    .line 473
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 474
    .line 475
    .line 476
    move-result p0

    .line 477
    if-nez p0, :cond_11

    .line 478
    .line 479
    goto/16 :goto_7

    .line 480
    .line 481
    :pswitch_13
    const-string p1, "ods"

    .line 482
    .line 483
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    move-result p0

    .line 487
    if-nez p0, :cond_16

    .line 488
    .line 489
    goto/16 :goto_7

    .line 490
    .line 491
    :pswitch_14
    const-string p1, "mp4"

    .line 492
    .line 493
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result p0

    .line 497
    if-nez p0, :cond_f

    .line 498
    .line 499
    goto/16 :goto_7

    .line 500
    .line 501
    :pswitch_15
    const-string p1, "mp3"

    .line 502
    .line 503
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result p0

    .line 507
    if-nez p0, :cond_e

    .line 508
    .line 509
    goto/16 :goto_7

    .line 510
    .line 511
    :pswitch_16
    const-string p1, "cr3"

    .line 512
    .line 513
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result p0

    .line 517
    if-nez p0, :cond_10

    .line 518
    .line 519
    goto/16 :goto_7

    .line 520
    .line 521
    :pswitch_17
    const-string p1, "cr2"

    .line 522
    .line 523
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result p1

    .line 527
    if-nez p1, :cond_10

    .line 528
    .line 529
    const-string p1, "cpp"

    .line 530
    .line 531
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result p0

    .line 535
    if-nez p0, :cond_14

    .line 536
    .line 537
    goto/16 :goto_7

    .line 538
    .line 539
    :sswitch_0
    const-string p1, "markdown"

    .line 540
    .line 541
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 542
    .line 543
    .line 544
    move-result p0

    .line 545
    if-nez p0, :cond_11

    .line 546
    .line 547
    goto/16 :goto_7

    .line 548
    .line 549
    :sswitch_1
    const-string p1, "swift"

    .line 550
    .line 551
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result p0

    .line 555
    if-nez p0, :cond_14

    .line 556
    .line 557
    goto/16 :goto_7

    .line 558
    .line 559
    :sswitch_2
    const-string p1, "pages"

    .line 560
    .line 561
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result p0

    .line 565
    if-nez p0, :cond_11

    .line 566
    .line 567
    goto/16 :goto_7

    .line 568
    .line 569
    :sswitch_3
    const-string p1, "bzip2"

    .line 570
    .line 571
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result p0

    .line 575
    if-nez p0, :cond_15

    .line 576
    .line 577
    goto/16 :goto_7

    .line 578
    .line 579
    :sswitch_4
    const-string p1, "avchd"

    .line 580
    .line 581
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 582
    .line 583
    .line 584
    move-result p0

    .line 585
    if-nez p0, :cond_f

    .line 586
    .line 587
    goto/16 :goto_7

    .line 588
    .line 589
    :sswitch_5
    const-string p1, "xlsx"

    .line 590
    .line 591
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 592
    .line 593
    .line 594
    move-result p0

    .line 595
    if-nez p0, :cond_16

    .line 596
    .line 597
    goto/16 :goto_7

    .line 598
    .line 599
    :sswitch_6
    const-string p1, "webp"

    .line 600
    .line 601
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 602
    .line 603
    .line 604
    move-result p0

    .line 605
    if-nez p0, :cond_d

    .line 606
    .line 607
    goto/16 :goto_7

    .line 608
    .line 609
    :sswitch_7
    const-string p1, "webm"

    .line 610
    .line 611
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 612
    .line 613
    .line 614
    move-result p0

    .line 615
    if-nez p0, :cond_f

    .line 616
    .line 617
    goto/16 :goto_7

    .line 618
    .line 619
    :sswitch_8
    const-string p1, "tiff"

    .line 620
    .line 621
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result p0

    .line 625
    if-nez p0, :cond_d

    .line 626
    .line 627
    goto/16 :goto_7

    .line 628
    .line 629
    :sswitch_9
    const-string p1, "tbz2"

    .line 630
    .line 631
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    move-result p0

    .line 635
    if-nez p0, :cond_15

    .line 636
    .line 637
    goto/16 :goto_7

    .line 638
    .line 639
    :sswitch_a
    const-string p1, "sass"

    .line 640
    .line 641
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    move-result p0

    .line 645
    if-nez p0, :cond_14

    .line 646
    .line 647
    goto/16 :goto_7

    .line 648
    .line 649
    :sswitch_b
    const-string p1, "pptx"

    .line 650
    .line 651
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result p0

    .line 655
    if-nez p0, :cond_13

    .line 656
    .line 657
    goto/16 :goto_7

    .line 658
    .line 659
    :sswitch_c
    const-string p1, "mpeg"

    .line 660
    .line 661
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 662
    .line 663
    .line 664
    move-result p0

    .line 665
    if-nez p0, :cond_f

    .line 666
    .line 667
    goto/16 :goto_7

    .line 668
    .line 669
    :sswitch_d
    const-string p1, "less"

    .line 670
    .line 671
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result p0

    .line 675
    if-nez p0, :cond_14

    .line 676
    .line 677
    goto/16 :goto_7

    .line 678
    .line 679
    :sswitch_e
    const-string p1, "json"

    .line 680
    .line 681
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 682
    .line 683
    .line 684
    move-result p0

    .line 685
    if-nez p0, :cond_14

    .line 686
    .line 687
    goto/16 :goto_7

    .line 688
    .line 689
    :sswitch_f
    const-string p1, "jpeg"

    .line 690
    .line 691
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result p0

    .line 695
    if-nez p0, :cond_d

    .line 696
    .line 697
    goto/16 :goto_7

    .line 698
    .line 699
    :sswitch_10
    const-string p1, "java"

    .line 700
    .line 701
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result p0

    .line 705
    if-nez p0, :cond_14

    .line 706
    .line 707
    goto/16 :goto_7

    .line 708
    .line 709
    :sswitch_11
    const-string p1, "html"

    .line 710
    .line 711
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    move-result p0

    .line 715
    if-nez p0, :cond_14

    .line 716
    .line 717
    goto/16 :goto_7

    .line 718
    .line 719
    :sswitch_12
    const-string p1, "heif"

    .line 720
    .line 721
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result p0

    .line 725
    if-nez p0, :cond_d

    .line 726
    .line 727
    goto/16 :goto_7

    .line 728
    .line 729
    :sswitch_13
    const-string p1, "heic"

    .line 730
    .line 731
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result p0

    .line 735
    if-nez p0, :cond_d

    .line 736
    .line 737
    goto/16 :goto_7

    .line 738
    .line 739
    :sswitch_14
    const-string p1, "gzip"

    .line 740
    .line 741
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    move-result p0

    .line 745
    if-nez p0, :cond_15

    .line 746
    .line 747
    goto/16 :goto_7

    .line 748
    .line 749
    :sswitch_15
    const-string p1, "flac"

    .line 750
    .line 751
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result p0

    .line 755
    if-nez p0, :cond_e

    .line 756
    .line 757
    goto/16 :goto_7

    .line 758
    .line 759
    :sswitch_16
    const-string p1, "docx"

    .line 760
    .line 761
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 762
    .line 763
    .line 764
    move-result p0

    .line 765
    if-nez p0, :cond_11

    .line 766
    .line 767
    goto/16 :goto_7

    .line 768
    .line 769
    :sswitch_17
    const-string p1, "alac"

    .line 770
    .line 771
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    move-result p0

    .line 775
    if-nez p0, :cond_e

    .line 776
    .line 777
    goto/16 :goto_7

    .line 778
    .line 779
    :sswitch_18
    const-string p1, "aiff"

    .line 780
    .line 781
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    move-result p0

    .line 785
    if-nez p0, :cond_e

    .line 786
    .line 787
    goto/16 :goto_7

    .line 788
    .line 789
    :sswitch_19
    const-string p1, "zip"

    .line 790
    .line 791
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result p0

    .line 795
    if-nez p0, :cond_15

    .line 796
    .line 797
    goto/16 :goto_7

    .line 798
    .line 799
    :sswitch_1a
    const-string p1, "z10"

    .line 800
    .line 801
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result p0

    .line 805
    if-nez p0, :cond_15

    .line 806
    .line 807
    goto/16 :goto_7

    .line 808
    .line 809
    :sswitch_1b
    const-string p1, "xml"

    .line 810
    .line 811
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 812
    .line 813
    .line 814
    move-result p0

    .line 815
    if-nez p0, :cond_14

    .line 816
    .line 817
    goto/16 :goto_7

    .line 818
    .line 819
    :sswitch_1c
    const-string p1, "wmv"

    .line 820
    .line 821
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    move-result p0

    .line 825
    if-nez p0, :cond_f

    .line 826
    .line 827
    goto/16 :goto_7

    .line 828
    .line 829
    :sswitch_1d
    const-string p1, "wmf"

    .line 830
    .line 831
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    move-result p0

    .line 835
    if-nez p0, :cond_d

    .line 836
    .line 837
    goto/16 :goto_7

    .line 838
    .line 839
    :sswitch_1e
    const-string p1, "wma"

    .line 840
    .line 841
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    move-result p0

    .line 845
    if-nez p0, :cond_e

    .line 846
    .line 847
    goto/16 :goto_7

    .line 848
    .line 849
    :sswitch_1f
    const-string p1, "wav"

    .line 850
    .line 851
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result p0

    .line 855
    if-nez p0, :cond_e

    .line 856
    .line 857
    goto/16 :goto_7

    .line 858
    .line 859
    :sswitch_20
    const-string p1, "url"

    .line 860
    .line 861
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result p0

    .line 865
    if-nez p0, :cond_b

    .line 866
    .line 867
    goto/16 :goto_7

    .line 868
    .line 869
    :cond_b
    sget-object p0, Lnet/blip/libblip/FileType;->w:Lnet/blip/libblip/FileType;

    .line 870
    .line 871
    goto/16 :goto_8

    .line 872
    .line 873
    :sswitch_21
    const-string p1, "txz"

    .line 874
    .line 875
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    move-result p0

    .line 879
    if-nez p0, :cond_15

    .line 880
    .line 881
    goto/16 :goto_7

    .line 882
    .line 883
    :sswitch_22
    const-string p1, "txt"

    .line 884
    .line 885
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 886
    .line 887
    .line 888
    move-result p0

    .line 889
    if-nez p0, :cond_c

    .line 890
    .line 891
    goto/16 :goto_7

    .line 892
    .line 893
    :sswitch_23
    const-string p1, "tif"

    .line 894
    .line 895
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 896
    .line 897
    .line 898
    move-result p0

    .line 899
    if-nez p0, :cond_d

    .line 900
    .line 901
    goto/16 :goto_7

    .line 902
    .line 903
    :sswitch_24
    const-string p1, "tgz"

    .line 904
    .line 905
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    move-result p0

    .line 909
    if-nez p0, :cond_15

    .line 910
    .line 911
    goto/16 :goto_7

    .line 912
    .line 913
    :sswitch_25
    const-string p1, "tga"

    .line 914
    .line 915
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 916
    .line 917
    .line 918
    move-result p0

    .line 919
    if-nez p0, :cond_d

    .line 920
    .line 921
    goto/16 :goto_7

    .line 922
    .line 923
    :sswitch_26
    const-string p1, "tbz"

    .line 924
    .line 925
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 926
    .line 927
    .line 928
    move-result p0

    .line 929
    if-nez p0, :cond_15

    .line 930
    .line 931
    goto/16 :goto_7

    .line 932
    .line 933
    :sswitch_27
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 934
    .line 935
    .line 936
    move-result p0

    .line 937
    if-nez p0, :cond_15

    .line 938
    .line 939
    goto/16 :goto_7

    .line 940
    .line 941
    :sswitch_28
    const-string p1, "svg"

    .line 942
    .line 943
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 944
    .line 945
    .line 946
    move-result p0

    .line 947
    if-nez p0, :cond_12

    .line 948
    .line 949
    goto/16 :goto_7

    .line 950
    .line 951
    :sswitch_29
    const-string p1, "srw"

    .line 952
    .line 953
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    move-result p0

    .line 957
    if-nez p0, :cond_10

    .line 958
    .line 959
    goto/16 :goto_7

    .line 960
    .line 961
    :sswitch_2a
    const-string p1, "srf"

    .line 962
    .line 963
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 964
    .line 965
    .line 966
    move-result p0

    .line 967
    if-nez p0, :cond_10

    .line 968
    .line 969
    goto/16 :goto_7

    .line 970
    .line 971
    :sswitch_2b
    const-string p1, "sr2"

    .line 972
    .line 973
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    move-result p0

    .line 977
    if-nez p0, :cond_10

    .line 978
    .line 979
    goto/16 :goto_7

    .line 980
    .line 981
    :sswitch_2c
    const-string p1, "rtf"

    .line 982
    .line 983
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    move-result p0

    .line 987
    if-nez p0, :cond_11

    .line 988
    .line 989
    goto/16 :goto_7

    .line 990
    .line 991
    :sswitch_2d
    const-string p1, "raw"

    .line 992
    .line 993
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 994
    .line 995
    .line 996
    move-result p0

    .line 997
    if-nez p0, :cond_10

    .line 998
    .line 999
    goto/16 :goto_7

    .line 1000
    .line 1001
    :sswitch_2e
    const-string p1, "rar"

    .line 1002
    .line 1003
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result p0

    .line 1007
    if-nez p0, :cond_15

    .line 1008
    .line 1009
    goto/16 :goto_7

    .line 1010
    .line 1011
    :sswitch_2f
    const-string p1, "psd"

    .line 1012
    .line 1013
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1014
    .line 1015
    .line 1016
    move-result p0

    .line 1017
    if-nez p0, :cond_d

    .line 1018
    .line 1019
    goto/16 :goto_7

    .line 1020
    .line 1021
    :sswitch_30
    const-string p1, "r3d"

    .line 1022
    .line 1023
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result p0

    .line 1027
    if-nez p0, :cond_10

    .line 1028
    .line 1029
    goto/16 :goto_7

    .line 1030
    .line 1031
    :sswitch_31
    const-string p1, "ppt"

    .line 1032
    .line 1033
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1034
    .line 1035
    .line 1036
    move-result p0

    .line 1037
    if-nez p0, :cond_13

    .line 1038
    .line 1039
    goto/16 :goto_7

    .line 1040
    .line 1041
    :sswitch_32
    const-string p1, "png"

    .line 1042
    .line 1043
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    move-result p0

    .line 1047
    if-nez p0, :cond_d

    .line 1048
    .line 1049
    goto/16 :goto_7

    .line 1050
    .line 1051
    :sswitch_33
    const-string p1, "r10"

    .line 1052
    .line 1053
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result p0

    .line 1057
    if-nez p0, :cond_15

    .line 1058
    .line 1059
    goto/16 :goto_7

    .line 1060
    .line 1061
    :sswitch_34
    const-string p1, "php"

    .line 1062
    .line 1063
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result p0

    .line 1067
    if-nez p0, :cond_14

    .line 1068
    .line 1069
    goto/16 :goto_7

    .line 1070
    .line 1071
    :sswitch_35
    const-string p1, "pdf"

    .line 1072
    .line 1073
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1074
    .line 1075
    .line 1076
    move-result p0

    .line 1077
    if-nez p0, :cond_11

    .line 1078
    .line 1079
    goto/16 :goto_7

    .line 1080
    .line 1081
    :sswitch_36
    const-string p1, "orf"

    .line 1082
    .line 1083
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1084
    .line 1085
    .line 1086
    move-result p0

    .line 1087
    if-nez p0, :cond_10

    .line 1088
    .line 1089
    goto/16 :goto_7

    .line 1090
    .line 1091
    :sswitch_37
    const-string p1, "ogg"

    .line 1092
    .line 1093
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1094
    .line 1095
    .line 1096
    move-result p0

    .line 1097
    if-nez p0, :cond_e

    .line 1098
    .line 1099
    goto/16 :goto_7

    .line 1100
    .line 1101
    :sswitch_38
    const-string p1, "odp"

    .line 1102
    .line 1103
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1104
    .line 1105
    .line 1106
    move-result p0

    .line 1107
    if-nez p0, :cond_13

    .line 1108
    .line 1109
    goto/16 :goto_7

    .line 1110
    .line 1111
    :sswitch_39
    const-string p1, "nrw"

    .line 1112
    .line 1113
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1114
    .line 1115
    .line 1116
    move-result p0

    .line 1117
    if-nez p0, :cond_10

    .line 1118
    .line 1119
    goto/16 :goto_7

    .line 1120
    .line 1121
    :sswitch_3a
    const-string p1, "nef"

    .line 1122
    .line 1123
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1124
    .line 1125
    .line 1126
    move-result p0

    .line 1127
    if-nez p0, :cond_10

    .line 1128
    .line 1129
    goto/16 :goto_7

    .line 1130
    .line 1131
    :sswitch_3b
    const-string p1, "mrw"

    .line 1132
    .line 1133
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result p0

    .line 1137
    if-nez p0, :cond_10

    .line 1138
    .line 1139
    goto/16 :goto_7

    .line 1140
    .line 1141
    :sswitch_3c
    const-string p1, "mpv"

    .line 1142
    .line 1143
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1144
    .line 1145
    .line 1146
    move-result p0

    .line 1147
    if-nez p0, :cond_f

    .line 1148
    .line 1149
    goto/16 :goto_7

    .line 1150
    .line 1151
    :sswitch_3d
    const-string p1, "mov"

    .line 1152
    .line 1153
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1154
    .line 1155
    .line 1156
    move-result p0

    .line 1157
    if-nez p0, :cond_f

    .line 1158
    .line 1159
    goto/16 :goto_7

    .line 1160
    .line 1161
    :sswitch_3e
    const-string p1, "mkv"

    .line 1162
    .line 1163
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1164
    .line 1165
    .line 1166
    move-result p0

    .line 1167
    if-nez p0, :cond_f

    .line 1168
    .line 1169
    goto/16 :goto_7

    .line 1170
    .line 1171
    :sswitch_3f
    const-string p1, "mid"

    .line 1172
    .line 1173
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1174
    .line 1175
    .line 1176
    move-result p0

    .line 1177
    if-nez p0, :cond_e

    .line 1178
    .line 1179
    goto/16 :goto_7

    .line 1180
    .line 1181
    :sswitch_40
    const-string p1, "lrv"

    .line 1182
    .line 1183
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result p0

    .line 1187
    if-nez p0, :cond_f

    .line 1188
    .line 1189
    goto/16 :goto_7

    .line 1190
    .line 1191
    :sswitch_41
    const-string p1, "log"

    .line 1192
    .line 1193
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1194
    .line 1195
    .line 1196
    move-result p0

    .line 1197
    if-nez p0, :cond_c

    .line 1198
    .line 1199
    goto/16 :goto_7

    .line 1200
    .line 1201
    :sswitch_42
    const-string p1, "kts"

    .line 1202
    .line 1203
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    move-result p0

    .line 1207
    if-nez p0, :cond_14

    .line 1208
    .line 1209
    goto/16 :goto_7

    .line 1210
    .line 1211
    :sswitch_43
    const-string p1, "m4v"

    .line 1212
    .line 1213
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1214
    .line 1215
    .line 1216
    move-result p0

    .line 1217
    if-nez p0, :cond_f

    .line 1218
    .line 1219
    goto/16 :goto_7

    .line 1220
    .line 1221
    :sswitch_44
    const-string p1, "key"

    .line 1222
    .line 1223
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1224
    .line 1225
    .line 1226
    move-result p0

    .line 1227
    if-nez p0, :cond_13

    .line 1228
    .line 1229
    goto/16 :goto_7

    .line 1230
    .line 1231
    :sswitch_45
    const-string p1, "jpg"

    .line 1232
    .line 1233
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1234
    .line 1235
    .line 1236
    move-result p0

    .line 1237
    if-nez p0, :cond_d

    .line 1238
    .line 1239
    goto/16 :goto_7

    .line 1240
    .line 1241
    :sswitch_46
    const-string p1, "htm"

    .line 1242
    .line 1243
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1244
    .line 1245
    .line 1246
    move-result p0

    .line 1247
    if-nez p0, :cond_14

    .line 1248
    .line 1249
    goto/16 :goto_7

    .line 1250
    .line 1251
    :sswitch_47
    const-string p1, "hpp"

    .line 1252
    .line 1253
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result p0

    .line 1257
    if-nez p0, :cond_14

    .line 1258
    .line 1259
    goto/16 :goto_7

    .line 1260
    .line 1261
    :sswitch_48
    const-string p1, "gpr"

    .line 1262
    .line 1263
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1264
    .line 1265
    .line 1266
    move-result p0

    .line 1267
    if-nez p0, :cond_10

    .line 1268
    .line 1269
    goto/16 :goto_7

    .line 1270
    .line 1271
    :sswitch_49
    const-string p1, "gif"

    .line 1272
    .line 1273
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1274
    .line 1275
    .line 1276
    move-result p0

    .line 1277
    if-nez p0, :cond_d

    .line 1278
    .line 1279
    goto/16 :goto_7

    .line 1280
    .line 1281
    :sswitch_4a
    const-string p1, "fig"

    .line 1282
    .line 1283
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1284
    .line 1285
    .line 1286
    move-result p0

    .line 1287
    if-nez p0, :cond_12

    .line 1288
    .line 1289
    goto/16 :goto_7

    .line 1290
    .line 1291
    :sswitch_4b
    const-string p1, "fff"

    .line 1292
    .line 1293
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1294
    .line 1295
    .line 1296
    move-result p0

    .line 1297
    if-nez p0, :cond_10

    .line 1298
    .line 1299
    goto/16 :goto_7

    .line 1300
    .line 1301
    :sswitch_4c
    const-string p1, "erf"

    .line 1302
    .line 1303
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1304
    .line 1305
    .line 1306
    move-result p0

    .line 1307
    if-nez p0, :cond_10

    .line 1308
    .line 1309
    goto/16 :goto_7

    .line 1310
    .line 1311
    :sswitch_4d
    const-string p1, "eps"

    .line 1312
    .line 1313
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1314
    .line 1315
    .line 1316
    move-result p0

    .line 1317
    if-nez p0, :cond_12

    .line 1318
    .line 1319
    goto/16 :goto_7

    .line 1320
    .line 1321
    :sswitch_4e
    const-string p1, "doc"

    .line 1322
    .line 1323
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1324
    .line 1325
    .line 1326
    move-result p0

    .line 1327
    if-nez p0, :cond_11

    .line 1328
    .line 1329
    goto/16 :goto_7

    .line 1330
    .line 1331
    :sswitch_4f
    const-string p1, "dng"

    .line 1332
    .line 1333
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1334
    .line 1335
    .line 1336
    move-result p0

    .line 1337
    if-nez p0, :cond_10

    .line 1338
    .line 1339
    goto/16 :goto_7

    .line 1340
    .line 1341
    :sswitch_50
    const-string p1, "cxx"

    .line 1342
    .line 1343
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1344
    .line 1345
    .line 1346
    move-result p0

    .line 1347
    if-nez p0, :cond_14

    .line 1348
    .line 1349
    goto/16 :goto_7

    .line 1350
    .line 1351
    :sswitch_51
    const-string p1, "css"

    .line 1352
    .line 1353
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1354
    .line 1355
    .line 1356
    move-result p0

    .line 1357
    if-nez p0, :cond_14

    .line 1358
    .line 1359
    goto/16 :goto_7

    .line 1360
    .line 1361
    :sswitch_52
    const-string p1, "crw"

    .line 1362
    .line 1363
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1364
    .line 1365
    .line 1366
    move-result p0

    .line 1367
    if-nez p0, :cond_10

    .line 1368
    .line 1369
    goto/16 :goto_7

    .line 1370
    .line 1371
    :sswitch_53
    const-string p1, "cmd"

    .line 1372
    .line 1373
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1374
    .line 1375
    .line 1376
    move-result p0

    .line 1377
    if-nez p0, :cond_14

    .line 1378
    .line 1379
    goto/16 :goto_7

    .line 1380
    .line 1381
    :sswitch_54
    const-string p1, "clj"

    .line 1382
    .line 1383
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1384
    .line 1385
    .line 1386
    move-result p0

    .line 1387
    if-nez p0, :cond_14

    .line 1388
    .line 1389
    goto/16 :goto_7

    .line 1390
    .line 1391
    :sswitch_55
    const-string p1, "cfg"

    .line 1392
    .line 1393
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1394
    .line 1395
    .line 1396
    move-result p0

    .line 1397
    if-nez p0, :cond_c

    .line 1398
    .line 1399
    goto/16 :goto_7

    .line 1400
    .line 1401
    :cond_c
    sget-object p0, Lnet/blip/libblip/FileType;->p:Lnet/blip/libblip/FileType;

    .line 1402
    .line 1403
    goto/16 :goto_8

    .line 1404
    .line 1405
    :sswitch_56
    const-string p1, "bmp"

    .line 1406
    .line 1407
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1408
    .line 1409
    .line 1410
    move-result p0

    .line 1411
    if-nez p0, :cond_d

    .line 1412
    .line 1413
    goto/16 :goto_7

    .line 1414
    .line 1415
    :cond_d
    sget-object p0, Lnet/blip/libblip/FileType;->m:Lnet/blip/libblip/FileType;

    .line 1416
    .line 1417
    goto/16 :goto_8

    .line 1418
    .line 1419
    :sswitch_57
    const-string p1, "bat"

    .line 1420
    .line 1421
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1422
    .line 1423
    .line 1424
    move-result p0

    .line 1425
    if-nez p0, :cond_14

    .line 1426
    .line 1427
    goto/16 :goto_7

    .line 1428
    .line 1429
    :sswitch_58
    const-string p1, "avi"

    .line 1430
    .line 1431
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1432
    .line 1433
    .line 1434
    move-result p0

    .line 1435
    if-nez p0, :cond_f

    .line 1436
    .line 1437
    goto/16 :goto_7

    .line 1438
    .line 1439
    :sswitch_59
    const-string p1, "arw"

    .line 1440
    .line 1441
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1442
    .line 1443
    .line 1444
    move-result p0

    .line 1445
    if-nez p0, :cond_10

    .line 1446
    .line 1447
    goto/16 :goto_7

    .line 1448
    .line 1449
    :sswitch_5a
    const-string p1, "c++"

    .line 1450
    .line 1451
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1452
    .line 1453
    .line 1454
    move-result p0

    .line 1455
    if-nez p0, :cond_14

    .line 1456
    .line 1457
    goto/16 :goto_7

    .line 1458
    .line 1459
    :sswitch_5b
    const-string p1, "aac"

    .line 1460
    .line 1461
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1462
    .line 1463
    .line 1464
    move-result p0

    .line 1465
    if-nez p0, :cond_e

    .line 1466
    .line 1467
    goto/16 :goto_7

    .line 1468
    .line 1469
    :cond_e
    sget-object p0, Lnet/blip/libblip/FileType;->u:Lnet/blip/libblip/FileType;

    .line 1470
    .line 1471
    goto/16 :goto_8

    .line 1472
    .line 1473
    :sswitch_5c
    const-string p1, "3gp"

    .line 1474
    .line 1475
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1476
    .line 1477
    .line 1478
    move-result p0

    .line 1479
    if-nez p0, :cond_f

    .line 1480
    .line 1481
    goto/16 :goto_7

    .line 1482
    .line 1483
    :cond_f
    sget-object p0, Lnet/blip/libblip/FileType;->o:Lnet/blip/libblip/FileType;

    .line 1484
    .line 1485
    goto/16 :goto_8

    .line 1486
    .line 1487
    :sswitch_5d
    const-string p1, "3fr"

    .line 1488
    .line 1489
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1490
    .line 1491
    .line 1492
    move-result p0

    .line 1493
    if-nez p0, :cond_10

    .line 1494
    .line 1495
    goto/16 :goto_7

    .line 1496
    .line 1497
    :cond_10
    sget-object p0, Lnet/blip/libblip/FileType;->l:Lnet/blip/libblip/FileType;

    .line 1498
    .line 1499
    goto/16 :goto_8

    .line 1500
    .line 1501
    :sswitch_5e
    const-string p1, "xz"

    .line 1502
    .line 1503
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1504
    .line 1505
    .line 1506
    move-result p0

    .line 1507
    if-nez p0, :cond_15

    .line 1508
    .line 1509
    goto/16 :goto_7

    .line 1510
    .line 1511
    :sswitch_5f
    const-string p1, "ts"

    .line 1512
    .line 1513
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1514
    .line 1515
    .line 1516
    move-result p0

    .line 1517
    if-nez p0, :cond_14

    .line 1518
    .line 1519
    goto/16 :goto_7

    .line 1520
    .line 1521
    :sswitch_60
    const-string p1, "sh"

    .line 1522
    .line 1523
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1524
    .line 1525
    .line 1526
    move-result p0

    .line 1527
    if-nez p0, :cond_14

    .line 1528
    .line 1529
    goto/16 :goto_7

    .line 1530
    .line 1531
    :sswitch_61
    const-string p1, "rs"

    .line 1532
    .line 1533
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1534
    .line 1535
    .line 1536
    move-result p0

    .line 1537
    if-nez p0, :cond_14

    .line 1538
    .line 1539
    goto/16 :goto_7

    .line 1540
    .line 1541
    :sswitch_62
    const-string p1, "rb"

    .line 1542
    .line 1543
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1544
    .line 1545
    .line 1546
    move-result p0

    .line 1547
    if-nez p0, :cond_14

    .line 1548
    .line 1549
    goto/16 :goto_7

    .line 1550
    .line 1551
    :sswitch_63
    const-string p1, "py"

    .line 1552
    .line 1553
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1554
    .line 1555
    .line 1556
    move-result p0

    .line 1557
    if-nez p0, :cond_14

    .line 1558
    .line 1559
    goto/16 :goto_7

    .line 1560
    .line 1561
    :sswitch_64
    const-string p1, "mm"

    .line 1562
    .line 1563
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1564
    .line 1565
    .line 1566
    move-result p0

    .line 1567
    if-nez p0, :cond_14

    .line 1568
    .line 1569
    goto/16 :goto_7

    .line 1570
    .line 1571
    :sswitch_65
    const-string p1, "md"

    .line 1572
    .line 1573
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1574
    .line 1575
    .line 1576
    move-result p0

    .line 1577
    if-nez p0, :cond_11

    .line 1578
    .line 1579
    goto/16 :goto_7

    .line 1580
    .line 1581
    :cond_11
    sget-object p0, Lnet/blip/libblip/FileType;->q:Lnet/blip/libblip/FileType;

    .line 1582
    .line 1583
    goto/16 :goto_8

    .line 1584
    .line 1585
    :sswitch_66
    const-string p1, "kt"

    .line 1586
    .line 1587
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1588
    .line 1589
    .line 1590
    move-result p0

    .line 1591
    if-nez p0, :cond_14

    .line 1592
    .line 1593
    goto/16 :goto_7

    .line 1594
    .line 1595
    :sswitch_67
    const-string p1, "js"

    .line 1596
    .line 1597
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1598
    .line 1599
    .line 1600
    move-result p0

    .line 1601
    if-nez p0, :cond_14

    .line 1602
    .line 1603
    goto/16 :goto_7

    .line 1604
    .line 1605
    :sswitch_68
    const-string p1, "hs"

    .line 1606
    .line 1607
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1608
    .line 1609
    .line 1610
    move-result p0

    .line 1611
    if-nez p0, :cond_14

    .line 1612
    .line 1613
    goto/16 :goto_7

    .line 1614
    .line 1615
    :sswitch_69
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1616
    .line 1617
    .line 1618
    move-result p0

    .line 1619
    if-nez p0, :cond_15

    .line 1620
    .line 1621
    goto/16 :goto_7

    .line 1622
    .line 1623
    :sswitch_6a
    const-string p1, "go"

    .line 1624
    .line 1625
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1626
    .line 1627
    .line 1628
    move-result p0

    .line 1629
    if-nez p0, :cond_14

    .line 1630
    .line 1631
    goto/16 :goto_7

    .line 1632
    .line 1633
    :sswitch_6b
    const-string p1, "cs"

    .line 1634
    .line 1635
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1636
    .line 1637
    .line 1638
    move-result p0

    .line 1639
    if-nez p0, :cond_14

    .line 1640
    .line 1641
    goto/16 :goto_7

    .line 1642
    .line 1643
    :sswitch_6c
    const-string p1, "cc"

    .line 1644
    .line 1645
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1646
    .line 1647
    .line 1648
    move-result p0

    .line 1649
    if-nez p0, :cond_14

    .line 1650
    .line 1651
    goto/16 :goto_7

    .line 1652
    .line 1653
    :sswitch_6d
    const-string p1, "ai"

    .line 1654
    .line 1655
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1656
    .line 1657
    .line 1658
    move-result p0

    .line 1659
    if-nez p0, :cond_12

    .line 1660
    .line 1661
    goto/16 :goto_7

    .line 1662
    .line 1663
    :cond_12
    sget-object p0, Lnet/blip/libblip/FileType;->n:Lnet/blip/libblip/FileType;

    .line 1664
    .line 1665
    goto/16 :goto_8

    .line 1666
    .line 1667
    :sswitch_6e
    const-string p1, "7z"

    .line 1668
    .line 1669
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1670
    .line 1671
    .line 1672
    move-result p0

    .line 1673
    if-nez p0, :cond_15

    .line 1674
    .line 1675
    goto/16 :goto_7

    .line 1676
    .line 1677
    :sswitch_6f
    const-string p1, "m"

    .line 1678
    .line 1679
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1680
    .line 1681
    .line 1682
    move-result p0

    .line 1683
    if-nez p0, :cond_14

    .line 1684
    .line 1685
    goto :goto_7

    .line 1686
    :sswitch_70
    const-string p1, "h"

    .line 1687
    .line 1688
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1689
    .line 1690
    .line 1691
    move-result p0

    .line 1692
    if-nez p0, :cond_14

    .line 1693
    .line 1694
    goto :goto_7

    .line 1695
    :sswitch_71
    const-string p1, "c"

    .line 1696
    .line 1697
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1698
    .line 1699
    .line 1700
    move-result p0

    .line 1701
    if-nez p0, :cond_14

    .line 1702
    .line 1703
    goto :goto_7

    .line 1704
    :sswitch_72
    const-string p1, "keynote"

    .line 1705
    .line 1706
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1707
    .line 1708
    .line 1709
    move-result p0

    .line 1710
    if-nez p0, :cond_13

    .line 1711
    .line 1712
    goto :goto_7

    .line 1713
    :cond_13
    sget-object p0, Lnet/blip/libblip/FileType;->s:Lnet/blip/libblip/FileType;

    .line 1714
    .line 1715
    goto :goto_8

    .line 1716
    :sswitch_73
    const-string p1, "tar.xz"

    .line 1717
    .line 1718
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1719
    .line 1720
    .line 1721
    move-result p0

    .line 1722
    if-nez p0, :cond_15

    .line 1723
    .line 1724
    goto :goto_7

    .line 1725
    :sswitch_74
    const-string p1, "tar.gz"

    .line 1726
    .line 1727
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1728
    .line 1729
    .line 1730
    move-result p0

    .line 1731
    if-nez p0, :cond_15

    .line 1732
    .line 1733
    goto :goto_7

    .line 1734
    :sswitch_75
    const-string p1, "svelte"

    .line 1735
    .line 1736
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1737
    .line 1738
    .line 1739
    move-result p0

    .line 1740
    if-nez p0, :cond_14

    .line 1741
    .line 1742
    goto :goto_7

    .line 1743
    :sswitch_76
    const-string p1, "coffee"

    .line 1744
    .line 1745
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1746
    .line 1747
    .line 1748
    move-result p0

    .line 1749
    if-nez p0, :cond_14

    .line 1750
    .line 1751
    goto :goto_7

    .line 1752
    :cond_14
    sget-object p0, Lnet/blip/libblip/FileType;->t:Lnet/blip/libblip/FileType;

    .line 1753
    .line 1754
    goto :goto_8

    .line 1755
    :sswitch_77
    const-string p1, "tar.bz2"

    .line 1756
    .line 1757
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1758
    .line 1759
    .line 1760
    move-result p0

    .line 1761
    if-nez p0, :cond_15

    .line 1762
    .line 1763
    goto :goto_7

    .line 1764
    :cond_15
    sget-object p0, Lnet/blip/libblip/FileType;->v:Lnet/blip/libblip/FileType;

    .line 1765
    .line 1766
    goto :goto_8

    .line 1767
    :sswitch_78
    const-string p1, "numbers"

    .line 1768
    .line 1769
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1770
    .line 1771
    .line 1772
    move-result p0

    .line 1773
    if-nez p0, :cond_16

    .line 1774
    .line 1775
    :goto_7
    sget-object p0, Lnet/blip/libblip/FileType;->x:Lnet/blip/libblip/FileType;

    .line 1776
    .line 1777
    goto :goto_8

    .line 1778
    :cond_16
    sget-object p0, Lnet/blip/libblip/FileType;->r:Lnet/blip/libblip/FileType;

    .line 1779
    .line 1780
    goto :goto_8

    .line 1781
    :cond_17
    sget-object p0, Lnet/blip/libblip/FileType;->x:Lnet/blip/libblip/FileType;

    .line 1782
    .line 1783
    goto :goto_8

    .line 1784
    :cond_18
    sget-object p0, Lnet/blip/libblip/FileType;->x:Lnet/blip/libblip/FileType;

    .line 1785
    .line 1786
    :goto_8
    return-object p0

    .line 1787
    :sswitch_data_0
    .sparse-switch
        -0x773d71b6 -> :sswitch_78
        -0x5bca32ef -> :sswitch_77
        -0x50c42034 -> :sswitch_76
        -0x35144dc5 -> :sswitch_75
        -0x34826424 -> :sswitch_74
        -0x34826215 -> :sswitch_73
        -0x308ef92f -> :sswitch_72
        0x63 -> :sswitch_71
        0x68 -> :sswitch_70
        0x6d -> :sswitch_6f
        0x723 -> :sswitch_6e
        0xc28 -> :sswitch_6d
        0xc60 -> :sswitch_6c
        0xc70 -> :sswitch_6b
        0xce8 -> :sswitch_6a
        0xcf3 -> :sswitch_69
        0xd0b -> :sswitch_68
        0xd49 -> :sswitch_67
        0xd69 -> :sswitch_66
        0xd97 -> :sswitch_65
        0xda0 -> :sswitch_64
        0xe09 -> :sswitch_63
        0xe30 -> :sswitch_62
        0xe41 -> :sswitch_61
        0xe55 -> :sswitch_60
        0xe7f -> :sswitch_5f
        0xf02 -> :sswitch_5e
        0xcc3f -> :sswitch_5d
        0xcc5c -> :sswitch_5c
        0x17843 -> :sswitch_5b
        0x17903 -> :sswitch_5a
        0x17a66 -> :sswitch_59
        0x17ad4 -> :sswitch_58
        0x17c15 -> :sswitch_57
        0x17d85 -> :sswitch_56
        0x18064 -> :sswitch_55
        0x18121 -> :sswitch_54
        0x1813a -> :sswitch_53
        0x181e8 -> :sswitch_52
        0x18203 -> :sswitch_51
        0x182a3 -> :sswitch_50
        0x1851d -> :sswitch_4f
        0x18538 -> :sswitch_4e
        0x18928 -> :sswitch_4d
        0x18959 -> :sswitch_4c
        0x18ba6 -> :sswitch_4b
        0x18c04 -> :sswitch_4a
        0x18fc4 -> :sswitch_49
        0x190a9 -> :sswitch_48
        0x19468 -> :sswitch_47
        0x194e1 -> :sswitch_46
        0x19be1 -> :sswitch_45
        0x19e5f -> :sswitch_44
        0x19fef -> :sswitch_43
        0x1a02a -> :sswitch_42
        0x1a344 -> :sswitch_41
        0x1a3b0 -> :sswitch_40
        0x1a648 -> :sswitch_3f
        0x1a698 -> :sswitch_3e
        0x1a714 -> :sswitch_3d
        0x1a733 -> :sswitch_3c
        0x1a772 -> :sswitch_3b
        0x1a98f -> :sswitch_3a
        0x1ab33 -> :sswitch_39
        0x1ad3b -> :sswitch_38
        0x1ad8f -> :sswitch_37
        0x1aee3 -> :sswitch_36
        0x1b0f2 -> :sswitch_35
        0x1b178 -> :sswitch_34
        0x1b211 -> :sswitch_33
        0x1b229 -> :sswitch_32
        0x1b274 -> :sswitch_31
        0x1b283 -> :sswitch_30
        0x1b2c1 -> :sswitch_2f
        0x1b823 -> :sswitch_2e
        0x1b828 -> :sswitch_2d
        0x1ba64 -> :sswitch_2c
        0x1bdb3 -> :sswitch_2b
        0x1bde7 -> :sswitch_2a
        0x1bdf8 -> :sswitch_29
        0x1be64 -> :sswitch_28
        0x1bfa5 -> :sswitch_27
        0x1bfcc -> :sswitch_26
        0x1c04e -> :sswitch_25
        0x1c067 -> :sswitch_24
        0x1c091 -> :sswitch_23
        0x1c270 -> :sswitch_22
        0x1c276 -> :sswitch_21
        0x1c56f -> :sswitch_20
        0x1caec -> :sswitch_1f
        0x1cc4b -> :sswitch_1e
        0x1cc50 -> :sswitch_1d
        0x1cc60 -> :sswitch_1c
        0x1d017 -> :sswitch_1b
        0x1d019 -> :sswitch_1a
        0x1d721 -> :sswitch_19
        0x2daee8 -> :sswitch_18
        0x2db98d -> :sswitch_17
        0x2f2240 -> :sswitch_16
        0x2fff68 -> :sswitch_15
        0x30a95a -> :sswitch_14
        0x30ced7 -> :sswitch_13
        0x30ceda -> :sswitch_12
        0x3107ab -> :sswitch_11
        0x31aa22 -> :sswitch_10
        0x31e068 -> :sswitch_f
        0x31ece8 -> :sswitch_e
        0x32a199 -> :sswitch_d
        0x333d85 -> :sswitch_c
        0x349c84 -> :sswitch_b
        0x35c12e -> :sswitch_a
        0x3639e6 -> :sswitch_9
        0x3651f5 -> :sswitch_8
        0x379f99 -> :sswitch_7
        0x379f9c -> :sswitch_6
        0x383059 -> :sswitch_5
        0x58e0c4a -> :sswitch_4
        0x59e0c93 -> :sswitch_3
        0x657efc4 -> :sswitch_2
        0x68c3e13 -> :sswitch_1
        0xeb7fcef -> :sswitch_0
    .end sparse-switch

    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    :pswitch_data_0
    .packed-switch 0x181a3
        :pswitch_17
        :pswitch_16
    .end packed-switch

    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    :pswitch_data_1
    .packed-switch 0x1a6f0
        :pswitch_15
        :pswitch_14
    .end packed-switch

    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    :pswitch_data_2
    .packed-switch 0x1ad3e
        :pswitch_13
        :pswitch_12
    .end packed-switch

    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    :pswitch_data_3
    .packed-switch 0x1b1f3
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 2298
    .line 2299
    .line 2300
    .line 2301
    .line 2302
    .line 2303
    .line 2304
    .line 2305
    .line 2306
    .line 2307
    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    .line 2314
    .line 2315
    .line 2316
    .line 2317
    .line 2318
    .line 2319
    :pswitch_data_4
    .packed-switch 0x1cffb
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
