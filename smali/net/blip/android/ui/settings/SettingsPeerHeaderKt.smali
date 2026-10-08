.class public abstract Lnet/blip/android/ui/settings/SettingsPeerHeaderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 30

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move/from16 v4, p4

    .line 4
    .line 5
    move-object/from16 v13, p3

    .line 6
    .line 7
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    const v0, -0x23a2f860

    .line 10
    .line 11
    .line 12
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 13
    .line 14
    .line 15
    or-int/lit8 v0, v4, 0x6

    .line 16
    .line 17
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const/16 v1, 0x20

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v1, 0x10

    .line 27
    .line 28
    :goto_0
    or-int/2addr v0, v1

    .line 29
    and-int/lit8 v1, p5, 0x4

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    or-int/lit16 v0, v0, 0x180

    .line 34
    .line 35
    :cond_1
    move-object/from16 v3, p2

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    and-int/lit16 v3, v4, 0x180

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    move-object/from16 v3, p2

    .line 43
    .line 44
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    const/16 v5, 0x100

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/16 v5, 0x80

    .line 54
    .line 55
    :goto_1
    or-int/2addr v0, v5

    .line 56
    :goto_2
    and-int/lit16 v5, v0, 0x93

    .line 57
    .line 58
    const/16 v6, 0x92

    .line 59
    .line 60
    const/4 v7, 0x1

    .line 61
    if-eq v5, v6, :cond_4

    .line 62
    .line 63
    move v5, v7

    .line 64
    goto :goto_3

    .line 65
    :cond_4
    const/4 v5, 0x0

    .line 66
    :goto_3
    and-int/lit8 v6, v0, 0x1

    .line 67
    .line 68
    invoke-virtual {v13, v6, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_7

    .line 73
    .line 74
    if-eqz v1, :cond_5

    .line 75
    .line 76
    new-instance v1, Lbd;

    .line 77
    .line 78
    const/4 v3, 0x2

    .line 79
    invoke-direct {v1, v2, v3}, Lbd;-><init>(Lnet/blip/libblip/Peer;I)V

    .line 80
    .line 81
    .line 82
    const v3, 0x5460fec7

    .line 83
    .line 84
    .line 85
    invoke-static {v3, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    goto :goto_4

    .line 90
    :cond_5
    move-object v1, v3

    .line 91
    :goto_4
    sget-object v3, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 92
    .line 93
    const/high16 v5, 0x3f800000    # 1.0f

    .line 94
    .line 95
    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    const/16 v19, 0x2

    .line 102
    .line 103
    const/high16 v15, 0x41c00000    # 24.0f

    .line 104
    .line 105
    const/high16 v18, 0x42200000    # 40.0f

    .line 106
    .line 107
    move/from16 v17, v15

    .line 108
    .line 109
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 114
    .line 115
    sget-object v9, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 116
    .line 117
    const/16 v10, 0x30

    .line 118
    .line 119
    invoke-static {v9, v8, v13, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    iget-wide v9, v13, Landroidx/compose/runtime/GapComposer;->T:J

    .line 124
    .line 125
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 130
    .line 131
    .line 132
    move-result-object v10

    .line 133
    invoke-static {v13, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 138
    .line 139
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 143
    .line 144
    .line 145
    iget-boolean v11, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 146
    .line 147
    if-eqz v11, :cond_6

    .line 148
    .line 149
    sget-object v11, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 150
    .line 151
    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 152
    .line 153
    .line 154
    goto :goto_5

    .line 155
    :cond_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 156
    .line 157
    .line 158
    :goto_5
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 159
    .line 160
    invoke-static {v13, v8, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 161
    .line 162
    .line 163
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 164
    .line 165
    invoke-static {v13, v10, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 173
    .line 174
    invoke-static {v13, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 175
    .line 176
    .line 177
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 178
    .line 179
    .line 180
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 181
    .line 182
    invoke-static {v13, v6, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 183
    .line 184
    .line 185
    shr-int/lit8 v0, v0, 0x6

    .line 186
    .line 187
    and-int/lit8 v0, v0, 0xe

    .line 188
    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v1, v13, v0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    const/high16 v0, 0x41a00000    # 20.0f

    .line 197
    .line 198
    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-static {v13, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 203
    .line 204
    .line 205
    move v0, v5

    .line 206
    invoke-virtual {v2}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    sget-object v6, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 211
    .line 212
    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v8

    .line 216
    check-cast v8, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 217
    .line 218
    iget-object v14, v8, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 219
    .line 220
    const/16 v8, 0x18

    .line 221
    .line 222
    invoke-static {v8}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 223
    .line 224
    .line 225
    move-result-wide v17

    .line 226
    const/16 v25, 0x0

    .line 227
    .line 228
    const v26, 0xff7ffd

    .line 229
    .line 230
    .line 231
    const-wide/16 v15, 0x0

    .line 232
    .line 233
    const/16 v19, 0x0

    .line 234
    .line 235
    const-wide/16 v20, 0x0

    .line 236
    .line 237
    const-wide/16 v22, 0x0

    .line 238
    .line 239
    const/16 v24, 0x0

    .line 240
    .line 241
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    const/4 v14, 0x0

    .line 246
    const/16 v15, 0x1fa

    .line 247
    .line 248
    move-object v9, v6

    .line 249
    const/4 v6, 0x0

    .line 250
    move v10, v7

    .line 251
    move-object v7, v8

    .line 252
    const/4 v8, 0x0

    .line 253
    move-object v11, v9

    .line 254
    const/4 v9, 0x0

    .line 255
    move v12, v10

    .line 256
    const/4 v10, 0x0

    .line 257
    move-object/from16 v16, v11

    .line 258
    .line 259
    const/4 v11, 0x0

    .line 260
    move/from16 v17, v12

    .line 261
    .line 262
    const/4 v12, 0x0

    .line 263
    move-object v2, v1

    .line 264
    move v1, v0

    .line 265
    move-object/from16 v0, v16

    .line 266
    .line 267
    move-object/from16 v16, v2

    .line 268
    .line 269
    move/from16 v2, v17

    .line 270
    .line 271
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 272
    .line 273
    .line 274
    invoke-static {v3, v1}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual/range {p1 .. p1}, Lnet/blip/libblip/Peer;->a()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 290
    .line 291
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 292
    .line 293
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 294
    .line 295
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 300
    .line 301
    iget-wide v6, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 302
    .line 303
    const/16 v1, 0x12

    .line 304
    .line 305
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 306
    .line 307
    .line 308
    move-result-wide v20

    .line 309
    const/16 v27, 0x0

    .line 310
    .line 311
    const v29, 0xdf7ffc

    .line 312
    .line 313
    .line 314
    const/16 v22, 0x0

    .line 315
    .line 316
    const-wide/16 v23, 0x0

    .line 317
    .line 318
    const-wide/16 v25, 0x0

    .line 319
    .line 320
    sget v28, Landroidx/compose/ui/text/style/LineBreak;->c:I

    .line 321
    .line 322
    move-object/from16 v17, v0

    .line 323
    .line 324
    move-wide/from16 v18, v6

    .line 325
    .line 326
    invoke-static/range {v17 .. v29}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    const/4 v6, 0x0

    .line 331
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 335
    .line 336
    .line 337
    move-object v1, v3

    .line 338
    move-object/from16 v3, v16

    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 342
    .line 343
    .line 344
    move-object/from16 v1, p0

    .line 345
    .line 346
    :goto_6
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    if-eqz v7, :cond_8

    .line 351
    .line 352
    new-instance v0, Lz3;

    .line 353
    .line 354
    const/4 v6, 0x5

    .line 355
    move-object/from16 v2, p1

    .line 356
    .line 357
    move/from16 v5, p5

    .line 358
    .line 359
    invoke-direct/range {v0 .. v6}, Lz3;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 360
    .line 361
    .line 362
    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 363
    .line 364
    :cond_8
    return-void
.end method
