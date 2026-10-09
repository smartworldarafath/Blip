.class public abstract Landroidx/compose/material/TextFieldImplKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move/from16 v8, p7

    .line 6
    .line 7
    move-object/from16 v9, p8

    .line 8
    .line 9
    move-object/from16 v7, p11

    .line 10
    .line 11
    move/from16 v0, p13

    .line 12
    .line 13
    move/from16 v2, p14

    .line 14
    .line 15
    sget-object v4, Landroidx/compose/material/TextFieldType;->j:[Landroidx/compose/material/TextFieldType;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    move-object/from16 v6, p12

    .line 23
    .line 24
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 25
    .line 26
    const v10, 0x18f3769a

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 30
    .line 31
    .line 32
    and-int/lit8 v10, v0, 0x6

    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    if-nez v10, :cond_1

    .line 36
    .line 37
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    if-eqz v10, :cond_0

    .line 42
    .line 43
    const/4 v10, 0x4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v10, 0x2

    .line 46
    :goto_0
    or-int/2addr v10, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move v10, v0

    .line 49
    :goto_1
    and-int/lit8 v14, v0, 0x30

    .line 50
    .line 51
    if-nez v14, :cond_3

    .line 52
    .line 53
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v14

    .line 57
    if-eqz v14, :cond_2

    .line 58
    .line 59
    const/16 v14, 0x20

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/16 v14, 0x10

    .line 63
    .line 64
    :goto_2
    or-int/2addr v10, v14

    .line 65
    :cond_3
    and-int/lit16 v14, v0, 0x180

    .line 66
    .line 67
    const/16 v16, 0x80

    .line 68
    .line 69
    const/16 v17, 0x100

    .line 70
    .line 71
    if-nez v14, :cond_5

    .line 72
    .line 73
    move-object/from16 v14, p1

    .line 74
    .line 75
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v18

    .line 79
    if-eqz v18, :cond_4

    .line 80
    .line 81
    move/from16 v18, v17

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    move/from16 v18, v16

    .line 85
    .line 86
    :goto_3
    or-int v10, v10, v18

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_5
    move-object/from16 v14, p1

    .line 90
    .line 91
    :goto_4
    and-int/lit16 v13, v0, 0xc00

    .line 92
    .line 93
    const/16 v19, 0x400

    .line 94
    .line 95
    if-nez v13, :cond_7

    .line 96
    .line 97
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v13

    .line 101
    if-eqz v13, :cond_6

    .line 102
    .line 103
    const/16 v13, 0x800

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_6
    move/from16 v13, v19

    .line 107
    .line 108
    :goto_5
    or-int/2addr v10, v13

    .line 109
    :cond_7
    and-int/lit16 v13, v0, 0x6000

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    const/16 v22, 0x2000

    .line 113
    .line 114
    const/16 v23, 0x4000

    .line 115
    .line 116
    if-nez v13, :cond_9

    .line 117
    .line 118
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v13

    .line 122
    if-eqz v13, :cond_8

    .line 123
    .line 124
    move/from16 v13, v23

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_8
    move/from16 v13, v22

    .line 128
    .line 129
    :goto_6
    or-int/2addr v10, v13

    .line 130
    :cond_9
    const/high16 v13, 0x30000

    .line 131
    .line 132
    and-int v24, v0, v13

    .line 133
    .line 134
    const/high16 v25, 0x10000

    .line 135
    .line 136
    const/high16 v26, 0x20000

    .line 137
    .line 138
    if-nez v24, :cond_b

    .line 139
    .line 140
    move/from16 v24, v13

    .line 141
    .line 142
    move-object/from16 v13, p3

    .line 143
    .line 144
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v27

    .line 148
    if-eqz v27, :cond_a

    .line 149
    .line 150
    move/from16 v27, v26

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_a
    move/from16 v27, v25

    .line 154
    .line 155
    :goto_7
    or-int v10, v10, v27

    .line 156
    .line 157
    goto :goto_8

    .line 158
    :cond_b
    move/from16 v24, v13

    .line 159
    .line 160
    move-object/from16 v13, p3

    .line 161
    .line 162
    :goto_8
    const/high16 v27, 0x180000

    .line 163
    .line 164
    and-int v27, v0, v27

    .line 165
    .line 166
    move-object/from16 v15, p4

    .line 167
    .line 168
    if-nez v27, :cond_d

    .line 169
    .line 170
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v28

    .line 174
    if-eqz v28, :cond_c

    .line 175
    .line 176
    const/high16 v28, 0x100000

    .line 177
    .line 178
    goto :goto_9

    .line 179
    :cond_c
    const/high16 v28, 0x80000

    .line 180
    .line 181
    :goto_9
    or-int v10, v10, v28

    .line 182
    .line 183
    :cond_d
    const/high16 v28, 0xc00000

    .line 184
    .line 185
    and-int v28, v0, v28

    .line 186
    .line 187
    move-object/from16 v12, p5

    .line 188
    .line 189
    if-nez v28, :cond_f

    .line 190
    .line 191
    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v29

    .line 195
    if-eqz v29, :cond_e

    .line 196
    .line 197
    const/high16 v29, 0x800000

    .line 198
    .line 199
    goto :goto_a

    .line 200
    :cond_e
    const/high16 v29, 0x400000

    .line 201
    .line 202
    :goto_a
    or-int v10, v10, v29

    .line 203
    .line 204
    :cond_f
    const/high16 v29, 0x6000000

    .line 205
    .line 206
    and-int v29, v0, v29

    .line 207
    .line 208
    move/from16 v4, p6

    .line 209
    .line 210
    if-nez v29, :cond_11

    .line 211
    .line 212
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 213
    .line 214
    .line 215
    move-result v30

    .line 216
    if-eqz v30, :cond_10

    .line 217
    .line 218
    const/high16 v30, 0x4000000

    .line 219
    .line 220
    goto :goto_b

    .line 221
    :cond_10
    const/high16 v30, 0x2000000

    .line 222
    .line 223
    :goto_b
    or-int v10, v10, v30

    .line 224
    .line 225
    :cond_11
    const/high16 v30, 0x30000000

    .line 226
    .line 227
    and-int v30, v0, v30

    .line 228
    .line 229
    if-nez v30, :cond_13

    .line 230
    .line 231
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 232
    .line 233
    .line 234
    move-result v30

    .line 235
    if-eqz v30, :cond_12

    .line 236
    .line 237
    const/high16 v30, 0x20000000

    .line 238
    .line 239
    goto :goto_c

    .line 240
    :cond_12
    const/high16 v30, 0x10000000

    .line 241
    .line 242
    :goto_c
    or-int v10, v10, v30

    .line 243
    .line 244
    :cond_13
    and-int/lit8 v30, v2, 0x6

    .line 245
    .line 246
    if-nez v30, :cond_15

    .line 247
    .line 248
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    if-eqz v11, :cond_14

    .line 253
    .line 254
    const/16 v18, 0x4

    .line 255
    .line 256
    goto :goto_d

    .line 257
    :cond_14
    const/16 v18, 0x2

    .line 258
    .line 259
    :goto_d
    or-int v11, v2, v18

    .line 260
    .line 261
    goto :goto_e

    .line 262
    :cond_15
    move v11, v2

    .line 263
    :goto_e
    and-int/lit8 v18, v2, 0x30

    .line 264
    .line 265
    if-nez v18, :cond_17

    .line 266
    .line 267
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v18

    .line 271
    if-eqz v18, :cond_16

    .line 272
    .line 273
    const/16 v20, 0x20

    .line 274
    .line 275
    goto :goto_f

    .line 276
    :cond_16
    const/16 v20, 0x10

    .line 277
    .line 278
    :goto_f
    or-int v11, v11, v20

    .line 279
    .line 280
    :cond_17
    and-int/lit16 v0, v2, 0x180

    .line 281
    .line 282
    if-nez v0, :cond_19

    .line 283
    .line 284
    move-object/from16 v0, p9

    .line 285
    .line 286
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v18

    .line 290
    if-eqz v18, :cond_18

    .line 291
    .line 292
    move/from16 v16, v17

    .line 293
    .line 294
    :cond_18
    or-int v11, v11, v16

    .line 295
    .line 296
    goto :goto_10

    .line 297
    :cond_19
    move-object/from16 v0, p9

    .line 298
    .line 299
    :goto_10
    and-int/lit16 v0, v2, 0xc00

    .line 300
    .line 301
    if-nez v0, :cond_1b

    .line 302
    .line 303
    move-object/from16 v0, p10

    .line 304
    .line 305
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v16

    .line 309
    if-eqz v16, :cond_1a

    .line 310
    .line 311
    const/16 v19, 0x800

    .line 312
    .line 313
    :cond_1a
    or-int v11, v11, v19

    .line 314
    .line 315
    goto :goto_11

    .line 316
    :cond_1b
    move-object/from16 v0, p10

    .line 317
    .line 318
    :goto_11
    and-int/lit16 v0, v2, 0x6000

    .line 319
    .line 320
    if-nez v0, :cond_1d

    .line 321
    .line 322
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_1c

    .line 327
    .line 328
    move/from16 v22, v23

    .line 329
    .line 330
    :cond_1c
    or-int v11, v11, v22

    .line 331
    .line 332
    :cond_1d
    and-int v0, v2, v24

    .line 333
    .line 334
    if-nez v0, :cond_1f

    .line 335
    .line 336
    const/4 v0, 0x0

    .line 337
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-eqz v0, :cond_1e

    .line 342
    .line 343
    move/from16 v25, v26

    .line 344
    .line 345
    :cond_1e
    or-int v11, v11, v25

    .line 346
    .line 347
    :cond_1f
    const v0, 0x12492493

    .line 348
    .line 349
    .line 350
    and-int/2addr v0, v10

    .line 351
    const v2, 0x12492492

    .line 352
    .line 353
    .line 354
    const/16 v16, 0x1

    .line 355
    .line 356
    if-ne v0, v2, :cond_21

    .line 357
    .line 358
    const v0, 0x12493

    .line 359
    .line 360
    .line 361
    and-int/2addr v0, v11

    .line 362
    const v2, 0x12492

    .line 363
    .line 364
    .line 365
    if-eq v0, v2, :cond_20

    .line 366
    .line 367
    goto :goto_12

    .line 368
    :cond_20
    const/4 v0, 0x0

    .line 369
    goto :goto_13

    .line 370
    :cond_21
    :goto_12
    move/from16 v0, v16

    .line 371
    .line 372
    :goto_13
    and-int/lit8 v2, v10, 0x1

    .line 373
    .line 374
    invoke-virtual {v6, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-eqz v0, :cond_2f

    .line 379
    .line 380
    and-int/lit8 v0, v10, 0x70

    .line 381
    .line 382
    const/16 v2, 0x20

    .line 383
    .line 384
    if-ne v0, v2, :cond_22

    .line 385
    .line 386
    move/from16 v0, v16

    .line 387
    .line 388
    goto :goto_14

    .line 389
    :cond_22
    const/4 v0, 0x0

    .line 390
    :goto_14
    and-int/lit16 v2, v10, 0x1c00

    .line 391
    .line 392
    const/16 v10, 0x800

    .line 393
    .line 394
    if-ne v2, v10, :cond_23

    .line 395
    .line 396
    move/from16 v2, v16

    .line 397
    .line 398
    goto :goto_15

    .line 399
    :cond_23
    const/4 v2, 0x0

    .line 400
    :goto_15
    or-int/2addr v0, v2

    .line 401
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    if-nez v0, :cond_24

    .line 406
    .line 407
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 408
    .line 409
    if-ne v2, v0, :cond_25

    .line 410
    .line 411
    :cond_24
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 412
    .line 413
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-interface {v3, v0}, Landroidx/compose/ui/text/input/VisualTransformation;->f(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/text/input/TransformedText;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    :cond_25
    check-cast v2, Landroidx/compose/ui/text/input/TransformedText;

    .line 424
    .line 425
    iget-object v0, v2, Landroidx/compose/ui/text/input/TransformedText;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 426
    .line 427
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 428
    .line 429
    shr-int/lit8 v2, v11, 0x3

    .line 430
    .line 431
    and-int/lit8 v2, v2, 0xe

    .line 432
    .line 433
    invoke-static {v9, v6, v2}, Landroidx/compose/foundation/interaction/FocusInteractionKt;->a(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/MutableState;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    check-cast v2, Ljava/lang/Boolean;

    .line 442
    .line 443
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    if-eqz v2, :cond_26

    .line 448
    .line 449
    sget-object v2, Landroidx/compose/material/InputPhase;->j:Landroidx/compose/material/InputPhase;

    .line 450
    .line 451
    goto :goto_16

    .line 452
    :cond_26
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    if-nez v2, :cond_27

    .line 457
    .line 458
    sget-object v2, Landroidx/compose/material/InputPhase;->k:Landroidx/compose/material/InputPhase;

    .line 459
    .line 460
    goto :goto_16

    .line 461
    :cond_27
    sget-object v2, Landroidx/compose/material/InputPhase;->l:Landroidx/compose/material/InputPhase;

    .line 462
    .line 463
    :goto_16
    new-instance v10, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;

    .line 464
    .line 465
    invoke-direct {v10, v9, v7, v8}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;Z)V

    .line 466
    .line 467
    .line 468
    invoke-static {v6}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Typography;

    .line 469
    .line 470
    .line 471
    move-result-object v11

    .line 472
    move-object/from16 v17, v0

    .line 473
    .line 474
    iget-object v0, v11, Landroidx/compose/material/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    .line 475
    .line 476
    iget-object v11, v11, Landroidx/compose/material/Typography;->l:Landroidx/compose/ui/text/TextStyle;

    .line 477
    .line 478
    move-object/from16 v18, v0

    .line 479
    .line 480
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 481
    .line 482
    .line 483
    move-result-wide v0

    .line 484
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->h:J

    .line 485
    .line 486
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-eqz v0, :cond_28

    .line 491
    .line 492
    invoke-virtual {v11}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 493
    .line 494
    .line 495
    move-result-wide v0

    .line 496
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    if-eqz v0, :cond_2a

    .line 501
    .line 502
    :cond_28
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 503
    .line 504
    .line 505
    move-result-wide v0

    .line 506
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    if-nez v0, :cond_29

    .line 511
    .line 512
    invoke-virtual {v11}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 513
    .line 514
    .line 515
    move-result-wide v0

    .line 516
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 517
    .line 518
    .line 519
    move-result v0

    .line 520
    if-eqz v0, :cond_29

    .line 521
    .line 522
    goto :goto_17

    .line 523
    :cond_29
    const/16 v16, 0x0

    .line 524
    .line 525
    :cond_2a
    :goto_17
    const v0, -0x560ed8b3

    .line 526
    .line 527
    .line 528
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 529
    .line 530
    .line 531
    invoke-static {v6}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Typography;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    iget-object v0, v0, Landroidx/compose/material/Typography;->l:Landroidx/compose/ui/text/TextStyle;

    .line 536
    .line 537
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 538
    .line 539
    .line 540
    move-result-wide v0

    .line 541
    const-wide/16 v3, 0x10

    .line 542
    .line 543
    if-eqz v16, :cond_2c

    .line 544
    .line 545
    const v11, -0x34ecb6db    # -9652517.0f

    .line 546
    .line 547
    .line 548
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 549
    .line 550
    .line 551
    cmp-long v11, v0, v3

    .line 552
    .line 553
    if-eqz v11, :cond_2b

    .line 554
    .line 555
    :goto_18
    const/4 v11, 0x0

    .line 556
    goto :goto_19

    .line 557
    :cond_2b
    invoke-virtual {v10, v2, v6, v5}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 562
    .line 563
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 564
    .line 565
    goto :goto_18

    .line 566
    :goto_19
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 567
    .line 568
    .line 569
    move-wide/from16 v18, v3

    .line 570
    .line 571
    goto :goto_1a

    .line 572
    :cond_2c
    move-wide/from16 v18, v3

    .line 573
    .line 574
    const/4 v11, 0x0

    .line 575
    const v3, 0x489d8dbc    # 322669.88f

    .line 576
    .line 577
    .line 578
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 582
    .line 583
    .line 584
    :goto_1a
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 585
    .line 586
    .line 587
    const v3, -0x560ebc51

    .line 588
    .line 589
    .line 590
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 591
    .line 592
    .line 593
    invoke-static {v6}, Landroidx/compose/material/MaterialTheme;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Typography;

    .line 594
    .line 595
    .line 596
    move-result-object v3

    .line 597
    iget-object v3, v3, Landroidx/compose/material/Typography;->g:Landroidx/compose/ui/text/TextStyle;

    .line 598
    .line 599
    invoke-virtual {v3}, Landroidx/compose/ui/text/TextStyle;->b()J

    .line 600
    .line 601
    .line 602
    move-result-wide v3

    .line 603
    if-eqz v16, :cond_2e

    .line 604
    .line 605
    const v11, -0x3d32695a

    .line 606
    .line 607
    .line 608
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 609
    .line 610
    .line 611
    cmp-long v11, v3, v18

    .line 612
    .line 613
    if-eqz v11, :cond_2d

    .line 614
    .line 615
    :goto_1b
    const/4 v11, 0x0

    .line 616
    goto :goto_1c

    .line 617
    :cond_2d
    invoke-virtual {v10, v2, v6, v5}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    .line 622
    .line 623
    iget-wide v3, v3, Landroidx/compose/ui/graphics/Color;->a:J

    .line 624
    .line 625
    goto :goto_1b

    .line 626
    :goto_1c
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 627
    .line 628
    .line 629
    :goto_1d
    move-wide/from16 v18, v3

    .line 630
    .line 631
    goto :goto_1e

    .line 632
    :cond_2e
    const/4 v11, 0x0

    .line 633
    const v5, 0x2f930c1b

    .line 634
    .line 635
    .line 636
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 640
    .line 641
    .line 642
    goto :goto_1d

    .line 643
    :goto_1e
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 644
    .line 645
    .line 646
    new-instance v4, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;

    .line 647
    .line 648
    move-object v3, v6

    .line 649
    move/from16 v21, v11

    .line 650
    .line 651
    move-object v11, v12

    .line 652
    move-object v5, v13

    .line 653
    move-object v13, v14

    .line 654
    move-object/from16 v6, v17

    .line 655
    .line 656
    move/from16 v14, p6

    .line 657
    .line 658
    move-object/from16 v12, p10

    .line 659
    .line 660
    move-object/from16 v17, v10

    .line 661
    .line 662
    move-object v10, v15

    .line 663
    move-object/from16 v15, p9

    .line 664
    .line 665
    invoke-direct/range {v4 .. v16}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroidx/compose/material/TextFieldColors;ZLandroidx/compose/foundation/interaction/InteractionSource;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/layout/PaddingValues;Z)V

    .line 666
    .line 667
    .line 668
    const v5, 0x1fcac37

    .line 669
    .line 670
    .line 671
    invoke-static {v5, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 672
    .line 673
    .line 674
    move-result-object v13

    .line 675
    const/high16 v15, 0x1b0000

    .line 676
    .line 677
    sget-object v5, Landroidx/compose/material/TextFieldTransitionScope;->a:Landroidx/compose/material/TextFieldTransitionScope;

    .line 678
    .line 679
    move-wide v7, v0

    .line 680
    move-object v6, v2

    .line 681
    move-object v14, v3

    .line 682
    move-object/from16 v11, v17

    .line 683
    .line 684
    move-wide/from16 v9, v18

    .line 685
    .line 686
    move/from16 v12, v21

    .line 687
    .line 688
    invoke-virtual/range {v5 .. v15}, Landroidx/compose/material/TextFieldTransitionScope;->a(Landroidx/compose/material/InputPhase;JJLkotlin/jvm/functions/Function3;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 689
    .line 690
    .line 691
    goto :goto_1f

    .line 692
    :cond_2f
    move-object v3, v6

    .line 693
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 694
    .line 695
    .line 696
    :goto_1f
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 697
    .line 698
    .line 699
    move-result-object v15

    .line 700
    if-eqz v15, :cond_30

    .line 701
    .line 702
    new-instance v0, Lwg;

    .line 703
    .line 704
    move-object/from16 v1, p0

    .line 705
    .line 706
    move-object/from16 v2, p1

    .line 707
    .line 708
    move-object/from16 v3, p2

    .line 709
    .line 710
    move-object/from16 v4, p3

    .line 711
    .line 712
    move-object/from16 v5, p4

    .line 713
    .line 714
    move-object/from16 v6, p5

    .line 715
    .line 716
    move/from16 v7, p6

    .line 717
    .line 718
    move/from16 v8, p7

    .line 719
    .line 720
    move-object/from16 v9, p8

    .line 721
    .line 722
    move-object/from16 v10, p9

    .line 723
    .line 724
    move-object/from16 v11, p10

    .line 725
    .line 726
    move-object/from16 v12, p11

    .line 727
    .line 728
    move/from16 v13, p13

    .line 729
    .line 730
    move/from16 v14, p14

    .line 731
    .line 732
    invoke-direct/range {v0 .. v14}, Lwg;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;II)V

    .line 733
    .line 734
    .line 735
    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 736
    .line 737
    :cond_30
    return-void
.end method

.method public static final b(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 8

    .line 1
    move-object v0, p4

    .line 2
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const v1, 0x7b0fcb51

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p0, p1}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x4

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x2

    .line 19
    :goto_0
    or-int/2addr v1, p5

    .line 20
    and-int/lit8 v2, p6, 0x2

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    or-int/lit8 v1, v1, 0x30

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    invoke-virtual {v0, p2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    const/16 v3, 0x20

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const/16 v3, 0x10

    .line 37
    .line 38
    :goto_1
    or-int/2addr v1, v3

    .line 39
    :goto_2
    and-int/lit8 v3, p6, 0x4

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v3, :cond_3

    .line 43
    .line 44
    or-int/lit16 v1, v1, 0x180

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_3
    and-int/lit16 v3, p5, 0x180

    .line 48
    .line 49
    if-nez v3, :cond_5

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    const/16 v3, 0x100

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_4
    const/16 v3, 0x80

    .line 61
    .line 62
    :goto_3
    or-int/2addr v1, v3

    .line 63
    :cond_5
    :goto_4
    invoke-virtual {v0, p3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_6

    .line 68
    .line 69
    const/16 v3, 0x800

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_6
    const/16 v3, 0x400

    .line 73
    .line 74
    :goto_5
    or-int/2addr v1, v3

    .line 75
    and-int/lit16 v3, v1, 0x493

    .line 76
    .line 77
    const/16 v6, 0x492

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    if-eq v3, v6, :cond_7

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    goto :goto_6

    .line 84
    :cond_7
    move v3, v7

    .line 85
    :goto_6
    and-int/lit8 v6, v1, 0x1

    .line 86
    .line 87
    invoke-virtual {v0, v6, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_a

    .line 92
    .line 93
    if-eqz v2, :cond_8

    .line 94
    .line 95
    move-object p2, v4

    .line 96
    :cond_8
    new-instance v2, Lxg;

    .line 97
    .line 98
    invoke-direct {v2, p0, p1, v4, p3}, Lxg;-><init>(JLjava/lang/Float;Lkotlin/jvm/functions/Function2;)V

    .line 99
    .line 100
    .line 101
    const v3, -0x26ca46a5

    .line 102
    .line 103
    .line 104
    invoke-static {v3, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    if-eqz p2, :cond_9

    .line 109
    .line 110
    const v3, -0x9b55ca1

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 114
    .line 115
    .line 116
    shr-int/lit8 v1, v1, 0x3

    .line 117
    .line 118
    and-int/lit8 v1, v1, 0xe

    .line 119
    .line 120
    or-int/lit8 v1, v1, 0x30

    .line 121
    .line 122
    invoke-static {p2, v2, v0, v1}, Landroidx/compose/material/TextKt;->a(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 123
    .line 124
    .line 125
    :goto_7
    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_9
    const v1, -0x9b5563d

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 133
    .line 134
    .line 135
    const/4 v1, 0x6

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_7

    .line 144
    :goto_8
    move-object v3, p2

    .line 145
    goto :goto_9

    .line 146
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 147
    .line 148
    .line 149
    goto :goto_8

    .line 150
    :goto_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    if-eqz p2, :cond_b

    .line 155
    .line 156
    new-instance v0, Lte;

    .line 157
    .line 158
    move-wide v1, p0

    .line 159
    move-object v4, p3

    .line 160
    move v5, p5

    .line 161
    move v6, p6

    .line 162
    invoke-direct/range {v0 .. v6}, Lte;-><init>(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;II)V

    .line 163
    .line 164
    .line 165
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 166
    .line 167
    :cond_b
    return-void
.end method

.method public static final c(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Landroidx/compose/ui/layout/LayoutIdParentData;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p0, Landroidx/compose/ui/layout/LayoutIdParentData;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p0, v1

    .line 14
    :goto_0
    if-eqz p0, :cond_1

    .line 15
    .line 16
    check-cast p0, Landroidx/compose/ui/layout/LayoutIdModifier;

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutIdModifier;->x:Ljava/lang/String;

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    return-object v1
.end method
