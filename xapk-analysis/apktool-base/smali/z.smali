.class public final synthetic Lz;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    iput p1, p0, Lz;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lz;->l:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p3, p0, Lz;->k:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lz;->j:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    const/16 v6, 0x10

    .line 12
    .line 13
    iget-boolean v7, v0, Lz;->k:Z

    .line 14
    .line 15
    iget-object v0, v0, Lz;->l:Ljava/lang/Object;

    .line 16
    .line 17
    packed-switch v1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    check-cast v0, Lnet/blip/libblip/frontend/Transfer;

    .line 21
    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    check-cast v1, Landroidx/compose/animation/AnimatedVisibilityScope;

    .line 25
    .line 26
    move-object/from16 v8, p2

    .line 27
    .line 28
    check-cast v8, Landroidx/compose/runtime/Composer;

    .line 29
    .line 30
    move-object/from16 v9, p3

    .line 31
    .line 32
    check-cast v9, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v9

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    and-int/lit8 v1, v9, 0x11

    .line 42
    .line 43
    if-eq v1, v6, :cond_0

    .line 44
    .line 45
    move v5, v4

    .line 46
    :cond_0
    and-int/lit8 v1, v9, 0x1

    .line 47
    .line 48
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 49
    .line 50
    invoke-virtual {v8, v1, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    new-instance v9, Lkotlin/Pair;

    .line 57
    .line 58
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {v9, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-ne v0, v2, :cond_1

    .line 70
    .line 71
    new-instance v0, Lqg;

    .line 72
    .line 73
    invoke-direct {v0, v6}, Lqg;-><init>(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    move-object v11, v0

    .line 80
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 81
    .line 82
    const v17, 0x186180

    .line 83
    .line 84
    .line 85
    const/16 v18, 0x2a

    .line 86
    .line 87
    const/4 v10, 0x0

    .line 88
    const/4 v12, 0x0

    .line 89
    const-string v13, ""

    .line 90
    .line 91
    const/4 v14, 0x0

    .line 92
    sget-object v15, Lnet/blip/android/ui/transfer/ComposableSingletons$TransferHeaderKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 93
    .line 94
    move-object/from16 v16, v8

    .line 95
    .line 96
    invoke-static/range {v9 .. v18}, Landroidx/compose/animation/AnimatedContentKt;->b(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move-object/from16 v16, v8

    .line 101
    .line 102
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 103
    .line 104
    .line 105
    :goto_0
    return-object v3

    .line 106
    :pswitch_0
    check-cast v0, Ljava/lang/String;

    .line 107
    .line 108
    move-object/from16 v1, p1

    .line 109
    .line 110
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 111
    .line 112
    move-object/from16 v2, p2

    .line 113
    .line 114
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 115
    .line 116
    move-object/from16 v8, p3

    .line 117
    .line 118
    check-cast v8, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    and-int/lit8 v1, v8, 0x11

    .line 128
    .line 129
    if-eq v1, v6, :cond_3

    .line 130
    .line 131
    move v5, v4

    .line 132
    :cond_3
    and-int/lit8 v1, v8, 0x1

    .line 133
    .line 134
    move-object v12, v2

    .line 135
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 136
    .line 137
    invoke-virtual {v12, v1, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_5

    .line 142
    .line 143
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 144
    .line 145
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 150
    .line 151
    iget-object v13, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 152
    .line 153
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 154
    .line 155
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 160
    .line 161
    iget-wide v1, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->h:J

    .line 162
    .line 163
    if-eqz v7, :cond_4

    .line 164
    .line 165
    const/high16 v4, 0x3f800000    # 1.0f

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_4
    const v4, 0x3ea8f5c3    # 0.33f

    .line 169
    .line 170
    .line 171
    :goto_1
    invoke-static {v1, v2, v4}, Lnet/blip/shared/ColorKt;->a(JF)J

    .line 172
    .line 173
    .line 174
    move-result-wide v14

    .line 175
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 176
    .line 177
    .line 178
    move-result-wide v16

    .line 179
    sget-object v18, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 180
    .line 181
    const/16 v24, 0x0

    .line 182
    .line 183
    const v25, 0xfffff8

    .line 184
    .line 185
    .line 186
    const-wide/16 v19, 0x0

    .line 187
    .line 188
    const-wide/16 v21, 0x0

    .line 189
    .line 190
    const/16 v23, 0x0

    .line 191
    .line 192
    invoke-static/range {v13 .. v25}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    const/4 v13, 0x0

    .line 197
    const/16 v14, 0x1fa

    .line 198
    .line 199
    const/4 v5, 0x0

    .line 200
    const/4 v7, 0x0

    .line 201
    const/4 v8, 0x0

    .line 202
    const/4 v9, 0x0

    .line 203
    const/4 v10, 0x0

    .line 204
    const/4 v11, 0x0

    .line 205
    move-object v4, v0

    .line 206
    invoke-static/range {v4 .. v14}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_5
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 211
    .line 212
    .line 213
    :goto_2
    return-object v3

    .line 214
    :pswitch_1
    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 215
    .line 216
    move-object/from16 v1, p1

    .line 217
    .line 218
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 219
    .line 220
    move-object/from16 v3, p2

    .line 221
    .line 222
    check-cast v3, Landroidx/compose/runtime/Composer;

    .line 223
    .line 224
    move-object/from16 v4, p3

    .line 225
    .line 226
    check-cast v4, Ljava/lang/Integer;

    .line 227
    .line 228
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 232
    .line 233
    const v4, -0xbba9706

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 237
    .line 238
    .line 239
    sget-object v4, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 240
    .line 241
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    check-cast v4, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    .line 246
    .line 247
    iget-wide v8, v4, Landroidx/compose/foundation/text/selection/TextSelectionColors;->a:J

    .line 248
    .line 249
    invoke-virtual {v3, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v6

    .line 257
    or-int/2addr v4, v6

    .line 258
    invoke-virtual {v3, v7}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    or-int/2addr v4, v6

    .line 263
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    if-nez v4, :cond_6

    .line 268
    .line 269
    if-ne v6, v2, :cond_7

    .line 270
    .line 271
    :cond_6
    new-instance v6, Ld2;

    .line 272
    .line 273
    invoke-direct {v6, v8, v9, v0, v7}, Ld2;-><init>(JLkotlin/jvm/functions/Function0;Z)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    :cond_7
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 280
    .line 281
    invoke-static {v1, v6}, Landroidx/compose/ui/draw/DrawModifierKt;->c(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v3, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 286
    .line 287
    .line 288
    return-object v0

    .line 289
    :pswitch_2
    check-cast v0, Lkotlin/Pair;

    .line 290
    .line 291
    move-object/from16 v1, p1

    .line 292
    .line 293
    check-cast v1, Landroidx/compose/foundation/layout/RowScope;

    .line 294
    .line 295
    move-object/from16 v2, p2

    .line 296
    .line 297
    check-cast v2, Landroidx/compose/runtime/Composer;

    .line 298
    .line 299
    move-object/from16 v8, p3

    .line 300
    .line 301
    check-cast v8, Ljava/lang/Integer;

    .line 302
    .line 303
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 304
    .line 305
    .line 306
    move-result v8

    .line 307
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    and-int/lit8 v1, v8, 0x11

    .line 311
    .line 312
    if-eq v1, v6, :cond_8

    .line 313
    .line 314
    move v1, v4

    .line 315
    goto :goto_3

    .line 316
    :cond_8
    move v1, v5

    .line 317
    :goto_3
    and-int/2addr v4, v8

    .line 318
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 319
    .line 320
    invoke-virtual {v2, v4, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 321
    .line 322
    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_a

    .line 325
    .line 326
    iget-object v0, v0, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 327
    .line 328
    move-object v8, v0

    .line 329
    check-cast v8, Ljava/lang/String;

    .line 330
    .line 331
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 332
    .line 333
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 338
    .line 339
    iget-object v9, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 340
    .line 341
    if-eqz v7, :cond_9

    .line 342
    .line 343
    const v0, 0x846c98

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 347
    .line 348
    .line 349
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 350
    .line 351
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 356
    .line 357
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->g:J

    .line 358
    .line 359
    :goto_4
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 360
    .line 361
    .line 362
    move-wide v10, v0

    .line 363
    goto :goto_5

    .line 364
    :cond_9
    const v0, 0x847294

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 368
    .line 369
    .line 370
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 371
    .line 372
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 377
    .line 378
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 379
    .line 380
    goto :goto_4

    .line 381
    :goto_5
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 382
    .line 383
    .line 384
    move-result-wide v12

    .line 385
    sget-object v14, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 386
    .line 387
    const/16 v20, 0x0

    .line 388
    .line 389
    const v21, 0xfffff8

    .line 390
    .line 391
    .line 392
    const-wide/16 v15, 0x0

    .line 393
    .line 394
    const-wide/16 v17, 0x0

    .line 395
    .line 396
    const/16 v19, 0x0

    .line 397
    .line 398
    invoke-static/range {v9 .. v21}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 399
    .line 400
    .line 401
    move-result-object v10

    .line 402
    const/16 v17, 0x0

    .line 403
    .line 404
    const/16 v18, 0x1fa

    .line 405
    .line 406
    const/4 v9, 0x0

    .line 407
    const/4 v11, 0x0

    .line 408
    const/4 v12, 0x0

    .line 409
    const/4 v13, 0x0

    .line 410
    const/4 v14, 0x0

    .line 411
    const/4 v15, 0x0

    .line 412
    move-object/from16 v16, v2

    .line 413
    .line 414
    invoke-static/range {v8 .. v18}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 415
    .line 416
    .line 417
    goto :goto_6

    .line 418
    :cond_a
    move-object/from16 v16, v2

    .line 419
    .line 420
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 421
    .line 422
    .line 423
    :goto_6
    return-object v3

    .line 424
    nop

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
