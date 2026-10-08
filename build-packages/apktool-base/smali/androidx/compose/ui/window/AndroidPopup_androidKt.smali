.class public abstract Landroidx/compose/ui/window/AndroidPopup_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    new-instance v0, Ln;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ln;-><init>(I)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Landroidx/compose/ui/window/AndroidPopup_androidKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 28
    .line 29
    return-void
.end method

.method public static final a(Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p3

    .line 4
    .line 5
    move/from16 v10, p5

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    const v0, -0x699ff8ef

    .line 12
    .line 13
    .line 14
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    .line 17
    and-int/lit8 v0, v10, 0x6

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x2

    .line 30
    :goto_0
    or-int/2addr v0, v10

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v10

    .line 33
    :goto_1
    and-int/lit8 v2, p6, 0x2

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    or-int/lit8 v0, v0, 0x30

    .line 38
    .line 39
    :cond_2
    move-object/from16 v3, p1

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_3
    and-int/lit8 v3, v10, 0x30

    .line 43
    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    move-object/from16 v3, p1

    .line 47
    .line 48
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    const/16 v4, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/16 v4, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v0, v4

    .line 60
    :goto_3
    and-int/lit16 v4, v10, 0x180

    .line 61
    .line 62
    if-nez v4, :cond_6

    .line 63
    .line 64
    move-object/from16 v4, p2

    .line 65
    .line 66
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_5

    .line 71
    .line 72
    const/16 v5, 0x100

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    const/16 v5, 0x80

    .line 76
    .line 77
    :goto_4
    or-int/2addr v0, v5

    .line 78
    goto :goto_5

    .line 79
    :cond_6
    move-object/from16 v4, p2

    .line 80
    .line 81
    :goto_5
    and-int/lit16 v5, v10, 0xc00

    .line 82
    .line 83
    if-nez v5, :cond_8

    .line 84
    .line 85
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_7

    .line 90
    .line 91
    const/16 v5, 0x800

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_7
    const/16 v5, 0x400

    .line 95
    .line 96
    :goto_6
    or-int/2addr v0, v5

    .line 97
    :cond_8
    move v15, v0

    .line 98
    and-int/lit16 v0, v15, 0x493

    .line 99
    .line 100
    const/16 v5, 0x492

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    if-eq v0, v5, :cond_9

    .line 104
    .line 105
    const/4 v0, 0x1

    .line 106
    goto :goto_7

    .line 107
    :cond_9
    move v0, v7

    .line 108
    :goto_7
    and-int/lit8 v5, v15, 0x1

    .line 109
    .line 110
    invoke-virtual {v11, v5, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_1f

    .line 115
    .line 116
    if-eqz v2, :cond_a

    .line 117
    .line 118
    const/16 v17, 0x0

    .line 119
    .line 120
    goto :goto_8

    .line 121
    :cond_a
    move-object/from16 v17, v3

    .line 122
    .line 123
    :goto_8
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 124
    .line 125
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Landroid/view/View;

    .line 130
    .line 131
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 132
    .line 133
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    move-object v5, v3

    .line 138
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 139
    .line 140
    sget-object v3, Landroidx/compose/ui/window/AndroidPopup_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 141
    .line 142
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    move-object/from16 v19, v3

    .line 147
    .line 148
    check-cast v19, Ljava/lang/String;

    .line 149
    .line 150
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 151
    .line 152
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    move-object/from16 v20, v3

    .line 157
    .line 158
    check-cast v20, Landroidx/compose/ui/unit/LayoutDirection;

    .line 159
    .line 160
    invoke-static {v11}, Landroidx/compose/runtime/ComposablesKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/GapComposer$CompositionContextImpl;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {v9, v11}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    new-array v0, v7, [Ljava/lang/Object;

    .line 169
    .line 170
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 175
    .line 176
    if-ne v6, v12, :cond_b

    .line 177
    .line 178
    new-instance v6, Ln;

    .line 179
    .line 180
    const/16 v7, 0xb

    .line 181
    .line 182
    invoke-direct {v6, v7}, Ln;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :cond_b
    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 189
    .line 190
    invoke-static {v0, v6, v11}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    move-object v7, v0

    .line 195
    check-cast v7, Ljava/util/UUID;

    .line 196
    .line 197
    sget-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 198
    .line 199
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Ljava/lang/Boolean;

    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    if-ne v6, v12, :cond_c

    .line 214
    .line 215
    move-object/from16 v21, v8

    .line 216
    .line 217
    move v8, v0

    .line 218
    new-instance v0, Landroidx/compose/ui/window/PopupLayout;

    .line 219
    .line 220
    move-object v6, v4

    .line 221
    move-object v4, v2

    .line 222
    move-object v2, v6

    .line 223
    move-object v6, v1

    .line 224
    move-object v13, v3

    .line 225
    move-object/from16 v1, v17

    .line 226
    .line 227
    move-object/from16 v3, v19

    .line 228
    .line 229
    move-object/from16 v14, v21

    .line 230
    .line 231
    const/4 v9, 0x0

    .line 232
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/window/PopupLayout;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;Z)V

    .line 233
    .line 234
    .line 235
    move-object v1, v6

    .line 236
    new-instance v2, Lt1;

    .line 237
    .line 238
    invoke-direct {v2, v0, v14, v9}, Lt1;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/runtime/MutableState;I)V

    .line 239
    .line 240
    .line 241
    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 242
    .line 243
    const v5, -0x11bbdae4

    .line 244
    .line 245
    .line 246
    const/4 v6, 0x1

    .line 247
    invoke-direct {v4, v5, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLkotlin/Function;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v13, v4}, Landroidx/compose/ui/window/PopupLayout;->n(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    move-object v6, v0

    .line 257
    goto :goto_9

    .line 258
    :cond_c
    move-object/from16 v3, v19

    .line 259
    .line 260
    const/4 v9, 0x0

    .line 261
    :goto_9
    check-cast v6, Landroidx/compose/ui/window/PopupLayout;

    .line 262
    .line 263
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    and-int/lit8 v2, v15, 0x70

    .line 268
    .line 269
    const/16 v4, 0x20

    .line 270
    .line 271
    if-ne v2, v4, :cond_d

    .line 272
    .line 273
    const/4 v4, 0x1

    .line 274
    goto :goto_a

    .line 275
    :cond_d
    move v4, v9

    .line 276
    :goto_a
    or-int/2addr v0, v4

    .line 277
    and-int/lit16 v4, v15, 0x380

    .line 278
    .line 279
    const/16 v5, 0x100

    .line 280
    .line 281
    if-ne v4, v5, :cond_e

    .line 282
    .line 283
    const/4 v5, 0x1

    .line 284
    goto :goto_b

    .line 285
    :cond_e
    move v5, v9

    .line 286
    :goto_b
    or-int/2addr v0, v5

    .line 287
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    or-int/2addr v0, v5

    .line 292
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    or-int/2addr v0, v5

    .line 301
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v5

    .line 305
    if-nez v0, :cond_f

    .line 306
    .line 307
    if-ne v5, v12, :cond_10

    .line 308
    .line 309
    :cond_f
    move v0, v15

    .line 310
    goto :goto_c

    .line 311
    :cond_10
    move v0, v15

    .line 312
    goto :goto_d

    .line 313
    :goto_c
    new-instance v15, Lo;

    .line 314
    .line 315
    move-object/from16 v18, p2

    .line 316
    .line 317
    move-object/from16 v19, v3

    .line 318
    .line 319
    move-object/from16 v16, v6

    .line 320
    .line 321
    invoke-direct/range {v15 .. v20}, Lo;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    move-object v5, v15

    .line 328
    :goto_d
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 329
    .line 330
    invoke-static {v6, v5, v11}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    const/16 v7, 0x20

    .line 338
    .line 339
    if-ne v2, v7, :cond_11

    .line 340
    .line 341
    const/4 v2, 0x1

    .line 342
    goto :goto_e

    .line 343
    :cond_11
    move v2, v9

    .line 344
    :goto_e
    or-int/2addr v2, v5

    .line 345
    const/16 v5, 0x100

    .line 346
    .line 347
    if-ne v4, v5, :cond_12

    .line 348
    .line 349
    const/4 v4, 0x1

    .line 350
    goto :goto_f

    .line 351
    :cond_12
    move v4, v9

    .line 352
    :goto_f
    or-int/2addr v2, v4

    .line 353
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    or-int/2addr v2, v4

    .line 358
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    or-int/2addr v2, v4

    .line 367
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    if-nez v2, :cond_14

    .line 372
    .line 373
    if-ne v4, v12, :cond_13

    .line 374
    .line 375
    goto :goto_10

    .line 376
    :cond_13
    move-object/from16 v3, v20

    .line 377
    .line 378
    goto :goto_11

    .line 379
    :cond_14
    :goto_10
    new-instance v15, Lq1;

    .line 380
    .line 381
    const/16 v21, 0x1

    .line 382
    .line 383
    move-object/from16 v18, p2

    .line 384
    .line 385
    move-object/from16 v19, v3

    .line 386
    .line 387
    move-object/from16 v16, v6

    .line 388
    .line 389
    invoke-direct/range {v15 .. v21}, Lq1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 390
    .line 391
    .line 392
    move-object/from16 v3, v20

    .line 393
    .line 394
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 395
    .line 396
    .line 397
    move-object v4, v15

    .line 398
    :goto_11
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 399
    .line 400
    invoke-static {v4, v11}, Landroidx/compose/runtime/EffectsKt;->g(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 404
    .line 405
    .line 406
    move-result v2

    .line 407
    and-int/lit8 v0, v0, 0xe

    .line 408
    .line 409
    const/4 v4, 0x4

    .line 410
    if-ne v0, v4, :cond_15

    .line 411
    .line 412
    const/4 v9, 0x1

    .line 413
    :cond_15
    or-int v0, v2, v9

    .line 414
    .line 415
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    if-nez v0, :cond_16

    .line 420
    .line 421
    if-ne v2, v12, :cond_17

    .line 422
    .line 423
    :cond_16
    new-instance v2, Lb;

    .line 424
    .line 425
    const/4 v0, 0x1

    .line 426
    invoke-direct {v2, v0, v6, v1}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 430
    .line 431
    .line 432
    :cond_17
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 433
    .line 434
    invoke-static {v1, v2, v11}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    if-nez v0, :cond_18

    .line 446
    .line 447
    if-ne v2, v12, :cond_19

    .line 448
    .line 449
    :cond_18
    new-instance v2, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;

    .line 450
    .line 451
    const/4 v0, 0x0

    .line 452
    invoke-direct {v2, v6, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$5$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Lkotlin/coroutines/Continuation;)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    :cond_19
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 459
    .line 460
    invoke-static {v11, v6, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v0

    .line 467
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    if-nez v0, :cond_1a

    .line 472
    .line 473
    if-ne v2, v12, :cond_1b

    .line 474
    .line 475
    :cond_1a
    new-instance v2, Ls1;

    .line 476
    .line 477
    const/4 v0, 0x1

    .line 478
    invoke-direct {v2, v6, v0}, Ls1;-><init>(Landroidx/compose/ui/window/PopupLayout;I)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    :cond_1b
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 485
    .line 486
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 487
    .line 488
    invoke-static {v0, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 501
    .line 502
    .line 503
    move-result v4

    .line 504
    or-int/2addr v2, v4

    .line 505
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    if-nez v2, :cond_1c

    .line 510
    .line 511
    if-ne v4, v12, :cond_1d

    .line 512
    .line 513
    :cond_1c
    new-instance v4, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8$1;

    .line 514
    .line 515
    invoke-direct {v4, v6, v3}, Landroidx/compose/ui/window/AndroidPopup_androidKt$Popup$8$1;-><init>(Landroidx/compose/ui/window/PopupLayout;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 519
    .line 520
    .line 521
    :cond_1d
    check-cast v4, Landroidx/compose/ui/layout/MeasurePolicy;

    .line 522
    .line 523
    iget-wide v2, v11, Landroidx/compose/runtime/GapComposer;->T:J

    .line 524
    .line 525
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    invoke-static {v11, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 538
    .line 539
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 543
    .line 544
    .line 545
    iget-boolean v5, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 546
    .line 547
    if-eqz v5, :cond_1e

    .line 548
    .line 549
    sget-object v5, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 550
    .line 551
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 552
    .line 553
    .line 554
    goto :goto_12

    .line 555
    :cond_1e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 556
    .line 557
    .line 558
    :goto_12
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 559
    .line 560
    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 561
    .line 562
    .line 563
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 564
    .line 565
    invoke-static {v11, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 566
    .line 567
    .line 568
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 573
    .line 574
    invoke-static {v11, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 575
    .line 576
    .line 577
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 578
    .line 579
    .line 580
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 581
    .line 582
    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 583
    .line 584
    .line 585
    const/4 v0, 0x1

    .line 586
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 587
    .line 588
    .line 589
    move-object/from16 v2, v17

    .line 590
    .line 591
    goto :goto_13

    .line 592
    :cond_1f
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 593
    .line 594
    .line 595
    move-object v2, v3

    .line 596
    :goto_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 597
    .line 598
    .line 599
    move-result-object v8

    .line 600
    if-eqz v8, :cond_20

    .line 601
    .line 602
    new-instance v0, Lu1;

    .line 603
    .line 604
    const/4 v7, 0x0

    .line 605
    move-object/from16 v3, p2

    .line 606
    .line 607
    move-object/from16 v4, p3

    .line 608
    .line 609
    move/from16 v6, p6

    .line 610
    .line 611
    move v5, v10

    .line 612
    invoke-direct/range {v0 .. v7}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 613
    .line 614
    .line 615
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 616
    .line 617
    :cond_20
    return-void
.end method

.method public static final b(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    const/4 v0, 0x0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 21
    .line 22
    and-int/lit16 p0, p0, 0x2000

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_1
    return v0
.end method
