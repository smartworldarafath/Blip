.class public abstract Lnet/blip/android/ui/home/PeerTrayKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/PeerPickerContent$Overview;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move/from16 v10, p10

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v0, v2, Lnet/blip/libblip/PeerPickerContent$Overview;->b:Ljava/util/List;

    .line 11
    .line 12
    iget-object v3, v2, Lnet/blip/libblip/PeerPickerContent$Overview;->a:Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-object/from16 v4, p9

    .line 33
    .line 34
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 35
    .line 36
    const v5, 0x4c664277    # 6.036118E7f

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 40
    .line 41
    .line 42
    and-int/lit8 v5, v10, 0x6

    .line 43
    .line 44
    if-nez v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_0

    .line 51
    .line 52
    const/4 v5, 0x4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/4 v5, 0x2

    .line 55
    :goto_0
    or-int/2addr v5, v10

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v5, v10

    .line 58
    :goto_1
    and-int/lit8 v7, v10, 0x30

    .line 59
    .line 60
    if-nez v7, :cond_3

    .line 61
    .line 62
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    const/16 v7, 0x20

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/16 v7, 0x10

    .line 72
    .line 73
    :goto_2
    or-int/2addr v5, v7

    .line 74
    :cond_3
    and-int/lit16 v7, v10, 0x180

    .line 75
    .line 76
    move-object/from16 v14, p2

    .line 77
    .line 78
    if-nez v7, :cond_5

    .line 79
    .line 80
    invoke-virtual {v4, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    if-eqz v7, :cond_4

    .line 85
    .line 86
    const/16 v7, 0x100

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_4
    const/16 v7, 0x80

    .line 90
    .line 91
    :goto_3
    or-int/2addr v5, v7

    .line 92
    :cond_5
    and-int/lit16 v7, v10, 0xc00

    .line 93
    .line 94
    move-object/from16 v15, p3

    .line 95
    .line 96
    if-nez v7, :cond_7

    .line 97
    .line 98
    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_6

    .line 103
    .line 104
    const/16 v7, 0x800

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_6
    const/16 v7, 0x400

    .line 108
    .line 109
    :goto_4
    or-int/2addr v5, v7

    .line 110
    :cond_7
    and-int/lit16 v7, v10, 0x6000

    .line 111
    .line 112
    if-nez v7, :cond_9

    .line 113
    .line 114
    move/from16 v7, p4

    .line 115
    .line 116
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_8

    .line 121
    .line 122
    const/16 v8, 0x4000

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_8
    const/16 v8, 0x2000

    .line 126
    .line 127
    :goto_5
    or-int/2addr v5, v8

    .line 128
    goto :goto_6

    .line 129
    :cond_9
    move/from16 v7, p4

    .line 130
    .line 131
    :goto_6
    const/high16 v8, 0x30000

    .line 132
    .line 133
    and-int/2addr v8, v10

    .line 134
    if-nez v8, :cond_b

    .line 135
    .line 136
    move-object/from16 v8, p5

    .line 137
    .line 138
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-eqz v9, :cond_a

    .line 143
    .line 144
    const/high16 v9, 0x20000

    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_a
    const/high16 v9, 0x10000

    .line 148
    .line 149
    :goto_7
    or-int/2addr v5, v9

    .line 150
    goto :goto_8

    .line 151
    :cond_b
    move-object/from16 v8, p5

    .line 152
    .line 153
    :goto_8
    const/high16 v9, 0x180000

    .line 154
    .line 155
    and-int/2addr v9, v10

    .line 156
    if-nez v9, :cond_d

    .line 157
    .line 158
    move-object/from16 v9, p6

    .line 159
    .line 160
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-eqz v11, :cond_c

    .line 165
    .line 166
    const/high16 v11, 0x100000

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_c
    const/high16 v11, 0x80000

    .line 170
    .line 171
    :goto_9
    or-int/2addr v5, v11

    .line 172
    goto :goto_a

    .line 173
    :cond_d
    move-object/from16 v9, p6

    .line 174
    .line 175
    :goto_a
    const/high16 v11, 0xc00000

    .line 176
    .line 177
    and-int/2addr v11, v10

    .line 178
    move-object/from16 v12, p7

    .line 179
    .line 180
    if-nez v11, :cond_f

    .line 181
    .line 182
    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    if-eqz v11, :cond_e

    .line 187
    .line 188
    const/high16 v11, 0x800000

    .line 189
    .line 190
    goto :goto_b

    .line 191
    :cond_e
    const/high16 v11, 0x400000

    .line 192
    .line 193
    :goto_b
    or-int/2addr v5, v11

    .line 194
    :cond_f
    const/high16 v11, 0x6000000

    .line 195
    .line 196
    and-int/2addr v11, v10

    .line 197
    move-object/from16 v13, p8

    .line 198
    .line 199
    if-nez v11, :cond_11

    .line 200
    .line 201
    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-eqz v11, :cond_10

    .line 206
    .line 207
    const/high16 v11, 0x4000000

    .line 208
    .line 209
    goto :goto_c

    .line 210
    :cond_10
    const/high16 v11, 0x2000000

    .line 211
    .line 212
    :goto_c
    or-int/2addr v5, v11

    .line 213
    :cond_11
    const v11, 0x2492493

    .line 214
    .line 215
    .line 216
    and-int/2addr v11, v5

    .line 217
    const v6, 0x2492492

    .line 218
    .line 219
    .line 220
    move-object/from16 v16, v0

    .line 221
    .line 222
    const/4 v0, 0x1

    .line 223
    if-eq v11, v6, :cond_12

    .line 224
    .line 225
    move v6, v0

    .line 226
    goto :goto_d

    .line 227
    :cond_12
    const/4 v6, 0x0

    .line 228
    :goto_d
    and-int/2addr v5, v0

    .line 229
    invoke-virtual {v4, v5, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    if-eqz v5, :cond_19

    .line 234
    .line 235
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 236
    .line 237
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    check-cast v5, Landroid/content/Context;

    .line 242
    .line 243
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 244
    .line 245
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    check-cast v6, Landroid/content/res/Configuration;

    .line 250
    .line 251
    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    .line 252
    .line 253
    const/4 v11, 0x2

    .line 254
    if-ne v6, v11, :cond_13

    .line 255
    .line 256
    move v6, v0

    .line 257
    goto :goto_e

    .line 258
    :cond_13
    move v6, v11

    .line 259
    :goto_e
    new-instance v11, Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v18

    .line 268
    :goto_f
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v19

    .line 272
    if-eqz v19, :cond_14

    .line 273
    .line 274
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v19

    .line 278
    move-object/from16 v0, v19

    .line 279
    .line 280
    check-cast v0, Lnet/blip/libblip/Peer;

    .line 281
    .line 282
    new-instance v2, Lnet/blip/android/ui/home/PeerTrayItem$Peer;

    .line 283
    .line 284
    invoke-direct {v2, v0}, Lnet/blip/android/ui/home/PeerTrayItem$Peer;-><init>(Lnet/blip/libblip/Peer;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-object/from16 v2, p1

    .line 291
    .line 292
    const/4 v0, 0x1

    .line 293
    goto :goto_f

    .line 294
    :cond_14
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_15

    .line 303
    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    check-cast v2, Lnet/blip/libblip/Peer;

    .line 309
    .line 310
    move-object/from16 v18, v0

    .line 311
    .line 312
    new-instance v0, Lnet/blip/android/ui/home/PeerTrayItem$Peer;

    .line 313
    .line 314
    invoke-direct {v0, v2}, Lnet/blip/android/ui/home/PeerTrayItem$Peer;-><init>(Lnet/blip/libblip/Peer;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-object/from16 v0, v18

    .line 321
    .line 322
    goto :goto_10

    .line 323
    :cond_15
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    if-eqz v0, :cond_16

    .line 328
    .line 329
    sget-object v0, Lnet/blip/android/ui/home/PeerTrayItem$HelpSendToYourDevices;->a:Lnet/blip/android/ui/home/PeerTrayItem$HelpSendToYourDevices;

    .line 330
    .line 331
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    :cond_16
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_17

    .line 339
    .line 340
    sget-object v0, Lnet/blip/android/ui/home/PeerTrayItem$HelpSendToOtherPeople;->a:Lnet/blip/android/ui/home/PeerTrayItem$HelpSendToOtherPeople;

    .line 341
    .line 342
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    :cond_17
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 346
    .line 347
    const/4 v2, 0x0

    .line 348
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iget-wide v2, v4, Landroidx/compose/runtime/GapComposer;->T:J

    .line 353
    .line 354
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    move/from16 v16, v2

    .line 363
    .line 364
    invoke-static {v4, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 369
    .line 370
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 374
    .line 375
    .line 376
    iget-boolean v1, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 377
    .line 378
    if-eqz v1, :cond_18

    .line 379
    .line 380
    sget-object v1, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 381
    .line 382
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 383
    .line 384
    .line 385
    goto :goto_11

    .line 386
    :cond_18
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 387
    .line 388
    .line 389
    :goto_11
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 390
    .line 391
    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 392
    .line 393
    .line 394
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 395
    .line 396
    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 397
    .line 398
    .line 399
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 404
    .line 405
    invoke-static {v4, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 406
    .line 407
    .line 408
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 409
    .line 410
    .line 411
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 412
    .line 413
    invoke-static {v4, v2, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 414
    .line 415
    .line 416
    move-object v0, v11

    .line 417
    new-instance v11, Lkd;

    .line 418
    .line 419
    move-object/from16 v17, v5

    .line 420
    .line 421
    move/from16 v16, v7

    .line 422
    .line 423
    move-object/from16 v18, v8

    .line 424
    .line 425
    move-object/from16 v19, v9

    .line 426
    .line 427
    invoke-direct/range {v11 .. v19}, Lkd;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLandroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 428
    .line 429
    .line 430
    const v1, -0x7629309e

    .line 431
    .line 432
    .line 433
    invoke-static {v1, v11, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 434
    .line 435
    .line 436
    move-result-object v17

    .line 437
    const v19, 0xdb6000

    .line 438
    .line 439
    .line 440
    const/4 v11, 0x0

    .line 441
    const/4 v13, 0x0

    .line 442
    const/4 v15, 0x0

    .line 443
    sget-object v16, Lnet/blip/android/ui/home/ComposableSingletons$PeerTrayKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 444
    .line 445
    move-object v12, v0

    .line 446
    move-object/from16 v18, v4

    .line 447
    .line 448
    move v14, v6

    .line 449
    invoke-static/range {v11 .. v19}, Lnet/blip/android/ui/components/MaxRowGridKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/ArrayList;IIFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 450
    .line 451
    .line 452
    move-object/from16 v0, v18

    .line 453
    .line 454
    const/4 v1, 0x1

    .line 455
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 456
    .line 457
    .line 458
    goto :goto_12

    .line 459
    :cond_19
    move-object v0, v4

    .line 460
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 461
    .line 462
    .line 463
    :goto_12
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 464
    .line 465
    .line 466
    move-result-object v11

    .line 467
    if-eqz v11, :cond_1a

    .line 468
    .line 469
    new-instance v0, Lmd;

    .line 470
    .line 471
    move-object/from16 v1, p0

    .line 472
    .line 473
    move-object/from16 v2, p1

    .line 474
    .line 475
    move-object/from16 v3, p2

    .line 476
    .line 477
    move-object/from16 v4, p3

    .line 478
    .line 479
    move/from16 v5, p4

    .line 480
    .line 481
    move-object/from16 v6, p5

    .line 482
    .line 483
    move-object/from16 v7, p6

    .line 484
    .line 485
    move-object/from16 v8, p7

    .line 486
    .line 487
    move-object/from16 v9, p8

    .line 488
    .line 489
    invoke-direct/range {v0 .. v10}, Lmd;-><init>(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/PeerPickerContent$Overview;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 490
    .line 491
    .line 492
    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 493
    .line 494
    :cond_1a
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-object/from16 v9, p7

    .line 16
    .line 17
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    const v0, -0x633e32a4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 23
    .line 24
    .line 25
    or-int/lit8 v0, p8, 0x6

    .line 26
    .line 27
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const/16 v1, 0x20

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v1, 0x10

    .line 37
    .line 38
    :goto_0
    or-int/2addr v0, v1

    .line 39
    move-object/from16 v10, p2

    .line 40
    .line 41
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const/16 v1, 0x100

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const/16 v1, 0x80

    .line 51
    .line 52
    :goto_1
    or-int/2addr v0, v1

    .line 53
    move-object/from16 v11, p3

    .line 54
    .line 55
    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    const/16 v1, 0x800

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/16 v1, 0x400

    .line 65
    .line 66
    :goto_2
    or-int/2addr v0, v1

    .line 67
    move/from16 v12, p4

    .line 68
    .line 69
    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    const/16 v1, 0x4000

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    const/16 v1, 0x2000

    .line 79
    .line 80
    :goto_3
    or-int/2addr v0, v1

    .line 81
    move-object/from16 v13, p5

    .line 82
    .line 83
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_4

    .line 88
    .line 89
    const/high16 v1, 0x20000

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    const/high16 v1, 0x10000

    .line 93
    .line 94
    :goto_4
    or-int v14, v0, v1

    .line 95
    .line 96
    const v0, 0x92493

    .line 97
    .line 98
    .line 99
    and-int/2addr v0, v14

    .line 100
    const v1, 0x92492

    .line 101
    .line 102
    .line 103
    if-eq v0, v1, :cond_5

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    goto :goto_5

    .line 107
    :cond_5
    const/4 v0, 0x0

    .line 108
    :goto_5
    and-int/lit8 v1, v14, 0x1

    .line 109
    .line 110
    invoke-virtual {v9, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_e

    .line 115
    .line 116
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 117
    .line 118
    .line 119
    and-int/lit8 v0, p8, 0x1

    .line 120
    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    goto :goto_6

    .line 130
    :cond_6
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 131
    .line 132
    .line 133
    move-object/from16 v15, p0

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_7
    :goto_6
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 137
    .line 138
    move-object v15, v0

    .line 139
    :goto_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 151
    .line 152
    if-nez v0, :cond_8

    .line 153
    .line 154
    if-ne v1, v3, :cond_9

    .line 155
    .line 156
    :cond_8
    iget-object v0, v2, Lnet/blip/libblip/PeerPickerViewModel;->c:Lnet/blip/libblip/DerivedStateFlow;

    .line 157
    .line 158
    const-class v1, Lnet/blip/libblip/PeerPickerContent$Overview;

    .line 159
    .line 160
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;

    .line 165
    .line 166
    invoke-direct {v4, v0, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterIsInstance$$inlined$filter$2;-><init>(Lnet/blip/libblip/DerivedStateFlow;Lkotlin/jvm/internal/ClassReference;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    move-object v1, v4

    .line 173
    :cond_9
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 174
    .line 175
    new-instance v4, Lnet/blip/libblip/PeerPickerContent$Overview;

    .line 176
    .line 177
    sget-object v0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 178
    .line 179
    invoke-direct {v4, v0, v0}, Lnet/blip/libblip/PeerPickerContent$Overview;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 180
    .line 181
    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v8, 0x2

    .line 184
    const/4 v5, 0x0

    .line 185
    move-object v6, v9

    .line 186
    move-object v9, v3

    .line 187
    move-object v3, v1

    .line 188
    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    move-object v7, v6

    .line 193
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    move-object v8, v0

    .line 198
    check-cast v8, Lnet/blip/libblip/PeerPickerContent$Overview;

    .line 199
    .line 200
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    if-nez v0, :cond_a

    .line 209
    .line 210
    if-ne v1, v9, :cond_b

    .line 211
    .line 212
    :cond_a
    new-instance v0, Lnet/blip/android/ui/home/PeerTrayKt$PeerTray$1$1;

    .line 213
    .line 214
    const-string v5, "removePeer(Lnet/blip/libblip/PeerId;)V"

    .line 215
    .line 216
    const/4 v6, 0x0

    .line 217
    const/4 v1, 0x1

    .line 218
    const-class v3, Lnet/blip/libblip/PeerPickerViewModel;

    .line 219
    .line 220
    const-string v4, "removePeer"

    .line 221
    .line 222
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    move-object v1, v0

    .line 229
    :cond_b
    check-cast v1, Lkotlin/reflect/KFunction;

    .line 230
    .line 231
    move-object/from16 v16, v1

    .line 232
    .line 233
    check-cast v16, Lkotlin/jvm/functions/Function1;

    .line 234
    .line 235
    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    if-nez v0, :cond_c

    .line 244
    .line 245
    if-ne v1, v9, :cond_d

    .line 246
    .line 247
    :cond_c
    new-instance v0, Lnet/blip/android/ui/home/PeerTrayKt$PeerTray$2$1;

    .line 248
    .line 249
    const-string v5, "blockUser(Ljava/lang/String;)V"

    .line 250
    .line 251
    const/4 v6, 0x0

    .line 252
    const/4 v1, 0x1

    .line 253
    const-class v3, Lnet/blip/libblip/PeerPickerViewModel;

    .line 254
    .line 255
    const-string v4, "blockUser"

    .line 256
    .line 257
    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    move-object v1, v0

    .line 264
    :cond_d
    check-cast v1, Lkotlin/reflect/KFunction;

    .line 265
    .line 266
    move-object v6, v1

    .line 267
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 268
    .line 269
    const v0, 0xff8e

    .line 270
    .line 271
    .line 272
    and-int/2addr v0, v14

    .line 273
    const/high16 v1, 0x1c00000

    .line 274
    .line 275
    shl-int/lit8 v2, v14, 0x6

    .line 276
    .line 277
    and-int/2addr v1, v2

    .line 278
    or-int/2addr v0, v1

    .line 279
    const/high16 v1, 0x6000000

    .line 280
    .line 281
    or-int/2addr v0, v1

    .line 282
    move-object v9, v7

    .line 283
    move-object v1, v8

    .line 284
    move-object v2, v10

    .line 285
    move-object v3, v11

    .line 286
    move v4, v12

    .line 287
    move-object v7, v13

    .line 288
    move-object/from16 v5, v16

    .line 289
    .line 290
    move-object/from16 v8, p6

    .line 291
    .line 292
    move v10, v0

    .line 293
    move-object v0, v15

    .line 294
    invoke-static/range {v0 .. v10}, Lnet/blip/android/ui/home/PeerTrayKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/PeerPickerContent$Overview;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 295
    .line 296
    .line 297
    move-object v7, v9

    .line 298
    move-object v1, v0

    .line 299
    goto :goto_8

    .line 300
    :cond_e
    move-object v7, v9

    .line 301
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 302
    .line 303
    .line 304
    move-object/from16 v1, p0

    .line 305
    .line 306
    :goto_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    if-eqz v9, :cond_f

    .line 311
    .line 312
    new-instance v0, Ln9;

    .line 313
    .line 314
    move-object/from16 v2, p1

    .line 315
    .line 316
    move-object/from16 v3, p2

    .line 317
    .line 318
    move-object/from16 v4, p3

    .line 319
    .line 320
    move/from16 v5, p4

    .line 321
    .line 322
    move-object/from16 v6, p5

    .line 323
    .line 324
    move-object/from16 v7, p6

    .line 325
    .line 326
    move/from16 v8, p8

    .line 327
    .line 328
    invoke-direct/range {v0 .. v8}, Ln9;-><init>(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 329
    .line 330
    .line 331
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 332
    .line 333
    :cond_f
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 26

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v8, p5

    .line 4
    .line 5
    move-object/from16 v9, p6

    .line 6
    .line 7
    move-object/from16 v4, p7

    .line 8
    .line 9
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v1, 0x3df17e86

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    or-int/lit8 v1, p8, 0x6

    .line 18
    .line 19
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    const/16 v2, 0x20

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v2, 0x10

    .line 29
    .line 30
    :goto_0
    or-int/2addr v1, v2

    .line 31
    move-object/from16 v2, p2

    .line 32
    .line 33
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    const/16 v3, 0x100

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/16 v3, 0x80

    .line 43
    .line 44
    :goto_1
    or-int/2addr v1, v3

    .line 45
    move-object/from16 v7, p3

    .line 46
    .line 47
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    const/16 v3, 0x800

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/16 v3, 0x400

    .line 57
    .line 58
    :goto_2
    or-int/2addr v1, v3

    .line 59
    move/from16 v10, p4

    .line 60
    .line 61
    invoke-virtual {v4, v10}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_3

    .line 66
    .line 67
    const/16 v3, 0x4000

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_3
    const/16 v3, 0x2000

    .line 71
    .line 72
    :goto_3
    or-int/2addr v1, v3

    .line 73
    invoke-virtual {v4, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    const/high16 v3, 0x20000

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    const/high16 v3, 0x10000

    .line 83
    .line 84
    :goto_4
    or-int/2addr v1, v3

    .line 85
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/high16 v12, 0x100000

    .line 90
    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    move v3, v12

    .line 94
    goto :goto_5

    .line 95
    :cond_5
    const/high16 v3, 0x80000

    .line 96
    .line 97
    :goto_5
    or-int v21, v1, v3

    .line 98
    .line 99
    const v1, 0x92493

    .line 100
    .line 101
    .line 102
    and-int v1, v21, v1

    .line 103
    .line 104
    const v3, 0x92492

    .line 105
    .line 106
    .line 107
    const/4 v13, 0x0

    .line 108
    const/16 v22, 0x1

    .line 109
    .line 110
    if-eq v1, v3, :cond_6

    .line 111
    .line 112
    move/from16 v1, v22

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_6
    move v1, v13

    .line 116
    :goto_6
    and-int/lit8 v3, v21, 0x1

    .line 117
    .line 118
    invoke-virtual {v4, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_16

    .line 123
    .line 124
    invoke-static {v4}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->b(Landroidx/compose/runtime/Composer;)Z

    .line 125
    .line 126
    .line 127
    move-result v14

    .line 128
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 133
    .line 134
    if-ne v1, v15, :cond_7

    .line 135
    .line 136
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 146
    .line 147
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-ne v3, v15, :cond_8

    .line 152
    .line 153
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 154
    .line 155
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    :cond_8
    move-object/from16 v16, v3

    .line 163
    .line 164
    check-cast v16, Landroidx/compose/runtime/MutableState;

    .line 165
    .line 166
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    if-ne v3, v15, :cond_9

    .line 171
    .line 172
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 173
    .line 174
    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v4, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_9
    move-object/from16 v17, v3

    .line 182
    .line 183
    check-cast v17, Landroidx/compose/runtime/MutableState;

    .line 184
    .line 185
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    check-cast v3, Ljava/lang/Boolean;

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    if-ne v5, v15, :cond_a

    .line 200
    .line 201
    new-instance v5, Lcd;

    .line 202
    .line 203
    const/16 p7, 0x20

    .line 204
    .line 205
    const/4 v6, 0x6

    .line 206
    invoke-direct {v5, v1, v6}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto :goto_7

    .line 213
    :cond_a
    const/16 p7, 0x20

    .line 214
    .line 215
    :goto_7
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 216
    .line 217
    and-int/lit8 v6, v21, 0x70

    .line 218
    .line 219
    const/16 v18, 0x6006

    .line 220
    .line 221
    or-int v6, v18, v6

    .line 222
    .line 223
    shl-int/lit8 v11, v21, 0x3

    .line 224
    .line 225
    and-int/lit16 v11, v11, 0x1c00

    .line 226
    .line 227
    or-int/2addr v6, v11

    .line 228
    move/from16 v25, v6

    .line 229
    .line 230
    move-object v6, v1

    .line 231
    move v1, v3

    .line 232
    move-object v3, v5

    .line 233
    move/from16 v5, v25

    .line 234
    .line 235
    invoke-static/range {v0 .. v5}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->d(Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 236
    .line 237
    .line 238
    move-object v11, v4

    .line 239
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Ljava/lang/Boolean;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 246
    .line 247
    .line 248
    move-result v19

    .line 249
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    if-ne v0, v15, :cond_b

    .line 254
    .line 255
    new-instance v0, Lcd;

    .line 256
    .line 257
    const/4 v1, 0x7

    .line 258
    invoke-direct {v0, v6, v1}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_b
    move-object/from16 v20, v0

    .line 265
    .line 266
    check-cast v20, Lkotlin/jvm/functions/Function0;

    .line 267
    .line 268
    const/high16 v0, 0x41a00000    # 20.0f

    .line 269
    .line 270
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    int-to-long v0, v0

    .line 275
    const/high16 v2, -0x3dc00000    # -48.0f

    .line 276
    .line 277
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    int-to-long v2, v2

    .line 282
    shl-long v0, v0, p7

    .line 283
    .line 284
    const-wide v4, 0xffffffffL

    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    and-long/2addr v2, v4

    .line 290
    or-long v23, v0, v2

    .line 291
    .line 292
    new-instance v0, Lod;

    .line 293
    .line 294
    move-object/from16 v1, p1

    .line 295
    .line 296
    move-object v5, v6

    .line 297
    move-object v2, v7

    .line 298
    move v3, v10

    .line 299
    move v4, v14

    .line 300
    move-object/from16 v6, v16

    .line 301
    .line 302
    move-object/from16 v7, v17

    .line 303
    .line 304
    invoke-direct/range {v0 .. v7}, Lod;-><init>(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 305
    .line 306
    .line 307
    move-object/from16 v25, v1

    .line 308
    .line 309
    move-object v1, v0

    .line 310
    move-object/from16 v0, v25

    .line 311
    .line 312
    const v2, -0x25363307

    .line 313
    .line 314
    .line 315
    invoke-static {v2, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 316
    .line 317
    .line 318
    move-result-object v17

    .line 319
    move/from16 v10, v19

    .line 320
    .line 321
    const v19, 0x180c30

    .line 322
    .line 323
    .line 324
    move-object v4, v11

    .line 325
    move-object/from16 v11, v20

    .line 326
    .line 327
    const/16 v20, 0x34

    .line 328
    .line 329
    move v1, v12

    .line 330
    const/4 v12, 0x0

    .line 331
    move-object v2, v15

    .line 332
    const/4 v15, 0x0

    .line 333
    const/16 v16, 0x0

    .line 334
    .line 335
    move-object/from16 v18, v4

    .line 336
    .line 337
    const/high16 v3, 0x20000

    .line 338
    .line 339
    move-object v4, v2

    .line 340
    move v2, v1

    .line 341
    move v1, v13

    .line 342
    move-wide/from16 v13, v23

    .line 343
    .line 344
    invoke-static/range {v10 .. v20}, Landroidx/compose/material/AndroidMenu_androidKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 345
    .line 346
    .line 347
    move-object/from16 v11, v18

    .line 348
    .line 349
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    check-cast v5, Ljava/lang/Boolean;

    .line 354
    .line 355
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    const/16 v10, 0x180

    .line 360
    .line 361
    if-eqz v5, :cond_10

    .line 362
    .line 363
    const v5, 0x6a29d0b9

    .line 364
    .line 365
    .line 366
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 367
    .line 368
    .line 369
    const/high16 v5, 0x70000

    .line 370
    .line 371
    and-int v5, v21, v5

    .line 372
    .line 373
    if-ne v5, v3, :cond_c

    .line 374
    .line 375
    move/from16 v13, v22

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_c
    move v13, v1

    .line 379
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    if-nez v13, :cond_d

    .line 384
    .line 385
    if-ne v3, v4, :cond_e

    .line 386
    .line 387
    :cond_d
    new-instance v3, Lk1;

    .line 388
    .line 389
    const/16 v5, 0x8

    .line 390
    .line 391
    invoke-direct {v3, v8, v6, v5}, Lk1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    :cond_e
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 398
    .line 399
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    if-ne v5, v4, :cond_f

    .line 404
    .line 405
    new-instance v5, Lcd;

    .line 406
    .line 407
    const/4 v12, 0x3

    .line 408
    invoke-direct {v5, v6, v12}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    :cond_f
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 415
    .line 416
    shr-int/lit8 v6, v21, 0x3

    .line 417
    .line 418
    and-int/lit8 v6, v6, 0xe

    .line 419
    .line 420
    or-int/2addr v6, v10

    .line 421
    invoke-static {v0, v3, v5, v11, v6}, Lnet/blip/android/ui/dialogs/RemovePeerConfirmationDialogKt;->a(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 425
    .line 426
    .line 427
    goto :goto_9

    .line 428
    :cond_10
    const v3, 0x6a2d9cfc

    .line 429
    .line 430
    .line 431
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 435
    .line 436
    .line 437
    :goto_9
    invoke-virtual {v0}, Lnet/blip/libblip/Peer;->e()Lnet/blip/libblip/User;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    check-cast v5, Ljava/lang/Boolean;

    .line 446
    .line 447
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-eqz v5, :cond_15

    .line 452
    .line 453
    if-eqz v3, :cond_15

    .line 454
    .line 455
    const v5, 0x6a2efd5e

    .line 456
    .line 457
    .line 458
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 459
    .line 460
    .line 461
    const/high16 v5, 0x380000

    .line 462
    .line 463
    and-int v5, v21, v5

    .line 464
    .line 465
    if-ne v5, v2, :cond_11

    .line 466
    .line 467
    move/from16 v13, v22

    .line 468
    .line 469
    goto :goto_a

    .line 470
    :cond_11
    move v13, v1

    .line 471
    :goto_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    if-nez v13, :cond_12

    .line 476
    .line 477
    if-ne v2, v4, :cond_13

    .line 478
    .line 479
    :cond_12
    new-instance v2, Lk1;

    .line 480
    .line 481
    const/16 v5, 0x9

    .line 482
    .line 483
    invoke-direct {v2, v9, v7, v5}, Lk1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 487
    .line 488
    .line 489
    :cond_13
    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 490
    .line 491
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v5

    .line 495
    if-ne v5, v4, :cond_14

    .line 496
    .line 497
    new-instance v5, Lcd;

    .line 498
    .line 499
    const/4 v4, 0x4

    .line 500
    invoke-direct {v5, v7, v4}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    :cond_14
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 507
    .line 508
    invoke-static {v3, v2, v5, v11, v10}, Lnet/blip/android/ui/dialogs/BlockUserConfirmationDialogKt;->a(Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 509
    .line 510
    .line 511
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 512
    .line 513
    .line 514
    goto :goto_b

    .line 515
    :cond_15
    const v2, 0x6a32b6dc

    .line 516
    .line 517
    .line 518
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 522
    .line 523
    .line 524
    :goto_b
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 525
    .line 526
    goto :goto_c

    .line 527
    :cond_16
    move-object v11, v4

    .line 528
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 529
    .line 530
    .line 531
    move-object/from16 v1, p0

    .line 532
    .line 533
    :goto_c
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 534
    .line 535
    .line 536
    move-result-object v10

    .line 537
    if-eqz v10, :cond_17

    .line 538
    .line 539
    new-instance v0, Ln9;

    .line 540
    .line 541
    move-object/from16 v2, p1

    .line 542
    .line 543
    move-object/from16 v3, p2

    .line 544
    .line 545
    move-object/from16 v4, p3

    .line 546
    .line 547
    move/from16 v5, p4

    .line 548
    .line 549
    move-object v6, v8

    .line 550
    move-object v7, v9

    .line 551
    move/from16 v8, p8

    .line 552
    .line 553
    invoke-direct/range {v0 .. v8}, Ln9;-><init>(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 554
    .line 555
    .line 556
    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 557
    .line 558
    :cond_17
    return-void
.end method
