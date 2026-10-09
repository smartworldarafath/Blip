.class public abstract Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStepKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(ILandroidx/compose/runtime/Composer;)V
    .locals 49

    .line 1
    move-object/from16 v5, p1

    .line 2
    .line 3
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    const v1, -0x5165c19f

    .line 6
    .line 7
    .line 8
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v7

    .line 17
    :goto_0
    and-int/lit8 v2, p0, 0x1

    .line 18
    .line 19
    invoke-virtual {v5, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_a

    .line 24
    .line 25
    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 26
    .line 27
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 28
    .line 29
    invoke-static {v8, v9, v5, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-wide v2, v5, Landroidx/compose/runtime/GapComposer;->T:J

    .line 34
    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 44
    .line 45
    invoke-static {v5, v14}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 55
    .line 56
    .line 57
    iget-boolean v6, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 58
    .line 59
    sget-object v15, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 60
    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 68
    .line 69
    .line 70
    :goto_1
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 71
    .line 72
    invoke-static {v5, v1, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 73
    .line 74
    .line 75
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 76
    .line 77
    invoke-static {v5, v3, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 85
    .line 86
    invoke-static {v5, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 90
    .line 91
    .line 92
    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 93
    .line 94
    invoke-static {v5, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 95
    .line 96
    .line 97
    const/high16 v3, 0x41a00000    # 20.0f

    .line 98
    .line 99
    const/high16 v4, 0x41800000    # 16.0f

    .line 100
    .line 101
    invoke-static {v14, v4, v4, v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const/high16 v6, 0x41200000    # 10.0f

    .line 106
    .line 107
    invoke-static {v6}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 112
    .line 113
    const/16 p1, 0xe

    .line 114
    .line 115
    const/16 v13, 0x36

    .line 116
    .line 117
    invoke-static {v6, v4, v5, v13}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    iget-wide v12, v5, Landroidx/compose/runtime/GapComposer;->T:J

    .line 122
    .line 123
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    invoke-static {v5, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 136
    .line 137
    .line 138
    iget-boolean v13, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 139
    .line 140
    if-eqz v13, :cond_2

    .line 141
    .line 142
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 147
    .line 148
    .line 149
    :goto_2
    invoke-static {v5, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v5, v12, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    invoke-static {v6, v5, v2, v5}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v5, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 159
    .line 160
    .line 161
    const/high16 v3, 0x42400000    # 48.0f

    .line 162
    .line 163
    invoke-static {v14, v3}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    move-object v4, v1

    .line 168
    move-object v1, v3

    .line 169
    sget-object v3, Lnet/blip/libblip/DeviceKind;->p:Lnet/blip/libblip/DeviceKind;

    .line 170
    .line 171
    move-object v6, v4

    .line 172
    move-object v4, v5

    .line 173
    const/16 v5, 0x186

    .line 174
    .line 175
    move-object v12, v6

    .line 176
    const/4 v6, 0x2

    .line 177
    move-object v13, v2

    .line 178
    const/4 v2, 0x0

    .line 179
    const/high16 v17, 0x41800000    # 16.0f

    .line 180
    .line 181
    invoke-static/range {v1 .. v6}, Lnet/blip/shared/AvatarKt;->b(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/DeviceKind;Landroidx/compose/runtime/Composer;II)V

    .line 182
    .line 183
    .line 184
    move-object v5, v4

    .line 185
    invoke-static {v8, v9, v5, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    iget-wide v2, v5, Landroidx/compose/runtime/GapComposer;->T:J

    .line 190
    .line 191
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-static {v5, v14}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 204
    .line 205
    .line 206
    iget-boolean v6, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 207
    .line 208
    if-eqz v6, :cond_3

    .line 209
    .line 210
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_3
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 215
    .line 216
    .line 217
    :goto_3
    invoke-static {v5, v1, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v5, v3, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v2, v5, v13, v5}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 224
    .line 225
    .line 226
    invoke-static {v5, v4, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 227
    .line 228
    .line 229
    const/high16 v1, 0x3f800000    # 1.0f

    .line 230
    .line 231
    invoke-static {v14, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->d:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    .line 236
    .line 237
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 238
    .line 239
    const/4 v6, 0x6

    .line 240
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    iget-wide v7, v5, Landroidx/compose/runtime/GapComposer;->T:J

    .line 245
    .line 246
    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    .line 247
    .line 248
    .line 249
    move-result v7

    .line 250
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    invoke-static {v5, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 259
    .line 260
    .line 261
    iget-boolean v9, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 262
    .line 263
    if-eqz v9, :cond_4

    .line 264
    .line 265
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :cond_4
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 270
    .line 271
    .line 272
    :goto_4
    invoke-static {v5, v3, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v5, v8, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 276
    .line 277
    .line 278
    invoke-static {v7, v5, v13, v5}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 279
    .line 280
    .line 281
    invoke-static {v5, v2, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 282
    .line 283
    .line 284
    sget-object v2, Landroidx/compose/ui/layout/AlignmentLineKt;->a:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 285
    .line 286
    new-instance v3, Landroidx/compose/foundation/layout/WithAlignmentLineElement;

    .line 287
    .line 288
    invoke-direct {v3, v2}, Landroidx/compose/foundation/layout/WithAlignmentLineElement;-><init>(Landroidx/compose/ui/layout/AlignmentLine;)V

    .line 289
    .line 290
    .line 291
    sget-object v7, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 292
    .line 293
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    check-cast v8, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 298
    .line 299
    iget-object v8, v8, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 300
    .line 301
    const/16 v9, 0x10

    .line 302
    .line 303
    invoke-static {v9}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 304
    .line 305
    .line 306
    move-result-wide v23

    .line 307
    sget-object v25, Landroidx/compose/ui/text/font/FontWeight;->s:Landroidx/compose/ui/text/font/FontWeight;

    .line 308
    .line 309
    const/16 v31, 0x0

    .line 310
    .line 311
    const v32, 0xfffff9

    .line 312
    .line 313
    .line 314
    const-wide/16 v21, 0x0

    .line 315
    .line 316
    const-wide/16 v26, 0x0

    .line 317
    .line 318
    const-wide/16 v28, 0x0

    .line 319
    .line 320
    const/16 v30, 0x0

    .line 321
    .line 322
    move-object/from16 v20, v8

    .line 323
    .line 324
    invoke-static/range {v20 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    move-object v9, v10

    .line 329
    const/4 v10, 0x6

    .line 330
    move-object/from16 v16, v11

    .line 331
    .line 332
    const/16 v11, 0x1f8

    .line 333
    .line 334
    move/from16 v18, v1

    .line 335
    .line 336
    const-string v1, "Your laptop"

    .line 337
    .line 338
    move-object/from16 v19, v4

    .line 339
    .line 340
    const/4 v4, 0x0

    .line 341
    move-object/from16 v20, v9

    .line 342
    .line 343
    move-object v9, v5

    .line 344
    const/4 v5, 0x0

    .line 345
    move/from16 v21, v6

    .line 346
    .line 347
    const/4 v6, 0x0

    .line 348
    move-object/from16 v22, v7

    .line 349
    .line 350
    const/4 v7, 0x0

    .line 351
    move-object/from16 v23, v2

    .line 352
    .line 353
    move-object v2, v3

    .line 354
    move-object v3, v8

    .line 355
    const/4 v8, 0x0

    .line 356
    move-object/from16 v24, v14

    .line 357
    .line 358
    move-object/from16 v34, v16

    .line 359
    .line 360
    move/from16 v0, v18

    .line 361
    .line 362
    move-object/from16 v35, v19

    .line 363
    .line 364
    move-object/from16 v33, v20

    .line 365
    .line 366
    move-object/from16 v14, v23

    .line 367
    .line 368
    move-object/from16 v16, v15

    .line 369
    .line 370
    move-object/from16 v15, v22

    .line 371
    .line 372
    invoke-static/range {v1 .. v11}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 373
    .line 374
    .line 375
    move-object v5, v9

    .line 376
    new-instance v2, Landroidx/compose/foundation/layout/WithAlignmentLineElement;

    .line 377
    .line 378
    invoke-direct {v2, v14}, Landroidx/compose/foundation/layout/WithAlignmentLineElement;-><init>(Landroidx/compose/ui/layout/AlignmentLine;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 386
    .line 387
    iget-object v1, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 388
    .line 389
    sget-object v14, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 390
    .line 391
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 396
    .line 397
    iget-wide v3, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 398
    .line 399
    const/16 v6, 0xc

    .line 400
    .line 401
    invoke-static {v6}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 402
    .line 403
    .line 404
    move-result-wide v39

    .line 405
    const/16 v47, 0x0

    .line 406
    .line 407
    const v48, 0xfffffc

    .line 408
    .line 409
    .line 410
    const/16 v41, 0x0

    .line 411
    .line 412
    const-wide/16 v42, 0x0

    .line 413
    .line 414
    const-wide/16 v44, 0x0

    .line 415
    .line 416
    const/16 v46, 0x0

    .line 417
    .line 418
    move-object/from16 v36, v1

    .line 419
    .line 420
    move-wide/from16 v37, v3

    .line 421
    .line 422
    invoke-static/range {v36 .. v48}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    const-string v1, "9:57 AM"

    .line 427
    .line 428
    const/4 v4, 0x0

    .line 429
    const/4 v5, 0x0

    .line 430
    const/4 v6, 0x0

    .line 431
    invoke-static/range {v1 .. v11}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 432
    .line 433
    .line 434
    move-object v5, v9

    .line 435
    const/4 v1, 0x1

    .line 436
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 444
    .line 445
    iget-object v1, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 446
    .line 447
    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 452
    .line 453
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 454
    .line 455
    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 456
    .line 457
    .line 458
    move-result-wide v39

    .line 459
    move-object/from16 v36, v1

    .line 460
    .line 461
    move-wide/from16 v37, v2

    .line 462
    .line 463
    invoke-static/range {v36 .. v48}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    const/16 v11, 0x1fa

    .line 468
    .line 469
    const-string v1, "Wants to send 15 photos"

    .line 470
    .line 471
    const/4 v2, 0x0

    .line 472
    const/4 v5, 0x0

    .line 473
    invoke-static/range {v1 .. v11}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 474
    .line 475
    .line 476
    move-object v5, v9

    .line 477
    const/4 v1, 0x1

    .line 478
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 479
    .line 480
    .line 481
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 482
    .line 483
    .line 484
    const/16 v18, 0x0

    .line 485
    .line 486
    const/16 v19, 0xa

    .line 487
    .line 488
    const/high16 v15, 0x42980000    # 76.0f

    .line 489
    .line 490
    move-object/from16 v1, v16

    .line 491
    .line 492
    const/16 v16, 0x0

    .line 493
    .line 494
    move-object v8, v1

    .line 495
    move-object v1, v14

    .line 496
    move-object/from16 v14, v24

    .line 497
    .line 498
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 507
    .line 508
    iget-wide v3, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->l:J

    .line 509
    .line 510
    const/16 v6, 0x186

    .line 511
    .line 512
    const/16 v7, 0x8

    .line 513
    .line 514
    move-object v1, v2

    .line 515
    move-wide v2, v3

    .line 516
    const/high16 v4, 0x3f000000    # 0.5f

    .line 517
    .line 518
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/DividerKt;->a(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V

    .line 519
    .line 520
    .line 521
    invoke-static {v14, v0}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    const/high16 v1, 0x41000000    # 8.0f

    .line 526
    .line 527
    const/high16 v2, 0x40800000    # 4.0f

    .line 528
    .line 529
    const/4 v3, 0x0

    .line 530
    invoke-static {v0, v15, v3, v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->g(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    move-object/from16 v3, v35

    .line 539
    .line 540
    const/4 v2, 0x6

    .line 541
    invoke-static {v1, v3, v5, v2}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    iget-wide v2, v5, Landroidx/compose/runtime/GapComposer;->T:J

    .line 546
    .line 547
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    invoke-static {v5, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 560
    .line 561
    .line 562
    iget-boolean v4, v5, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 563
    .line 564
    if-eqz v4, :cond_5

    .line 565
    .line 566
    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 567
    .line 568
    .line 569
    :goto_5
    move-object/from16 v9, v33

    .line 570
    .line 571
    goto :goto_6

    .line 572
    :cond_5
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 573
    .line 574
    .line 575
    goto :goto_5

    .line 576
    :goto_6
    invoke-static {v5, v1, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 577
    .line 578
    .line 579
    move-object/from16 v1, v34

    .line 580
    .line 581
    invoke-static {v5, v3, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 582
    .line 583
    .line 584
    invoke-static {v2, v5, v13, v5}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 585
    .line 586
    .line 587
    invoke-static {v5, v0, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 588
    .line 589
    .line 590
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 591
    .line 592
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v0

    .line 596
    check-cast v0, Landroid/content/Context;

    .line 597
    .line 598
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 607
    .line 608
    if-nez v1, :cond_6

    .line 609
    .line 610
    if-ne v2, v7, :cond_7

    .line 611
    .line 612
    :cond_6
    new-instance v2, Lc9;

    .line 613
    .line 614
    const/4 v1, 0x1

    .line 615
    invoke-direct {v2, v0, v1}, Lc9;-><init>(Landroid/content/Context;I)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 619
    .line 620
    .line 621
    :cond_7
    move-object v1, v2

    .line 622
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 623
    .line 624
    sget-object v4, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingEnableNotificationsStepKt;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 625
    .line 626
    const/16 v6, 0x1fe

    .line 627
    .line 628
    const/4 v2, 0x0

    .line 629
    const/4 v3, 0x0

    .line 630
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    if-nez v1, :cond_8

    .line 642
    .line 643
    if-ne v2, v7, :cond_9

    .line 644
    .line 645
    :cond_8
    new-instance v2, Lc9;

    .line 646
    .line 647
    const/4 v1, 0x2

    .line 648
    invoke-direct {v2, v0, v1}, Lc9;-><init>(Landroid/content/Context;I)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v5, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 652
    .line 653
    .line 654
    :cond_9
    move-object v1, v2

    .line 655
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 656
    .line 657
    sget-object v4, Lnet/blip/android/ui/onboarding/ComposableSingletons$OnboardingEnableNotificationsStepKt;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 658
    .line 659
    const/16 v6, 0x1fe

    .line 660
    .line 661
    const/4 v2, 0x0

    .line 662
    const/4 v3, 0x0

    .line 663
    invoke-static/range {v1 .. v6}, Landroidx/compose/material/ButtonKt;->b(Lkotlin/jvm/functions/Function0;ZLandroidx/compose/material/ButtonColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    .line 664
    .line 665
    .line 666
    const/4 v1, 0x1

    .line 667
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 671
    .line 672
    .line 673
    goto :goto_7

    .line 674
    :cond_a
    const/16 p1, 0xe

    .line 675
    .line 676
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 677
    .line 678
    .line 679
    :goto_7
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    if-eqz v0, :cond_b

    .line 684
    .line 685
    new-instance v1, Lz6;

    .line 686
    .line 687
    move/from16 v2, p0

    .line 688
    .line 689
    move/from16 v3, p1

    .line 690
    .line 691
    invoke-direct {v1, v2, v3}, Lz6;-><init>(II)V

    .line 692
    .line 693
    .line 694
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 695
    .line 696
    :cond_b
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    check-cast v2, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    const v3, -0x107fd51d

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x2

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v3, v4

    .line 23
    :goto_0
    or-int v3, p2, v3

    .line 24
    .line 25
    and-int/lit8 v5, v3, 0x3

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    const/4 v7, 0x1

    .line 29
    if-eq v5, v4, :cond_1

    .line 30
    .line 31
    move v4, v7

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v4, v6

    .line 34
    :goto_1
    and-int/2addr v3, v7

    .line 35
    invoke-virtual {v2, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_7

    .line 40
    .line 41
    invoke-static {v2}, Lnet/blip/shared/LightDarkThemeKt;->a(Landroidx/compose/runtime/Composer;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    const-wide v4, 0xfff7f7f7L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    goto :goto_3

    .line 57
    :cond_2
    const-wide v4, 0xff474747L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_3
    if-eqz v3, :cond_3

    .line 64
    .line 65
    const-wide v8, 0xffebebebL

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    :goto_4
    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v8

    .line 74
    goto :goto_5

    .line 75
    :cond_3
    const-wide v8, 0xff3b3b3bL

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :goto_5
    if-eqz v3, :cond_4

    .line 82
    .line 83
    const-wide v10, 0xffdededeL

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    :goto_6
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 89
    .line 90
    .line 91
    move-result-wide v10

    .line 92
    goto :goto_7

    .line 93
    :cond_4
    const-wide v10, 0xff2e2e2eL

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    goto :goto_6

    .line 99
    :goto_7
    const/high16 v3, 0x3f800000    # 1.0f

    .line 100
    .line 101
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 106
    .line 107
    invoke-static {v13, v6}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    move-wide v15, v4

    .line 112
    iget-wide v3, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 113
    .line 114
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v2, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 127
    .line 128
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 132
    .line 133
    .line 134
    iget-boolean v12, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 135
    .line 136
    sget-object v6, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 137
    .line 138
    if-eqz v12, :cond_5

    .line 139
    .line 140
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 141
    .line 142
    .line 143
    goto :goto_8

    .line 144
    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 145
    .line 146
    .line 147
    :goto_8
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 148
    .line 149
    invoke-static {v2, v14, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    .line 151
    .line 152
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 153
    .line 154
    invoke-static {v2, v4, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 155
    .line 156
    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 162
    .line 163
    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 167
    .line 168
    .line 169
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 170
    .line 171
    invoke-static {v2, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 172
    .line 173
    .line 174
    const-wide/16 v0, 0x0

    .line 175
    .line 176
    const/4 v5, 0x0

    .line 177
    invoke-static {v5, v7, v0, v1, v2}, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStepKt;->c(IIJLandroidx/compose/runtime/Composer;)F

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 182
    .line 183
    invoke-static {v1, v0}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    const v5, 0x3f666666    # 0.9f

    .line 188
    .line 189
    .line 190
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 195
    .line 196
    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->h:Landroidx/compose/ui/BiasAlignment;

    .line 197
    .line 198
    invoke-virtual {v5, v0, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const/high16 v17, 0x41800000    # 16.0f

    .line 203
    .line 204
    move-wide/from16 v18, v15

    .line 205
    .line 206
    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 207
    .line 208
    .line 209
    move-result-object v15

    .line 210
    invoke-static {v0, v15}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    sget-object v15, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 215
    .line 216
    move-wide/from16 v20, v10

    .line 217
    .line 218
    move-wide/from16 v10, v18

    .line 219
    .line 220
    invoke-static {v0, v10, v11, v15}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const/high16 v10, 0x40400000    # 3.0f

    .line 225
    .line 226
    invoke-static {v0, v10}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const/4 v10, 0x0

    .line 231
    invoke-static {v13, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 232
    .line 233
    .line 234
    move-result-object v11

    .line 235
    move-wide/from16 v18, v8

    .line 236
    .line 237
    iget-wide v8, v2, Landroidx/compose/runtime/GapComposer;->T:J

    .line 238
    .line 239
    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    .line 240
    .line 241
    .line 242
    move-result v8

    .line 243
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 252
    .line 253
    .line 254
    iget-boolean v10, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 255
    .line 256
    if-eqz v10, :cond_6

    .line 257
    .line 258
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 259
    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_6
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 263
    .line 264
    .line 265
    :goto_9
    invoke-static {v2, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 266
    .line 267
    .line 268
    invoke-static {v2, v9, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 269
    .line 270
    .line 271
    invoke-static {v8, v2, v4, v2}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 275
    .line 276
    .line 277
    const/4 v10, 0x0

    .line 278
    invoke-static {v10, v2}, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStepKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 279
    .line 280
    .line 281
    const/4 v0, 0x1

    .line 282
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 283
    .line 284
    .line 285
    const-wide/16 v3, 0xfa

    .line 286
    .line 287
    const/4 v0, 0x6

    .line 288
    invoke-static {v0, v10, v3, v4, v2}, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStepKt;->c(IIJLandroidx/compose/runtime/Composer;)F

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    invoke-static {v1, v3}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    const-wide v8, 0x3fecccccc0000000L    # 0.8999999761581421

    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 302
    .line 303
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 304
    .line 305
    .line 306
    move-result-wide v12

    .line 307
    double-to-float v4, v12

    .line 308
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    invoke-virtual {v5, v3, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    const/high16 v4, 0x41200000    # 10.0f

    .line 317
    .line 318
    const/4 v6, 0x1

    .line 319
    invoke-static {v3, v4, v6}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    const v4, 0x41666666    # 14.4f

    .line 324
    .line 325
    .line 326
    invoke-static {v4}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-static {v3, v4}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    move-wide/from16 v12, v18

    .line 335
    .line 336
    invoke-static {v3, v12, v13, v15}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 337
    .line 338
    .line 339
    move-result-object v3

    .line 340
    const/high16 v4, 0x42c00000    # 96.0f

    .line 341
    .line 342
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    const/high16 v6, 0x40000000    # 2.0f

    .line 347
    .line 348
    invoke-static {v3, v6}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    const/4 v6, 0x0

    .line 353
    invoke-static {v3, v2, v6}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 354
    .line 355
    .line 356
    const-wide/16 v12, 0x1f4

    .line 357
    .line 358
    invoke-static {v0, v6, v12, v13, v2}, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStepKt;->c(IIJLandroidx/compose/runtime/Composer;)F

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    invoke-static {v1, v0}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 367
    .line 368
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 369
    .line 370
    .line 371
    move-result-wide v12

    .line 372
    double-to-float v1, v12

    .line 373
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v5, v0, v7}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    const/high16 v1, 0x41880000    # 17.0f

    .line 382
    .line 383
    const/4 v6, 0x1

    .line 384
    invoke-static {v0, v1, v6}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 389
    .line 390
    .line 391
    move-result-wide v7

    .line 392
    double-to-float v1, v7

    .line 393
    mul-float v1, v1, v17

    .line 394
    .line 395
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->b(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    invoke-static {v0, v1}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    move-wide/from16 v10, v20

    .line 404
    .line 405
    invoke-static {v0, v10, v11, v15}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v0, v4}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    const/high16 v1, 0x3f800000    # 1.0f

    .line 414
    .line 415
    invoke-static {v0, v1}, Landroidx/compose/ui/ZIndexModifierKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    const/4 v10, 0x0

    .line 420
    invoke-static {v0, v2, v10}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 424
    .line 425
    .line 426
    goto :goto_a

    .line 427
    :cond_7
    move v6, v7

    .line 428
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 429
    .line 430
    .line 431
    :goto_a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    if-eqz v0, :cond_8

    .line 436
    .line 437
    new-instance v1, Lr4;

    .line 438
    .line 439
    move-object/from16 v2, p0

    .line 440
    .line 441
    move/from16 v3, p2

    .line 442
    .line 443
    invoke-direct {v1, v2, v3, v6}, Lr4;-><init>(Landroidx/compose/ui/Modifier;II)V

    .line 444
    .line 445
    .line 446
    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 447
    .line 448
    :cond_8
    return-void
.end method

.method public static final c(IIJLandroidx/compose/runtime/Composer;)F
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-wide/16 p2, 0x0

    .line 6
    .line 7
    :cond_0
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 14
    .line 15
    if-ne p1, v1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-static {p1}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->a(F)Landroidx/compose/runtime/MutableFloatState;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p4, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    check-cast p1, Landroidx/compose/runtime/MutableFloatState;

    .line 26
    .line 27
    move-object v2, p1

    .line 28
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->j()F

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/high16 v3, 0x3f400000    # 0.75f

    .line 35
    .line 36
    const/high16 v4, 0x43480000    # 200.0f

    .line 37
    .line 38
    const/4 v5, 0x0

    .line 39
    const/4 v6, 0x4

    .line 40
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const/16 v4, 0xc30

    .line 45
    .line 46
    const/16 v7, 0x14

    .line 47
    .line 48
    invoke-static {v2, v3, p4, v4, v7}, Landroidx/compose/animation/core/AnimateAsStateKt;->b(FLandroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    .line 54
    and-int/lit8 v4, p0, 0xe

    .line 55
    .line 56
    xor-int/lit8 v4, v4, 0x6

    .line 57
    .line 58
    if-le v4, v6, :cond_2

    .line 59
    .line 60
    invoke-virtual {p4, p2, p3}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_4

    .line 65
    .line 66
    :cond_2
    and-int/lit8 p0, p0, 0x6

    .line 67
    .line 68
    if-ne p0, v6, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    const/4 v0, 0x0

    .line 72
    :cond_4
    :goto_0
    invoke-virtual {p4}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    if-ne p0, v1, :cond_6

    .line 79
    .line 80
    :cond_5
    new-instance p0, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStepKt$FauxNotificationsStack$animatedScale$1$1;

    .line 81
    .line 82
    invoke-direct {p0, p2, p3, p1, v5}, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStepKt$FauxNotificationsStack$animatedScale$1$1;-><init>(JLandroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_6
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 89
    .line 90
    invoke-static {p4, v3, p0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    check-cast p0, Ljava/lang/Number;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0
.end method
