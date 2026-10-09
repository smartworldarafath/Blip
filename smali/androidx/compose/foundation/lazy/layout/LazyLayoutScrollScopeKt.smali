.class public abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;IIILandroidx/compose/ui/unit/Density;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 28

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    instance-of v3, v2, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;

    .line 13
    .line 14
    iget v4, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->y:I

    .line 15
    .line 16
    const/high16 v5, -0x80000000

    .line 17
    .line 18
    and-int v6, v4, v5

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sub-int/2addr v4, v5

    .line 23
    iput v4, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->y:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;

    .line 27
    .line 28
    invoke-direct {v3, v2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v2, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->x:Ljava/lang/Object;

    .line 32
    .line 33
    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 34
    .line 35
    iget v5, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->y:I

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x2

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v11, 0x1

    .line 41
    if-eqz v5, :cond_3

    .line 42
    .line 43
    if-eq v5, v11, :cond_2

    .line 44
    .line 45
    if-ne v5, v8, :cond_1

    .line 46
    .line 47
    iget v0, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->r:I

    .line 48
    .line 49
    iget v1, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->q:I

    .line 50
    .line 51
    iget-object v3, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    .line 52
    .line 53
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_10

    .line 57
    .line 58
    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object v9

    .line 64
    :cond_2
    iget v0, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->t:I

    .line 65
    .line 66
    iget v1, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->w:F

    .line 67
    .line 68
    iget v5, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->v:F

    .line 69
    .line 70
    iget v12, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->u:F

    .line 71
    .line 72
    iget v13, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->s:I

    .line 73
    .line 74
    iget v14, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->r:I

    .line 75
    .line 76
    iget v15, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->q:I

    .line 77
    .line 78
    iget-object v10, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->p:Lkotlin/jvm/internal/Ref$IntRef;

    .line 79
    .line 80
    iget-object v8, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->o:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 81
    .line 82
    iget-object v9, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 83
    .line 84
    iget-object v6, v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    .line 85
    .line 86
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    move/from16 v25, v5

    .line 90
    .line 91
    move/from16 v26, v14

    .line 92
    .line 93
    move-object v5, v3

    .line 94
    move v3, v1

    .line 95
    move v1, v11

    .line 96
    move v11, v13

    .line 97
    :goto_1
    move v2, v15

    .line 98
    goto/16 :goto_9

    .line 99
    .line 100
    :catch_0
    move-exception v0

    .line 101
    move-object v13, v3

    .line 102
    move v7, v14

    .line 103
    goto/16 :goto_c

    .line 104
    .line 105
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    int-to-float v2, v1

    .line 109
    cmpl-float v2, v2, v7

    .line 110
    .line 111
    if-ltz v2, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    const-string v2, "Index should be non-negative"

    .line 115
    .line 116
    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_2
    const v2, 0x451c4000    # 2500.0f

    .line 120
    .line 121
    .line 122
    :try_start_1
    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    const v5, 0x44bb8000    # 1500.0f

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, v5}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 130
    .line 131
    .line 132
    move-result v5

    .line 133
    const/high16 v6, 0x42480000    # 50.0f

    .line 134
    .line 135
    invoke-interface {v0, v6}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    new-instance v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 140
    .line 141
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-boolean v11, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 145
    .line 146
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 147
    .line 148
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 149
    .line 150
    .line 151
    const/16 v9, 0x1e

    .line 152
    .line 153
    invoke-static {v7, v7, v9}, Landroidx/compose/animation/core/AnimationStateKt;->b(FFI)Landroidx/compose/animation/core/AnimationState;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    iput-object v10, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 158
    .line 159
    invoke-static/range {p0 .. p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->c(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;I)Z

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    if-nez v9, :cond_c

    .line 164
    .line 165
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;->g()I

    .line 166
    .line 167
    .line 168
    move-result v9

    .line 169
    if-le v1, v9, :cond_5

    .line 170
    .line 171
    move v9, v11

    .line 172
    goto :goto_3

    .line 173
    :cond_5
    const/4 v9, 0x0

    .line 174
    :goto_3
    new-instance v10, Lkotlin/jvm/internal/Ref$IntRef;

    .line 175
    .line 176
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 177
    .line 178
    .line 179
    iput v11, v10, Lkotlin/jvm/internal/Ref$IntRef;->j:I
    :try_end_1
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_1 .. :try_end_1} :catch_8

    .line 180
    .line 181
    move/from16 v26, p2

    .line 182
    .line 183
    move/from16 v25, p3

    .line 184
    .line 185
    move v12, v2

    .line 186
    move/from16 v23, v5

    .line 187
    .line 188
    move v2, v1

    .line 189
    move-object v5, v3

    .line 190
    move-object/from16 v1, p0

    .line 191
    .line 192
    move v3, v0

    .line 193
    move v0, v9

    .line 194
    :goto_4
    move-object/from16 v24, v10

    .line 195
    .line 196
    :try_start_2
    iget-boolean v9, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 197
    .line 198
    if-eqz v9, :cond_f

    .line 199
    .line 200
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->a()I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    if-lez v9, :cond_f

    .line 205
    .line 206
    invoke-interface {v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->e(I)I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    add-int v9, v9, v26

    .line 211
    .line 212
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    .line 213
    .line 214
    .line 215
    move-result v10
    :try_end_2
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_2 .. :try_end_2} :catch_6

    .line 216
    int-to-float v10, v10

    .line 217
    cmpg-float v10, v10, v12

    .line 218
    .line 219
    if-gez v10, :cond_7

    .line 220
    .line 221
    int-to-float v9, v9

    .line 222
    :try_start_3
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 223
    .line 224
    .line 225
    move-result v9

    .line 226
    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    .line 227
    .line 228
    .line 229
    move-result v9
    :try_end_3
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_3 .. :try_end_3} :catch_1

    .line 230
    if-eqz v0, :cond_6

    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_6
    neg-float v9, v9

    .line 234
    goto :goto_6

    .line 235
    :catch_1
    move-exception v0

    .line 236
    move-object v6, v1

    .line 237
    :goto_5
    move v15, v2

    .line 238
    move-object v13, v5

    .line 239
    move/from16 v7, v26

    .line 240
    .line 241
    goto/16 :goto_c

    .line 242
    .line 243
    :cond_7
    if-eqz v0, :cond_8

    .line 244
    .line 245
    move v9, v12

    .line 246
    goto :goto_6

    .line 247
    :cond_8
    neg-float v9, v12

    .line 248
    :goto_6
    :try_start_4
    iget-object v10, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v10, Landroidx/compose/animation/core/AnimationState;

    .line 251
    .line 252
    const/16 v13, 0x1e

    .line 253
    .line 254
    invoke-static {v10, v7, v7, v13}, Landroidx/compose/animation/core/AnimationStateKt;->c(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    iput-object v10, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 259
    .line 260
    new-instance v20, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 261
    .line 262
    invoke-direct/range {v20 .. v20}, Ljava/lang/Object;-><init>()V
    :try_end_4
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_4 .. :try_end_4} :catch_6

    .line 263
    .line 264
    .line 265
    :try_start_5
    new-instance v13, Ljava/lang/Float;

    .line 266
    .line 267
    invoke-direct {v13, v9}, Ljava/lang/Float;-><init>(F)V
    :try_end_5
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_5 .. :try_end_5} :catch_7

    .line 268
    .line 269
    .line 270
    :try_start_6
    iget-object v14, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v14, Landroidx/compose/animation/core/AnimationState;

    .line 273
    .line 274
    invoke-virtual {v14}, Landroidx/compose/animation/core/AnimationState;->b()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v14

    .line 278
    check-cast v14, Ljava/lang/Number;

    .line 279
    .line 280
    invoke-virtual {v14}, Ljava/lang/Number;->floatValue()F

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    cmpg-float v14, v14, v7

    .line 285
    .line 286
    if-nez v14, :cond_9

    .line 287
    .line 288
    move v14, v11

    .line 289
    goto :goto_7

    .line 290
    :cond_9
    const/4 v14, 0x0

    .line 291
    :goto_7
    xor-int/2addr v14, v11

    .line 292
    if-eqz v0, :cond_a

    .line 293
    .line 294
    move/from16 v22, v11

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_a
    const/16 v22, 0x0

    .line 298
    .line 299
    :goto_8
    new-instance v16, Landroidx/compose/foundation/lazy/layout/d;
    :try_end_6
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_6 .. :try_end_6} :catch_6

    .line 300
    .line 301
    move-object/from16 v17, v1

    .line 302
    .line 303
    move/from16 v18, v2

    .line 304
    .line 305
    move-object/from16 v21, v6

    .line 306
    .line 307
    move-object/from16 v27, v8

    .line 308
    .line 309
    move/from16 v19, v9

    .line 310
    .line 311
    :try_start_7
    invoke-direct/range {v16 .. v27}, Landroidx/compose/foundation/lazy/layout/d;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;IFLkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;ZFLkotlin/jvm/internal/Ref$IntRef;IILkotlin/jvm/internal/Ref$ObjectRef;)V
    :try_end_7
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_7 .. :try_end_7} :catch_5

    .line 312
    .line 313
    .line 314
    move-object/from16 v6, v17

    .line 315
    .line 316
    move/from16 v15, v18

    .line 317
    .line 318
    move-object/from16 v9, v21

    .line 319
    .line 320
    move/from16 v1, v23

    .line 321
    .line 322
    move-object/from16 v2, v24

    .line 323
    .line 324
    move/from16 v11, v25

    .line 325
    .line 326
    move/from16 v7, v26

    .line 327
    .line 328
    move-object/from16 v8, v27

    .line 329
    .line 330
    :try_start_8
    iput-object v6, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    .line 331
    .line 332
    iput-object v9, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 333
    .line 334
    iput-object v8, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->o:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 335
    .line 336
    iput-object v2, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->p:Lkotlin/jvm/internal/Ref$IntRef;

    .line 337
    .line 338
    iput v15, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->q:I

    .line 339
    .line 340
    iput v7, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->r:I

    .line 341
    .line 342
    iput v11, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->s:I

    .line 343
    .line 344
    iput v12, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->u:F

    .line 345
    .line 346
    iput v1, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->v:F

    .line 347
    .line 348
    iput v3, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->w:F

    .line 349
    .line 350
    iput v0, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->t:I

    .line 351
    .line 352
    move/from16 v25, v1

    .line 353
    .line 354
    const/4 v1, 0x1

    .line 355
    iput v1, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->y:I
    :try_end_8
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_8 .. :try_end_8} :catch_4

    .line 356
    .line 357
    const/16 v18, 0x0

    .line 358
    .line 359
    const/16 v22, 0x2

    .line 360
    .line 361
    move-object/from16 v21, v5

    .line 362
    .line 363
    move-object/from16 v17, v13

    .line 364
    .line 365
    move/from16 v19, v14

    .line 366
    .line 367
    move-object/from16 v20, v16

    .line 368
    .line 369
    move-object/from16 v16, v10

    .line 370
    .line 371
    :try_start_9
    invoke-static/range {v16 .. v22}, Landroidx/compose/animation/core/SuspendAnimationKt;->f(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/SpringSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v5
    :try_end_9
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_9 .. :try_end_9} :catch_3

    .line 375
    if-ne v5, v4, :cond_b

    .line 376
    .line 377
    goto/16 :goto_f

    .line 378
    .line 379
    :cond_b
    move-object v10, v2

    .line 380
    move/from16 v26, v7

    .line 381
    .line 382
    move-object/from16 v5, v21

    .line 383
    .line 384
    goto/16 :goto_1

    .line 385
    .line 386
    :goto_9
    :try_start_a
    iget v7, v10, Lkotlin/jvm/internal/Ref$IntRef;->j:I

    .line 387
    .line 388
    add-int/2addr v7, v1

    .line 389
    iput v7, v10, Lkotlin/jvm/internal/Ref$IntRef;->j:I
    :try_end_a
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_a .. :try_end_a} :catch_2

    .line 390
    .line 391
    move-object v1, v6

    .line 392
    move-object v6, v9

    .line 393
    move/from16 v23, v25

    .line 394
    .line 395
    const/4 v7, 0x0

    .line 396
    move/from16 v25, v11

    .line 397
    .line 398
    const/4 v11, 0x1

    .line 399
    goto/16 :goto_4

    .line 400
    .line 401
    :catch_2
    move-exception v0

    .line 402
    goto/16 :goto_5

    .line 403
    .line 404
    :catch_3
    move-exception v0

    .line 405
    :goto_a
    move-object/from16 v13, v21

    .line 406
    .line 407
    goto :goto_c

    .line 408
    :catch_4
    move-exception v0

    .line 409
    move-object/from16 v21, v5

    .line 410
    .line 411
    goto :goto_a

    .line 412
    :catch_5
    move-exception v0

    .line 413
    move-object/from16 v21, v5

    .line 414
    .line 415
    move-object/from16 v6, v17

    .line 416
    .line 417
    move/from16 v15, v18

    .line 418
    .line 419
    :goto_b
    move/from16 v7, v26

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :catch_6
    move-exception v0

    .line 423
    move-object v6, v1

    .line 424
    move v15, v2

    .line 425
    move-object/from16 v21, v5

    .line 426
    .line 427
    goto :goto_b

    .line 428
    :catch_7
    move-exception v0

    .line 429
    move-object v6, v1

    .line 430
    move v15, v2

    .line 431
    move-object/from16 v21, v5

    .line 432
    .line 433
    goto :goto_b

    .line 434
    :catch_8
    move-exception v0

    .line 435
    move-object/from16 v6, p0

    .line 436
    .line 437
    move/from16 v7, p2

    .line 438
    .line 439
    move v15, v1

    .line 440
    move-object v13, v3

    .line 441
    goto :goto_c

    .line 442
    :cond_c
    :try_start_b
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;->e(I)I

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    new-instance v2, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;

    .line 447
    .line 448
    iget-object v5, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v5, Landroidx/compose/animation/core/AnimationState;

    .line 451
    .line 452
    invoke-direct {v2, v0, v5}, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;-><init>(ILandroidx/compose/animation/core/AnimationState;)V

    .line 453
    .line 454
    .line 455
    throw v2
    :try_end_b
    .catch Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll; {:try_start_b .. :try_end_b} :catch_8

    .line 456
    :goto_c
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;->k:Landroidx/compose/animation/core/AnimationState;

    .line 457
    .line 458
    const/4 v2, 0x0

    .line 459
    const/16 v9, 0x1e

    .line 460
    .line 461
    invoke-static {v1, v2, v2, v9}, Landroidx/compose/animation/core/AnimationStateKt;->c(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;

    .line 462
    .line 463
    .line 464
    move-result-object v8

    .line 465
    iget v0, v0, Landroidx/compose/foundation/lazy/layout/ItemFoundInScroll;->j:I

    .line 466
    .line 467
    add-int/2addr v0, v7

    .line 468
    int-to-float v0, v0

    .line 469
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 470
    .line 471
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 472
    .line 473
    .line 474
    new-instance v9, Ljava/lang/Float;

    .line 475
    .line 476
    invoke-direct {v9, v0}, Ljava/lang/Float;-><init>(F)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v8}, Landroidx/compose/animation/core/AnimationState;->b()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v3

    .line 483
    check-cast v3, Ljava/lang/Number;

    .line 484
    .line 485
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 486
    .line 487
    .line 488
    move-result v3

    .line 489
    cmpg-float v2, v3, v2

    .line 490
    .line 491
    if-nez v2, :cond_d

    .line 492
    .line 493
    const/4 v10, 0x1

    .line 494
    :goto_d
    const/4 v2, 0x1

    .line 495
    goto :goto_e

    .line 496
    :cond_d
    const/4 v10, 0x0

    .line 497
    goto :goto_d

    .line 498
    :goto_e
    xor-int/lit8 v11, v10, 0x1

    .line 499
    .line 500
    new-instance v12, Lz0;

    .line 501
    .line 502
    invoke-direct {v12, v0, v1, v6, v2}, Lz0;-><init>(FLjava/lang/Object;Ljava/lang/Object;I)V

    .line 503
    .line 504
    .line 505
    iput-object v6, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;

    .line 506
    .line 507
    const/4 v1, 0x0

    .line 508
    iput-object v1, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->n:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 509
    .line 510
    iput-object v1, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->o:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 511
    .line 512
    iput-object v1, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->p:Lkotlin/jvm/internal/Ref$IntRef;

    .line 513
    .line 514
    iput v15, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->q:I

    .line 515
    .line 516
    iput v7, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->r:I

    .line 517
    .line 518
    const/4 v1, 0x2

    .line 519
    iput v1, v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt$animateScrollToItem$1;->y:I

    .line 520
    .line 521
    const/4 v10, 0x0

    .line 522
    const/4 v14, 0x2

    .line 523
    invoke-static/range {v8 .. v14}, Landroidx/compose/animation/core/SuspendAnimationKt;->f(Landroidx/compose/animation/core/AnimationState;Ljava/lang/Float;Landroidx/compose/animation/core/SpringSpec;ZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    if-ne v0, v4, :cond_e

    .line 528
    .line 529
    :goto_f
    return-object v4

    .line 530
    :cond_e
    move-object v3, v6

    .line 531
    move v0, v7

    .line 532
    move v1, v15

    .line 533
    :goto_10
    invoke-interface {v3, v1, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->c(II)V

    .line 534
    .line 535
    .line 536
    :cond_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 537
    .line 538
    return-object v0
.end method

.method public static final b(ZLandroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;II)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->g()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-le p0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->g()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-ne p0, p2, :cond_3

    .line 15
    .line 16
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->d()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-le p0, p3, :cond_3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->g()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-ge p0, p2, :cond_2

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->g()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-ne p0, p2, :cond_3

    .line 35
    .line 36
    invoke-interface {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->d()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-ge p0, p3, :cond_3

    .line 41
    .line 42
    :goto_0
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_3
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public static final c(Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;I)Z
    .locals 2

    .line 1
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScope;->b()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-gt p1, p0, :cond_0

    .line 11
    .line 12
    if-gt v0, p1, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :cond_0
    return v1
.end method
