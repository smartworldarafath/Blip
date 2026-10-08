.class public final synthetic Landroidx/compose/material/e;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Lkotlin/ranges/ClosedFloatingPointRange;

.field public final synthetic k:F

.field public final synthetic l:Ljava/util/List;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic o:Z

.field public final synthetic p:Landroidx/compose/material/SliderColors;

.field public final synthetic q:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lkotlin/ranges/ClosedFloatingPointRange;FLjava/util/List;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLandroidx/compose/material/SliderColors;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/e;->j:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/material/e;->k:F

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material/e;->l:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/material/e;->m:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/material/e;->n:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 13
    .line 14
    iput-boolean p6, p0, Landroidx/compose/material/e;->o:Z

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/material/e;->p:Landroidx/compose/material/SliderColors;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/material/e;->q:Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

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
    sget-object v4, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 20
    .line 21
    and-int/lit8 v4, v3, 0x6

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    move-object v4, v2

    .line 26
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    const/4 v4, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v4, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v4

    .line 38
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 39
    .line 40
    const/16 v5, 0x12

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x1

    .line 44
    if-eq v4, v5, :cond_2

    .line 45
    .line 46
    move v4, v7

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v4, v6

    .line 49
    :goto_1
    and-int/2addr v3, v7

    .line 50
    move-object v13, v2

    .line 51
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 52
    .line 53
    invoke-virtual {v13, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_15

    .line 58
    .line 59
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 60
    .line 61
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->k:Landroidx/compose/ui/unit/LayoutDirection;

    .line 66
    .line 67
    if-ne v2, v3, :cond_3

    .line 68
    .line 69
    move/from16 v19, v7

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    move/from16 v19, v6

    .line 73
    .line 74
    :goto_2
    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->a()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    int-to-float v1, v1

    .line 83
    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 84
    .line 85
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 86
    .line 87
    .line 88
    new-instance v5, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 94
    .line 95
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 100
    .line 101
    const/high16 v3, 0x41200000    # 10.0f

    .line 102
    .line 103
    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    sub-float v4, v1, v4

    .line 108
    .line 109
    const/4 v15, 0x0

    .line 110
    invoke-static {v4, v15}, Ljava/lang/Math;->max(FF)F

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    iput v4, v6, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 115
    .line 116
    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    iget v3, v6, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 121
    .line 122
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    iput v2, v5, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 127
    .line 128
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 133
    .line 134
    if-ne v2, v9, :cond_4

    .line 135
    .line 136
    invoke-static {v13}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    move-object v10, v2

    .line 144
    check-cast v10, Lkotlinx/coroutines/CoroutineScope;

    .line 145
    .line 146
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const/high16 v23, 0x3f800000    # 1.0f

    .line 151
    .line 152
    iget-object v8, v0, Landroidx/compose/material/e;->j:Lkotlin/ranges/ClosedFloatingPointRange;

    .line 153
    .line 154
    iget v12, v0, Landroidx/compose/material/e;->k:F

    .line 155
    .line 156
    if-ne v2, v9, :cond_8

    .line 157
    .line 158
    invoke-interface {v8}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-interface {v8}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    iget v4, v5, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 175
    .line 176
    iget v7, v6, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 177
    .line 178
    sub-float/2addr v3, v2

    .line 179
    cmpg-float v11, v3, v15

    .line 180
    .line 181
    if-nez v11, :cond_5

    .line 182
    .line 183
    move v2, v15

    .line 184
    goto :goto_3

    .line 185
    :cond_5
    sub-float v2, v12, v2

    .line 186
    .line 187
    div-float/2addr v2, v3

    .line 188
    :goto_3
    cmpg-float v3, v2, v15

    .line 189
    .line 190
    if-gez v3, :cond_6

    .line 191
    .line 192
    move v2, v15

    .line 193
    :cond_6
    cmpl-float v3, v2, v23

    .line 194
    .line 195
    if-lez v3, :cond_7

    .line 196
    .line 197
    move/from16 v2, v23

    .line 198
    .line 199
    :cond_7
    invoke-static {v4, v7, v2}, Landroidx/compose/ui/util/MathHelpersKt;->b(FFF)F

    .line 200
    .line 201
    .line 202
    move-result v2

    .line 203
    invoke-static {v2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    move-object v3, v2

    .line 211
    check-cast v3, Landroidx/compose/runtime/MutableFloatState;

    .line 212
    .line 213
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    if-ne v2, v9, :cond_9

    .line 218
    .line 219
    invoke-static {v15}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_9
    move-object v4, v2

    .line 227
    check-cast v4, Landroidx/compose/runtime/MutableFloatState;

    .line 228
    .line 229
    iget v2, v5, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 230
    .line 231
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    iget v7, v6, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 236
    .line 237
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    or-int/2addr v2, v7

    .line 242
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v7

    .line 246
    or-int/2addr v2, v7

    .line 247
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    if-nez v2, :cond_b

    .line 252
    .line 253
    if-ne v7, v9, :cond_a

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_a
    move-object/from16 v20, v4

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_b
    :goto_4
    new-instance v11, Landroidx/compose/material/SliderDraggableState;

    .line 260
    .line 261
    new-instance v2, Lrf;

    .line 262
    .line 263
    iget-object v7, v0, Landroidx/compose/material/e;->q:Landroidx/compose/runtime/MutableState;

    .line 264
    .line 265
    invoke-direct/range {v2 .. v8}, Lrf;-><init>(Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/runtime/MutableState;Lkotlin/ranges/ClosedFloatingPointRange;)V

    .line 266
    .line 267
    .line 268
    move-object/from16 v20, v4

    .line 269
    .line 270
    invoke-direct {v11, v2}, Landroidx/compose/material/SliderDraggableState;-><init>(Lrf;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    move-object v7, v11

    .line 277
    :goto_5
    check-cast v7, Landroidx/compose/material/SliderDraggableState;

    .line 278
    .line 279
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    iget v4, v5, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 284
    .line 285
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 286
    .line 287
    .line 288
    move-result v4

    .line 289
    or-int/2addr v2, v4

    .line 290
    iget v4, v6, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 291
    .line 292
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    or-int/2addr v2, v4

    .line 297
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    if-nez v2, :cond_c

    .line 302
    .line 303
    if-ne v4, v9, :cond_d

    .line 304
    .line 305
    :cond_c
    new-instance v4, Landroidx/compose/material/SliderKt$Slider$2$2$1;

    .line 306
    .line 307
    invoke-direct {v4, v8, v5, v6}, Landroidx/compose/material/SliderKt$Slider$2$2$1;-><init>(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    :cond_d
    check-cast v4, Lkotlin/reflect/KFunction;

    .line 314
    .line 315
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 316
    .line 317
    iget v2, v5, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 318
    .line 319
    iget v11, v6, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 320
    .line 321
    invoke-static {v2, v11}, Lkotlin/ranges/RangesKt;->g(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    const/16 v14, 0xc00

    .line 326
    .line 327
    move-object v11, v10

    .line 328
    move-object v10, v2

    .line 329
    move-object v2, v11

    .line 330
    move-object v11, v3

    .line 331
    move-object v3, v9

    .line 332
    move-object v9, v8

    .line 333
    move-object v8, v4

    .line 334
    invoke-static/range {v8 .. v14}, Landroidx/compose/material/SliderKt;->a(Lkotlin/jvm/functions/Function1;Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/ranges/ClosedFloatingPointRange;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V

    .line 335
    .line 336
    .line 337
    move-object v10, v9

    .line 338
    move-object/from16 v21, v11

    .line 339
    .line 340
    iget-object v4, v0, Landroidx/compose/material/e;->l:Ljava/util/List;

    .line 341
    .line 342
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v8

    .line 346
    iget v9, v5, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 347
    .line 348
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    or-int/2addr v8, v9

    .line 353
    iget v9, v6, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 354
    .line 355
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    or-int/2addr v8, v9

    .line 360
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    move-result v9

    .line 364
    or-int/2addr v8, v9

    .line 365
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    or-int/2addr v8, v9

    .line 370
    iget-object v9, v0, Landroidx/compose/material/e;->m:Lkotlin/jvm/functions/Function0;

    .line 371
    .line 372
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v11

    .line 376
    or-int/2addr v8, v11

    .line 377
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object v11

    .line 381
    if-nez v8, :cond_e

    .line 382
    .line 383
    if-ne v11, v3, :cond_f

    .line 384
    .line 385
    :cond_e
    move-object/from16 v16, v7

    .line 386
    .line 387
    move-object v7, v2

    .line 388
    goto :goto_6

    .line 389
    :cond_f
    move-object/from16 v16, v7

    .line 390
    .line 391
    move-object v2, v11

    .line 392
    move-object v11, v3

    .line 393
    move-object/from16 v3, v21

    .line 394
    .line 395
    goto :goto_7

    .line 396
    :goto_6
    new-instance v2, Landroidx/compose/material/f;

    .line 397
    .line 398
    move-object v11, v3

    .line 399
    move-object/from16 v8, v16

    .line 400
    .line 401
    move-object/from16 v3, v21

    .line 402
    .line 403
    invoke-direct/range {v2 .. v9}, Landroidx/compose/material/f;-><init>(Landroidx/compose/runtime/MutableFloatState;Ljava/util/List;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/material/SliderDraggableState;Lkotlin/jvm/functions/Function0;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    :goto_7
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 410
    .line 411
    invoke-static {v2, v13}, Landroidx/compose/runtime/SnapshotStateKt;->k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    .line 412
    .line 413
    .line 414
    move-result-object v22

    .line 415
    new-instance v14, Landroidx/compose/material/g;

    .line 416
    .line 417
    iget-boolean v8, v0, Landroidx/compose/material/e;->o:Z

    .line 418
    .line 419
    iget-object v2, v0, Landroidx/compose/material/e;->n:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 420
    .line 421
    move/from16 v18, v1

    .line 422
    .line 423
    move-object/from16 v17, v2

    .line 424
    .line 425
    move-object/from16 v21, v3

    .line 426
    .line 427
    move v1, v15

    .line 428
    move v15, v8

    .line 429
    invoke-direct/range {v14 .. v22}, Landroidx/compose/material/g;-><init>(ZLandroidx/compose/foundation/gestures/DraggableState;Landroidx/compose/foundation/interaction/MutableInteractionSource;FZLandroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V

    .line 430
    .line 431
    .line 432
    move-object/from16 v2, v16

    .line 433
    .line 434
    move/from16 v16, v15

    .line 435
    .line 436
    move-object v15, v2

    .line 437
    move-object/from16 v2, v22

    .line 438
    .line 439
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 440
    .line 441
    invoke-static {v3, v14}, Landroidx/compose/ui/ComposedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    .line 442
    .line 443
    .line 444
    move-result-object v7

    .line 445
    sget-object v8, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 446
    .line 447
    iget-object v8, v15, Landroidx/compose/material/SliderDraggableState;->b:Landroidx/compose/runtime/MutableState;

    .line 448
    .line 449
    check-cast v8, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 450
    .line 451
    invoke-virtual {v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v8

    .line 455
    check-cast v8, Ljava/lang/Boolean;

    .line 456
    .line 457
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 458
    .line 459
    .line 460
    move-result v18

    .line 461
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v8

    .line 465
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v9

    .line 469
    if-nez v8, :cond_10

    .line 470
    .line 471
    if-ne v9, v11, :cond_11

    .line 472
    .line 473
    :cond_10
    new-instance v9, Landroidx/compose/material/SliderKt$Slider$2$drag$1$1;

    .line 474
    .line 475
    const/4 v8, 0x0

    .line 476
    invoke-direct {v9, v2, v8}, Landroidx/compose/material/SliderKt$Slider$2$drag$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    :cond_11
    check-cast v9, Lkotlin/jvm/functions/Function3;

    .line 483
    .line 484
    move-object v14, v3

    .line 485
    move/from16 v20, v19

    .line 486
    .line 487
    move-object/from16 v19, v9

    .line 488
    .line 489
    invoke-static/range {v14 .. v20}, Landroidx/compose/foundation/gestures/DraggableKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/gestures/DraggableState;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function3;Z)Landroidx/compose/ui/Modifier;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-interface {v10}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    invoke-interface {v10}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 506
    .line 507
    .line 508
    move-result v8

    .line 509
    invoke-static {v12, v3, v8}, Lkotlin/ranges/RangesKt;->c(FFF)F

    .line 510
    .line 511
    .line 512
    move-result v3

    .line 513
    invoke-interface {v10}, Lkotlin/ranges/ClosedRange;->c()Ljava/lang/Float;

    .line 514
    .line 515
    .line 516
    move-result-object v8

    .line 517
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 518
    .line 519
    .line 520
    move-result v8

    .line 521
    invoke-interface {v10}, Lkotlin/ranges/ClosedRange;->b()Ljava/lang/Float;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 526
    .line 527
    .line 528
    move-result v9

    .line 529
    sub-float/2addr v9, v8

    .line 530
    cmpg-float v10, v9, v1

    .line 531
    .line 532
    if-nez v10, :cond_12

    .line 533
    .line 534
    move v15, v1

    .line 535
    goto :goto_8

    .line 536
    :cond_12
    sub-float/2addr v3, v8

    .line 537
    div-float v15, v3, v9

    .line 538
    .line 539
    :goto_8
    cmpg-float v3, v15, v1

    .line 540
    .line 541
    if-gez v3, :cond_13

    .line 542
    .line 543
    move v15, v1

    .line 544
    :cond_13
    cmpl-float v1, v15, v23

    .line 545
    .line 546
    if-lez v1, :cond_14

    .line 547
    .line 548
    move/from16 v9, v23

    .line 549
    .line 550
    goto :goto_9

    .line 551
    :cond_14
    move v9, v15

    .line 552
    :goto_9
    iget v1, v6, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 553
    .line 554
    iget v3, v5, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 555
    .line 556
    sub-float v12, v1, v3

    .line 557
    .line 558
    invoke-interface {v7, v2}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 559
    .line 560
    .line 561
    move-result-object v14

    .line 562
    move/from16 v15, v16

    .line 563
    .line 564
    const/16 v16, 0x0

    .line 565
    .line 566
    iget-object v11, v0, Landroidx/compose/material/e;->p:Landroidx/compose/material/SliderColors;

    .line 567
    .line 568
    move-object v10, v4

    .line 569
    move v8, v15

    .line 570
    move-object v15, v13

    .line 571
    move-object/from16 v13, v17

    .line 572
    .line 573
    invoke-static/range {v8 .. v16}, Landroidx/compose/material/SliderKt;->c(ZFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 574
    .line 575
    .line 576
    goto :goto_a

    .line 577
    :cond_15
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 578
    .line 579
    .line 580
    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 581
    .line 582
    return-object v0
.end method
