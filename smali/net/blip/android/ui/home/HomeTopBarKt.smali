.class public abstract Lnet/blip/android/ui/home/HomeTopBarKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ILandroidx/compose/runtime/Composer;)V
    .locals 29

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v1, -0xdcd45b

    .line 8
    .line 9
    .line 10
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    const/4 v12, 0x1

    .line 14
    const/4 v11, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    move v1, v12

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v11

    .line 20
    :goto_0
    and-int/lit8 v2, v0, 0x1

    .line 21
    .line 22
    invoke-virtual {v8, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    const/high16 v14, 0x41200000    # 10.0f

    .line 29
    .line 30
    invoke-static {v14}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const/16 v2, 0x36

    .line 35
    .line 36
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 37
    .line 38
    invoke-static {v1, v3, v8, v2}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-wide v2, v8, Landroidx/compose/runtime/GapComposer;->T:J

    .line 43
    .line 44
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 53
    .line 54
    invoke-static {v8, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 64
    .line 65
    .line 66
    iget-boolean v6, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 67
    .line 68
    sget-object v7, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 69
    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 77
    .line 78
    .line 79
    :goto_1
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 80
    .line 81
    invoke-static {v8, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 85
    .line 86
    invoke-static {v8, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 94
    .line 95
    invoke-static {v8, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 99
    .line 100
    .line 101
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 102
    .line 103
    invoke-static {v8, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 104
    .line 105
    .line 106
    new-instance v13, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;

    .line 107
    .line 108
    const/16 v15, 0x78

    .line 109
    .line 110
    move/from16 v16, v14

    .line 111
    .line 112
    move/from16 v17, v15

    .line 113
    .line 114
    move/from16 v18, v14

    .line 115
    .line 116
    move/from16 v19, v15

    .line 117
    .line 118
    move/from16 v20, v14

    .line 119
    .line 120
    move/from16 v21, v15

    .line 121
    .line 122
    invoke-direct/range {v13 .. v21}, Lracra/compose/smooth_corner_rect_library/AbsoluteSmoothCornerShape;-><init>(FIFIFIFI)V

    .line 123
    .line 124
    .line 125
    invoke-static {v4, v13}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    const/high16 v9, 0x42080000    # 34.0f

    .line 130
    .line 131
    invoke-static {v5, v9, v9}, Landroidx/compose/foundation/layout/SizeKt;->l(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    sget-object v13, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 136
    .line 137
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    check-cast v9, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 142
    .line 143
    iget-wide v9, v9, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 144
    .line 145
    sget-object v14, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 146
    .line 147
    invoke-static {v5, v9, v10, v14}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 152
    .line 153
    invoke-static {v9, v11}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    iget-wide v14, v8, Landroidx/compose/runtime/GapComposer;->T:J

    .line 158
    .line 159
    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    .line 160
    .line 161
    .line 162
    move-result v10

    .line 163
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 164
    .line 165
    .line 166
    move-result-object v14

    .line 167
    invoke-static {v8, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 172
    .line 173
    .line 174
    iget-boolean v15, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 175
    .line 176
    if-eqz v15, :cond_2

    .line 177
    .line 178
    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 179
    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_2
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 183
    .line 184
    .line 185
    :goto_2
    invoke-static {v8, v9, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v8, v14, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 189
    .line 190
    .line 191
    invoke-static {v10, v8, v3, v8}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 192
    .line 193
    .line 194
    invoke-static {v8, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 195
    .line 196
    .line 197
    const/high16 v1, 0x41a00000    # 20.0f

    .line 198
    .line 199
    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    const v1, 0x7f0800f2

    .line 204
    .line 205
    .line 206
    invoke-static {v1, v8}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    sget-wide v14, Landroidx/compose/ui/graphics/Color;->d:J

    .line 211
    .line 212
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 213
    .line 214
    .line 215
    move-result-object v7

    .line 216
    const v9, 0x1801b8

    .line 217
    .line 218
    .line 219
    const/16 v10, 0x38

    .line 220
    .line 221
    const-string v2, "logo"

    .line 222
    .line 223
    const/4 v4, 0x0

    .line 224
    const/4 v5, 0x0

    .line 225
    const/4 v6, 0x0

    .line 226
    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 230
    .line 231
    .line 232
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 233
    .line 234
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 239
    .line 240
    iget-object v1, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 241
    .line 242
    invoke-static {v8}, Lnet/blip/shared/LightDarkThemeKt;->a(Landroidx/compose/runtime/Composer;)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_3

    .line 247
    .line 248
    const v2, 0x5a6c5ee7

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 259
    .line 260
    iget-wide v14, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 261
    .line 262
    :goto_3
    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 263
    .line 264
    .line 265
    move-wide/from16 v17, v14

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_3
    const v2, 0x5a6c6126

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :goto_4
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 276
    .line 277
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 282
    .line 283
    const/high16 v3, 0x41c00000    # 24.0f

    .line 284
    .line 285
    invoke-interface {v2, v3}, Landroidx/compose/ui/unit/FontScaling;->x(F)J

    .line 286
    .line 287
    .line 288
    move-result-wide v19

    .line 289
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->u:Landroidx/compose/ui/text/font/FontWeight;

    .line 290
    .line 291
    const/16 v27, 0x0

    .line 292
    .line 293
    const v28, 0xfffff8

    .line 294
    .line 295
    .line 296
    const-wide/16 v22, 0x0

    .line 297
    .line 298
    const-wide/16 v24, 0x0

    .line 299
    .line 300
    const/16 v26, 0x0

    .line 301
    .line 302
    move-object/from16 v16, v1

    .line 303
    .line 304
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    const/4 v10, 0x6

    .line 309
    const/16 v11, 0x1fa

    .line 310
    .line 311
    const-string v1, "Blip"

    .line 312
    .line 313
    const/4 v2, 0x0

    .line 314
    const/4 v4, 0x0

    .line 315
    const/4 v5, 0x0

    .line 316
    const/4 v6, 0x0

    .line 317
    const/4 v7, 0x0

    .line 318
    move-object v9, v8

    .line 319
    const/4 v8, 0x0

    .line 320
    invoke-static/range {v1 .. v11}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 321
    .line 322
    .line 323
    move-object v8, v9

    .line 324
    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :cond_4
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 329
    .line 330
    .line 331
    :goto_5
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    if-eqz v1, :cond_5

    .line 336
    .line 337
    new-instance v2, Lz6;

    .line 338
    .line 339
    const/4 v3, 0x7

    .line 340
    invoke-direct {v2, v0, v3}, Lz6;-><init>(II)V

    .line 341
    .line 342
    .line 343
    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 344
    .line 345
    :cond_5
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    move-object/from16 v9, p5

    .line 6
    .line 7
    move/from16 v10, p6

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-object/from16 v6, p11

    .line 31
    .line 32
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 33
    .line 34
    const v1, 0x717e00c3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    .line 40
    move-object/from16 v1, p0

    .line 41
    .line 42
    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, 0x4

    .line 47
    const/4 v4, 0x2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    move v2, v3

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move v2, v4

    .line 53
    :goto_0
    or-int v2, p12, v2

    .line 54
    .line 55
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_1

    .line 60
    .line 61
    const/16 v5, 0x20

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/16 v5, 0x10

    .line 65
    .line 66
    :goto_1
    or-int/2addr v2, v5

    .line 67
    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_2

    .line 72
    .line 73
    const/16 v5, 0x4000

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    const/16 v5, 0x2000

    .line 77
    .line 78
    :goto_2
    or-int/2addr v2, v5

    .line 79
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_3

    .line 84
    .line 85
    const/high16 v5, 0x20000

    .line 86
    .line 87
    goto :goto_3

    .line 88
    :cond_3
    const/high16 v5, 0x10000

    .line 89
    .line 90
    :goto_3
    or-int/2addr v2, v5

    .line 91
    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_4

    .line 96
    .line 97
    const/high16 v5, 0x100000

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_4
    const/high16 v5, 0x80000

    .line 101
    .line 102
    :goto_4
    or-int/2addr v2, v5

    .line 103
    move/from16 v14, p7

    .line 104
    .line 105
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-eqz v5, :cond_5

    .line 110
    .line 111
    const/high16 v5, 0x800000

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_5
    const/high16 v5, 0x400000

    .line 115
    .line 116
    :goto_5
    or-int/2addr v2, v5

    .line 117
    move-object/from16 v15, p9

    .line 118
    .line 119
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_6

    .line 124
    .line 125
    const/high16 v5, 0x20000000

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_6
    const/high16 v5, 0x10000000

    .line 129
    .line 130
    :goto_6
    or-int/2addr v2, v5

    .line 131
    move-object/from16 v11, p10

    .line 132
    .line 133
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_7

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_7
    move v3, v4

    .line 141
    :goto_7
    const v5, 0x12492493

    .line 142
    .line 143
    .line 144
    and-int/2addr v5, v2

    .line 145
    const v7, 0x12492492

    .line 146
    .line 147
    .line 148
    const/4 v12, 0x0

    .line 149
    if-ne v5, v7, :cond_9

    .line 150
    .line 151
    and-int/lit8 v3, v3, 0x3

    .line 152
    .line 153
    if-eq v3, v4, :cond_8

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_8
    move v3, v12

    .line 157
    goto :goto_9

    .line 158
    :cond_9
    :goto_8
    const/4 v3, 0x1

    .line 159
    :goto_9
    and-int/lit8 v5, v2, 0x1

    .line 160
    .line 161
    invoke-virtual {v6, v5, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    if-eqz v3, :cond_13

    .line 166
    .line 167
    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 168
    .line 169
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    check-cast v3, Landroidx/compose/ui/unit/Density;

    .line 174
    .line 175
    invoke-interface {v3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    const/high16 v5, 0x42300000    # 44.0f

    .line 180
    .line 181
    mul-float/2addr v3, v5

    .line 182
    invoke-static {v3}, Lkotlin/math/MathKt;->b(F)I

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    invoke-static {v1}, Landroidx/compose/ui/draw/ClipKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 191
    .line 192
    invoke-static {v7, v12}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 193
    .line 194
    .line 195
    move-result-object v7

    .line 196
    iget-wide v13, v6, Landroidx/compose/runtime/GapComposer;->T:J

    .line 197
    .line 198
    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    invoke-static {v6, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 211
    .line 212
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 216
    .line 217
    .line 218
    iget-boolean v14, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 219
    .line 220
    if-eqz v14, :cond_a

    .line 221
    .line 222
    sget-object v14, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 223
    .line 224
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 225
    .line 226
    .line 227
    goto :goto_a

    .line 228
    :cond_a
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 229
    .line 230
    .line 231
    :goto_a
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 232
    .line 233
    invoke-static {v6, v7, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 234
    .line 235
    .line 236
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 237
    .line 238
    invoke-static {v6, v13, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 246
    .line 247
    invoke-static {v6, v7, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 251
    .line 252
    .line 253
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 254
    .line 255
    invoke-static {v6, v5, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 256
    .line 257
    .line 258
    xor-int/lit8 v5, v0, 0x1

    .line 259
    .line 260
    invoke-static {}, Lnet/blip/android/ui/home/HomeTopBarKt;->c()Landroidx/compose/animation/core/SpringSpec;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    invoke-static {v7, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 265
    .line 266
    .line 267
    move-result-object v7

    .line 268
    invoke-static {}, Lnet/blip/android/ui/home/HomeTopBarKt;->c()Landroidx/compose/animation/core/SpringSpec;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 273
    .line 274
    .line 275
    move-result v13

    .line 276
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v14

    .line 280
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 281
    .line 282
    if-nez v13, :cond_b

    .line 283
    .line 284
    if-ne v14, v4, :cond_c

    .line 285
    .line 286
    :cond_b
    new-instance v14, Lr0;

    .line 287
    .line 288
    const/4 v13, 0x6

    .line 289
    invoke-direct {v14, v3, v13}, Lr0;-><init>(II)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    :cond_c
    check-cast v14, Lkotlin/jvm/functions/Function1;

    .line 296
    .line 297
    invoke-static {v12, v14}, Landroidx/compose/animation/EnterExitTransitionKt;->i(Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 298
    .line 299
    .line 300
    move-result-object v12

    .line 301
    invoke-virtual {v7, v12}, Landroidx/compose/animation/EnterTransition;->a(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    invoke-static {}, Lnet/blip/android/ui/home/HomeTopBarKt;->c()Landroidx/compose/animation/core/SpringSpec;

    .line 306
    .line 307
    .line 308
    move-result-object v12

    .line 309
    const/4 v13, 0x2

    .line 310
    invoke-static {v12, v13}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 311
    .line 312
    .line 313
    move-result-object v12

    .line 314
    invoke-static {}, Lnet/blip/android/ui/home/HomeTopBarKt;->c()Landroidx/compose/animation/core/SpringSpec;

    .line 315
    .line 316
    .line 317
    move-result-object v13

    .line 318
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 319
    .line 320
    .line 321
    move-result v14

    .line 322
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-nez v14, :cond_d

    .line 327
    .line 328
    if-ne v0, v4, :cond_e

    .line 329
    .line 330
    :cond_d
    new-instance v0, Lr0;

    .line 331
    .line 332
    const/4 v14, 0x7

    .line 333
    invoke-direct {v0, v3, v14}, Lr0;-><init>(II)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    :cond_e
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 340
    .line 341
    invoke-static {v13, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->k(Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-virtual {v12, v0}, Landroidx/compose/animation/ExitTransition;->a(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    new-instance v11, Lo9;

    .line 350
    .line 351
    move-object/from16 v12, p2

    .line 352
    .line 353
    move/from16 v14, p7

    .line 354
    .line 355
    move-object/from16 v13, p8

    .line 356
    .line 357
    move-object/from16 v16, p10

    .line 358
    .line 359
    invoke-direct/range {v11 .. v16}, Lo9;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 360
    .line 361
    .line 362
    const v12, -0x54556bdf

    .line 363
    .line 364
    .line 365
    invoke-static {v12, v11, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 366
    .line 367
    .line 368
    move-result-object v16

    .line 369
    const/high16 v18, 0x30000

    .line 370
    .line 371
    const/4 v12, 0x0

    .line 372
    const/4 v15, 0x0

    .line 373
    move-object v14, v0

    .line 374
    move v11, v5

    .line 375
    move-object/from16 v17, v6

    .line 376
    .line 377
    move-object v13, v7

    .line 378
    invoke-static/range {v11 .. v18}, Landroidx/compose/animation/AnimatedVisibilityKt;->b(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 379
    .line 380
    .line 381
    invoke-static {}, Lnet/blip/android/ui/home/HomeTopBarKt;->c()Landroidx/compose/animation/core/SpringSpec;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    const/4 v13, 0x2

    .line 386
    invoke-static {v0, v13}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-static {}, Lnet/blip/android/ui/home/HomeTopBarKt;->c()Landroidx/compose/animation/core/SpringSpec;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 395
    .line 396
    .line 397
    move-result v7

    .line 398
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v11

    .line 402
    const/4 v12, 0x5

    .line 403
    if-nez v7, :cond_f

    .line 404
    .line 405
    if-ne v11, v4, :cond_10

    .line 406
    .line 407
    :cond_f
    new-instance v11, Lr0;

    .line 408
    .line 409
    invoke-direct {v11, v3, v12}, Lr0;-><init>(II)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    :cond_10
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 416
    .line 417
    invoke-static {v5, v11}, Landroidx/compose/animation/EnterExitTransitionKt;->i(Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    invoke-virtual {v0, v5}, Landroidx/compose/animation/EnterTransition;->a(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-static {}, Lnet/blip/android/ui/home/HomeTopBarKt;->c()Landroidx/compose/animation/core/SpringSpec;

    .line 426
    .line 427
    .line 428
    move-result-object v5

    .line 429
    const/4 v13, 0x2

    .line 430
    invoke-static {v5, v13}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    invoke-static {}, Lnet/blip/android/ui/home/HomeTopBarKt;->c()Landroidx/compose/animation/core/SpringSpec;

    .line 435
    .line 436
    .line 437
    move-result-object v7

    .line 438
    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 439
    .line 440
    .line 441
    move-result v11

    .line 442
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v13

    .line 446
    if-nez v11, :cond_11

    .line 447
    .line 448
    if-ne v13, v4, :cond_12

    .line 449
    .line 450
    :cond_11
    new-instance v13, Lr0;

    .line 451
    .line 452
    invoke-direct {v13, v3, v12}, Lr0;-><init>(II)V

    .line 453
    .line 454
    .line 455
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 456
    .line 457
    .line 458
    :cond_12
    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 459
    .line 460
    invoke-static {v7, v13}, Landroidx/compose/animation/EnterExitTransitionKt;->k(Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 461
    .line 462
    .line 463
    move-result-object v3

    .line 464
    invoke-virtual {v5, v3}, Landroidx/compose/animation/ExitTransition;->a(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    new-instance v4, Lnet/blip/android/ui/home/f;

    .line 469
    .line 470
    move-object/from16 v11, p3

    .line 471
    .line 472
    invoke-direct {v4, v9, v10, v8, v11}, Lnet/blip/android/ui/home/f;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 473
    .line 474
    .line 475
    const v5, 0xe10d258

    .line 476
    .line 477
    .line 478
    invoke-static {v5, v4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 479
    .line 480
    .line 481
    move-result-object v5

    .line 482
    shr-int/lit8 v2, v2, 0x3

    .line 483
    .line 484
    and-int/lit8 v2, v2, 0xe

    .line 485
    .line 486
    const/high16 v4, 0x30000

    .line 487
    .line 488
    or-int v7, v2, v4

    .line 489
    .line 490
    const/4 v1, 0x0

    .line 491
    const/4 v4, 0x0

    .line 492
    move-object v2, v0

    .line 493
    move/from16 v0, p1

    .line 494
    .line 495
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt;->b(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 496
    .line 497
    .line 498
    const/4 v0, 0x1

    .line 499
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 500
    .line 501
    .line 502
    goto :goto_b

    .line 503
    :cond_13
    move-object/from16 v11, p3

    .line 504
    .line 505
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 506
    .line 507
    .line 508
    :goto_b
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 509
    .line 510
    .line 511
    move-result-object v13

    .line 512
    if-eqz v13, :cond_14

    .line 513
    .line 514
    new-instance v0, Lp9;

    .line 515
    .line 516
    move-object/from16 v1, p0

    .line 517
    .line 518
    move/from16 v2, p1

    .line 519
    .line 520
    move-object/from16 v3, p2

    .line 521
    .line 522
    move/from16 v12, p12

    .line 523
    .line 524
    move-object v5, v8

    .line 525
    move-object v6, v9

    .line 526
    move v7, v10

    .line 527
    move-object v4, v11

    .line 528
    move/from16 v8, p7

    .line 529
    .line 530
    move-object/from16 v9, p8

    .line 531
    .line 532
    move-object/from16 v10, p9

    .line 533
    .line 534
    move-object/from16 v11, p10

    .line 535
    .line 536
    invoke-direct/range {v0 .. v12}, Lp9;-><init>(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    .line 537
    .line 538
    .line 539
    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 540
    .line 541
    :cond_14
    return-void
.end method

.method public static final c()Landroidx/compose/animation/core/SpringSpec;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x0

    .line 4
    const/high16 v3, 0x43c80000    # 400.0f

    .line 5
    .line 6
    invoke-static {v2, v3, v0, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
