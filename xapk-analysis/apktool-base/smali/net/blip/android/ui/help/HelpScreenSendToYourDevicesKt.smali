.class public abstract Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    .line 1
    move-object/from16 v8, p3

    .line 2
    .line 3
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v0, -0x276a7a51

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
    and-int/lit16 v1, v0, 0x93

    .line 14
    .line 15
    const/16 v2, 0x92

    .line 16
    .line 17
    const/4 v11, 0x0

    .line 18
    const/4 v12, 0x1

    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    move v1, v12

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v11

    .line 24
    :goto_0
    and-int/2addr v0, v12

    .line 25
    invoke-virtual {v8, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    const/high16 v0, 0x41a00000    # 20.0f

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 38
    .line 39
    const/16 v2, 0x36

    .line 40
    .line 41
    invoke-static {v0, v1, v8, v2}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-wide v1, v8, Landroidx/compose/runtime/GapComposer;->T:J

    .line 46
    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 56
    .line 57
    invoke-static {v8, v13}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 67
    .line 68
    .line 69
    iget-boolean v4, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 70
    .line 71
    sget-object v14, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 72
    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 80
    .line 81
    .line 82
    :goto_1
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 83
    .line 84
    invoke-static {v8, v0, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 88
    .line 89
    invoke-static {v8, v2, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 97
    .line 98
    invoke-static {v8, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 102
    .line 103
    .line 104
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 105
    .line 106
    invoke-static {v8, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 107
    .line 108
    .line 109
    const/high16 v3, 0x40000000    # 2.0f

    .line 110
    .line 111
    invoke-static {v13, v3, v12}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    sget-object v4, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->a:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 116
    .line 117
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    const/high16 v4, 0x42200000    # 40.0f

    .line 122
    .line 123
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    sget-object v4, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 128
    .line 129
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 134
    .line 135
    iget-wide v5, v5, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 136
    .line 137
    sget-object v7, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 138
    .line 139
    invoke-static {v3, v5, v6, v7}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 144
    .line 145
    invoke-static {v5, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 146
    .line 147
    .line 148
    move-result-object v5

    .line 149
    iget-wide v6, v8, Landroidx/compose/runtime/GapComposer;->T:J

    .line 150
    .line 151
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-static {v8, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 164
    .line 165
    .line 166
    iget-boolean v9, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 167
    .line 168
    if-eqz v9, :cond_2

    .line 169
    .line 170
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_2
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 175
    .line 176
    .line 177
    :goto_2
    invoke-static {v8, v5, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v8, v7, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v6, v8, v2, v8}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v8, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 187
    .line 188
    .line 189
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 190
    .line 191
    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 196
    .line 197
    iget-object v3, v3, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 198
    .line 199
    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 204
    .line 205
    iget-wide v4, v4, Lnet/blip/android/ui/androidtheme/AndroidColors;->h:J

    .line 206
    .line 207
    const/16 v6, 0x12

    .line 208
    .line 209
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 210
    .line 211
    .line 212
    move-result-wide v19

    .line 213
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->s:Landroidx/compose/ui/text/font/FontWeight;

    .line 214
    .line 215
    const/16 v27, 0x0

    .line 216
    .line 217
    const v28, 0xfffff8

    .line 218
    .line 219
    .line 220
    const-wide/16 v22, 0x0

    .line 221
    .line 222
    const-wide/16 v24, 0x0

    .line 223
    .line 224
    const/16 v26, 0x0

    .line 225
    .line 226
    move-object/from16 v16, v3

    .line 227
    .line 228
    move-wide/from16 v17, v4

    .line 229
    .line 230
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    const/4 v9, 0x6

    .line 235
    const/16 v10, 0x1fa

    .line 236
    .line 237
    move-object v4, v1

    .line 238
    const/4 v1, 0x0

    .line 239
    move-object v5, v2

    .line 240
    move-object v2, v3

    .line 241
    const/4 v3, 0x0

    .line 242
    move-object v6, v4

    .line 243
    const/4 v4, 0x0

    .line 244
    move-object v7, v5

    .line 245
    const/4 v5, 0x0

    .line 246
    move-object/from16 v16, v6

    .line 247
    .line 248
    const/4 v6, 0x0

    .line 249
    move-object/from16 v17, v7

    .line 250
    .line 251
    const/4 v7, 0x0

    .line 252
    move-object/from16 v29, v0

    .line 253
    .line 254
    move-object/from16 v31, v16

    .line 255
    .line 256
    move-object/from16 v30, v17

    .line 257
    .line 258
    move-object/from16 v0, p1

    .line 259
    .line 260
    invoke-static/range {v0 .. v10}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 264
    .line 265
    .line 266
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 267
    .line 268
    invoke-static {v0, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iget-wide v1, v8, Landroidx/compose/runtime/GapComposer;->T:J

    .line 273
    .line 274
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-static {v8, v13}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 287
    .line 288
    .line 289
    iget-boolean v4, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 290
    .line 291
    if-eqz v4, :cond_3

    .line 292
    .line 293
    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 294
    .line 295
    .line 296
    goto :goto_3

    .line 297
    :cond_3
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 298
    .line 299
    .line 300
    :goto_3
    invoke-static {v8, v0, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 301
    .line 302
    .line 303
    move-object/from16 v0, v29

    .line 304
    .line 305
    invoke-static {v8, v2, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 306
    .line 307
    .line 308
    move-object/from16 v5, v30

    .line 309
    .line 310
    invoke-static {v1, v8, v5, v8}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 311
    .line 312
    .line 313
    move-object/from16 v4, v31

    .line 314
    .line 315
    invoke-static {v8, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 316
    .line 317
    .line 318
    const/4 v0, 0x6

    .line 319
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    move-object/from16 v1, p2

    .line 324
    .line 325
    invoke-virtual {v1, v8, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 332
    .line 333
    .line 334
    move-object/from16 v17, v13

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_4
    move-object/from16 v1, p2

    .line 338
    .line 339
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 340
    .line 341
    .line 342
    move-object/from16 v17, p0

    .line 343
    .line 344
    :goto_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    if-eqz v0, :cond_5

    .line 349
    .line 350
    new-instance v16, Lu;

    .line 351
    .line 352
    const/16 v21, 0x9

    .line 353
    .line 354
    move-object/from16 v18, p1

    .line 355
    .line 356
    move/from16 v20, p4

    .line 357
    .line 358
    move-object/from16 v19, v1

    .line 359
    .line 360
    invoke-direct/range {v16 .. v21}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 361
    .line 362
    .line 363
    move-object/from16 v1, v16

    .line 364
    .line 365
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 366
    .line 367
    :cond_5
    return-void
.end method

.method public static final b(ILandroidx/compose/runtime/Composer;)V
    .locals 7

    .line 1
    move-object v4, p1

    .line 2
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p1, -0x36f7dd92

    .line 5
    .line 6
    .line 7
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    move v0, p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    and-int/lit8 v1, p0, 0x1

    .line 17
    .line 18
    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    sget-object v0, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 25
    .line 26
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 31
    .line 32
    sget-object v1, Landroidx/compose/ui/platform/CompositionLocalsKt;->f:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 33
    .line 34
    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/compose/ui/platform/Clipboard;

    .line 39
    .line 40
    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 41
    .line 42
    invoke-virtual {v4, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/content/Context;

    .line 47
    .line 48
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 58
    .line 59
    if-ne v5, v6, :cond_1

    .line 60
    .line 61
    invoke-static {v4}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 69
    .line 70
    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 71
    .line 72
    new-instance v5, Lg3;

    .line 73
    .line 74
    const/4 v6, 0x2

    .line 75
    invoke-direct {v5, v0, v6}, Lg3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 76
    .line 77
    .line 78
    const v0, 0x2d18f68e

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v5, Ld9;

    .line 86
    .line 87
    invoke-direct {v5, v3, v1, v2, p1}, Ld9;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/platform/Clipboard;Landroid/content/Context;I)V

    .line 88
    .line 89
    .line 90
    const p1, 0x6ffd95ad

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const/16 v5, 0x1b0

    .line 98
    .line 99
    const/4 v6, 0x1

    .line 100
    move-object v2, v0

    .line 101
    const-wide/16 v0, 0x0

    .line 102
    .line 103
    invoke-static/range {v0 .. v6}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->b(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 108
    .line 109
    .line 110
    :goto_1
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    new-instance v0, Lz6;

    .line 117
    .line 118
    const/4 v1, 0x6

    .line 119
    invoke-direct {v0, p0, v1}, Lz6;-><init>(II)V

    .line 120
    .line 121
    .line 122
    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 123
    .line 124
    :cond_3
    return-void
.end method
