.class public final synthetic Lm1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Lm1;->j:I

    iput-object p1, p0, Lm1;->k:Ljava/lang/Object;

    iput-object p2, p0, Lm1;->l:Ljava/lang/Object;

    iput-object p3, p0, Lm1;->m:Ljava/lang/Object;

    iput-object p4, p0, Lm1;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lm1;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lm1;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lm1;->l:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p3, p0, Lm1;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object p4, p0, Lm1;->m:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lm1;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    const/16 v4, 0x90

    .line 10
    .line 11
    const/16 v5, 0x10

    .line 12
    .line 13
    const/16 v6, 0x20

    .line 14
    .line 15
    iget-object v7, v0, Lm1;->m:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v8, v0, Lm1;->n:Ljava/lang/Object;

    .line 18
    .line 19
    iget-object v9, v0, Lm1;->l:Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v0, v0, Lm1;->k:Ljava/lang/Object;

    .line 22
    .line 23
    const/4 v10, 0x1

    .line 24
    const/4 v11, 0x0

    .line 25
    packed-switch v1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    check-cast v0, Ljava/util/List;

    .line 29
    .line 30
    check-cast v9, Landroidx/compose/foundation/pager/PagerState;

    .line 31
    .line 32
    check-cast v8, Landroid/content/Context;

    .line 33
    .line 34
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 35
    .line 36
    move-object/from16 v1, p1

    .line 37
    .line 38
    check-cast v1, Landroidx/compose/foundation/pager/PagerScope;

    .line 39
    .line 40
    move-object/from16 v12, p2

    .line 41
    .line 42
    check-cast v12, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    move-object/from16 v13, p3

    .line 49
    .line 50
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 51
    .line 52
    move-object/from16 v14, p4

    .line 53
    .line 54
    check-cast v14, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v14

    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    and-int/lit8 v1, v14, 0x30

    .line 64
    .line 65
    if-nez v1, :cond_1

    .line 66
    .line 67
    move-object v1, v13

    .line 68
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 69
    .line 70
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_0

    .line 75
    .line 76
    move v5, v6

    .line 77
    :cond_0
    or-int/2addr v14, v5

    .line 78
    :cond_1
    and-int/lit16 v1, v14, 0x91

    .line 79
    .line 80
    if-eq v1, v4, :cond_2

    .line 81
    .line 82
    move v1, v10

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move v1, v11

    .line 85
    :goto_0
    and-int/lit8 v4, v14, 0x1

    .line 86
    .line 87
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 88
    .line 89
    invoke-virtual {v13, v4, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_8

    .line 94
    .line 95
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 96
    .line 97
    invoke-static {v1, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-wide v4, v13, Landroidx/compose/runtime/GapComposer;->T:J

    .line 102
    .line 103
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 112
    .line 113
    invoke-static {v13, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 118
    .line 119
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 123
    .line 124
    .line 125
    iget-boolean v14, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 126
    .line 127
    if-eqz v14, :cond_3

    .line 128
    .line 129
    sget-object v14, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 130
    .line 131
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 136
    .line 137
    .line 138
    :goto_1
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 139
    .line 140
    invoke-static {v13, v1, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 144
    .line 145
    invoke-static {v13, v5, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 153
    .line 154
    invoke-static {v13, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 158
    .line 159
    .line 160
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 161
    .line 162
    invoke-static {v13, v6, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    move-object v14, v0

    .line 170
    check-cast v14, Landroid/net/Uri;

    .line 171
    .line 172
    iget-object v0, v9, Landroidx/compose/foundation/pager/PagerState;->k:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 173
    .line 174
    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    iget-object v0, v9, Landroidx/compose/foundation/pager/PagerState;->d:Landroidx/compose/foundation/pager/PagerScrollPosition;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerScrollPosition;->a()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-ne v12, v0, :cond_4

    .line 185
    .line 186
    move/from16 v16, v10

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_4
    move/from16 v16, v11

    .line 190
    .line 191
    :goto_2
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-ne v0, v3, :cond_5

    .line 196
    .line 197
    new-instance v0, Lo1;

    .line 198
    .line 199
    const/4 v1, 0x7

    .line 200
    invoke-direct {v0, v7, v1}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_5
    move-object/from16 v17, v0

    .line 207
    .line 208
    check-cast v17, Lkotlin/jvm/functions/Function0;

    .line 209
    .line 210
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    or-int/2addr v0, v1

    .line 219
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    if-nez v0, :cond_6

    .line 224
    .line 225
    if-ne v1, v3, :cond_7

    .line 226
    .line 227
    :cond_6
    new-instance v1, Lp0;

    .line 228
    .line 229
    const/16 v0, 0x11

    .line 230
    .line 231
    invoke-direct {v1, v0, v8, v14}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    :cond_7
    move-object/from16 v18, v1

    .line 238
    .line 239
    check-cast v18, Lkotlin/jvm/functions/Function0;

    .line 240
    .line 241
    const/16 v20, 0xc00

    .line 242
    .line 243
    move-object/from16 v19, v13

    .line 244
    .line 245
    invoke-static/range {v14 .. v20}, Lnet/blip/android/ui/gallery/GalleryPagerContentKt;->a(Landroid/net/Uri;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 253
    .line 254
    .line 255
    :goto_3
    return-object v2

    .line 256
    :pswitch_0
    move-object v15, v0

    .line 257
    check-cast v15, Landroid/content/Context;

    .line 258
    .line 259
    check-cast v9, Ljava/util/List;

    .line 260
    .line 261
    check-cast v7, Landroidx/compose/foundation/pager/PagerState;

    .line 262
    .line 263
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 264
    .line 265
    move-object/from16 v0, p1

    .line 266
    .line 267
    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    .line 268
    .line 269
    move-object/from16 v1, p2

    .line 270
    .line 271
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 272
    .line 273
    move-object/from16 v12, p3

    .line 274
    .line 275
    check-cast v12, Landroidx/compose/runtime/Composer;

    .line 276
    .line 277
    move-object/from16 v13, p4

    .line 278
    .line 279
    check-cast v13, Ljava/lang/Integer;

    .line 280
    .line 281
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 282
    .line 283
    .line 284
    move-result v13

    .line 285
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 289
    .line 290
    .line 291
    and-int/lit8 v0, v13, 0x30

    .line 292
    .line 293
    if-nez v0, :cond_a

    .line 294
    .line 295
    move-object v0, v12

    .line 296
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_9

    .line 303
    .line 304
    move v5, v6

    .line 305
    :cond_9
    or-int/2addr v13, v5

    .line 306
    :cond_a
    and-int/lit16 v0, v13, 0x91

    .line 307
    .line 308
    if-eq v0, v4, :cond_b

    .line 309
    .line 310
    move v0, v10

    .line 311
    goto :goto_4

    .line 312
    :cond_b
    move v0, v11

    .line 313
    :goto_4
    and-int/lit8 v4, v13, 0x1

    .line 314
    .line 315
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 316
    .line 317
    invoke-virtual {v12, v4, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_15

    .line 322
    .line 323
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 324
    .line 325
    .line 326
    move-result v0

    .line 327
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    or-int/2addr v0, v4

    .line 332
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    or-int/2addr v0, v4

    .line 337
    and-int/lit8 v4, v13, 0x70

    .line 338
    .line 339
    if-ne v4, v6, :cond_c

    .line 340
    .line 341
    move v5, v10

    .line 342
    goto :goto_5

    .line 343
    :cond_c
    move v5, v11

    .line 344
    :goto_5
    or-int/2addr v0, v5

    .line 345
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    if-nez v0, :cond_e

    .line 350
    .line 351
    if-ne v5, v3, :cond_d

    .line 352
    .line 353
    goto :goto_6

    .line 354
    :cond_d
    move-object v0, v1

    .line 355
    move-object v14, v5

    .line 356
    move-object v5, v9

    .line 357
    goto :goto_7

    .line 358
    :cond_e
    :goto_6
    new-instance v14, Lt8;

    .line 359
    .line 360
    const/16 v19, 0x0

    .line 361
    .line 362
    move-object/from16 v18, v1

    .line 363
    .line 364
    move-object/from16 v17, v7

    .line 365
    .line 366
    move-object/from16 v16, v9

    .line 367
    .line 368
    invoke-direct/range {v14 .. v19}, Lt8;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;I)V

    .line 369
    .line 370
    .line 371
    move-object/from16 v5, v16

    .line 372
    .line 373
    move-object/from16 v0, v18

    .line 374
    .line 375
    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    :goto_7
    move-object/from16 v16, v14

    .line 379
    .line 380
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 381
    .line 382
    const/high16 v22, 0x30000

    .line 383
    .line 384
    const/16 v23, 0x1e

    .line 385
    .line 386
    const/16 v17, 0x0

    .line 387
    .line 388
    const/16 v18, 0x0

    .line 389
    .line 390
    const/16 v19, 0x0

    .line 391
    .line 392
    sget-object v20, Lnet/blip/android/ui/gallery/ComposableSingletons$GalleryScreenKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 393
    .line 394
    move-object/from16 v21, v12

    .line 395
    .line 396
    invoke-static/range {v16 .. v23}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v9

    .line 407
    or-int/2addr v1, v9

    .line 408
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 409
    .line 410
    .line 411
    move-result v9

    .line 412
    or-int/2addr v1, v9

    .line 413
    if-ne v4, v6, :cond_f

    .line 414
    .line 415
    move v9, v10

    .line 416
    goto :goto_8

    .line 417
    :cond_f
    move v9, v11

    .line 418
    :goto_8
    or-int/2addr v1, v9

    .line 419
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    if-nez v1, :cond_10

    .line 424
    .line 425
    if-ne v9, v3, :cond_11

    .line 426
    .line 427
    :cond_10
    new-instance v9, Lp1;

    .line 428
    .line 429
    invoke-direct {v9, v8, v5, v7, v0}, Lp1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    :cond_11
    move-object/from16 v16, v9

    .line 436
    .line 437
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 438
    .line 439
    const/high16 v22, 0x30000

    .line 440
    .line 441
    const/16 v23, 0x1e

    .line 442
    .line 443
    const/16 v17, 0x0

    .line 444
    .line 445
    const/16 v18, 0x0

    .line 446
    .line 447
    const/16 v19, 0x0

    .line 448
    .line 449
    sget-object v20, Lnet/blip/android/ui/gallery/ComposableSingletons$GalleryScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 450
    .line 451
    move-object/from16 v21, v12

    .line 452
    .line 453
    invoke-static/range {v16 .. v23}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 461
    .line 462
    .line 463
    move-result v8

    .line 464
    or-int/2addr v1, v8

    .line 465
    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    or-int/2addr v1, v8

    .line 470
    if-ne v4, v6, :cond_12

    .line 471
    .line 472
    goto :goto_9

    .line 473
    :cond_12
    move v10, v11

    .line 474
    :goto_9
    or-int/2addr v1, v10

    .line 475
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    if-nez v1, :cond_13

    .line 480
    .line 481
    if-ne v4, v3, :cond_14

    .line 482
    .line 483
    :cond_13
    new-instance v3, Lt8;

    .line 484
    .line 485
    const/4 v8, 0x1

    .line 486
    move-object v6, v7

    .line 487
    move-object v4, v15

    .line 488
    move-object v7, v0

    .line 489
    invoke-direct/range {v3 .. v8}, Lt8;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    move-object v4, v3

    .line 496
    :cond_14
    move-object/from16 v16, v4

    .line 497
    .line 498
    check-cast v16, Lkotlin/jvm/functions/Function0;

    .line 499
    .line 500
    const/high16 v22, 0x30000

    .line 501
    .line 502
    const/16 v23, 0x1e

    .line 503
    .line 504
    const/16 v17, 0x0

    .line 505
    .line 506
    const/16 v18, 0x0

    .line 507
    .line 508
    const/16 v19, 0x0

    .line 509
    .line 510
    sget-object v20, Lnet/blip/android/ui/gallery/ComposableSingletons$GalleryScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 511
    .line 512
    move-object/from16 v21, v12

    .line 513
    .line 514
    invoke-static/range {v16 .. v23}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 515
    .line 516
    .line 517
    goto :goto_a

    .line 518
    :cond_15
    move-object/from16 v21, v12

    .line 519
    .line 520
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 521
    .line 522
    .line 523
    :goto_a
    return-object v2

    .line 524
    :pswitch_1
    check-cast v0, Lnet/blip/libblip/Peer;

    .line 525
    .line 526
    check-cast v9, Lnet/blip/libblip/PeerPickerContent;

    .line 527
    .line 528
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 529
    .line 530
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 531
    .line 532
    move-object/from16 v1, p1

    .line 533
    .line 534
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 535
    .line 536
    move-object/from16 v12, p2

    .line 537
    .line 538
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 539
    .line 540
    move-object/from16 v13, p3

    .line 541
    .line 542
    check-cast v13, Landroidx/compose/runtime/Composer;

    .line 543
    .line 544
    move-object/from16 v14, p4

    .line 545
    .line 546
    check-cast v14, Ljava/lang/Integer;

    .line 547
    .line 548
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 549
    .line 550
    .line 551
    move-result v14

    .line 552
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 556
    .line 557
    .line 558
    and-int/lit8 v1, v14, 0x30

    .line 559
    .line 560
    if-nez v1, :cond_17

    .line 561
    .line 562
    move-object v1, v13

    .line 563
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 564
    .line 565
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    if-eqz v1, :cond_16

    .line 570
    .line 571
    move v5, v6

    .line 572
    :cond_16
    or-int/2addr v14, v5

    .line 573
    :cond_17
    and-int/lit16 v1, v14, 0x91

    .line 574
    .line 575
    if-eq v1, v4, :cond_18

    .line 576
    .line 577
    move v1, v10

    .line 578
    goto :goto_b

    .line 579
    :cond_18
    move v1, v11

    .line 580
    :goto_b
    and-int/lit8 v4, v14, 0x1

    .line 581
    .line 582
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 583
    .line 584
    invoke-virtual {v13, v4, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    if-eqz v1, :cond_22

    .line 589
    .line 590
    and-int/lit8 v1, v14, 0x70

    .line 591
    .line 592
    invoke-static {v0, v12, v13, v1}, Lnet/blip/android/shortcuts/PinPeerShortcutMenuItemKt;->a(Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 593
    .line 594
    .line 595
    instance-of v4, v0, Lnet/blip/libblip/Peer$Device;

    .line 596
    .line 597
    if-nez v4, :cond_1a

    .line 598
    .line 599
    instance-of v4, v9, Lnet/blip/libblip/PeerPickerContent$Overview;

    .line 600
    .line 601
    if-eqz v4, :cond_19

    .line 602
    .line 603
    goto :goto_c

    .line 604
    :cond_19
    const v4, 0x64e0e133

    .line 605
    .line 606
    .line 607
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 611
    .line 612
    .line 613
    goto :goto_e

    .line 614
    :cond_1a
    :goto_c
    const v4, 0x64dd41fc

    .line 615
    .line 616
    .line 617
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 618
    .line 619
    .line 620
    if-ne v1, v6, :cond_1b

    .line 621
    .line 622
    move v4, v10

    .line 623
    goto :goto_d

    .line 624
    :cond_1b
    move v4, v11

    .line 625
    :goto_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v5

    .line 629
    if-nez v4, :cond_1c

    .line 630
    .line 631
    if-ne v5, v3, :cond_1d

    .line 632
    .line 633
    :cond_1c
    new-instance v5, Lk1;

    .line 634
    .line 635
    invoke-direct {v5, v12, v7, v11}, Lk1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 636
    .line 637
    .line 638
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 639
    .line 640
    .line 641
    :cond_1d
    move-object v15, v5

    .line 642
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 643
    .line 644
    const/high16 v21, 0x30000

    .line 645
    .line 646
    const/16 v22, 0x1e

    .line 647
    .line 648
    const/16 v16, 0x0

    .line 649
    .line 650
    const/16 v17, 0x0

    .line 651
    .line 652
    const/16 v18, 0x0

    .line 653
    .line 654
    sget-object v19, Lnet/blip/android/ui/peerpicker/ComposableSingletons$AndroidPeerPickerListItemsKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 655
    .line 656
    move-object/from16 v20, v13

    .line 657
    .line 658
    invoke-static/range {v15 .. v22}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 662
    .line 663
    .line 664
    :goto_e
    instance-of v0, v0, Lnet/blip/libblip/Peer$User;

    .line 665
    .line 666
    if-eqz v0, :cond_21

    .line 667
    .line 668
    const v0, 0x64e1731e

    .line 669
    .line 670
    .line 671
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 672
    .line 673
    .line 674
    if-ne v1, v6, :cond_1e

    .line 675
    .line 676
    move v0, v10

    .line 677
    goto :goto_f

    .line 678
    :cond_1e
    move v0, v11

    .line 679
    :goto_f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    if-nez v0, :cond_1f

    .line 684
    .line 685
    if-ne v1, v3, :cond_20

    .line 686
    .line 687
    :cond_1f
    new-instance v1, Lk1;

    .line 688
    .line 689
    invoke-direct {v1, v12, v8, v10}, Lk1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 693
    .line 694
    .line 695
    :cond_20
    move-object v15, v1

    .line 696
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 697
    .line 698
    const/high16 v21, 0x30000

    .line 699
    .line 700
    const/16 v22, 0x1e

    .line 701
    .line 702
    const/16 v16, 0x0

    .line 703
    .line 704
    const/16 v17, 0x0

    .line 705
    .line 706
    const/16 v18, 0x0

    .line 707
    .line 708
    sget-object v19, Lnet/blip/android/ui/peerpicker/ComposableSingletons$AndroidPeerPickerListItemsKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 709
    .line 710
    move-object/from16 v20, v13

    .line 711
    .line 712
    invoke-static/range {v15 .. v22}, Landroidx/compose/material/AndroidMenu_androidKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    .line 713
    .line 714
    .line 715
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 716
    .line 717
    .line 718
    goto :goto_10

    .line 719
    :cond_21
    const v0, 0x64e50ad3

    .line 720
    .line 721
    .line 722
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 726
    .line 727
    .line 728
    goto :goto_10

    .line 729
    :cond_22
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 730
    .line 731
    .line 732
    :goto_10
    return-object v2

    .line 733
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
