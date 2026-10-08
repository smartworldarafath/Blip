.class public abstract Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ILandroidx/compose/runtime/Composer;)V
    .locals 24

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, -0x2812b8f3

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    const/4 v9, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v9

    .line 19
    :goto_0
    and-int/lit8 v2, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {v6, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_6

    .line 26
    .line 27
    invoke-static {v6}, Lnet/blip/android/ui/util/AppIconKt;->a(Landroidx/compose/runtime/Composer;)Lcom/google/accompanist/drawablepainter/DrawablePainter;

    .line 28
    .line 29
    .line 30
    move-result-object v11

    .line 31
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 32
    .line 33
    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-wide v2, v6, Landroidx/compose/runtime/GapComposer;->T:J

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 48
    .line 49
    invoke-static {v6, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 59
    .line 60
    .line 61
    iget-boolean v5, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 62
    .line 63
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 64
    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 72
    .line 73
    .line 74
    :goto_1
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 75
    .line 76
    invoke-static {v6, v1, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 77
    .line 78
    .line 79
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 80
    .line 81
    invoke-static {v6, v3, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 85
    .line 86
    invoke-static {v2, v6, v1, v6}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 87
    .line 88
    .line 89
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 90
    .line 91
    invoke-static {v6, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 92
    .line 93
    .line 94
    const/high16 v3, 0x3f800000    # 1.0f

    .line 95
    .line 96
    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 97
    .line 98
    .line 99
    move-result-object v16

    .line 100
    const/high16 v4, 0x41c00000    # 24.0f

    .line 101
    .line 102
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 103
    .line 104
    .line 105
    move-result-object v18

    .line 106
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->b:J

    .line 107
    .line 108
    const/high16 v5, 0x3f400000    # 0.75f

    .line 109
    .line 110
    invoke-static {v7, v8, v5}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 111
    .line 112
    .line 113
    move-result-wide v19

    .line 114
    const/16 v21, 0xc

    .line 115
    .line 116
    const/high16 v17, 0x41000000    # 8.0f

    .line 117
    .line 118
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/draw/ShadowKt;->a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JI)Landroidx/compose/ui/Modifier;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-static {v5, v7}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    sget-object v7, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 131
    .line 132
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    check-cast v7, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 137
    .line 138
    iget-wide v7, v7, Lnet/blip/android/ui/androidtheme/AndroidColors;->j:J

    .line 139
    .line 140
    sget-object v10, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 141
    .line 142
    invoke-static {v5, v7, v8, v10}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {v5, v6, v9}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 147
    .line 148
    .line 149
    const/high16 v10, 0x41800000    # 16.0f

    .line 150
    .line 151
    invoke-static {v12, v10, v4, v10, v4}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v10}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 160
    .line 161
    const/16 v8, 0x36

    .line 162
    .line 163
    invoke-static {v5, v7, v6, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    iget-wide v7, v6, Landroidx/compose/runtime/GapComposer;->T:J

    .line 168
    .line 169
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-static {v6, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 182
    .line 183
    .line 184
    move/from16 v16, v10

    .line 185
    .line 186
    iget-boolean v10, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 187
    .line 188
    if-eqz v10, :cond_2

    .line 189
    .line 190
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_2
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 195
    .line 196
    .line 197
    :goto_2
    invoke-static {v6, v5, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 198
    .line 199
    .line 200
    invoke-static {v6, v8, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v7, v6, v1, v6}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 204
    .line 205
    .line 206
    invoke-static {v6, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 218
    .line 219
    const/4 v7, 0x6

    .line 220
    invoke-static {v5, v10, v6, v7}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    iget-wide v7, v6, Landroidx/compose/runtime/GapComposer;->T:J

    .line 225
    .line 226
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 231
    .line 232
    .line 233
    move-result-object v8

    .line 234
    invoke-static {v6, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 239
    .line 240
    .line 241
    iget-boolean v3, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 242
    .line 243
    if-eqz v3, :cond_3

    .line 244
    .line 245
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_3
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 250
    .line 251
    .line 252
    :goto_3
    invoke-static {v6, v5, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v6, v8, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 256
    .line 257
    .line 258
    invoke-static {v7, v6, v1, v6}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v6, v4, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 262
    .line 263
    .line 264
    sget-object v19, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 265
    .line 266
    move-object v3, v1

    .line 267
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    new-instance v4, Loc;

    .line 272
    .line 273
    invoke-direct {v4, v11, v9}, Loc;-><init>(Lcom/google/accompanist/drawablepainter/DrawablePainter;I)V

    .line 274
    .line 275
    .line 276
    const v5, -0x718dc00f

    .line 277
    .line 278
    .line 279
    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    const/16 v7, 0x6db0

    .line 284
    .line 285
    const/4 v8, 0x0

    .line 286
    move-object v5, v2

    .line 287
    const-string v2, "Your Laptop"

    .line 288
    .line 289
    move-object/from16 v20, v3

    .line 290
    .line 291
    sget-object v3, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 292
    .line 293
    move-object/from16 v21, v5

    .line 294
    .line 295
    sget-object v5, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 296
    .line 297
    move-object/from16 v23, v20

    .line 298
    .line 299
    move-object/from16 v22, v21

    .line 300
    .line 301
    invoke-static/range {v1 .. v8}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 302
    .line 303
    .line 304
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    new-instance v2, Loc;

    .line 309
    .line 310
    const/4 v3, 0x1

    .line 311
    invoke-direct {v2, v11, v3}, Loc;-><init>(Lcom/google/accompanist/drawablepainter/DrawablePainter;I)V

    .line 312
    .line 313
    .line 314
    const v3, 0x50a708e8

    .line 315
    .line 316
    .line 317
    invoke-static {v3, v2, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    const/16 v7, 0xdb0

    .line 322
    .line 323
    const/16 v8, 0x10

    .line 324
    .line 325
    const-string v2, "Alicia"

    .line 326
    .line 327
    sget-object v3, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 328
    .line 329
    const/4 v5, 0x0

    .line 330
    invoke-static/range {v1 .. v8}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 331
    .line 332
    .line 333
    const v1, -0x635836a1

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 337
    .line 338
    .line 339
    const-string v1, "Hannah Thorpe"

    .line 340
    .line 341
    const-string v2, "Louie"

    .line 342
    .line 343
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v17

    .line 347
    move v1, v9

    .line 348
    :goto_4
    const/4 v2, 0x2

    .line 349
    const v3, 0x3e99999a    # 0.3f

    .line 350
    .line 351
    .line 352
    if-ge v1, v2, :cond_4

    .line 353
    .line 354
    aget-object v2, v17, v1

    .line 355
    .line 356
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-static {v4, v3}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    new-instance v4, Lw;

    .line 365
    .line 366
    const/4 v5, 0x3

    .line 367
    invoke-direct {v4, v2, v5}, Lw;-><init>(Ljava/lang/String;I)V

    .line 368
    .line 369
    .line 370
    const v5, -0x16680848

    .line 371
    .line 372
    .line 373
    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    const/16 v7, 0xd80

    .line 378
    .line 379
    const/16 v8, 0x10

    .line 380
    .line 381
    move v5, v1

    .line 382
    move-object v1, v3

    .line 383
    move-object v3, v4

    .line 384
    sget-object v4, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 385
    .line 386
    move/from16 v18, v5

    .line 387
    .line 388
    const/4 v5, 0x0

    .line 389
    invoke-static/range {v1 .. v8}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 390
    .line 391
    .line 392
    add-int/lit8 v1, v18, 0x1

    .line 393
    .line 394
    goto :goto_4

    .line 395
    :cond_4
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 396
    .line 397
    .line 398
    const/4 v1, 0x1

    .line 399
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 400
    .line 401
    .line 402
    const/high16 v1, 0x3f800000    # 1.0f

    .line 403
    .line 404
    invoke-static {v12, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 409
    .line 410
    .line 411
    move-result-object v4

    .line 412
    const/4 v5, 0x6

    .line 413
    invoke-static {v4, v10, v6, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    iget-wide v7, v6, Landroidx/compose/runtime/GapComposer;->T:J

    .line 418
    .line 419
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 420
    .line 421
    .line 422
    move-result v5

    .line 423
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    invoke-static {v6, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 432
    .line 433
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 437
    .line 438
    .line 439
    iget-boolean v8, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 440
    .line 441
    if-eqz v8, :cond_5

    .line 442
    .line 443
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 444
    .line 445
    .line 446
    goto :goto_5

    .line 447
    :cond_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 448
    .line 449
    .line 450
    :goto_5
    invoke-static {v6, v4, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 451
    .line 452
    .line 453
    invoke-static {v6, v7, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 454
    .line 455
    .line 456
    move-object/from16 v4, v23

    .line 457
    .line 458
    invoke-static {v5, v6, v4, v6}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 459
    .line 460
    .line 461
    move-object/from16 v5, v22

    .line 462
    .line 463
    invoke-static {v6, v1, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-static {v1, v3}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    const/16 v7, 0x1b0

    .line 475
    .line 476
    const/16 v8, 0x18

    .line 477
    .line 478
    move v4, v2

    .line 479
    const-string v2, "Messages"

    .line 480
    .line 481
    move v5, v3

    .line 482
    sget-object v3, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->j:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 483
    .line 484
    move v9, v4

    .line 485
    const/4 v4, 0x0

    .line 486
    move v10, v5

    .line 487
    const/4 v5, 0x0

    .line 488
    invoke-static/range {v1 .. v8}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 489
    .line 490
    .line 491
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-static {v1, v10}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    const-string v2, "Gmail"

    .line 500
    .line 501
    sget-object v3, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 502
    .line 503
    invoke-static/range {v1 .. v8}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 504
    .line 505
    .line 506
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    new-instance v2, Loc;

    .line 511
    .line 512
    invoke-direct {v2, v11, v9}, Loc;-><init>(Lcom/google/accompanist/drawablepainter/DrawablePainter;I)V

    .line 513
    .line 514
    .line 515
    const v3, -0x70bb7cff

    .line 516
    .line 517
    .line 518
    invoke-static {v3, v2, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    const/16 v7, 0x61b0

    .line 523
    .line 524
    const/16 v8, 0x8

    .line 525
    .line 526
    const-string v2, "Blip"

    .line 527
    .line 528
    sget-object v5, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->l:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 529
    .line 530
    invoke-static/range {v1 .. v8}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 531
    .line 532
    .line 533
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/foundation/layout/RowScopeInstance;->a()Landroidx/compose/ui/Modifier;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    invoke-static {v1, v10}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    const/16 v7, 0x1b0

    .line 542
    .line 543
    const/16 v8, 0x18

    .line 544
    .line 545
    const-string v2, "Print"

    .line 546
    .line 547
    sget-object v3, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->m:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 548
    .line 549
    const/4 v5, 0x0

    .line 550
    invoke-static/range {v1 .. v8}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 551
    .line 552
    .line 553
    const/4 v1, 0x1

    .line 554
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 558
    .line 559
    .line 560
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 561
    .line 562
    .line 563
    goto :goto_6

    .line 564
    :cond_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 565
    .line 566
    .line 567
    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    if-eqz v1, :cond_7

    .line 572
    .line 573
    new-instance v2, Lz6;

    .line 574
    .line 575
    const/16 v3, 0x10

    .line 576
    .line 577
    invoke-direct {v2, v0, v3}, Lz6;-><init>(II)V

    .line 578
    .line 579
    .line 580
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 581
    .line 582
    :cond_7
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v6, p6

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    move-object/from16 v15, p5

    .line 11
    .line 12
    check-cast v15, Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    const v3, -0x7b7e8930

    .line 15
    .line 16
    .line 17
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    const/4 v3, 0x4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x2

    .line 29
    :goto_0
    or-int/2addr v3, v6

    .line 30
    and-int/lit8 v4, v6, 0x30

    .line 31
    .line 32
    move-object/from16 v7, p1

    .line 33
    .line 34
    if-nez v4, :cond_2

    .line 35
    .line 36
    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    const/16 v4, 0x20

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 v4, 0x10

    .line 46
    .line 47
    :goto_1
    or-int/2addr v3, v4

    .line 48
    :cond_2
    and-int/lit8 v4, p7, 0x8

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    or-int/lit16 v3, v3, 0xc00

    .line 53
    .line 54
    :cond_3
    move-object/from16 v5, p3

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_4
    and-int/lit16 v5, v6, 0xc00

    .line 58
    .line 59
    if-nez v5, :cond_3

    .line 60
    .line 61
    move-object/from16 v5, p3

    .line 62
    .line 63
    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_5

    .line 68
    .line 69
    const/16 v8, 0x800

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    const/16 v8, 0x400

    .line 73
    .line 74
    :goto_2
    or-int/2addr v3, v8

    .line 75
    :goto_3
    and-int/lit8 v8, p7, 0x10

    .line 76
    .line 77
    if-eqz v8, :cond_7

    .line 78
    .line 79
    or-int/lit16 v3, v3, 0x6000

    .line 80
    .line 81
    :cond_6
    move-object/from16 v9, p4

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_7
    and-int/lit16 v9, v6, 0x6000

    .line 85
    .line 86
    if-nez v9, :cond_6

    .line 87
    .line 88
    move-object/from16 v9, p4

    .line 89
    .line 90
    invoke-virtual {v15, v9}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    if-eqz v10, :cond_8

    .line 95
    .line 96
    const/16 v10, 0x4000

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_8
    const/16 v10, 0x2000

    .line 100
    .line 101
    :goto_4
    or-int/2addr v3, v10

    .line 102
    :goto_5
    and-int/lit16 v10, v3, 0x2493

    .line 103
    .line 104
    const/16 v11, 0x2492

    .line 105
    .line 106
    if-eq v10, v11, :cond_9

    .line 107
    .line 108
    const/4 v10, 0x1

    .line 109
    goto :goto_6

    .line 110
    :cond_9
    move v10, v0

    .line 111
    :goto_6
    and-int/lit8 v11, v3, 0x1

    .line 112
    .line 113
    invoke-virtual {v15, v11, v10}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    if-eqz v10, :cond_13

    .line 118
    .line 119
    const/4 v10, 0x0

    .line 120
    if-eqz v4, :cond_a

    .line 121
    .line 122
    move-object v5, v10

    .line 123
    :cond_a
    if-eqz v8, :cond_b

    .line 124
    .line 125
    move-object v4, v10

    .line 126
    goto :goto_7

    .line 127
    :cond_b
    move-object v4, v9

    .line 128
    :goto_7
    const/high16 v8, 0x41000000    # 8.0f

    .line 129
    .line 130
    invoke-static {v8}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    const/16 v9, 0x36

    .line 135
    .line 136
    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 137
    .line 138
    invoke-static {v8, v10, v15, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    iget-wide v9, v15, Landroidx/compose/runtime/GapComposer;->T:J

    .line 143
    .line 144
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-static {v15, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 153
    .line 154
    .line 155
    move-result-object v11

    .line 156
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 157
    .line 158
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 162
    .line 163
    .line 164
    iget-boolean v13, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 165
    .line 166
    sget-object v14, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 167
    .line 168
    if-eqz v13, :cond_c

    .line 169
    .line 170
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 171
    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 175
    .line 176
    .line 177
    :goto_8
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 178
    .line 179
    invoke-static {v15, v8, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 180
    .line 181
    .line 182
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 183
    .line 184
    invoke-static {v15, v10, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 192
    .line 193
    invoke-static {v15, v9, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 197
    .line 198
    .line 199
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 200
    .line 201
    invoke-static {v15, v11, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 202
    .line 203
    .line 204
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 205
    .line 206
    invoke-static {v11}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 207
    .line 208
    .line 209
    move-result-object v12

    .line 210
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 211
    .line 212
    move/from16 v16, v3

    .line 213
    .line 214
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    move-object/from16 p3, v1

    .line 219
    .line 220
    iget-wide v0, v15, Landroidx/compose/runtime/GapComposer;->T:J

    .line 221
    .line 222
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-static {v15, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 235
    .line 236
    .line 237
    iget-boolean v6, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 238
    .line 239
    if-eqz v6, :cond_d

    .line 240
    .line 241
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 242
    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_d
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 246
    .line 247
    .line 248
    :goto_9
    invoke-static {v15, v3, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v15, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 252
    .line 253
    .line 254
    invoke-static {v0, v15, v10, v15}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v15, v12, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 258
    .line 259
    .line 260
    const/high16 v0, 0x3f800000    # 1.0f

    .line 261
    .line 262
    if-nez v4, :cond_e

    .line 263
    .line 264
    const v1, -0x7220e4c8

    .line 265
    .line 266
    .line 267
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 268
    .line 269
    .line 270
    const/4 v1, 0x0

    .line 271
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 272
    .line 273
    .line 274
    move-object/from16 v6, p3

    .line 275
    .line 276
    goto :goto_b

    .line 277
    :cond_e
    const/4 v1, 0x0

    .line 278
    const v3, -0x7220e4c7

    .line 279
    .line 280
    .line 281
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 282
    .line 283
    .line 284
    invoke-static {v11, v0}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    move-object/from16 v6, p3

    .line 289
    .line 290
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    iget-wide v0, v15, Landroidx/compose/runtime/GapComposer;->T:J

    .line 295
    .line 296
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-static {v15, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 309
    .line 310
    .line 311
    iget-boolean v7, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 312
    .line 313
    if-eqz v7, :cond_f

    .line 314
    .line 315
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 316
    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 320
    .line 321
    .line 322
    :goto_a
    invoke-static {v15, v12, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 323
    .line 324
    .line 325
    invoke-static {v15, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 326
    .line 327
    .line 328
    invoke-static {v0, v15, v10, v15}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 329
    .line 330
    .line 331
    invoke-static {v15, v3, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 332
    .line 333
    .line 334
    invoke-interface {v4, v15, v2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    const/4 v0, 0x1

    .line 338
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 339
    .line 340
    .line 341
    const/4 v1, 0x0

    .line 342
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 343
    .line 344
    .line 345
    const/high16 v0, 0x3f800000    # 1.0f

    .line 346
    .line 347
    :goto_b
    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    sget-object v3, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 352
    .line 353
    invoke-static {v0, v3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    const/high16 v7, 0x40000000    # 2.0f

    .line 358
    .line 359
    invoke-static {v0, v7}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    move-object v12, v2

    .line 368
    iget-wide v1, v15, Landroidx/compose/runtime/GapComposer;->T:J

    .line 369
    .line 370
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-static {v15, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 383
    .line 384
    .line 385
    move-object/from16 p3, v4

    .line 386
    .line 387
    iget-boolean v4, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 388
    .line 389
    if-eqz v4, :cond_10

    .line 390
    .line 391
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 392
    .line 393
    .line 394
    goto :goto_c

    .line 395
    :cond_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 396
    .line 397
    .line 398
    :goto_c
    invoke-static {v15, v7, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v15, v2, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 402
    .line 403
    .line 404
    invoke-static {v1, v15, v10, v15}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 405
    .line 406
    .line 407
    invoke-static {v15, v0, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 408
    .line 409
    .line 410
    const/4 v0, 0x6

    .line 411
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    move-object/from16 v1, p2

    .line 416
    .line 417
    invoke-virtual {v1, v15, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    const/4 v0, 0x1

    .line 421
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 422
    .line 423
    .line 424
    if-nez v5, :cond_11

    .line 425
    .line 426
    const v0, -0x721cb5b5

    .line 427
    .line 428
    .line 429
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 430
    .line 431
    .line 432
    const/4 v0, 0x0

    .line 433
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 434
    .line 435
    .line 436
    const/4 v0, 0x1

    .line 437
    goto :goto_e

    .line 438
    :cond_11
    const v0, -0x721cb5b4

    .line 439
    .line 440
    .line 441
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 442
    .line 443
    .line 444
    const v0, 0x3eaa7efa    # 0.333f

    .line 445
    .line 446
    .line 447
    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v0}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-static {v0, v3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->i:Landroidx/compose/ui/BiasAlignment;

    .line 460
    .line 461
    sget-object v3, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 462
    .line 463
    invoke-virtual {v3, v0, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    const/high16 v2, 0x40400000    # 3.0f

    .line 468
    .line 469
    invoke-static {v0, v2}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    const/4 v2, 0x0

    .line 474
    invoke-static {v6, v2}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    iget-wide v6, v15, Landroidx/compose/runtime/GapComposer;->T:J

    .line 479
    .line 480
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-static {v15, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 493
    .line 494
    .line 495
    iget-boolean v6, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 496
    .line 497
    if-eqz v6, :cond_12

    .line 498
    .line 499
    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 500
    .line 501
    .line 502
    goto :goto_d

    .line 503
    :cond_12
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 504
    .line 505
    .line 506
    :goto_d
    invoke-static {v15, v3, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 507
    .line 508
    .line 509
    invoke-static {v15, v4, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 510
    .line 511
    .line 512
    invoke-static {v2, v15, v10, v15}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 513
    .line 514
    .line 515
    invoke-static {v15, v0, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v5, v15, v12}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    const/4 v0, 0x1

    .line 522
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 523
    .line 524
    .line 525
    const/4 v2, 0x0

    .line 526
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 527
    .line 528
    .line 529
    :goto_e
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 530
    .line 531
    .line 532
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 533
    .line 534
    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 539
    .line 540
    iget-object v2, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 541
    .line 542
    const/16 v3, 0xc

    .line 543
    .line 544
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 545
    .line 546
    .line 547
    move-result-wide v20

    .line 548
    const/16 v28, 0x0

    .line 549
    .line 550
    const v29, 0xff7ffd

    .line 551
    .line 552
    .line 553
    const-wide/16 v18, 0x0

    .line 554
    .line 555
    const/16 v22, 0x0

    .line 556
    .line 557
    const-wide/16 v23, 0x0

    .line 558
    .line 559
    const-wide/16 v25, 0x0

    .line 560
    .line 561
    const/16 v27, 0x0

    .line 562
    .line 563
    move-object/from16 v17, v2

    .line 564
    .line 565
    invoke-static/range {v17 .. v29}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 566
    .line 567
    .line 568
    move-result-object v9

    .line 569
    shr-int/lit8 v2, v16, 0x3

    .line 570
    .line 571
    and-int/lit8 v2, v2, 0xe

    .line 572
    .line 573
    const/high16 v3, 0xd80000

    .line 574
    .line 575
    or-int v16, v2, v3

    .line 576
    .line 577
    const/16 v17, 0x13a

    .line 578
    .line 579
    const/4 v8, 0x0

    .line 580
    const/4 v10, 0x0

    .line 581
    const/4 v11, 0x0

    .line 582
    const/4 v12, 0x2

    .line 583
    const/4 v13, 0x2

    .line 584
    const/4 v14, 0x0

    .line 585
    move-object/from16 v7, p1

    .line 586
    .line 587
    invoke-static/range {v7 .. v17}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 591
    .line 592
    .line 593
    move-object v4, v5

    .line 594
    move-object/from16 v5, p3

    .line 595
    .line 596
    goto :goto_f

    .line 597
    :cond_13
    move-object/from16 v1, p2

    .line 598
    .line 599
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 600
    .line 601
    .line 602
    move-object v4, v5

    .line 603
    move-object v5, v9

    .line 604
    :goto_f
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 605
    .line 606
    .line 607
    move-result-object v8

    .line 608
    if-eqz v8, :cond_14

    .line 609
    .line 610
    new-instance v0, Lf6;

    .line 611
    .line 612
    move-object/from16 v2, p1

    .line 613
    .line 614
    move/from16 v6, p6

    .line 615
    .line 616
    move/from16 v7, p7

    .line 617
    .line 618
    move-object v3, v1

    .line 619
    move-object/from16 v1, p0

    .line 620
    .line 621
    invoke-direct/range {v0 .. v7}, Lf6;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;II)V

    .line 622
    .line 623
    .line 624
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 625
    .line 626
    :cond_14
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, -0x58b826e8

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    or-int/lit8 p1, p2, 0x6

    .line 11
    .line 12
    and-int/lit8 v0, p1, 0x3

    .line 13
    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eq v0, v7, :cond_0

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v8

    .line 22
    :goto_0
    and-int/2addr p1, v1

    .line 23
    invoke-virtual {v4, p1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-static {v4}, Landroidx/compose/animation/core/InfiniteTransitionKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/InfiniteTransition;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/16 p0, 0x3e8

    .line 34
    .line 35
    sget-object p1, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 36
    .line 37
    invoke-static {p0, v8, p1, v7}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    sget-object p1, Landroidx/compose/animation/core/RepeatMode;->j:Landroidx/compose/animation/core/RepeatMode;

    .line 42
    .line 43
    const/4 p1, 0x4

    .line 44
    invoke-static {p0, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->a(Landroidx/compose/animation/core/DurationBasedAnimationSpec;I)Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const/16 v5, 0x71b8

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    const v1, 0x3c23d70a    # 0.01f

    .line 52
    .line 53
    .line 54
    const v2, 0x3e19999a    # 0.15f

    .line 55
    .line 56
    .line 57
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/InfiniteTransitionKt;->a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    .line 63
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 64
    .line 65
    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const/high16 v1, 0x40200000    # 2.5f

    .line 70
    .line 71
    invoke-static {p1, v1}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget-object v1, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 76
    .line 77
    invoke-static {p1, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p0}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->getValue()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-static {p1, p0}, Landroidx/compose/ui/draw/AlphaKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    sget-object p1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 96
    .line 97
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 102
    .line 103
    iget-wide v1, p1, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 104
    .line 105
    sget-object p1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 106
    .line 107
    invoke-static {p0, v1, v2, p1}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-static {p0, v4, v8}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 112
    .line 113
    .line 114
    move-object p0, v0

    .line 115
    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 117
    .line 118
    .line 119
    :goto_1
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    if-eqz p1, :cond_2

    .line 124
    .line 125
    new-instance v0, Lr4;

    .line 126
    .line 127
    invoke-direct {v0, p0, p2, v7}, Lr4;-><init>(Landroidx/compose/ui/Modifier;II)V

    .line 128
    .line 129
    .line 130
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 131
    .line 132
    :cond_2
    return-void
.end method

.method public static final d(ILandroidx/compose/runtime/Composer;)V
    .locals 26

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v2, -0x683979c9

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v3, v2

    .line 19
    :goto_0
    and-int/lit8 v4, v0, 0x1

    .line 20
    .line 21
    invoke-virtual {v1, v4, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const v3, -0x3fc21f49

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 34
    .line 35
    invoke-direct {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v4, "Tap "

    .line 39
    .line 40
    iget-object v5, v3, Landroidx/compose/ui/text/AnnotatedString$Builder;->j:Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v4, "[shareIcon]"

    .line 46
    .line 47
    const-string v5, "shareIcon"

    .line 48
    .line 49
    invoke-static {v3, v5, v4}, Landroidx/compose/foundation/text/InlineTextContentKt;->a(Landroidx/compose/ui/text/AnnotatedString$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const v4, -0x3fc21125

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 59
    .line 60
    invoke-direct {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x6

    .line 64
    const-string v7, " Share to send"

    .line 65
    .line 66
    const-string v8, "Share"

    .line 67
    .line 68
    invoke-static {v7, v8, v2, v2, v6}, Lkotlin/text/StringsKt;->r(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    add-int/lit8 v8, v6, 0x5

    .line 73
    .line 74
    iget-object v9, v4, Landroidx/compose/ui/text/AnnotatedString$Builder;->j:Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    new-instance v10, Landroidx/compose/ui/text/TextStyle;

    .line 80
    .line 81
    sget-object v7, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 82
    .line 83
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    check-cast v7, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 88
    .line 89
    iget-wide v11, v7, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 90
    .line 91
    const/16 v22, 0x0

    .line 92
    .line 93
    const v23, 0xfffffe

    .line 94
    .line 95
    .line 96
    const-wide/16 v13, 0x0

    .line 97
    .line 98
    const/4 v15, 0x0

    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    const-wide/16 v17, 0x0

    .line 102
    .line 103
    const/16 v19, 0x0

    .line 104
    .line 105
    const-wide/16 v20, 0x0

    .line 106
    .line 107
    invoke-direct/range {v10 .. v23}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JIJII)V

    .line 108
    .line 109
    .line 110
    iget-object v7, v10, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 111
    .line 112
    invoke-virtual {v4, v7, v6, v8}, Landroidx/compose/ui/text/AnnotatedString$Builder;->a(Landroidx/compose/ui/text/SpanStyle;II)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3, v4}, Landroidx/compose/ui/text/AnnotatedString$Builder;->b(Landroidx/compose/ui/text/AnnotatedString;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Landroidx/compose/ui/text/AnnotatedString$Builder;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 130
    .line 131
    .line 132
    new-instance v4, Lkotlin/Pair;

    .line 133
    .line 134
    new-instance v6, Landroidx/compose/foundation/text/InlineTextContent;

    .line 135
    .line 136
    new-instance v7, Landroidx/compose/ui/text/Placeholder;

    .line 137
    .line 138
    const-wide v8, 0x200000000L

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    const/high16 v10, 0x3f800000    # 1.0f

    .line 144
    .line 145
    invoke-static {v8, v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->e(JF)J

    .line 146
    .line 147
    .line 148
    move-result-wide v11

    .line 149
    invoke-static {v8, v9, v10}, Landroidx/compose/ui/unit/TextUnitKt;->e(JF)J

    .line 150
    .line 151
    .line 152
    move-result-wide v8

    .line 153
    move-wide/from16 v24, v11

    .line 154
    .line 155
    move-wide v11, v8

    .line 156
    move-wide/from16 v9, v24

    .line 157
    .line 158
    const/4 v8, 0x7

    .line 159
    invoke-direct/range {v7 .. v12}, Landroidx/compose/ui/text/Placeholder;-><init>(IJJ)V

    .line 160
    .line 161
    .line 162
    sget-object v8, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingShareInstructionsStepKt;->e:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 163
    .line 164
    invoke-direct {v6, v7, v8}, Landroidx/compose/foundation/text/InlineTextContent;-><init>(Landroidx/compose/ui/text/Placeholder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {v4, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-static {v4}, Lkotlin/collections/MapsKt;->e(Lkotlin/Pair;)Ljava/util/Map;

    .line 171
    .line 172
    .line 173
    move-result-object v4

    .line 174
    invoke-static {v3, v4, v1, v2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->f(Landroidx/compose/ui/text/AnnotatedString;Ljava/util/Map;Landroidx/compose/runtime/Composer;I)V

    .line 175
    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 179
    .line 180
    .line 181
    :goto_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    if-eqz v1, :cond_2

    .line 186
    .line 187
    new-instance v2, Lz6;

    .line 188
    .line 189
    const/16 v3, 0x11

    .line 190
    .line 191
    invoke-direct {v2, v0, v3}, Lz6;-><init>(II)V

    .line 192
    .line 193
    .line 194
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 195
    .line 196
    :cond_2
    return-void
.end method
