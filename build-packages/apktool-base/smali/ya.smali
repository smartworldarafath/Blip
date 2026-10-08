.class public final synthetic Lya;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:F

.field public final synthetic k:Ljava/util/ArrayList;

.field public final synthetic l:I

.field public final synthetic m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic n:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(FLjava/util/ArrayList;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lya;->j:F

    .line 5
    .line 6
    iput-object p2, p0, Lya;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput p3, p0, Lya;->l:I

    .line 9
    .line 10
    iput-object p4, p0, Lya;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 11
    .line 12
    iput-object p5, p0, Lya;->n:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 10
    .line 11
    move-object/from16 v3, p3

    .line 12
    .line 13
    check-cast v3, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    and-int/lit8 v6, v3, 0x6

    .line 28
    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    move-object v6, v2

    .line 32
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 33
    .line 34
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    if-eqz v6, :cond_0

    .line 39
    .line 40
    const/4 v6, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v6, 0x2

    .line 43
    :goto_0
    or-int/2addr v3, v6

    .line 44
    :cond_1
    and-int/lit8 v6, v3, 0x13

    .line 45
    .line 46
    const/16 v7, 0x12

    .line 47
    .line 48
    const/4 v8, 0x1

    .line 49
    if-eq v6, v7, :cond_2

    .line 50
    .line 51
    move v6, v8

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v6, v4

    .line 54
    :goto_1
    and-int/2addr v3, v8

    .line 55
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 56
    .line 57
    invoke-virtual {v2, v3, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_a

    .line 62
    .line 63
    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->c()F

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iget v3, v0, Lya;->j:F

    .line 68
    .line 69
    invoke-static {v3}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 74
    .line 75
    invoke-static {v6, v7, v2, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    iget-wide v9, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 80
    .line 81
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 90
    .line 91
    invoke-static {v2, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 96
    .line 97
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 101
    .line 102
    .line 103
    iget-boolean v13, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 104
    .line 105
    sget-object v14, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 106
    .line 107
    if-eqz v13, :cond_3

    .line 108
    .line 109
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 114
    .line 115
    .line 116
    :goto_2
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 117
    .line 118
    invoke-static {v2, v6, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 122
    .line 123
    invoke-static {v2, v10, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v9

    .line 130
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 131
    .line 132
    invoke-static {v2, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 133
    .line 134
    .line 135
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 136
    .line 137
    .line 138
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 139
    .line 140
    invoke-static {v2, v12, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 141
    .line 142
    .line 143
    add-float v12, v1, v3

    .line 144
    .line 145
    const/high16 v15, 0x42980000    # 76.0f

    .line 146
    .line 147
    add-float/2addr v15, v3

    .line 148
    div-float/2addr v12, v15

    .line 149
    float-to-int v12, v12

    .line 150
    add-int/lit8 v15, v12, -0x1

    .line 151
    .line 152
    int-to-float v15, v15

    .line 153
    mul-float/2addr v15, v3

    .line 154
    sub-float/2addr v1, v15

    .line 155
    int-to-float v15, v12

    .line 156
    div-float/2addr v1, v15

    .line 157
    iget-object v15, v0, Lya;->k:Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    iget v8, v0, Lya;->l:I

    .line 164
    .line 165
    mul-int/2addr v8, v12

    .line 166
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    move/from16 p3, v1

    .line 171
    .line 172
    int-to-double v0, v4

    .line 173
    move-wide/from16 v16, v0

    .line 174
    .line 175
    int-to-double v0, v12

    .line 176
    div-double v0, v16, v0

    .line 177
    .line 178
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 179
    .line 180
    .line 181
    move-result-wide v0

    .line 182
    double-to-int v0, v0

    .line 183
    const/4 v1, 0x1

    .line 184
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    const v8, 0x5726ad61

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 192
    .line 193
    .line 194
    const/4 v8, 0x0

    .line 195
    :goto_3
    if-ge v8, v0, :cond_9

    .line 196
    .line 197
    mul-int v16, v8, v12

    .line 198
    .line 199
    sub-int v1, v4, v16

    .line 200
    .line 201
    invoke-static {v1, v12}, Ljava/lang/Math;->min(II)I

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    move/from16 v17, v0

    .line 206
    .line 207
    new-instance v0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 208
    .line 209
    move/from16 v18, v4

    .line 210
    .line 211
    new-instance v4, Lp;

    .line 212
    .line 213
    move/from16 v19, v8

    .line 214
    .line 215
    const/4 v8, 0x1

    .line 216
    invoke-direct {v4, v8, v7}, Lp;-><init>(ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    invoke-direct {v0, v3, v8, v4}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLandroidx/compose/foundation/layout/Arrangement$SpacingAlignmentCalculator;)V

    .line 220
    .line 221
    .line 222
    const/high16 v4, 0x3f800000    # 1.0f

    .line 223
    .line 224
    invoke-static {v11, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-static {v4}, Landroidx/compose/foundation/layout/SizeKt;->p(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 233
    .line 234
    move/from16 v20, v3

    .line 235
    .line 236
    const/4 v3, 0x0

    .line 237
    invoke-static {v0, v8, v2, v3}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    move-object v3, v7

    .line 242
    iget-wide v7, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 243
    .line 244
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    invoke-static {v2, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    sget-object v21, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 257
    .line 258
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 262
    .line 263
    .line 264
    move-object/from16 v21, v3

    .line 265
    .line 266
    iget-boolean v3, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 267
    .line 268
    if-eqz v3, :cond_4

    .line 269
    .line 270
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 275
    .line 276
    .line 277
    :goto_4
    invoke-static {v2, v0, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 278
    .line 279
    .line 280
    invoke-static {v2, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 281
    .line 282
    .line 283
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v2, v0, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 288
    .line 289
    .line 290
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 291
    .line 292
    .line 293
    invoke-static {v2, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 294
    .line 295
    .line 296
    const v0, -0x4ce9c6ee

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 300
    .line 301
    .line 302
    const/4 v3, 0x0

    .line 303
    :goto_5
    if-ge v3, v12, :cond_8

    .line 304
    .line 305
    invoke-static/range {p3 .. p3}, Landroidx/compose/foundation/layout/SizeKt;->j(F)Landroidx/compose/ui/Modifier;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 310
    .line 311
    const/4 v7, 0x0

    .line 312
    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    iget-wide v7, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 317
    .line 318
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 323
    .line 324
    .line 325
    move-result-object v8

    .line 326
    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    sget-object v22, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 331
    .line 332
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 336
    .line 337
    .line 338
    move/from16 v22, v7

    .line 339
    .line 340
    iget-boolean v7, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 341
    .line 342
    if-eqz v7, :cond_5

    .line 343
    .line 344
    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 345
    .line 346
    .line 347
    goto :goto_6

    .line 348
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 349
    .line 350
    .line 351
    :goto_6
    invoke-static {v2, v4, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 352
    .line 353
    .line 354
    invoke-static {v2, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 355
    .line 356
    .line 357
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-static {v2, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 362
    .line 363
    .line 364
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 365
    .line 366
    .line 367
    invoke-static {v2, v0, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 368
    .line 369
    .line 370
    if-ge v3, v1, :cond_6

    .line 371
    .line 372
    const v0, 0x521a60cc

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 376
    .line 377
    .line 378
    add-int v0, v16, v3

    .line 379
    .line 380
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    move-object/from16 v4, p0

    .line 385
    .line 386
    iget-object v7, v4, Lya;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 387
    .line 388
    invoke-virtual {v7, v0, v2, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    const/4 v7, 0x0

    .line 392
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 393
    .line 394
    .line 395
    :goto_7
    const/4 v8, 0x1

    .line 396
    goto :goto_a

    .line 397
    :cond_6
    move-object/from16 v4, p0

    .line 398
    .line 399
    const/4 v7, 0x0

    .line 400
    const v0, 0x521caac5

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 404
    .line 405
    .line 406
    iget-object v8, v4, Lya;->n:Lkotlin/jvm/functions/Function2;

    .line 407
    .line 408
    if-nez v8, :cond_7

    .line 409
    .line 410
    const v0, 0x521caac4

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 414
    .line 415
    .line 416
    :goto_8
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 417
    .line 418
    .line 419
    goto :goto_9

    .line 420
    :cond_7
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 421
    .line 422
    .line 423
    invoke-interface {v8, v2, v5}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    goto :goto_8

    .line 427
    :goto_9
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 428
    .line 429
    .line 430
    goto :goto_7

    .line 431
    :goto_a
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 432
    .line 433
    .line 434
    add-int/lit8 v3, v3, 0x1

    .line 435
    .line 436
    goto/16 :goto_5

    .line 437
    .line 438
    :cond_8
    move-object/from16 v4, p0

    .line 439
    .line 440
    const/4 v7, 0x0

    .line 441
    const/4 v8, 0x1

    .line 442
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 446
    .line 447
    .line 448
    add-int/lit8 v0, v19, 0x1

    .line 449
    .line 450
    move v1, v8

    .line 451
    move/from16 v4, v18

    .line 452
    .line 453
    move/from16 v3, v20

    .line 454
    .line 455
    move-object/from16 v7, v21

    .line 456
    .line 457
    move v8, v0

    .line 458
    move/from16 v0, v17

    .line 459
    .line 460
    goto/16 :goto_3

    .line 461
    .line 462
    :cond_9
    move v8, v1

    .line 463
    const/4 v7, 0x0

    .line 464
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 468
    .line 469
    .line 470
    goto :goto_b

    .line 471
    :cond_a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 472
    .line 473
    .line 474
    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 475
    .line 476
    return-object v0
.end method
