.class public abstract Lnet/blip/android/ui/home/TransferGridCellKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;Landroidx/compose/runtime/Composer;I)V
    .locals 42

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iget-object v0, v2, Lnet/blip/libblip/frontend/Transfer;->w:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 8
    .line 9
    move-object/from16 v11, p3

    .line 10
    .line 11
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    const v4, 0x5ab43afc

    .line 14
    .line 15
    .line 16
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v4, 0x2

    .line 28
    :goto_0
    or-int v4, p4, v4

    .line 29
    .line 30
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    const/16 v5, 0x20

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/16 v5, 0x10

    .line 40
    .line 41
    :goto_1
    or-int/2addr v4, v5

    .line 42
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    const/16 v5, 0x100

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/16 v5, 0x80

    .line 52
    .line 53
    :goto_2
    or-int/2addr v4, v5

    .line 54
    and-int/lit16 v5, v4, 0x93

    .line 55
    .line 56
    const/16 v6, 0x92

    .line 57
    .line 58
    const/4 v14, 0x0

    .line 59
    if-eq v5, v6, :cond_3

    .line 60
    .line 61
    const/4 v5, 0x1

    .line 62
    goto :goto_3

    .line 63
    :cond_3
    move v5, v14

    .line 64
    :goto_3
    and-int/lit8 v6, v4, 0x1

    .line 65
    .line 66
    invoke-virtual {v11, v6, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_16

    .line 71
    .line 72
    const/high16 v5, 0x41400000    # 12.0f

    .line 73
    .line 74
    invoke-static {v1, v5, v5}, Landroidx/compose/foundation/layout/PaddingKt;->e(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 79
    .line 80
    invoke-static {v10, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    iget-wide v7, v11, Landroidx/compose/runtime/GapComposer;->T:J

    .line 85
    .line 86
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-static {v11, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 99
    .line 100
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 104
    .line 105
    .line 106
    iget-boolean v9, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 107
    .line 108
    sget-object v12, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 109
    .line 110
    if-eqz v9, :cond_4

    .line 111
    .line 112
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_4
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 117
    .line 118
    .line 119
    :goto_4
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 120
    .line 121
    invoke-static {v11, v6, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 122
    .line 123
    .line 124
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 125
    .line 126
    invoke-static {v11, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 134
    .line 135
    invoke-static {v11, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 136
    .line 137
    .line 138
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 139
    .line 140
    .line 141
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 142
    .line 143
    invoke-static {v11, v5, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 144
    .line 145
    .line 146
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 147
    .line 148
    const/16 p3, 0x10

    .line 149
    .line 150
    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 151
    .line 152
    const/16 v15, 0x30

    .line 153
    .line 154
    invoke-static {v5, v13, v11, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    iget-wide v14, v11, Landroidx/compose/runtime/GapComposer;->T:J

    .line 159
    .line 160
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 165
    .line 166
    .line 167
    move-result-object v14

    .line 168
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 169
    .line 170
    invoke-static {v11, v15}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 175
    .line 176
    .line 177
    iget-boolean v3, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 178
    .line 179
    if-eqz v3, :cond_5

    .line 180
    .line 181
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 186
    .line 187
    .line 188
    :goto_5
    invoke-static {v11, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v11, v14, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v13, v11, v8, v11}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 195
    .line 196
    .line 197
    invoke-static {v11, v1, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 198
    .line 199
    .line 200
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->h:Landroidx/compose/ui/BiasAlignment;

    .line 201
    .line 202
    const/4 v3, 0x0

    .line 203
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iget-wide v13, v11, Landroidx/compose/runtime/GapComposer;->T:J

    .line 208
    .line 209
    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-static {v11, v15}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 222
    .line 223
    .line 224
    iget-boolean v14, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 225
    .line 226
    if-eqz v14, :cond_6

    .line 227
    .line 228
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 229
    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 233
    .line 234
    .line 235
    :goto_6
    invoke-static {v11, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v11, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v3, v11, v8, v11}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v11, v13, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 245
    .line 246
    .line 247
    invoke-static {v15}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    and-int/lit8 v3, v4, 0x70

    .line 252
    .line 253
    or-int/lit8 v3, v3, 0x6

    .line 254
    .line 255
    invoke-static {v1, v2, v11, v3}, Lnet/blip/android/ui/transfer/TransferThumbnailStackKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;Landroidx/compose/runtime/Composer;I)V

    .line 256
    .line 257
    .line 258
    const/high16 v1, 0x41600000    # 14.0f

    .line 259
    .line 260
    if-eqz p2, :cond_b

    .line 261
    .line 262
    const v3, 0x44635eda

    .line 263
    .line 264
    .line 265
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 266
    .line 267
    .line 268
    const/high16 v13, 0x3f800000    # 1.0f

    .line 269
    .line 270
    invoke-static {v15, v13}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    const/4 v5, 0x1

    .line 275
    invoke-static {v3, v1, v5}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    const/high16 v5, 0x42480000    # 50.0f

    .line 280
    .line 281
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 286
    .line 287
    const/4 v14, 0x0

    .line 288
    invoke-static {v5, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    iget-wide v1, v11, Landroidx/compose/runtime/GapComposer;->T:J

    .line 293
    .line 294
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-static {v11, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 307
    .line 308
    .line 309
    iget-boolean v14, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 310
    .line 311
    if-eqz v14, :cond_7

    .line 312
    .line 313
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 314
    .line 315
    .line 316
    goto :goto_7

    .line 317
    :cond_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 318
    .line 319
    .line 320
    :goto_7
    invoke-static {v11, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v11, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 324
    .line 325
    .line 326
    invoke-static {v1, v11, v8, v11}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 327
    .line 328
    .line 329
    invoke-static {v11, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 330
    .line 331
    .line 332
    const/high16 v1, 0x40a00000    # 5.0f

    .line 333
    .line 334
    invoke-static {v15, v1}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v1, v13}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    and-int/lit16 v1, v4, 0x380

    .line 343
    .line 344
    or-int/lit8 v1, v1, 0x6

    .line 345
    .line 346
    move-object v2, v9

    .line 347
    const/16 v9, 0xa

    .line 348
    .line 349
    const/4 v4, 0x0

    .line 350
    move-object v5, v6

    .line 351
    const/4 v6, 0x0

    .line 352
    move-object v14, v7

    .line 353
    move-object v7, v11

    .line 354
    move-object v11, v8

    .line 355
    move v8, v1

    .line 356
    move-object v1, v5

    .line 357
    move-object/from16 v5, p2

    .line 358
    .line 359
    invoke-static/range {v3 .. v9}, Lnet/blip/shared/AvatarKt;->d(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 360
    .line 361
    .line 362
    invoke-static/range {p1 .. p1}, Lnet/blip/libblip/Transfer_DerivedKt;->a(Lnet/blip/libblip/frontend/Transfer;)F

    .line 363
    .line 364
    .line 365
    move-result v3

    .line 366
    const/16 v4, 0xc00

    .line 367
    .line 368
    const/16 v5, 0x14

    .line 369
    .line 370
    sget-object v6, Landroidx/compose/material/ProgressIndicatorDefaults;->a:Landroidx/compose/animation/core/SpringSpec;

    .line 371
    .line 372
    invoke-static {v3, v6, v7, v4, v5}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-static/range {p1 .. p1}, Lnet/blip/libblip/Transfer_DerivedKt;->c(Lnet/blip/libblip/frontend/Transfer;)Z

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-eqz v4, :cond_a

    .line 381
    .line 382
    const v4, 0x2e98ff2

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 386
    .line 387
    .line 388
    invoke-static {v15, v13}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    const/4 v5, 0x0

    .line 393
    invoke-static {v10, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    iget-wide v8, v7, Landroidx/compose/runtime/GapComposer;->T:J

    .line 398
    .line 399
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    invoke-static {v7, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 408
    .line 409
    .line 410
    move-result-object v4

    .line 411
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 412
    .line 413
    .line 414
    iget-boolean v9, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 415
    .line 416
    if-eqz v9, :cond_8

    .line 417
    .line 418
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 419
    .line 420
    .line 421
    goto :goto_8

    .line 422
    :cond_8
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 423
    .line 424
    .line 425
    :goto_8
    invoke-static {v7, v6, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 426
    .line 427
    .line 428
    invoke-static {v7, v8, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 429
    .line 430
    .line 431
    invoke-static {v5, v7, v11, v7}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 432
    .line 433
    .line 434
    invoke-static {v7, v4, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 435
    .line 436
    .line 437
    sget-object v1, Lnet/blip/libblip/frontend/Transfer$Status;->r:Lnet/blip/libblip/frontend/Transfer$Status;

    .line 438
    .line 439
    if-ne v0, v1, :cond_9

    .line 440
    .line 441
    const v1, -0x68c1de5e

    .line 442
    .line 443
    .line 444
    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 445
    .line 446
    .line 447
    invoke-static {v15, v13}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 448
    .line 449
    .line 450
    move-result-object v4

    .line 451
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    check-cast v1, Ljava/lang/Number;

    .line 456
    .line 457
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    const-wide/16 v8, 0x0

    .line 462
    .line 463
    const/16 v12, 0xc30

    .line 464
    .line 465
    const-wide/16 v5, 0x0

    .line 466
    .line 467
    move-object v11, v7

    .line 468
    const/high16 v7, 0x40400000    # 3.0f

    .line 469
    .line 470
    const/4 v10, 0x1

    .line 471
    invoke-static/range {v3 .. v12}, Landroidx/compose/material/ProgressIndicatorKt;->a(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;I)V

    .line 472
    .line 473
    .line 474
    const/4 v14, 0x0

    .line 475
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 476
    .line 477
    .line 478
    :goto_9
    const/4 v5, 0x1

    .line 479
    goto :goto_a

    .line 480
    :cond_9
    move-object v11, v7

    .line 481
    const v1, -0x68bc4b09

    .line 482
    .line 483
    .line 484
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 485
    .line 486
    .line 487
    invoke-static {v15, v13}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    const/16 v11, 0x186

    .line 492
    .line 493
    const/16 v12, 0xa

    .line 494
    .line 495
    const-wide/16 v4, 0x0

    .line 496
    .line 497
    const/high16 v6, 0x40400000    # 3.0f

    .line 498
    .line 499
    move-object v10, v7

    .line 500
    const-wide/16 v7, 0x0

    .line 501
    .line 502
    const/4 v9, 0x1

    .line 503
    invoke-static/range {v3 .. v12}, Landroidx/compose/material/ProgressIndicatorKt;->b(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V

    .line 504
    .line 505
    .line 506
    move-object v11, v10

    .line 507
    const/4 v14, 0x0

    .line 508
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 509
    .line 510
    .line 511
    goto :goto_9

    .line 512
    :goto_a
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 516
    .line 517
    .line 518
    goto :goto_b

    .line 519
    :cond_a
    move-object v11, v7

    .line 520
    const/4 v5, 0x1

    .line 521
    const/4 v14, 0x0

    .line 522
    const v1, 0x2f781e9

    .line 523
    .line 524
    .line 525
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 529
    .line 530
    .line 531
    :goto_b
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 535
    .line 536
    .line 537
    goto :goto_c

    .line 538
    :cond_b
    const/4 v5, 0x1

    .line 539
    const/4 v14, 0x0

    .line 540
    const v1, 0x447cea28

    .line 541
    .line 542
    .line 543
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 547
    .line 548
    .line 549
    :goto_c
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 550
    .line 551
    .line 552
    const/high16 v14, 0x41600000    # 14.0f

    .line 553
    .line 554
    invoke-static {v15, v14}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 555
    .line 556
    .line 557
    move-result-object v1

    .line 558
    invoke-static {v11, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 559
    .line 560
    .line 561
    sget-object v1, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 562
    .line 563
    invoke-static/range {p1 .. p1}, Lnet/blip/shared/StringsKt;->e(Lnet/blip/libblip/frontend/Transfer;)Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 568
    .line 569
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 574
    .line 575
    iget-object v2, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 576
    .line 577
    invoke-static/range {p3 .. p3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 578
    .line 579
    .line 580
    move-result-wide v19

    .line 581
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 582
    .line 583
    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/TextUnitKt;->b(D)J

    .line 589
    .line 590
    .line 591
    move-result-wide v24

    .line 592
    const/16 v26, 0x0

    .line 593
    .line 594
    const v28, 0xdd7ff9

    .line 595
    .line 596
    .line 597
    const-wide/16 v17, 0x0

    .line 598
    .line 599
    const-wide/16 v22, 0x0

    .line 600
    .line 601
    sget v27, Landroidx/compose/ui/text/style/LineBreak;->c:I

    .line 602
    .line 603
    move-object/from16 v16, v2

    .line 604
    .line 605
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 606
    .line 607
    .line 608
    move-result-object v5

    .line 609
    const v12, 0x186000

    .line 610
    .line 611
    .line 612
    const/16 v13, 0x1aa

    .line 613
    .line 614
    const/4 v4, 0x0

    .line 615
    const/4 v6, 0x2

    .line 616
    const/4 v7, 0x0

    .line 617
    const/4 v8, 0x2

    .line 618
    const/4 v9, 0x0

    .line 619
    const/4 v10, 0x0

    .line 620
    invoke-static/range {v3 .. v13}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 621
    .line 622
    .line 623
    move-object/from16 v2, p1

    .line 624
    .line 625
    iget-object v3, v2, Lnet/blip/libblip/frontend/Transfer;->v:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 626
    .line 627
    if-eqz p2, :cond_c

    .line 628
    .line 629
    invoke-virtual/range {p2 .. p2}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v4

    .line 633
    if-nez v4, :cond_d

    .line 634
    .line 635
    :cond_c
    const-string v4, "unknown peer"

    .line 636
    .line 637
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 638
    .line 639
    .line 640
    move-result v0

    .line 641
    const/4 v5, 0x0

    .line 642
    const-string v6, "From "

    .line 643
    .line 644
    packed-switch v0, :pswitch_data_0

    .line 645
    .line 646
    .line 647
    :goto_d
    move-object v3, v5

    .line 648
    goto :goto_f

    .line 649
    :pswitch_0
    invoke-static/range {p1 .. p2}, Lnet/blip/shared/StringsKt;->b(Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v5

    .line 653
    goto :goto_d

    .line 654
    :pswitch_1
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Direction;->o:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 655
    .line 656
    if-ne v3, v0, :cond_e

    .line 657
    .line 658
    const-string v0, "Sent to "

    .line 659
    .line 660
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v5

    .line 664
    goto :goto_d

    .line 665
    :cond_e
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v5

    .line 669
    goto :goto_d

    .line 670
    :pswitch_2
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Direction;->o:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 671
    .line 672
    if-ne v3, v0, :cond_f

    .line 673
    .line 674
    const-string v0, "Sending to "

    .line 675
    .line 676
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v5

    .line 680
    goto :goto_d

    .line 681
    :cond_f
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v5

    .line 685
    goto :goto_d

    .line 686
    :pswitch_3
    sget-object v0, Lnet/blip/libblip/frontend/Transfer$Direction;->o:Lnet/blip/libblip/frontend/Transfer$Direction;

    .line 687
    .line 688
    if-ne v3, v0, :cond_10

    .line 689
    .line 690
    const-string v0, "Waiting for "

    .line 691
    .line 692
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v5

    .line 696
    goto :goto_d

    .line 697
    :cond_10
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v5

    .line 701
    goto :goto_d

    .line 702
    :pswitch_4
    const-string v5, "Processing content\u2026"

    .line 703
    .line 704
    goto :goto_d

    .line 705
    :pswitch_5
    if-nez p2, :cond_11

    .line 706
    .line 707
    const-string v5, "Select a device or person"

    .line 708
    .line 709
    goto :goto_d

    .line 710
    :cond_11
    iget-object v0, v2, Lnet/blip/libblip/frontend/Transfer;->p:Lbsarchive/Metadata;

    .line 711
    .line 712
    if-eqz v0, :cond_12

    .line 713
    .line 714
    iget-object v5, v0, Lbsarchive/Metadata;->m:Ljava/util/Map;

    .line 715
    .line 716
    :cond_12
    if-eqz v5, :cond_14

    .line 717
    .line 718
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 719
    .line 720
    .line 721
    move-result v0

    .line 722
    if-eqz v0, :cond_13

    .line 723
    .line 724
    goto :goto_e

    .line 725
    :cond_13
    const-string v0, "Ready to send to "

    .line 726
    .line 727
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v5

    .line 731
    goto :goto_d

    .line 732
    :cond_14
    :goto_e
    const-string v5, "Add items to send"

    .line 733
    .line 734
    goto :goto_d

    .line 735
    :goto_f
    if-nez v3, :cond_15

    .line 736
    .line 737
    const v0, -0x386146cd

    .line 738
    .line 739
    .line 740
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 741
    .line 742
    .line 743
    const/4 v14, 0x0

    .line 744
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 745
    .line 746
    .line 747
    :goto_10
    const/4 v5, 0x1

    .line 748
    goto :goto_11

    .line 749
    :cond_15
    const v0, -0x386146cc

    .line 750
    .line 751
    .line 752
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 753
    .line 754
    .line 755
    const/high16 v0, 0x40400000    # 3.0f

    .line 756
    .line 757
    invoke-static {v15, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    move-result-object v0

    .line 768
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 769
    .line 770
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 771
    .line 772
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 773
    .line 774
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 779
    .line 780
    iget-wide v4, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 781
    .line 782
    const/16 v1, 0xc

    .line 783
    .line 784
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 785
    .line 786
    .line 787
    move-result-wide v32

    .line 788
    sget-object v34, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    .line 789
    .line 790
    const/16 v39, 0x0

    .line 791
    .line 792
    const v41, 0xdf7ff8

    .line 793
    .line 794
    .line 795
    const-wide/16 v35, 0x0

    .line 796
    .line 797
    const-wide/16 v37, 0x0

    .line 798
    .line 799
    move-object/from16 v29, v0

    .line 800
    .line 801
    move-wide/from16 v30, v4

    .line 802
    .line 803
    move/from16 v40, v27

    .line 804
    .line 805
    invoke-static/range {v29 .. v41}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 806
    .line 807
    .line 808
    move-result-object v5

    .line 809
    const v12, 0x186000

    .line 810
    .line 811
    .line 812
    const/16 v13, 0x1aa

    .line 813
    .line 814
    const/4 v4, 0x0

    .line 815
    const/4 v6, 0x2

    .line 816
    const/4 v7, 0x0

    .line 817
    const/4 v8, 0x2

    .line 818
    const/4 v9, 0x0

    .line 819
    const/4 v10, 0x0

    .line 820
    invoke-static/range {v3 .. v13}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 821
    .line 822
    .line 823
    const/4 v14, 0x0

    .line 824
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 825
    .line 826
    .line 827
    goto :goto_10

    .line 828
    :goto_11
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 832
    .line 833
    .line 834
    goto :goto_12

    .line 835
    :cond_16
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 836
    .line 837
    .line 838
    :goto_12
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 839
    .line 840
    .line 841
    move-result-object v6

    .line 842
    if-eqz v6, :cond_17

    .line 843
    .line 844
    new-instance v0, Lu;

    .line 845
    .line 846
    const/16 v5, 0x10

    .line 847
    .line 848
    move-object/from16 v1, p0

    .line 849
    .line 850
    move-object/from16 v3, p2

    .line 851
    .line 852
    move/from16 v4, p4

    .line 853
    .line 854
    invoke-direct/range {v0 .. v5}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 855
    .line 856
    .line 857
    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 858
    .line 859
    :cond_17
    return-void

    .line 860
    nop

    .line 861
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
