.class public abstract Lnet/blip/android/ui/lockups/ScreenLockupKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;JLjava/util/List;Landroidx/compose/runtime/Composer;II)V
    .locals 17

    .line 1
    move-object/from16 v4, p3

    .line 2
    .line 3
    move/from16 v5, p5

    .line 4
    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-object/from16 v10, p4

    .line 9
    .line 10
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const v0, -0x32f765ca

    .line 13
    .line 14
    .line 15
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 16
    .line 17
    .line 18
    or-int/lit8 v0, v5, 0x6

    .line 19
    .line 20
    and-int/lit8 v1, v5, 0x30

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    and-int/lit8 v1, p6, 0x2

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    move-wide/from16 v1, p1

    .line 29
    .line 30
    invoke-virtual {v10, v1, v2}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    const/16 v3, 0x20

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-wide/from16 v1, p1

    .line 40
    .line 41
    :cond_1
    const/16 v3, 0x10

    .line 42
    .line 43
    :goto_0
    or-int/2addr v0, v3

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-wide/from16 v1, p1

    .line 46
    .line 47
    :goto_1
    and-int/lit16 v3, v5, 0x180

    .line 48
    .line 49
    if-nez v3, :cond_5

    .line 50
    .line 51
    and-int/lit16 v3, v5, 0x200

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    :goto_2
    if-eqz v3, :cond_4

    .line 65
    .line 66
    const/16 v3, 0x100

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    const/16 v3, 0x80

    .line 70
    .line 71
    :goto_3
    or-int/2addr v0, v3

    .line 72
    :cond_5
    and-int/lit16 v3, v0, 0x93

    .line 73
    .line 74
    const/16 v6, 0x92

    .line 75
    .line 76
    const/4 v13, 0x0

    .line 77
    const/4 v14, 0x1

    .line 78
    if-eq v3, v6, :cond_6

    .line 79
    .line 80
    move v3, v14

    .line 81
    goto :goto_4

    .line 82
    :cond_6
    move v3, v13

    .line 83
    :goto_4
    and-int/2addr v0, v14

    .line 84
    invoke-virtual {v10, v0, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_11

    .line 89
    .line 90
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 91
    .line 92
    .line 93
    and-int/lit8 v0, v5, 0x1

    .line 94
    .line 95
    if-eqz v0, :cond_8

    .line 96
    .line 97
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_7
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 105
    .line 106
    .line 107
    move-object/from16 v3, p0

    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_8
    :goto_5
    and-int/lit8 v0, p6, 0x2

    .line 111
    .line 112
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 113
    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 117
    .line 118
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 123
    .line 124
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 125
    .line 126
    move-wide v1, v0

    .line 127
    :cond_9
    :goto_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 128
    .line 129
    .line 130
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 131
    .line 132
    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    .line 133
    .line 134
    const/16 v7, 0x30

    .line 135
    .line 136
    invoke-static {v6, v0, v10, v7}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-wide v6, v10, Landroidx/compose/runtime/GapComposer;->T:J

    .line 141
    .line 142
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 143
    .line 144
    .line 145
    move-result v6

    .line 146
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-static {v10, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 155
    .line 156
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 160
    .line 161
    .line 162
    iget-boolean v9, v10, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 163
    .line 164
    if-eqz v9, :cond_a

    .line 165
    .line 166
    sget-object v9, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 167
    .line 168
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 169
    .line 170
    .line 171
    goto :goto_7

    .line 172
    :cond_a
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 173
    .line 174
    .line 175
    :goto_7
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 176
    .line 177
    invoke-static {v10, v0, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 181
    .line 182
    invoke-static {v10, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 190
    .line 191
    invoke-static {v10, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 195
    .line 196
    .line 197
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 198
    .line 199
    invoke-static {v10, v8, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 200
    .line 201
    .line 202
    const v0, 0x65e222f5

    .line 203
    .line 204
    .line 205
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    if-eqz v6, :cond_10

    .line 217
    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    check-cast v6, Lnet/blip/android/ui/lockups/ButtonRowItem;

    .line 223
    .line 224
    instance-of v7, v6, Lnet/blip/android/ui/lockups/ButtonRowItem$IconSpacer;

    .line 225
    .line 226
    if-eqz v7, :cond_b

    .line 227
    .line 228
    const v6, -0x4bd3eda1

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 232
    .line 233
    .line 234
    sget-object v6, Landroidx/compose/material/InteractiveComponentSizeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 235
    .line 236
    sget-object v6, Landroidx/compose/material/MinimumInteractiveModifier;->b:Landroidx/compose/material/MinimumInteractiveModifier;

    .line 237
    .line 238
    invoke-static {v10, v6}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 242
    .line 243
    .line 244
    goto :goto_8

    .line 245
    :cond_b
    instance-of v7, v6, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;

    .line 246
    .line 247
    if-eqz v7, :cond_c

    .line 248
    .line 249
    const v7, -0x4bd1a72b

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 253
    .line 254
    .line 255
    check-cast v6, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;

    .line 256
    .line 257
    iget-object v7, v6, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;->a:Lkotlin/jvm/functions/Function0;

    .line 258
    .line 259
    new-instance v8, Lv0;

    .line 260
    .line 261
    invoke-direct {v8, v6, v1, v2}, Lv0;-><init>(Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;J)V

    .line 262
    .line 263
    .line 264
    const v6, -0x1d408245

    .line 265
    .line 266
    .line 267
    invoke-static {v6, v8, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 268
    .line 269
    .line 270
    move-result-object v9

    .line 271
    const/16 v11, 0x6000

    .line 272
    .line 273
    const/16 v12, 0xe

    .line 274
    .line 275
    move-object v6, v7

    .line 276
    const/4 v7, 0x0

    .line 277
    const/4 v8, 0x0

    .line 278
    invoke-static/range {v6 .. v12}, Landroidx/compose/material/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 282
    .line 283
    .line 284
    goto :goto_8

    .line 285
    :cond_c
    instance-of v7, v6, Lnet/blip/android/ui/lockups/ButtonRowItem$IconMenu;

    .line 286
    .line 287
    if-eqz v7, :cond_f

    .line 288
    .line 289
    const v7, -0x4bcba202    # -1.6798E-7f

    .line 290
    .line 291
    .line 292
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 300
    .line 301
    if-ne v7, v8, :cond_d

    .line 302
    .line 303
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 304
    .line 305
    invoke-static {v7}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    :cond_d
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 313
    .line 314
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    if-ne v9, v8, :cond_e

    .line 319
    .line 320
    new-instance v9, Lcd;

    .line 321
    .line 322
    const/16 v8, 0xa

    .line 323
    .line 324
    invoke-direct {v9, v7, v8}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v10, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_e
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 331
    .line 332
    new-instance v8, Lw0;

    .line 333
    .line 334
    check-cast v6, Lnet/blip/android/ui/lockups/ButtonRowItem$IconMenu;

    .line 335
    .line 336
    invoke-direct {v8, v6, v1, v2, v7}, Lw0;-><init>(Lnet/blip/android/ui/lockups/ButtonRowItem$IconMenu;JLandroidx/compose/runtime/MutableState;)V

    .line 337
    .line 338
    .line 339
    const v6, 0x2936ee5a

    .line 340
    .line 341
    .line 342
    invoke-static {v6, v8, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 343
    .line 344
    .line 345
    move-result-object v6

    .line 346
    const/16 v11, 0x6006

    .line 347
    .line 348
    const/16 v12, 0xe

    .line 349
    .line 350
    const/4 v7, 0x0

    .line 351
    const/4 v8, 0x0

    .line 352
    move-object v15, v9

    .line 353
    move-object v9, v6

    .line 354
    move-object v6, v15

    .line 355
    invoke-static/range {v6 .. v12}, Landroidx/compose/material/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_8

    .line 362
    .line 363
    :cond_f
    const v0, -0x12f65407

    .line 364
    .line 365
    .line 366
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 370
    .line 371
    .line 372
    invoke-static {}, Lk8;->e()V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :cond_10
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 380
    .line 381
    .line 382
    move-wide v15, v1

    .line 383
    move-object v1, v3

    .line 384
    move-wide v2, v15

    .line 385
    goto :goto_9

    .line 386
    :cond_11
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 387
    .line 388
    .line 389
    move-wide v2, v1

    .line 390
    move-object/from16 v1, p0

    .line 391
    .line 392
    :goto_9
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    if-eqz v7, :cond_12

    .line 397
    .line 398
    new-instance v0, Lte;

    .line 399
    .line 400
    move/from16 v6, p6

    .line 401
    .line 402
    invoke-direct/range {v0 .. v6}, Lte;-><init>(Landroidx/compose/ui/Modifier;JLjava/util/List;II)V

    .line 403
    .line 404
    .line 405
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 406
    .line 407
    :cond_12
    return-void
.end method

.method public static final b(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 15

    .line 1
    move-object/from16 v3, p4

    .line 2
    .line 3
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x2cc9bac1

    .line 6
    .line 7
    .line 8
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    and-int/lit8 v0, p6, 0x1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    move-wide v0, p0

    .line 16
    invoke-virtual {v3, v0, v1}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-wide v0, p0

    .line 25
    :cond_1
    const/4 v2, 0x2

    .line 26
    :goto_0
    or-int v2, p5, v2

    .line 27
    .line 28
    and-int/lit8 v4, p6, 0x2

    .line 29
    .line 30
    if-eqz v4, :cond_3

    .line 31
    .line 32
    or-int/lit8 v2, v2, 0x30

    .line 33
    .line 34
    :cond_2
    move-object/from16 v5, p2

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    and-int/lit8 v5, p5, 0x30

    .line 38
    .line 39
    if-nez v5, :cond_2

    .line 40
    .line 41
    move-object/from16 v5, p2

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-eqz v6, :cond_4

    .line 48
    .line 49
    const/16 v6, 0x20

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    const/16 v6, 0x10

    .line 53
    .line 54
    :goto_1
    or-int/2addr v2, v6

    .line 55
    :goto_2
    and-int/lit16 v6, v2, 0x93

    .line 56
    .line 57
    const/16 v7, 0x92

    .line 58
    .line 59
    if-eq v6, v7, :cond_5

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    goto :goto_3

    .line 63
    :cond_5
    const/4 v6, 0x0

    .line 64
    :goto_3
    and-int/lit8 v7, v2, 0x1

    .line 65
    .line 66
    invoke-virtual {v3, v7, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-eqz v6, :cond_a

    .line 71
    .line 72
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 73
    .line 74
    .line 75
    and-int/lit8 v6, p5, 0x1

    .line 76
    .line 77
    if-eqz v6, :cond_8

    .line 78
    .line 79
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_6

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 87
    .line 88
    .line 89
    and-int/lit8 v4, p6, 0x1

    .line 90
    .line 91
    if-eqz v4, :cond_7

    .line 92
    .line 93
    and-int/lit8 v2, v2, -0xf

    .line 94
    .line 95
    :cond_7
    move-object v6, v5

    .line 96
    goto :goto_5

    .line 97
    :cond_8
    :goto_4
    and-int/lit8 v6, p6, 0x1

    .line 98
    .line 99
    if-eqz v6, :cond_9

    .line 100
    .line 101
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 102
    .line 103
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 108
    .line 109
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 110
    .line 111
    and-int/lit8 v2, v2, -0xf

    .line 112
    .line 113
    :cond_9
    if-eqz v4, :cond_7

    .line 114
    .line 115
    const/4 v4, 0x0

    .line 116
    move-object v6, v4

    .line 117
    :goto_5
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 118
    .line 119
    .line 120
    new-instance v4, Lw0;

    .line 121
    .line 122
    move-object/from16 v11, p3

    .line 123
    .line 124
    invoke-direct {v4, v0, v1, v6, v11}, Lw0;-><init>(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 125
    .line 126
    .line 127
    const v5, -0x2aa2927a

    .line 128
    .line 129
    .line 130
    invoke-static {v5, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    and-int/lit8 v2, v2, 0xe

    .line 135
    .line 136
    or-int/lit8 v2, v2, 0x30

    .line 137
    .line 138
    const/4 v5, 0x0

    .line 139
    move-object v14, v4

    .line 140
    move v4, v2

    .line 141
    move-object v2, v14

    .line 142
    invoke-static/range {v0 .. v5}, Lnet/blip/android/ui/util/FadeOutNavigationBarKt;->a(JLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 143
    .line 144
    .line 145
    move-object v10, v6

    .line 146
    :goto_6
    move-wide v8, v0

    .line 147
    goto :goto_7

    .line 148
    :cond_a
    move-object/from16 v11, p3

    .line 149
    .line 150
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 151
    .line 152
    .line 153
    move-object v10, v5

    .line 154
    goto :goto_6

    .line 155
    :goto_7
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_b

    .line 160
    .line 161
    new-instance v7, Lte;

    .line 162
    .line 163
    move/from16 v12, p5

    .line 164
    .line 165
    move/from16 v13, p6

    .line 166
    .line 167
    invoke-direct/range {v7 .. v13}, Lte;-><init>(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    .line 168
    .line 169
    .line 170
    iput-object v7, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 171
    .line 172
    :cond_b
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    .line 1
    move-object/from16 v8, p3

    .line 2
    .line 3
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, 0x611fc1c9

    .line 6
    .line 7
    .line 8
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    or-int/lit8 v0, p4, 0x6

    .line 12
    .line 13
    and-int/lit8 v1, p4, 0x30

    .line 14
    .line 15
    move-object/from16 v11, p1

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x20

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v1, 0x10

    .line 29
    .line 30
    :goto_0
    or-int/2addr v0, v1

    .line 31
    :cond_1
    and-int/lit8 v1, p5, 0x4

    .line 32
    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    move-object/from16 v1, p2

    .line 36
    .line 37
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    const/16 v2, 0x100

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move-object/from16 v1, p2

    .line 47
    .line 48
    :cond_3
    const/16 v2, 0x80

    .line 49
    .line 50
    :goto_1
    or-int/2addr v0, v2

    .line 51
    and-int/lit16 v2, v0, 0x93

    .line 52
    .line 53
    const/16 v3, 0x92

    .line 54
    .line 55
    if-eq v2, v3, :cond_4

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    const/4 v2, 0x0

    .line 60
    :goto_2
    and-int/lit8 v3, v0, 0x1

    .line 61
    .line 62
    invoke-virtual {v8, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_9

    .line 67
    .line 68
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 69
    .line 70
    .line 71
    and-int/lit8 v2, p4, 0x1

    .line 72
    .line 73
    if-eqz v2, :cond_7

    .line 74
    .line 75
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_5

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 83
    .line 84
    .line 85
    and-int/lit8 v2, p5, 0x4

    .line 86
    .line 87
    if-eqz v2, :cond_6

    .line 88
    .line 89
    and-int/lit16 v0, v0, -0x381

    .line 90
    .line 91
    :cond_6
    move-object v2, v1

    .line 92
    move-object/from16 v1, p0

    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_7
    :goto_3
    and-int/lit8 v2, p5, 0x4

    .line 96
    .line 97
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 98
    .line 99
    if-eqz v2, :cond_8

    .line 100
    .line 101
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 102
    .line 103
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 108
    .line 109
    iget-object v12, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 110
    .line 111
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 112
    .line 113
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 118
    .line 119
    iget-wide v13, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 120
    .line 121
    const/16 v1, 0x12

    .line 122
    .line 123
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 124
    .line 125
    .line 126
    move-result-wide v15

    .line 127
    sget-object v17, Landroidx/compose/ui/text/font/FontWeight;->u:Landroidx/compose/ui/text/font/FontWeight;

    .line 128
    .line 129
    const/16 v22, 0x0

    .line 130
    .line 131
    const v24, 0xdf7ff8

    .line 132
    .line 133
    .line 134
    const-wide/16 v18, 0x0

    .line 135
    .line 136
    const-wide/16 v20, 0x0

    .line 137
    .line 138
    sget v23, Landroidx/compose/ui/text/style/LineBreak;->c:I

    .line 139
    .line 140
    invoke-static/range {v12 .. v24}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    and-int/lit16 v0, v0, -0x381

    .line 145
    .line 146
    :cond_8
    move-object v2, v1

    .line 147
    move-object v1, v3

    .line 148
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 149
    .line 150
    .line 151
    shr-int/lit8 v3, v0, 0x3

    .line 152
    .line 153
    and-int/lit8 v3, v3, 0xe

    .line 154
    .line 155
    const v4, 0x186030

    .line 156
    .line 157
    .line 158
    or-int/2addr v3, v4

    .line 159
    and-int/lit16 v0, v0, 0x380

    .line 160
    .line 161
    or-int v9, v3, v0

    .line 162
    .line 163
    const/16 v10, 0x1a8

    .line 164
    .line 165
    const/4 v3, 0x2

    .line 166
    const/4 v4, 0x0

    .line 167
    const/4 v5, 0x1

    .line 168
    const/4 v6, 0x0

    .line 169
    const/4 v7, 0x0

    .line 170
    move-object v0, v11

    .line 171
    invoke-static/range {v0 .. v10}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 172
    .line 173
    .line 174
    move-object v10, v1

    .line 175
    move-object v12, v2

    .line 176
    goto :goto_5

    .line 177
    :cond_9
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 178
    .line 179
    .line 180
    move-object/from16 v10, p0

    .line 181
    .line 182
    move-object v12, v1

    .line 183
    :goto_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    if-eqz v0, :cond_a

    .line 188
    .line 189
    new-instance v9, Lz3;

    .line 190
    .line 191
    const/4 v15, 0x3

    .line 192
    move-object/from16 v11, p1

    .line 193
    .line 194
    move/from16 v13, p4

    .line 195
    .line 196
    move/from16 v14, p5

    .line 197
    .line 198
    invoke-direct/range {v9 .. v15}, Lz3;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 199
    .line 200
    .line 201
    iput-object v9, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 202
    .line 203
    :cond_a
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 21

    .line 1
    move-object/from16 v6, p5

    .line 2
    .line 3
    move/from16 v7, p7

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object/from16 v12, p6

    .line 11
    .line 12
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v2, 0x482a0179

    .line 15
    .line 16
    .line 17
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    and-int/lit8 v2, p8, 0x1

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    or-int/lit8 v4, v7, 0x6

    .line 26
    .line 27
    move v5, v4

    .line 28
    move-object/from16 v4, p0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move-object/from16 v4, p0

    .line 32
    .line 33
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    const/4 v5, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v5, v3

    .line 42
    :goto_0
    or-int/2addr v5, v7

    .line 43
    :goto_1
    or-int/lit8 v8, v5, 0x10

    .line 44
    .line 45
    and-int/lit8 v9, p8, 0x4

    .line 46
    .line 47
    if-eqz v9, :cond_3

    .line 48
    .line 49
    or-int/lit16 v8, v5, 0x190

    .line 50
    .line 51
    :cond_2
    move-object/from16 v5, p3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    and-int/lit16 v5, v7, 0x180

    .line 55
    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    move-object/from16 v5, p3

    .line 59
    .line 60
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    if-eqz v10, :cond_4

    .line 65
    .line 66
    const/16 v10, 0x100

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_4
    const/16 v10, 0x80

    .line 70
    .line 71
    :goto_2
    or-int/2addr v8, v10

    .line 72
    :goto_3
    and-int/lit8 v10, p8, 0x8

    .line 73
    .line 74
    if-eqz v10, :cond_6

    .line 75
    .line 76
    or-int/lit16 v8, v8, 0xc00

    .line 77
    .line 78
    :cond_5
    move-object/from16 v11, p4

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_6
    and-int/lit16 v11, v7, 0xc00

    .line 82
    .line 83
    if-nez v11, :cond_5

    .line 84
    .line 85
    move-object/from16 v11, p4

    .line 86
    .line 87
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    if-eqz v13, :cond_7

    .line 92
    .line 93
    const/16 v13, 0x800

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_7
    const/16 v13, 0x400

    .line 97
    .line 98
    :goto_4
    or-int/2addr v8, v13

    .line 99
    :goto_5
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    const/16 v14, 0x4000

    .line 104
    .line 105
    if-eqz v13, :cond_8

    .line 106
    .line 107
    move v13, v14

    .line 108
    goto :goto_6

    .line 109
    :cond_8
    const/16 v13, 0x2000

    .line 110
    .line 111
    :goto_6
    or-int/2addr v8, v13

    .line 112
    and-int/lit16 v13, v8, 0x2493

    .line 113
    .line 114
    const/16 v15, 0x2492

    .line 115
    .line 116
    if-eq v13, v15, :cond_9

    .line 117
    .line 118
    const/4 v13, 0x1

    .line 119
    goto :goto_7

    .line 120
    :cond_9
    const/4 v13, 0x0

    .line 121
    :goto_7
    and-int/lit8 v15, v8, 0x1

    .line 122
    .line 123
    invoke-virtual {v12, v15, v13}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 124
    .line 125
    .line 126
    move-result v13

    .line 127
    if-eqz v13, :cond_18

    .line 128
    .line 129
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->S()V

    .line 130
    .line 131
    .line 132
    and-int/lit8 v13, v7, 0x1

    .line 133
    .line 134
    if-eqz v13, :cond_b

    .line 135
    .line 136
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    if-eqz v13, :cond_a

    .line 141
    .line 142
    goto :goto_9

    .line 143
    :cond_a
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 144
    .line 145
    .line 146
    and-int/lit8 v2, v8, -0x71

    .line 147
    .line 148
    move-object v0, v4

    .line 149
    move v4, v2

    .line 150
    move-object v2, v0

    .line 151
    move-wide/from16 v9, p1

    .line 152
    .line 153
    move-object/from16 v16, v1

    .line 154
    .line 155
    :goto_8
    move-object v0, v11

    .line 156
    goto :goto_b

    .line 157
    :cond_b
    :goto_9
    if-eqz v2, :cond_c

    .line 158
    .line 159
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 160
    .line 161
    goto :goto_a

    .line 162
    :cond_c
    move-object v2, v4

    .line 163
    :goto_a
    sget-object v4, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 164
    .line 165
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 170
    .line 171
    move-object/from16 v16, v1

    .line 172
    .line 173
    iget-wide v0, v4, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 174
    .line 175
    and-int/lit8 v4, v8, -0x71

    .line 176
    .line 177
    if-eqz v9, :cond_d

    .line 178
    .line 179
    const/4 v5, 0x0

    .line 180
    :cond_d
    if-eqz v10, :cond_e

    .line 181
    .line 182
    const/4 v11, 0x0

    .line 183
    :cond_e
    move-wide v9, v0

    .line 184
    goto :goto_8

    .line 185
    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->q()V

    .line 186
    .line 187
    .line 188
    invoke-static {v12, v2}, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const/high16 v8, 0x3f800000    # 1.0f

    .line 193
    .line 194
    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const/high16 v8, 0x42700000    # 60.0f

    .line 199
    .line 200
    invoke-static {v1, v8}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const/high16 v8, 0x41000000    # 8.0f

    .line 205
    .line 206
    const/4 v11, 0x0

    .line 207
    invoke-static {v1, v8, v11, v3}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->d:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    .line 212
    .line 213
    const/16 v11, 0x36

    .line 214
    .line 215
    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 216
    .line 217
    invoke-static {v3, v13, v12, v11}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    move-wide/from16 p0, v9

    .line 222
    .line 223
    iget-wide v8, v12, Landroidx/compose/runtime/GapComposer;->T:J

    .line 224
    .line 225
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 230
    .line 231
    .line 232
    move-result-object v9

    .line 233
    invoke-static {v12, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 238
    .line 239
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 243
    .line 244
    .line 245
    iget-boolean v10, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 246
    .line 247
    sget-object v11, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 248
    .line 249
    if-eqz v10, :cond_f

    .line 250
    .line 251
    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 252
    .line 253
    .line 254
    goto :goto_c

    .line 255
    :cond_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 256
    .line 257
    .line 258
    :goto_c
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 259
    .line 260
    invoke-static {v12, v3, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 261
    .line 262
    .line 263
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 264
    .line 265
    invoke-static {v12, v9, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 273
    .line 274
    invoke-static {v12, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v12}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 278
    .line 279
    .line 280
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 281
    .line 282
    invoke-static {v12, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 283
    .line 284
    .line 285
    invoke-static {}, Landroidx/compose/material/icons/automirrored/rounded/ArrowBackKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-static {v1, v12}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    const v13, 0xe000

    .line 294
    .line 295
    .line 296
    and-int/2addr v4, v13

    .line 297
    if-ne v4, v14, :cond_10

    .line 298
    .line 299
    const/4 v4, 0x1

    .line 300
    goto :goto_d

    .line 301
    :cond_10
    const/4 v4, 0x0

    .line 302
    :goto_d
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v13

    .line 306
    sget-object v17, Lnet/blip/android/ui/lockups/ButtonRowItem$IconSpacer;->a:Lnet/blip/android/ui/lockups/ButtonRowItem$IconSpacer;

    .line 307
    .line 308
    if-nez v4, :cond_11

    .line 309
    .line 310
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 311
    .line 312
    if-ne v13, v4, :cond_13

    .line 313
    .line 314
    :cond_11
    if-eqz v6, :cond_12

    .line 315
    .line 316
    new-instance v4, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;

    .line 317
    .line 318
    invoke-direct {v4, v1, v6}, Lnet/blip/android/ui/lockups/ButtonRowItem$Icon;-><init>(Landroidx/compose/ui/graphics/vector/VectorPainter;Lkotlin/jvm/functions/Function0;)V

    .line 319
    .line 320
    .line 321
    goto :goto_e

    .line 322
    :cond_12
    move-object/from16 v4, v17

    .line 323
    .line 324
    :goto_e
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    :cond_13
    check-cast v13, Ljava/util/List;

    .line 332
    .line 333
    move-object v1, v11

    .line 334
    move-object v11, v13

    .line 335
    const/4 v13, 0x0

    .line 336
    const/4 v14, 0x1

    .line 337
    move-object v4, v8

    .line 338
    const/4 v8, 0x0

    .line 339
    move-object v15, v9

    .line 340
    const/high16 p2, 0x41000000    # 8.0f

    .line 341
    .line 342
    move-object/from16 v20, v4

    .line 343
    .line 344
    move-object v4, v1

    .line 345
    move-object v1, v10

    .line 346
    move-wide/from16 v9, p0

    .line 347
    .line 348
    move-object/from16 p0, v2

    .line 349
    .line 350
    move-object/from16 v2, v20

    .line 351
    .line 352
    invoke-static/range {v8 .. v14}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->a(Landroidx/compose/ui/Modifier;JLjava/util/List;Landroidx/compose/runtime/Composer;II)V

    .line 353
    .line 354
    .line 355
    move-wide/from16 v18, v9

    .line 356
    .line 357
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/layout/SizeKt;->n(F)Landroidx/compose/ui/Modifier;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    invoke-static {v12, v8}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 362
    .line 363
    .line 364
    if-nez v5, :cond_14

    .line 365
    .line 366
    const v1, -0x40828441

    .line 367
    .line 368
    .line 369
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 370
    .line 371
    .line 372
    const/4 v8, 0x0

    .line 373
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 374
    .line 375
    .line 376
    move-object/from16 v1, v16

    .line 377
    .line 378
    goto :goto_10

    .line 379
    :cond_14
    const/4 v8, 0x0

    .line 380
    const v9, -0x40828440

    .line 381
    .line 382
    .line 383
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 384
    .line 385
    .line 386
    sget-object v9, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 387
    .line 388
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 389
    .line 390
    .line 391
    move-result-object v9

    .line 392
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 393
    .line 394
    invoke-static {v10, v8}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 395
    .line 396
    .line 397
    move-result-object v10

    .line 398
    iget-wide v13, v12, Landroidx/compose/runtime/GapComposer;->T:J

    .line 399
    .line 400
    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    .line 401
    .line 402
    .line 403
    move-result v8

    .line 404
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 405
    .line 406
    .line 407
    move-result-object v11

    .line 408
    invoke-static {v12, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 413
    .line 414
    .line 415
    iget-boolean v13, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 416
    .line 417
    if-eqz v13, :cond_15

    .line 418
    .line 419
    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 420
    .line 421
    .line 422
    goto :goto_f

    .line 423
    :cond_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 424
    .line 425
    .line 426
    :goto_f
    invoke-static {v12, v10, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 427
    .line 428
    .line 429
    invoke-static {v12, v11, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 430
    .line 431
    .line 432
    invoke-static {v8, v12, v15, v12}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 433
    .line 434
    .line 435
    invoke-static {v12, v9, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 436
    .line 437
    .line 438
    move-object/from16 v1, v16

    .line 439
    .line 440
    invoke-interface {v5, v12, v1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    const/4 v2, 0x1

    .line 444
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 445
    .line 446
    .line 447
    const/4 v8, 0x0

    .line 448
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 449
    .line 450
    .line 451
    :goto_10
    invoke-static/range {p2 .. p2}, Landroidx/compose/foundation/layout/SizeKt;->n(F)Landroidx/compose/ui/Modifier;

    .line 452
    .line 453
    .line 454
    move-result-object v2

    .line 455
    invoke-static {v12, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 456
    .line 457
    .line 458
    if-nez v0, :cond_16

    .line 459
    .line 460
    const v1, -0x407f17a8

    .line 461
    .line 462
    .line 463
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 467
    .line 468
    .line 469
    const/4 v15, 0x0

    .line 470
    goto :goto_11

    .line 471
    :cond_16
    const v2, -0x407f17a7

    .line 472
    .line 473
    .line 474
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 475
    .line 476
    .line 477
    invoke-interface {v0, v12, v1}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 481
    .line 482
    .line 483
    sget-object v15, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 484
    .line 485
    :goto_11
    if-nez v15, :cond_17

    .line 486
    .line 487
    const v1, -0x407ed56a

    .line 488
    .line 489
    .line 490
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 491
    .line 492
    .line 493
    invoke-static/range {v17 .. v17}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 494
    .line 495
    .line 496
    move-result-object v11

    .line 497
    const/16 v13, 0x180

    .line 498
    .line 499
    const/4 v14, 0x3

    .line 500
    const/4 v8, 0x0

    .line 501
    const-wide/16 v9, 0x0

    .line 502
    .line 503
    invoke-static/range {v8 .. v14}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->a(Landroidx/compose/ui/Modifier;JLjava/util/List;Landroidx/compose/runtime/Composer;II)V

    .line 504
    .line 505
    .line 506
    const/4 v8, 0x0

    .line 507
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 508
    .line 509
    .line 510
    :goto_12
    const/4 v2, 0x1

    .line 511
    goto :goto_13

    .line 512
    :cond_17
    const/4 v8, 0x0

    .line 513
    const v1, -0x1adacfbe

    .line 514
    .line 515
    .line 516
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 520
    .line 521
    .line 522
    goto :goto_12

    .line 523
    :goto_13
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 524
    .line 525
    .line 526
    move-object/from16 v1, p0

    .line 527
    .line 528
    move-object v4, v5

    .line 529
    move-wide/from16 v2, v18

    .line 530
    .line 531
    move-object v5, v0

    .line 532
    goto :goto_14

    .line 533
    :cond_18
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 534
    .line 535
    .line 536
    move-wide/from16 v2, p1

    .line 537
    .line 538
    move-object v1, v4

    .line 539
    move-object v4, v5

    .line 540
    move-object v5, v11

    .line 541
    :goto_14
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 542
    .line 543
    .line 544
    move-result-object v9

    .line 545
    if-eqz v9, :cond_19

    .line 546
    .line 547
    new-instance v0, Lad;

    .line 548
    .line 549
    move/from16 v8, p8

    .line 550
    .line 551
    invoke-direct/range {v0 .. v8}, Lad;-><init>(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;II)V

    .line 552
    .line 553
    .line 554
    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 555
    .line 556
    :cond_19
    return-void
.end method
