.class public abstract Landroidx/compose/ui/autofill/PopulateViewStructure_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/view/ViewStructure;Landroidx/compose/ui/semantics/SemanticsInfo;Landroid/view/autofill/AutofillId;Ljava/lang/String;Landroidx/compose/ui/spatial/RectManager;)V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p4

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 6
    .line 7
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    move-object/from16 v7, p1

    .line 10
    .line 11
    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    .line 12
    .line 13
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v9, 0x2

    .line 18
    const/16 v12, 0x8

    .line 19
    .line 20
    const/4 v15, 0x1

    .line 21
    if-eqz v2, :cond_16

    .line 22
    .line 23
    iget-object v2, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 24
    .line 25
    if-eqz v2, :cond_16

    .line 26
    .line 27
    const-wide/16 v16, 0x80

    .line 28
    .line 29
    iget-object v3, v2, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v4, v2, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 32
    .line 33
    iget-object v2, v2, Landroidx/collection/ScatterMap;->a:[J

    .line 34
    .line 35
    const-wide/16 v18, 0xff

    .line 36
    .line 37
    array-length v5, v2

    .line 38
    sub-int/2addr v5, v9

    .line 39
    move/from16 v32, v9

    .line 40
    .line 41
    if-ltz v5, :cond_14

    .line 42
    .line 43
    move/from16 v29, v15

    .line 44
    .line 45
    const/16 p1, 0x7

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    const/16 v20, 0x0

    .line 49
    .line 50
    const/16 v21, 0x0

    .line 51
    .line 52
    const/16 v22, 0x0

    .line 53
    .line 54
    const/16 v23, 0x0

    .line 55
    .line 56
    const/16 v24, 0x0

    .line 57
    .line 58
    const/16 v25, 0x0

    .line 59
    .line 60
    const/16 v26, 0x0

    .line 61
    .line 62
    const/16 v27, 0x0

    .line 63
    .line 64
    const/16 v28, 0x0

    .line 65
    .line 66
    const/16 v30, 0x0

    .line 67
    .line 68
    const/16 v31, 0x0

    .line 69
    .line 70
    :goto_0
    aget-wide v8, v2, v6

    .line 71
    .line 72
    const-wide v33, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    not-long v10, v8

    .line 78
    shl-long v10, v10, p1

    .line 79
    .line 80
    and-long/2addr v10, v8

    .line 81
    and-long v10, v10, v33

    .line 82
    .line 83
    cmp-long v10, v10, v33

    .line 84
    .line 85
    if-eqz v10, :cond_13

    .line 86
    .line 87
    sub-int v10, v6, v5

    .line 88
    .line 89
    not-int v10, v10

    .line 90
    ushr-int/lit8 v10, v10, 0x1f

    .line 91
    .line 92
    rsub-int/lit8 v10, v10, 0x8

    .line 93
    .line 94
    const/4 v11, 0x0

    .line 95
    :goto_1
    if-ge v11, v10, :cond_12

    .line 96
    .line 97
    and-long v35, v8, v18

    .line 98
    .line 99
    cmp-long v35, v35, v16

    .line 100
    .line 101
    if-gez v35, :cond_10

    .line 102
    .line 103
    shl-int/lit8 v35, v6, 0x3

    .line 104
    .line 105
    add-int v35, v35, v11

    .line 106
    .line 107
    aget-object v36, v3, v35

    .line 108
    .line 109
    aget-object v35, v4, v35

    .line 110
    .line 111
    move-object/from16 v13, v36

    .line 112
    .line 113
    check-cast v13, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 114
    .line 115
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->s:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 116
    .line 117
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    if-eqz v14, :cond_0

    .line 122
    .line 123
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-object/from16 v20, v35

    .line 127
    .line 128
    check-cast v20, Landroidx/compose/ui/autofill/ContentDataType;

    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_0
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 133
    .line 134
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v14

    .line 138
    if-eqz v14, :cond_1

    .line 139
    .line 140
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-object/from16 v14, v35

    .line 144
    .line 145
    check-cast v14, Ljava/util/List;

    .line 146
    .line 147
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v14

    .line 151
    check-cast v14, Ljava/lang/String;

    .line 152
    .line 153
    if-eqz v14, :cond_f

    .line 154
    .line 155
    invoke-virtual {v0, v14}, Landroid/view/ViewStructure;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_2

    .line 159
    .line 160
    :cond_1
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->r:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 161
    .line 162
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    if-eqz v14, :cond_2

    .line 167
    .line 168
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    move-object/from16 v25, v35

    .line 172
    .line 173
    check-cast v25, Landroidx/compose/ui/autofill/ContentType;

    .line 174
    .line 175
    goto/16 :goto_2

    .line 176
    .line 177
    :cond_2
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->t:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 178
    .line 179
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v14

    .line 183
    if-eqz v14, :cond_3

    .line 184
    .line 185
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    move-object/from16 v24, v35

    .line 189
    .line 190
    check-cast v24, Landroidx/compose/ui/autofill/AndroidFillableData;

    .line 191
    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :cond_3
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->G:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 195
    .line 196
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v14

    .line 200
    if-eqz v14, :cond_4

    .line 201
    .line 202
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    move-object/from16 v23, v35

    .line 206
    .line 207
    check-cast v23, Landroidx/compose/ui/text/AnnotatedString;

    .line 208
    .line 209
    goto/16 :goto_2

    .line 210
    .line 211
    :cond_4
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->l:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 212
    .line 213
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v14

    .line 217
    if-eqz v14, :cond_5

    .line 218
    .line 219
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    move-object/from16 v14, v35

    .line 223
    .line 224
    check-cast v14, Ljava/lang/Boolean;

    .line 225
    .line 226
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    invoke-virtual {v0, v14}, Landroid/view/ViewStructure;->setFocused(Z)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_2

    .line 234
    .line 235
    :cond_5
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->R:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 236
    .line 237
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v14

    .line 241
    if-eqz v14, :cond_6

    .line 242
    .line 243
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    move-object/from16 v30, v35

    .line 247
    .line 248
    check-cast v30, Ljava/lang/Integer;

    .line 249
    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :cond_6
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->N:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 253
    .line 254
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v14

    .line 258
    if-eqz v14, :cond_7

    .line 259
    .line 260
    move/from16 v28, v15

    .line 261
    .line 262
    goto/16 :goto_2

    .line 263
    .line 264
    :cond_7
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->o:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 265
    .line 266
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    if-eqz v14, :cond_8

    .line 271
    .line 272
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 273
    .line 274
    .line 275
    move-object/from16 v14, v35

    .line 276
    .line 277
    check-cast v14, Ljava/lang/Boolean;

    .line 278
    .line 279
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    .line 280
    .line 281
    .line 282
    move-result v29

    .line 283
    goto :goto_2

    .line 284
    :cond_8
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->z:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 285
    .line 286
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result v14

    .line 290
    if-eqz v14, :cond_9

    .line 291
    .line 292
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    move-object/from16 v27, v35

    .line 296
    .line 297
    check-cast v27, Landroidx/compose/ui/semantics/Role;

    .line 298
    .line 299
    goto :goto_2

    .line 300
    :cond_9
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->K:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 301
    .line 302
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v14

    .line 306
    if-eqz v14, :cond_a

    .line 307
    .line 308
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    move-object/from16 v26, v35

    .line 312
    .line 313
    check-cast v26, Ljava/lang/Boolean;

    .line 314
    .line 315
    goto :goto_2

    .line 316
    :cond_a
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsProperties;->L:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 317
    .line 318
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v14

    .line 322
    if-eqz v14, :cond_b

    .line 323
    .line 324
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    move-object/from16 v22, v35

    .line 328
    .line 329
    check-cast v22, Landroidx/compose/ui/state/ToggleableState;

    .line 330
    .line 331
    goto :goto_2

    .line 332
    :cond_b
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 333
    .line 334
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v14

    .line 338
    if-eqz v14, :cond_c

    .line 339
    .line 340
    invoke-virtual {v0, v15}, Landroid/view/ViewStructure;->setClickable(Z)V

    .line 341
    .line 342
    .line 343
    goto :goto_2

    .line 344
    :cond_c
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 345
    .line 346
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v14

    .line 350
    if-eqz v14, :cond_d

    .line 351
    .line 352
    invoke-virtual {v0, v15}, Landroid/view/ViewStructure;->setLongClickable(Z)V

    .line 353
    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_d
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->w:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 357
    .line 358
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v14

    .line 362
    if-eqz v14, :cond_e

    .line 363
    .line 364
    invoke-virtual {v0, v15}, Landroid/view/ViewStructure;->setFocusable(Z)V

    .line 365
    .line 366
    .line 367
    goto :goto_2

    .line 368
    :cond_e
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsActions;->k:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 369
    .line 370
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v14

    .line 374
    if-eqz v14, :cond_f

    .line 375
    .line 376
    move/from16 v21, v15

    .line 377
    .line 378
    :cond_f
    :goto_2
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 379
    .line 380
    move/from16 v37, v15

    .line 381
    .line 382
    const/16 v15, 0x22

    .line 383
    .line 384
    if-lt v14, v15, :cond_11

    .line 385
    .line 386
    sget-object v14, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 387
    .line 388
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v13

    .line 392
    if-eqz v13, :cond_11

    .line 393
    .line 394
    move-object/from16 v31, v35

    .line 395
    .line 396
    goto :goto_3

    .line 397
    :cond_10
    move/from16 v37, v15

    .line 398
    .line 399
    :cond_11
    :goto_3
    shr-long/2addr v8, v12

    .line 400
    add-int/lit8 v11, v11, 0x1

    .line 401
    .line 402
    move/from16 v15, v37

    .line 403
    .line 404
    goto/16 :goto_1

    .line 405
    .line 406
    :cond_12
    move/from16 v37, v15

    .line 407
    .line 408
    if-ne v10, v12, :cond_15

    .line 409
    .line 410
    goto :goto_4

    .line 411
    :cond_13
    move/from16 v37, v15

    .line 412
    .line 413
    :goto_4
    if-eq v6, v5, :cond_15

    .line 414
    .line 415
    add-int/lit8 v6, v6, 0x1

    .line 416
    .line 417
    move/from16 v15, v37

    .line 418
    .line 419
    goto/16 :goto_0

    .line 420
    .line 421
    :cond_14
    move/from16 v37, v15

    .line 422
    .line 423
    const/16 p1, 0x7

    .line 424
    .line 425
    const-wide v33, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    move/from16 v29, v37

    .line 431
    .line 432
    const/16 v20, 0x0

    .line 433
    .line 434
    const/16 v21, 0x0

    .line 435
    .line 436
    const/16 v22, 0x0

    .line 437
    .line 438
    const/16 v23, 0x0

    .line 439
    .line 440
    const/16 v24, 0x0

    .line 441
    .line 442
    const/16 v25, 0x0

    .line 443
    .line 444
    const/16 v26, 0x0

    .line 445
    .line 446
    const/16 v27, 0x0

    .line 447
    .line 448
    const/16 v28, 0x0

    .line 449
    .line 450
    const/16 v30, 0x0

    .line 451
    .line 452
    const/16 v31, 0x0

    .line 453
    .line 454
    :cond_15
    move-object/from16 v8, v22

    .line 455
    .line 456
    move-object/from16 v2, v23

    .line 457
    .line 458
    move-object/from16 v3, v24

    .line 459
    .line 460
    move-object/from16 v9, v27

    .line 461
    .line 462
    goto :goto_5

    .line 463
    :cond_16
    move/from16 v32, v9

    .line 464
    .line 465
    move/from16 v37, v15

    .line 466
    .line 467
    const/16 p1, 0x7

    .line 468
    .line 469
    const-wide/16 v16, 0x80

    .line 470
    .line 471
    const-wide/16 v18, 0xff

    .line 472
    .line 473
    const-wide v33, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    move/from16 v29, v37

    .line 479
    .line 480
    const/4 v2, 0x0

    .line 481
    const/4 v3, 0x0

    .line 482
    const/4 v8, 0x0

    .line 483
    const/4 v9, 0x0

    .line 484
    const/16 v20, 0x0

    .line 485
    .line 486
    const/16 v21, 0x0

    .line 487
    .line 488
    const/16 v25, 0x0

    .line 489
    .line 490
    const/16 v26, 0x0

    .line 491
    .line 492
    const/16 v28, 0x0

    .line 493
    .line 494
    const/16 v30, 0x0

    .line 495
    .line 496
    const/16 v31, 0x0

    .line 497
    .line 498
    :goto_5
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    if-eqz v4, :cond_1b

    .line 503
    .line 504
    iget-boolean v5, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 505
    .line 506
    if-eqz v5, :cond_1b

    .line 507
    .line 508
    iget-boolean v5, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->m:Z

    .line 509
    .line 510
    if-eqz v5, :cond_17

    .line 511
    .line 512
    goto :goto_7

    .line 513
    :cond_17
    new-instance v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 514
    .line 515
    invoke-direct {v5}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    .line 516
    .line 517
    .line 518
    iget-boolean v6, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 519
    .line 520
    iput-boolean v6, v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 521
    .line 522
    iget-boolean v6, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->m:Z

    .line 523
    .line 524
    iput-boolean v6, v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;->m:Z

    .line 525
    .line 526
    iget-object v6, v5, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 527
    .line 528
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 529
    .line 530
    invoke-virtual {v6, v4}, Landroidx/collection/MutableScatterMap;->l(Landroidx/collection/ScatterMap;)V

    .line 531
    .line 532
    .line 533
    new-instance v4, Landroidx/collection/MutableObjectList;

    .line 534
    .line 535
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 536
    .line 537
    .line 538
    move-result-object v6

    .line 539
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 540
    .line 541
    .line 542
    move-result v6

    .line 543
    invoke-direct {v4, v6}, Landroidx/collection/MutableObjectList;-><init>(I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 547
    .line 548
    .line 549
    move-result-object v6

    .line 550
    invoke-virtual {v4, v6}, Landroidx/collection/MutableObjectList;->i(Ljava/util/List;)V

    .line 551
    .line 552
    .line 553
    :cond_18
    :goto_6
    invoke-virtual {v4}, Landroidx/collection/ObjectList;->e()Z

    .line 554
    .line 555
    .line 556
    move-result v6

    .line 557
    if-eqz v6, :cond_1a

    .line 558
    .line 559
    iget v6, v4, Landroidx/collection/ObjectList;->b:I

    .line 560
    .line 561
    add-int/lit8 v6, v6, -0x1

    .line 562
    .line 563
    invoke-virtual {v4, v6}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v6

    .line 567
    check-cast v6, Landroidx/compose/ui/semantics/SemanticsInfo;

    .line 568
    .line 569
    check-cast v6, Landroidx/compose/ui/node/LayoutNode;

    .line 570
    .line 571
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->y()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    .line 572
    .line 573
    .line 574
    move-result-object v10

    .line 575
    if-eqz v10, :cond_18

    .line 576
    .line 577
    iget-boolean v11, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->l:Z

    .line 578
    .line 579
    if-eqz v11, :cond_19

    .line 580
    .line 581
    goto :goto_6

    .line 582
    :cond_19
    invoke-virtual {v5, v10}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->d(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    .line 583
    .line 584
    .line 585
    iget-boolean v10, v10, Landroidx/compose/ui/semantics/SemanticsConfiguration;->m:Z

    .line 586
    .line 587
    if-nez v10, :cond_18

    .line 588
    .line 589
    invoke-virtual {v6}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 590
    .line 591
    .line 592
    move-result-object v6

    .line 593
    invoke-virtual {v4, v6}, Landroidx/collection/MutableObjectList;->i(Ljava/util/List;)V

    .line 594
    .line 595
    .line 596
    goto :goto_6

    .line 597
    :cond_1a
    move-object v4, v5

    .line 598
    :cond_1b
    :goto_7
    if-eqz v4, :cond_21

    .line 599
    .line 600
    iget-object v4, v4, Landroidx/compose/ui/semantics/SemanticsConfiguration;->j:Landroidx/collection/MutableScatterMap;

    .line 601
    .line 602
    if-eqz v4, :cond_21

    .line 603
    .line 604
    iget-object v5, v4, Landroidx/collection/ScatterMap;->b:[Ljava/lang/Object;

    .line 605
    .line 606
    iget-object v6, v4, Landroidx/collection/ScatterMap;->c:[Ljava/lang/Object;

    .line 607
    .line 608
    iget-object v4, v4, Landroidx/collection/ScatterMap;->a:[J

    .line 609
    .line 610
    array-length v10, v4

    .line 611
    add-int/lit8 v10, v10, -0x2

    .line 612
    .line 613
    if-ltz v10, :cond_21

    .line 614
    .line 615
    const/4 v11, 0x0

    .line 616
    const/4 v13, 0x0

    .line 617
    :goto_8
    aget-wide v14, v4, v11

    .line 618
    .line 619
    move/from16 v22, v12

    .line 620
    .line 621
    move-object/from16 v23, v13

    .line 622
    .line 623
    not-long v12, v14

    .line 624
    shl-long v12, v12, p1

    .line 625
    .line 626
    and-long/2addr v12, v14

    .line 627
    and-long v12, v12, v33

    .line 628
    .line 629
    cmp-long v12, v12, v33

    .line 630
    .line 631
    if-eqz v12, :cond_20

    .line 632
    .line 633
    sub-int v12, v11, v10

    .line 634
    .line 635
    not-int v12, v12

    .line 636
    ushr-int/lit8 v12, v12, 0x1f

    .line 637
    .line 638
    rsub-int/lit8 v12, v12, 0x8

    .line 639
    .line 640
    move-object/from16 v24, v4

    .line 641
    .line 642
    move-object/from16 v13, v23

    .line 643
    .line 644
    const/4 v4, 0x0

    .line 645
    :goto_9
    if-ge v4, v12, :cond_1f

    .line 646
    .line 647
    and-long v38, v14, v18

    .line 648
    .line 649
    cmp-long v23, v38, v16

    .line 650
    .line 651
    if-gez v23, :cond_1d

    .line 652
    .line 653
    shl-int/lit8 v23, v11, 0x3

    .line 654
    .line 655
    add-int v23, v23, v4

    .line 656
    .line 657
    aget-object v27, v5, v23

    .line 658
    .line 659
    aget-object v23, v6, v23

    .line 660
    .line 661
    move/from16 v35, v4

    .line 662
    .line 663
    move-object/from16 v4, v27

    .line 664
    .line 665
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 666
    .line 667
    move-object/from16 v27, v5

    .line 668
    .line 669
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->j:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 670
    .line 671
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    move-result v5

    .line 675
    if-eqz v5, :cond_1c

    .line 676
    .line 677
    const/4 v5, 0x0

    .line 678
    invoke-virtual {v0, v5}, Landroid/view/ViewStructure;->setEnabled(Z)V

    .line 679
    .line 680
    .line 681
    goto :goto_a

    .line 682
    :cond_1c
    sget-object v5, Landroidx/compose/ui/semantics/SemanticsProperties;->C:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 683
    .line 684
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    if-eqz v4, :cond_1e

    .line 689
    .line 690
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 691
    .line 692
    .line 693
    move-object/from16 v13, v23

    .line 694
    .line 695
    check-cast v13, Ljava/util/List;

    .line 696
    .line 697
    goto :goto_a

    .line 698
    :cond_1d
    move/from16 v35, v4

    .line 699
    .line 700
    move-object/from16 v27, v5

    .line 701
    .line 702
    :cond_1e
    :goto_a
    shr-long v14, v14, v22

    .line 703
    .line 704
    add-int/lit8 v4, v35, 0x1

    .line 705
    .line 706
    move-object/from16 v5, v27

    .line 707
    .line 708
    goto :goto_9

    .line 709
    :cond_1f
    move-object/from16 v27, v5

    .line 710
    .line 711
    move/from16 v4, v22

    .line 712
    .line 713
    if-ne v12, v4, :cond_22

    .line 714
    .line 715
    goto :goto_b

    .line 716
    :cond_20
    move-object/from16 v24, v4

    .line 717
    .line 718
    move-object/from16 v27, v5

    .line 719
    .line 720
    move/from16 v4, v22

    .line 721
    .line 722
    move-object/from16 v13, v23

    .line 723
    .line 724
    :goto_b
    if-eq v11, v10, :cond_22

    .line 725
    .line 726
    add-int/lit8 v11, v11, 0x1

    .line 727
    .line 728
    move v12, v4

    .line 729
    move-object/from16 v4, v24

    .line 730
    .line 731
    move-object/from16 v5, v27

    .line 732
    .line 733
    goto :goto_8

    .line 734
    :cond_21
    const/4 v13, 0x0

    .line 735
    :cond_22
    iget v4, v7, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 736
    .line 737
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 738
    .line 739
    .line 740
    move-result-object v4

    .line 741
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->w()Landroidx/compose/ui/node/LayoutNode;

    .line 742
    .line 743
    .line 744
    move-result-object v5

    .line 745
    if-nez v5, :cond_23

    .line 746
    .line 747
    const/4 v4, 0x0

    .line 748
    :cond_23
    if-eqz v4, :cond_24

    .line 749
    .line 750
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 751
    .line 752
    .line 753
    move-result v4

    .line 754
    :goto_c
    move-object/from16 v5, p2

    .line 755
    .line 756
    goto :goto_d

    .line 757
    :cond_24
    const/4 v4, -0x1

    .line 758
    goto :goto_c

    .line 759
    :goto_d
    invoke-virtual {v0, v5, v4}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    .line 760
    .line 761
    .line 762
    move-object/from16 v5, p3

    .line 763
    .line 764
    const/4 v6, 0x0

    .line 765
    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/view/ViewStructure;->setId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    if-eqz v20, :cond_25

    .line 769
    .line 770
    move-object/from16 v4, v20

    .line 771
    .line 772
    check-cast v4, Landroidx/compose/ui/autofill/AndroidContentDataType;

    .line 773
    .line 774
    iget v4, v4, Landroidx/compose/ui/autofill/AndroidContentDataType;->a:I

    .line 775
    .line 776
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 777
    .line 778
    .line 779
    move-result-object v4

    .line 780
    goto :goto_e

    .line 781
    :cond_25
    if-eqz v21, :cond_26

    .line 782
    .line 783
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 784
    .line 785
    .line 786
    move-result-object v4

    .line 787
    goto :goto_e

    .line 788
    :cond_26
    if-eqz v8, :cond_27

    .line 789
    .line 790
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    goto :goto_e

    .line 795
    :cond_27
    move-object v4, v6

    .line 796
    :goto_e
    if-eqz v4, :cond_28

    .line 797
    .line 798
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 799
    .line 800
    .line 801
    move-result v4

    .line 802
    invoke-virtual {v0, v4}, Landroid/view/ViewStructure;->setAutofillType(I)V

    .line 803
    .line 804
    .line 805
    :cond_28
    if-eqz v2, :cond_29

    .line 806
    .line 807
    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 808
    .line 809
    invoke-static {v2}, Landroidx/compose/ui/autofill/AutofillUtils_androidKt;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    invoke-static {v2}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    .line 818
    .line 819
    .line 820
    :cond_29
    if-eqz v3, :cond_2a

    .line 821
    .line 822
    iget-object v2, v3, Landroidx/compose/ui/autofill/AndroidFillableData;->a:Landroid/view/autofill/AutofillValue;

    .line 823
    .line 824
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    .line 825
    .line 826
    .line 827
    :cond_2a
    if-eqz v25, :cond_2b

    .line 828
    .line 829
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/autofill/ContentType_androidKt;->b(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v2

    .line 833
    if-eqz v2, :cond_2b

    .line 834
    .line 835
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setAutofillHints([Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    :cond_2b
    iget v2, v7, Landroidx/compose/ui/node/LayoutNode;->k:I

    .line 839
    .line 840
    iget-object v3, v1, Landroidx/compose/ui/spatial/RectManager;->a:Landroidx/collection/IntObjectMap;

    .line 841
    .line 842
    invoke-virtual {v3, v2}, Landroidx/collection/IntObjectMap;->b(I)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v2

    .line 846
    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    .line 847
    .line 848
    if-eqz v2, :cond_2c

    .line 849
    .line 850
    iget v3, v2, Landroidx/compose/ui/node/LayoutNode;->p:I

    .line 851
    .line 852
    const/4 v4, -0x4

    .line 853
    if-eq v3, v4, :cond_2c

    .line 854
    .line 855
    iget-object v3, v1, Landroidx/compose/ui/spatial/RectManager;->c:Landroidx/compose/ui/spatial/RectList;

    .line 856
    .line 857
    invoke-virtual {v1, v2}, Landroidx/compose/ui/spatial/RectManager;->e(Landroidx/compose/ui/node/LayoutNode;)I

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    iget-object v2, v3, Landroidx/compose/ui/spatial/RectList;->a:[J

    .line 862
    .line 863
    aget-wide v3, v2, v1

    .line 864
    .line 865
    add-int/lit8 v1, v1, 0x1

    .line 866
    .line 867
    aget-wide v1, v2, v1

    .line 868
    .line 869
    const/16 v5, 0x20

    .line 870
    .line 871
    shr-long v10, v3, v5

    .line 872
    .line 873
    long-to-int v6, v10

    .line 874
    long-to-int v3, v3

    .line 875
    shr-long v4, v1, v5

    .line 876
    .line 877
    long-to-int v4, v4

    .line 878
    long-to-int v1, v1

    .line 879
    sub-int v5, v4, v6

    .line 880
    .line 881
    sub-int/2addr v1, v3

    .line 882
    move v2, v3

    .line 883
    const/4 v3, 0x0

    .line 884
    const/4 v4, 0x0

    .line 885
    move/from16 v40, v6

    .line 886
    .line 887
    move v6, v1

    .line 888
    move/from16 v1, v40

    .line 889
    .line 890
    invoke-virtual/range {v0 .. v6}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    .line 891
    .line 892
    .line 893
    :cond_2c
    if-eqz v26, :cond_2d

    .line 894
    .line 895
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    .line 896
    .line 897
    .line 898
    move-result v1

    .line 899
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setSelected(Z)V

    .line 900
    .line 901
    .line 902
    :cond_2d
    const/4 v5, 0x4

    .line 903
    if-eqz v8, :cond_2f

    .line 904
    .line 905
    move/from16 v1, v37

    .line 906
    .line 907
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setCheckable(Z)V

    .line 908
    .line 909
    .line 910
    sget-object v1, Landroidx/compose/ui/state/ToggleableState;->j:Landroidx/compose/ui/state/ToggleableState;

    .line 911
    .line 912
    if-ne v8, v1, :cond_2e

    .line 913
    .line 914
    const/4 v1, 0x1

    .line 915
    goto :goto_f

    .line 916
    :cond_2e
    const/4 v1, 0x0

    .line 917
    :goto_f
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setChecked(Z)V

    .line 918
    .line 919
    .line 920
    goto :goto_11

    .line 921
    :cond_2f
    if-eqz v26, :cond_32

    .line 922
    .line 923
    if-nez v9, :cond_31

    .line 924
    .line 925
    :cond_30
    const/4 v1, 0x1

    .line 926
    goto :goto_10

    .line 927
    :cond_31
    iget v1, v9, Landroidx/compose/ui/semantics/Role;->a:I

    .line 928
    .line 929
    if-ne v1, v5, :cond_30

    .line 930
    .line 931
    goto :goto_11

    .line 932
    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setCheckable(Z)V

    .line 933
    .line 934
    .line 935
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    .line 936
    .line 937
    .line 938
    move-result v1

    .line 939
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setChecked(Z)V

    .line 940
    .line 941
    .line 942
    :cond_32
    :goto_11
    sget-object v1, Landroidx/compose/ui/autofill/ContentType;->a:Landroidx/compose/ui/autofill/ContentType$Companion;

    .line 943
    .line 944
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 945
    .line 946
    .line 947
    sget-object v1, Landroidx/compose/ui/autofill/ContentType$Companion;->b:Landroidx/compose/ui/autofill/ContentType;

    .line 948
    .line 949
    invoke-static {v1}, Landroidx/compose/ui/autofill/ContentType_androidKt;->b(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 954
    .line 955
    .line 956
    array-length v2, v1

    .line 957
    if-eqz v2, :cond_41

    .line 958
    .line 959
    const/16 v36, 0x0

    .line 960
    .line 961
    aget-object v1, v1, v36

    .line 962
    .line 963
    if-eqz v25, :cond_34

    .line 964
    .line 965
    invoke-static/range {v25 .. v25}, Landroidx/compose/ui/autofill/ContentType_androidKt;->b(Landroidx/compose/ui/autofill/ContentType;)[Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    if-eqz v2, :cond_34

    .line 970
    .line 971
    invoke-static {v2, v1}, Lkotlin/collections/ArraysKt;->c([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 972
    .line 973
    .line 974
    move-result v1

    .line 975
    const/4 v2, 0x1

    .line 976
    if-ne v1, v2, :cond_33

    .line 977
    .line 978
    move v1, v2

    .line 979
    goto :goto_13

    .line 980
    :cond_33
    :goto_12
    move/from16 v1, v36

    .line 981
    .line 982
    goto :goto_13

    .line 983
    :cond_34
    const/4 v2, 0x1

    .line 984
    goto :goto_12

    .line 985
    :goto_13
    if-nez v28, :cond_36

    .line 986
    .line 987
    if-eqz v1, :cond_35

    .line 988
    .line 989
    goto :goto_14

    .line 990
    :cond_35
    move/from16 v1, v36

    .line 991
    .line 992
    goto :goto_15

    .line 993
    :cond_36
    :goto_14
    move v1, v2

    .line 994
    :goto_15
    if-nez v1, :cond_38

    .line 995
    .line 996
    if-eqz v29, :cond_37

    .line 997
    .line 998
    goto :goto_16

    .line 999
    :cond_37
    move/from16 v15, v36

    .line 1000
    .line 1001
    goto :goto_17

    .line 1002
    :cond_38
    :goto_16
    move v15, v2

    .line 1003
    :goto_17
    invoke-virtual {v0, v15}, Landroid/view/ViewStructure;->setDataIsSensitive(Z)V

    .line 1004
    .line 1005
    .line 1006
    iget-object v2, v7, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/node/NodeChain;

    .line 1007
    .line 1008
    iget-object v2, v2, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    .line 1009
    .line 1010
    invoke-virtual {v2}, Landroidx/compose/ui/node/NodeCoordinator;->m1()Z

    .line 1011
    .line 1012
    .line 1013
    move-result v2

    .line 1014
    if-eqz v2, :cond_39

    .line 1015
    .line 1016
    goto :goto_18

    .line 1017
    :cond_39
    move/from16 v5, v36

    .line 1018
    .line 1019
    :goto_18
    invoke-virtual {v0, v5}, Landroid/view/ViewStructure;->setVisibility(I)V

    .line 1020
    .line 1021
    .line 1022
    if-eqz v13, :cond_3b

    .line 1023
    .line 1024
    invoke-interface {v13}, Ljava/util/Collection;->size()I

    .line 1025
    .line 1026
    .line 1027
    move-result v2

    .line 1028
    const-string v3, ""

    .line 1029
    .line 1030
    move/from16 v14, v36

    .line 1031
    .line 1032
    :goto_19
    if-ge v14, v2, :cond_3a

    .line 1033
    .line 1034
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1035
    .line 1036
    .line 1037
    move-result-object v4

    .line 1038
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString;

    .line 1039
    .line 1040
    iget-object v4, v4, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 1041
    .line 1042
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    const-string v3, "\n"

    .line 1054
    .line 1055
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    .line 1057
    .line 1058
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v3

    .line 1062
    add-int/lit8 v14, v14, 0x1

    .line 1063
    .line 1064
    goto :goto_19

    .line 1065
    :cond_3a
    invoke-virtual {v0, v3}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    .line 1067
    .line 1068
    const-string v2, "android.widget.TextView"

    .line 1069
    .line 1070
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    :cond_3b
    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->n()Ljava/util/List;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v2

    .line 1077
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 1078
    .line 1079
    .line 1080
    move-result v2

    .line 1081
    if-eqz v2, :cond_3c

    .line 1082
    .line 1083
    if-eqz v9, :cond_3c

    .line 1084
    .line 1085
    iget v2, v9, Landroidx/compose/ui/semantics/Role;->a:I

    .line 1086
    .line 1087
    invoke-static {v2}, Landroidx/compose/ui/platform/SemanticsUtils_androidKt;->c(I)Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v2

    .line 1091
    if-eqz v2, :cond_3c

    .line 1092
    .line 1093
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    :cond_3c
    if-eqz v21, :cond_3e

    .line 1097
    .line 1098
    const-string v2, "android.widget.EditText"

    .line 1099
    .line 1100
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setClassName(Ljava/lang/String;)V

    .line 1101
    .line 1102
    .line 1103
    if-eqz v30, :cond_3d

    .line 1104
    .line 1105
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->intValue()I

    .line 1106
    .line 1107
    .line 1108
    move-result v2

    .line 1109
    invoke-virtual {v0, v2}, Landroid/view/ViewStructure;->setMaxTextLength(I)V

    .line 1110
    .line 1111
    .line 1112
    :cond_3d
    if-eqz v1, :cond_3e

    .line 1113
    .line 1114
    const/16 v1, 0x81

    .line 1115
    .line 1116
    invoke-virtual {v0, v1}, Landroid/view/ViewStructure;->setInputType(I)V

    .line 1117
    .line 1118
    .line 1119
    :cond_3e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1120
    .line 1121
    const/16 v1, 0x23

    .line 1122
    .line 1123
    if-lt v0, v1, :cond_40

    .line 1124
    .line 1125
    if-nez v31, :cond_3f

    .line 1126
    .line 1127
    goto :goto_1a

    .line 1128
    :cond_3f
    invoke-static {}, Lio/sentry/d;->i()V

    .line 1129
    .line 1130
    .line 1131
    :cond_40
    :goto_1a
    return-void

    .line 1132
    :cond_41
    const-string v0, "Array is empty."

    .line 1133
    .line 1134
    invoke-static {v0}, Lfe;->o(Ljava/lang/String;)V

    .line 1135
    .line 1136
    .line 1137
    return-void
.end method
