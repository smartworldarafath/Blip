.class public final synthetic Landroidx/compose/material/i;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:Ljava/util/ArrayList;

.field public final synthetic k:Landroidx/compose/material/FadeInFadeOutState;

.field public final synthetic l:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/compose/material/FadeInFadeOutState;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/material/i;->j:Ljava/util/ArrayList;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/material/i;->k:Landroidx/compose/material/FadeInFadeOutState;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/material/i;->l:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lkotlin/jvm/functions/Function2;

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
    and-int/lit8 v4, v3, 0x6

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-nez v4, :cond_1

    .line 23
    .line 24
    move-object v4, v2

    .line 25
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    const/4 v4, 0x4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v5

    .line 36
    :goto_0
    or-int/2addr v3, v4

    .line 37
    :cond_1
    and-int/lit8 v4, v3, 0x13

    .line 38
    .line 39
    const/16 v6, 0x12

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    const/4 v8, 0x0

    .line 43
    if-eq v4, v6, :cond_2

    .line 44
    .line 45
    move v4, v7

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v4, v8

    .line 48
    :goto_1
    and-int/lit8 v6, v3, 0x1

    .line 49
    .line 50
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 51
    .line 52
    invoke-virtual {v2, v6, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_13

    .line 57
    .line 58
    new-instance v4, Ljava/util/ArrayList;

    .line 59
    .line 60
    iget-object v6, v0, Landroidx/compose/material/i;->j:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    move v10, v8

    .line 74
    :goto_2
    if-ge v10, v9, :cond_4

    .line 75
    .line 76
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    if-eqz v11, :cond_3

    .line 81
    .line 82
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eq v4, v7, :cond_5

    .line 93
    .line 94
    const/16 v4, 0x4b

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_5
    move v4, v8

    .line 98
    :goto_3
    sget-object v6, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 99
    .line 100
    new-instance v12, Landroidx/compose/animation/core/TweenSpec;

    .line 101
    .line 102
    const/16 v15, 0x96

    .line 103
    .line 104
    invoke-direct {v12, v15, v4, v6}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 105
    .line 106
    .line 107
    const/4 v6, 0x0

    .line 108
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    iget-object v10, v0, Landroidx/compose/material/i;->k:Landroidx/compose/material/FadeInFadeOutState;

    .line 113
    .line 114
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v11

    .line 118
    or-int/2addr v9, v11

    .line 119
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 124
    .line 125
    if-nez v9, :cond_6

    .line 126
    .line 127
    if-ne v11, v13, :cond_7

    .line 128
    .line 129
    :cond_6
    new-instance v11, Landroidx/compose/material/a;

    .line 130
    .line 131
    invoke-direct {v11, v5, v10}, Landroidx/compose/material/a;-><init>(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 138
    .line 139
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    if-ne v5, v13, :cond_8

    .line 144
    .line 145
    const/4 v5, 0x0

    .line 146
    invoke-static {v5}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_8
    move-object v10, v5

    .line 154
    check-cast v10, Landroidx/compose/animation/core/Animatable;

    .line 155
    .line 156
    const/4 v5, 0x1

    .line 157
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v9

    .line 161
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 166
    .line 167
    .line 168
    move-result v16

    .line 169
    or-int v14, v14, v16

    .line 170
    .line 171
    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v16

    .line 175
    or-int v14, v14, v16

    .line 176
    .line 177
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v16

    .line 181
    or-int v14, v14, v16

    .line 182
    .line 183
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    if-nez v14, :cond_9

    .line 188
    .line 189
    if-ne v5, v13, :cond_a

    .line 190
    .line 191
    :cond_9
    move-object v5, v9

    .line 192
    goto :goto_4

    .line 193
    :cond_a
    move-object v7, v9

    .line 194
    move-object v9, v5

    .line 195
    move-object v5, v7

    .line 196
    move-object v7, v13

    .line 197
    const/4 v11, 0x1

    .line 198
    goto :goto_5

    .line 199
    :goto_4
    new-instance v9, Landroidx/compose/material/SnackbarHostKt$animatedOpacity$2$1;

    .line 200
    .line 201
    const/4 v14, 0x0

    .line 202
    move-object v7, v13

    .line 203
    move-object v13, v11

    .line 204
    const/4 v11, 0x1

    .line 205
    invoke-direct/range {v9 .. v14}, Landroidx/compose/material/SnackbarHostKt$animatedOpacity$2$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/TweenSpec;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    :goto_5
    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 212
    .line 213
    invoke-static {v2, v5, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 214
    .line 215
    .line 216
    iget-object v5, v10, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    .line 217
    .line 218
    sget-object v9, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 219
    .line 220
    new-instance v10, Landroidx/compose/animation/core/TweenSpec;

    .line 221
    .line 222
    invoke-direct {v10, v15, v4, v9}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    if-ne v4, v7, :cond_b

    .line 230
    .line 231
    const v4, 0x3f4ccccd    # 0.8f

    .line 232
    .line 233
    .line 234
    invoke-static {v4}, Landroidx/compose/animation/core/AnimatableKt;->a(F)Landroidx/compose/animation/core/Animatable;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    :cond_b
    check-cast v4, Landroidx/compose/animation/core/Animatable;

    .line 242
    .line 243
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v12

    .line 251
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    or-int/2addr v12, v13

    .line 256
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v13

    .line 260
    or-int/2addr v12, v13

    .line 261
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v13

    .line 265
    if-nez v12, :cond_c

    .line 266
    .line 267
    if-ne v13, v7, :cond_d

    .line 268
    .line 269
    :cond_c
    new-instance v13, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;

    .line 270
    .line 271
    invoke-direct {v13, v4, v11, v10, v6}, Landroidx/compose/material/SnackbarHostKt$animatedScale$1$1;-><init>(Landroidx/compose/animation/core/Animatable;ZLandroidx/compose/animation/core/TweenSpec;Lkotlin/coroutines/Continuation;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    :cond_d
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 278
    .line 279
    invoke-static {v2, v9, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    .line 281
    .line 282
    iget-object v4, v4, Landroidx/compose/animation/core/Animatable;->c:Landroidx/compose/animation/core/AnimationState;

    .line 283
    .line 284
    iget-object v9, v4, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 285
    .line 286
    check-cast v9, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 287
    .line 288
    invoke-virtual {v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    check-cast v9, Ljava/lang/Number;

    .line 293
    .line 294
    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    .line 295
    .line 296
    .line 297
    move-result v13

    .line 298
    iget-object v4, v4, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 299
    .line 300
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 301
    .line 302
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    check-cast v4, Ljava/lang/Number;

    .line 307
    .line 308
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 309
    .line 310
    .line 311
    move-result v14

    .line 312
    iget-object v4, v5, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 313
    .line 314
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 315
    .line 316
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v4

    .line 320
    check-cast v4, Ljava/lang/Number;

    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    .line 323
    .line 324
    .line 325
    move-result v15

    .line 326
    sget-wide v17, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 327
    .line 328
    sget-wide v21, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->a:J

    .line 329
    .line 330
    const/16 v25, 0x0

    .line 331
    .line 332
    const/high16 v26, 0x80000

    .line 333
    .line 334
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 335
    .line 336
    const/16 v16, 0x0

    .line 337
    .line 338
    sget-object v19, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 339
    .line 340
    const/16 v20, 0x0

    .line 341
    .line 342
    move-wide/from16 v23, v21

    .line 343
    .line 344
    invoke-static/range {v12 .. v26}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->b(Landroidx/compose/ui/Modifier;FFFFJLandroidx/compose/ui/graphics/Shape;ZJJII)Landroidx/compose/ui/Modifier;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 349
    .line 350
    .line 351
    move-result v5

    .line 352
    iget-object v0, v0, Landroidx/compose/material/i;->l:Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v9

    .line 358
    or-int/2addr v5, v9

    .line 359
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    or-int/2addr v5, v6

    .line 364
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    if-nez v5, :cond_e

    .line 369
    .line 370
    if-ne v6, v7, :cond_f

    .line 371
    .line 372
    :cond_e
    new-instance v6, Lub;

    .line 373
    .line 374
    invoke-direct {v6, v0, v11}, Lub;-><init>(Ljava/lang/String;Z)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    :cond_f
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 381
    .line 382
    invoke-static {v4, v8, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 387
    .line 388
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    invoke-static {v2}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 397
    .line 398
    .line 399
    move-result-object v6

    .line 400
    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 405
    .line 406
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 410
    .line 411
    .line 412
    iget-boolean v7, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 413
    .line 414
    if-eqz v7, :cond_10

    .line 415
    .line 416
    sget-object v7, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 417
    .line 418
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 419
    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_10
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 423
    .line 424
    .line 425
    :goto_6
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 426
    .line 427
    invoke-static {v2, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 428
    .line 429
    .line 430
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 431
    .line 432
    invoke-static {v2, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 433
    .line 434
    .line 435
    iget-boolean v4, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 436
    .line 437
    if-nez v4, :cond_11

    .line 438
    .line 439
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    if-nez v4, :cond_12

    .line 452
    .line 453
    :cond_11
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 454
    .line 455
    invoke-static {v5, v2, v5, v4}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 456
    .line 457
    .line 458
    :cond_12
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 459
    .line 460
    invoke-static {v2, v0, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 461
    .line 462
    .line 463
    and-int/lit8 v0, v3, 0xe

    .line 464
    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-interface {v1, v2, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    const/4 v0, 0x1

    .line 473
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 474
    .line 475
    .line 476
    goto :goto_7

    .line 477
    :cond_13
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 478
    .line 479
    .line 480
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 481
    .line 482
    return-object v0
.end method
