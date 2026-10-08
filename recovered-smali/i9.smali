.class public final synthetic Li9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Z

.field public final synthetic l:Z

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZZI)V
    .locals 0

    .line 16
    iput p5, p0, Li9;->j:I

    iput-object p1, p0, Li9;->m:Ljava/lang/Object;

    iput-object p2, p0, Li9;->n:Ljava/lang/Object;

    iput-boolean p3, p0, Li9;->k:Z

    iput-boolean p4, p0, Li9;->l:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/libblip/Peer;ZLkotlin/jvm/functions/Function1;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Li9;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Li9;->m:Ljava/lang/Object;

    .line 8
    .line 9
    iput-boolean p2, p0, Li9;->k:Z

    .line 10
    .line 11
    iput-object p3, p0, Li9;->n:Ljava/lang/Object;

    .line 12
    .line 13
    iput-boolean p4, p0, Li9;->l:Z

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Li9;->j:I

    .line 4
    .line 5
    iget-boolean v2, v0, Li9;->l:Z

    .line 6
    .line 7
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 11
    .line 12
    iget-object v6, v0, Li9;->n:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v7, v0, Li9;->m:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v8, 0x2

    .line 17
    const/4 v9, 0x1

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object v12, v7

    .line 22
    check-cast v12, Lnet/blip/libblip/Peer;

    .line 23
    .line 24
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    move-object/from16 v1, p1

    .line 27
    .line 28
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 29
    .line 30
    move-object/from16 v7, p2

    .line 31
    .line 32
    check-cast v7, Ljava/lang/Integer;

    .line 33
    .line 34
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    and-int/lit8 v10, v7, 0x3

    .line 39
    .line 40
    if-eq v10, v8, :cond_0

    .line 41
    .line 42
    move v10, v9

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    move v10, v4

    .line 45
    :goto_0
    and-int/2addr v7, v9

    .line 46
    move-object v14, v1

    .line 47
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 48
    .line 49
    invoke-virtual {v14, v7, v10}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_15

    .line 54
    .line 55
    sget-object v1, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 56
    .line 57
    const/high16 v7, 0x3f800000    # 1.0f

    .line 58
    .line 59
    invoke-static {v1, v7}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    invoke-static {v14}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 64
    .line 65
    .line 66
    move-result-object v11

    .line 67
    invoke-static {v10, v11}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    invoke-static {v10}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->c(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    sget-object v11, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 76
    .line 77
    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 78
    .line 79
    invoke-static {v11, v13, v14, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    move-object/from16 v24, v5

    .line 84
    .line 85
    iget-wide v4, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 86
    .line 87
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 88
    .line 89
    .line 90
    move-result v4

    .line 91
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-static {v14, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 100
    .line 101
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 105
    .line 106
    .line 107
    iget-boolean v9, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 108
    .line 109
    move-object/from16 p1, v13

    .line 110
    .line 111
    sget-object v13, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 112
    .line 113
    if-eqz v9, :cond_1

    .line 114
    .line 115
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 120
    .line 121
    .line 122
    :goto_1
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 123
    .line 124
    invoke-static {v14, v15, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 125
    .line 126
    .line 127
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 128
    .line 129
    invoke-static {v14, v5, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 137
    .line 138
    invoke-static {v14, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v14}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 142
    .line 143
    .line 144
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 145
    .line 146
    invoke-static {v14, v10, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v1, v7}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    const/high16 v7, 0x41c00000    # 24.0f

    .line 154
    .line 155
    move-object/from16 v26, v3

    .line 156
    .line 157
    const/4 v3, 0x0

    .line 158
    invoke-static {v10, v7, v3, v8}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 159
    .line 160
    .line 161
    move-result-object v16

    .line 162
    const/high16 v20, 0x42280000    # 42.0f

    .line 163
    .line 164
    const/16 v21, 0x5

    .line 165
    .line 166
    const/16 v17, 0x0

    .line 167
    .line 168
    const/high16 v18, 0x42600000    # 56.0f

    .line 169
    .line 170
    const/16 v19, 0x0

    .line 171
    .line 172
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 177
    .line 178
    const/16 v10, 0x30

    .line 179
    .line 180
    invoke-static {v11, v8, v14, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    move-object/from16 v27, v4

    .line 185
    .line 186
    iget-wide v3, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 187
    .line 188
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-static {v14, v7}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 201
    .line 202
    .line 203
    iget-boolean v10, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 204
    .line 205
    if-eqz v10, :cond_2

    .line 206
    .line 207
    invoke-virtual {v14, v13}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_2
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 212
    .line 213
    .line 214
    :goto_2
    invoke-static {v14, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v14, v4, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v3, v14, v5, v14}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 221
    .line 222
    .line 223
    move-object/from16 v3, v27

    .line 224
    .line 225
    invoke-static {v14, v7, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 226
    .line 227
    .line 228
    const/high16 v4, 0x43140000    # 148.0f

    .line 229
    .line 230
    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 231
    .line 232
    .line 233
    move-result-object v10

    .line 234
    move-object v4, v15

    .line 235
    const/4 v15, 0x6

    .line 236
    const/16 v16, 0xa

    .line 237
    .line 238
    move-object v7, v11

    .line 239
    const/4 v11, 0x0

    .line 240
    move-object v8, v13

    .line 241
    const/4 v13, 0x0

    .line 242
    move/from16 v27, v2

    .line 243
    .line 244
    move-object v2, v4

    .line 245
    move-object/from16 v4, p1

    .line 246
    .line 247
    invoke-static/range {v10 .. v16}, Lnet/blip/shared/AvatarKt;->d(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 248
    .line 249
    .line 250
    const/high16 v10, 0x41800000    # 16.0f

    .line 251
    .line 252
    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    invoke-static {v14, v11}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v12}, Lnet/blip/libblip/Peer;->b()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v13

    .line 263
    sget-object v11, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 264
    .line 265
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v15

    .line 269
    check-cast v15, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 270
    .line 271
    iget-object v15, v15, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 272
    .line 273
    const/16 v16, 0x1c

    .line 274
    .line 275
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 276
    .line 277
    .line 278
    move-result-wide v32

    .line 279
    sget-object v34, Landroidx/compose/ui/text/font/FontWeight;->u:Landroidx/compose/ui/text/font/FontWeight;

    .line 280
    .line 281
    const/16 v40, 0x0

    .line 282
    .line 283
    const v41, 0xfffff9

    .line 284
    .line 285
    .line 286
    const-wide/16 v30, 0x0

    .line 287
    .line 288
    const-wide/16 v35, 0x0

    .line 289
    .line 290
    const-wide/16 v37, 0x0

    .line 291
    .line 292
    const/16 v39, 0x0

    .line 293
    .line 294
    move-object/from16 v29, v15

    .line 295
    .line 296
    invoke-static/range {v29 .. v41}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 297
    .line 298
    .line 299
    move-result-object v15

    .line 300
    const/16 v22, 0x0

    .line 301
    .line 302
    const/16 v23, 0x1fa

    .line 303
    .line 304
    move-object/from16 v20, v14

    .line 305
    .line 306
    const/4 v14, 0x0

    .line 307
    const/16 v16, 0x0

    .line 308
    .line 309
    const/16 v17, 0x0

    .line 310
    .line 311
    const/16 v18, 0x0

    .line 312
    .line 313
    const/16 v19, 0x0

    .line 314
    .line 315
    move-object/from16 v21, v20

    .line 316
    .line 317
    const/16 v20, 0x0

    .line 318
    .line 319
    invoke-static/range {v13 .. v23}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 320
    .line 321
    .line 322
    move-object/from16 v14, v21

    .line 323
    .line 324
    const/high16 v13, 0x40000000    # 2.0f

    .line 325
    .line 326
    invoke-static {v1, v13}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 327
    .line 328
    .line 329
    move-result-object v15

    .line 330
    invoke-static {v14, v15}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v12}, Lnet/blip/libblip/Peer;->a()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v12

    .line 337
    invoke-virtual {v14, v11}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v11

    .line 341
    check-cast v11, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 342
    .line 343
    iget-object v11, v11, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 344
    .line 345
    sget-object v15, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 346
    .line 347
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v15

    .line 351
    check-cast v15, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 352
    .line 353
    iget-wide v13, v15, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 354
    .line 355
    const/16 v15, 0x10

    .line 356
    .line 357
    invoke-static {v15}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 358
    .line 359
    .line 360
    move-result-wide v32

    .line 361
    const v41, 0xdf7ffc

    .line 362
    .line 363
    .line 364
    const/16 v34, 0x0

    .line 365
    .line 366
    const v40, 0x20203

    .line 367
    .line 368
    .line 369
    move-object/from16 v29, v11

    .line 370
    .line 371
    move-wide/from16 v30, v13

    .line 372
    .line 373
    invoke-static/range {v29 .. v41}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 374
    .line 375
    .line 376
    move-result-object v15

    .line 377
    const/4 v14, 0x0

    .line 378
    move-object v13, v12

    .line 379
    const/high16 v11, 0x40000000    # 2.0f

    .line 380
    .line 381
    invoke-static/range {v13 .. v23}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 382
    .line 383
    .line 384
    move-object/from16 v14, v21

    .line 385
    .line 386
    const/4 v12, 0x1

    .line 387
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 388
    .line 389
    .line 390
    const/4 v13, 0x0

    .line 391
    const/4 v15, 0x0

    .line 392
    invoke-static {v13, v14, v15, v12}, Lnet/blip/android/ui/components/DividerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 393
    .line 394
    .line 395
    const/high16 v12, 0x41e00000    # 28.0f

    .line 396
    .line 397
    const/high16 v13, 0x41000000    # 8.0f

    .line 398
    .line 399
    invoke-static {v1, v13, v12}, Landroidx/compose/foundation/layout/PaddingKt;->e(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-static {v7, v4, v14, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 404
    .line 405
    .line 406
    move-result-object v4

    .line 407
    iget-wide v10, v14, Landroidx/compose/runtime/GapComposer;->T:J

    .line 408
    .line 409
    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 414
    .line 415
    .line 416
    move-result-object v11

    .line 417
    invoke-static {v14, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 422
    .line 423
    .line 424
    iget-boolean v12, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 425
    .line 426
    if-eqz v12, :cond_3

    .line 427
    .line 428
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 429
    .line 430
    .line 431
    goto :goto_3

    .line 432
    :cond_3
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 433
    .line 434
    .line 435
    :goto_3
    invoke-static {v14, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 436
    .line 437
    .line 438
    invoke-static {v14, v11, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 439
    .line 440
    .line 441
    invoke-static {v10, v14, v5, v14}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 442
    .line 443
    .line 444
    invoke-static {v14, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 445
    .line 446
    .line 447
    sget-object v1, Landroidx/compose/material/icons/automirrored/rounded/AssignmentKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 448
    .line 449
    const/high16 v2, 0x40400000    # 3.0f

    .line 450
    .line 451
    const/high16 v3, 0x41400000    # 12.0f

    .line 452
    .line 453
    const/high16 v4, 0x41a80000    # 21.0f

    .line 454
    .line 455
    const/high16 v5, 0x41980000    # 19.0f

    .line 456
    .line 457
    const/high16 v8, 0x41500000    # 13.0f

    .line 458
    .line 459
    const/high16 v9, 0x41880000    # 17.0f

    .line 460
    .line 461
    const/high16 v11, 0x40a00000    # 5.0f

    .line 462
    .line 463
    const/high16 v12, 0x41600000    # 14.0f

    .line 464
    .line 465
    if-eqz v1, :cond_4

    .line 466
    .line 467
    move v7, v13

    .line 468
    move-object/from16 v21, v14

    .line 469
    .line 470
    :goto_4
    move-object v13, v1

    .line 471
    goto/16 :goto_5

    .line 472
    .line 473
    :cond_4
    new-instance v29, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 474
    .line 475
    const/16 v37, 0x0

    .line 476
    .line 477
    const/16 v39, 0x60

    .line 478
    .line 479
    const/16 v38, 0x1

    .line 480
    .line 481
    const/high16 v31, 0x41c00000    # 24.0f

    .line 482
    .line 483
    const/high16 v32, 0x41c00000    # 24.0f

    .line 484
    .line 485
    const/high16 v33, 0x41c00000    # 24.0f

    .line 486
    .line 487
    const/high16 v34, 0x41c00000    # 24.0f

    .line 488
    .line 489
    const-wide/16 v35, 0x0

    .line 490
    .line 491
    const-string v30, "AutoMirrored.Rounded.Assignment"

    .line 492
    .line 493
    invoke-direct/range {v29 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 494
    .line 495
    .line 496
    move-object/from16 v1, v29

    .line 497
    .line 498
    sget v15, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 499
    .line 500
    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    .line 501
    .line 502
    move-object/from16 v21, v14

    .line 503
    .line 504
    sget-wide v13, Landroidx/compose/ui/graphics/Color;->b:J

    .line 505
    .line 506
    invoke-direct {v15, v13, v14}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 507
    .line 508
    .line 509
    new-instance v13, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 510
    .line 511
    invoke-direct {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v13, v5, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 515
    .line 516
    .line 517
    const v14, -0x3f7a3d71    # -4.18f

    .line 518
    .line 519
    .line 520
    invoke-virtual {v13, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 521
    .line 522
    .line 523
    const/high16 v34, 0x41400000    # 12.0f

    .line 524
    .line 525
    const/high16 v35, 0x3f800000    # 1.0f

    .line 526
    .line 527
    const v30, 0x41666666    # 14.4f

    .line 528
    .line 529
    .line 530
    const v31, 0x3feb851f    # 1.84f

    .line 531
    .line 532
    .line 533
    const v32, 0x4154cccd    # 13.3f

    .line 534
    .line 535
    .line 536
    const/high16 v33, 0x3f800000    # 1.0f

    .line 537
    .line 538
    move-object/from16 v29, v13

    .line 539
    .line 540
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 541
    .line 542
    .line 543
    const v14, 0x3f570a3d    # 0.84f

    .line 544
    .line 545
    .line 546
    const v7, -0x3fcb851f    # -2.82f

    .line 547
    .line 548
    .line 549
    const v5, -0x3fe66666    # -2.4f

    .line 550
    .line 551
    .line 552
    const/high16 v10, 0x40000000    # 2.0f

    .line 553
    .line 554
    invoke-virtual {v13, v5, v14, v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v13, v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 558
    .line 559
    .line 560
    const/high16 v34, -0x40000000    # -2.0f

    .line 561
    .line 562
    const/high16 v35, 0x40000000    # 2.0f

    .line 563
    .line 564
    const v30, -0x40733333    # -1.1f

    .line 565
    .line 566
    .line 567
    const/16 v31, 0x0

    .line 568
    .line 569
    const/high16 v32, -0x40000000    # -2.0f

    .line 570
    .line 571
    const v33, 0x3f666666    # 0.9f

    .line 572
    .line 573
    .line 574
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v13, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 578
    .line 579
    .line 580
    const/high16 v34, 0x40000000    # 2.0f

    .line 581
    .line 582
    const/16 v30, 0x0

    .line 583
    .line 584
    const v31, 0x3f8ccccd    # 1.1f

    .line 585
    .line 586
    .line 587
    const v32, 0x3f666666    # 0.9f

    .line 588
    .line 589
    .line 590
    const/high16 v33, 0x40000000    # 2.0f

    .line 591
    .line 592
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v13, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 596
    .line 597
    .line 598
    const/high16 v35, -0x40000000    # -2.0f

    .line 599
    .line 600
    const v30, 0x3f8ccccd    # 1.1f

    .line 601
    .line 602
    .line 603
    const/16 v31, 0x0

    .line 604
    .line 605
    const/high16 v32, 0x40000000    # 2.0f

    .line 606
    .line 607
    const v33, -0x4099999a    # -0.9f

    .line 608
    .line 609
    .line 610
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v13, v4, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 614
    .line 615
    .line 616
    const/high16 v34, -0x40000000    # -2.0f

    .line 617
    .line 618
    const/16 v30, 0x0

    .line 619
    .line 620
    const v31, -0x40733333    # -1.1f

    .line 621
    .line 622
    .line 623
    const v32, -0x4099999a    # -0.9f

    .line 624
    .line 625
    .line 626
    const/high16 v33, -0x40000000    # -2.0f

    .line 627
    .line 628
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v13, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 635
    .line 636
    .line 637
    const/high16 v34, 0x3f800000    # 1.0f

    .line 638
    .line 639
    const/high16 v35, 0x3f800000    # 1.0f

    .line 640
    .line 641
    const v30, 0x3f0ccccd    # 0.55f

    .line 642
    .line 643
    .line 644
    const/16 v31, 0x0

    .line 645
    .line 646
    const/high16 v32, 0x3f800000    # 1.0f

    .line 647
    .line 648
    const v33, 0x3ee66666    # 0.45f

    .line 649
    .line 650
    .line 651
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 652
    .line 653
    .line 654
    const v5, -0x4119999a    # -0.45f

    .line 655
    .line 656
    .line 657
    const/high16 v10, -0x40800000    # -1.0f

    .line 658
    .line 659
    const/high16 v14, 0x3f800000    # 1.0f

    .line 660
    .line 661
    invoke-virtual {v13, v5, v14, v10, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v13, v10, v5, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 665
    .line 666
    .line 667
    const v5, 0x3ee66666    # 0.45f

    .line 668
    .line 669
    .line 670
    invoke-virtual {v13, v5, v10, v14, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 671
    .line 672
    .line 673
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v13, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 677
    .line 678
    .line 679
    const/high16 v5, 0x41000000    # 8.0f

    .line 680
    .line 681
    invoke-virtual {v13, v5, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 682
    .line 683
    .line 684
    const/high16 v34, -0x40800000    # -1.0f

    .line 685
    .line 686
    const/high16 v35, -0x40800000    # -1.0f

    .line 687
    .line 688
    const v30, -0x40f33333    # -0.55f

    .line 689
    .line 690
    .line 691
    const/high16 v32, -0x40800000    # -1.0f

    .line 692
    .line 693
    const v33, -0x4119999a    # -0.45f

    .line 694
    .line 695
    .line 696
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 697
    .line 698
    .line 699
    const v5, 0x3ee66666    # 0.45f

    .line 700
    .line 701
    .line 702
    const/high16 v14, 0x3f800000    # 1.0f

    .line 703
    .line 704
    invoke-virtual {v13, v5, v10, v14, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 708
    .line 709
    .line 710
    const/high16 v34, 0x3f800000    # 1.0f

    .line 711
    .line 712
    const/high16 v35, 0x3f800000    # 1.0f

    .line 713
    .line 714
    const v30, 0x3f0ccccd    # 0.55f

    .line 715
    .line 716
    .line 717
    const/high16 v32, 0x3f800000    # 1.0f

    .line 718
    .line 719
    const v33, 0x3ee66666    # 0.45f

    .line 720
    .line 721
    .line 722
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 723
    .line 724
    .line 725
    const v5, -0x4119999a    # -0.45f

    .line 726
    .line 727
    .line 728
    invoke-virtual {v13, v5, v14, v10, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 732
    .line 733
    .line 734
    const/high16 v5, 0x41800000    # 16.0f

    .line 735
    .line 736
    invoke-virtual {v13, v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 737
    .line 738
    .line 739
    const/high16 v5, 0x41000000    # 8.0f

    .line 740
    .line 741
    invoke-virtual {v13, v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 742
    .line 743
    .line 744
    const/high16 v34, -0x40800000    # -1.0f

    .line 745
    .line 746
    const/high16 v35, -0x40800000    # -1.0f

    .line 747
    .line 748
    const v30, -0x40f33333    # -0.55f

    .line 749
    .line 750
    .line 751
    const/high16 v32, -0x40800000    # -1.0f

    .line 752
    .line 753
    const v33, -0x4119999a    # -0.45f

    .line 754
    .line 755
    .line 756
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 757
    .line 758
    .line 759
    const v10, 0x3ee66666    # 0.45f

    .line 760
    .line 761
    .line 762
    const/high16 v14, -0x40800000    # -1.0f

    .line 763
    .line 764
    const/high16 v7, 0x3f800000    # 1.0f

    .line 765
    .line 766
    invoke-virtual {v13, v10, v14, v7, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v13, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 770
    .line 771
    .line 772
    const/high16 v34, 0x3f800000    # 1.0f

    .line 773
    .line 774
    const/high16 v35, 0x3f800000    # 1.0f

    .line 775
    .line 776
    const v30, 0x3f0ccccd    # 0.55f

    .line 777
    .line 778
    .line 779
    const/high16 v32, 0x3f800000    # 1.0f

    .line 780
    .line 781
    const v33, 0x3ee66666    # 0.45f

    .line 782
    .line 783
    .line 784
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 785
    .line 786
    .line 787
    const v5, -0x4119999a    # -0.45f

    .line 788
    .line 789
    .line 790
    const/high16 v10, -0x40800000    # -1.0f

    .line 791
    .line 792
    invoke-virtual {v13, v5, v7, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 793
    .line 794
    .line 795
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 796
    .line 797
    .line 798
    const/high16 v5, 0x41100000    # 9.0f

    .line 799
    .line 800
    const/high16 v7, 0x41800000    # 16.0f

    .line 801
    .line 802
    invoke-virtual {v13, v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 803
    .line 804
    .line 805
    const/high16 v7, 0x41000000    # 8.0f

    .line 806
    .line 807
    invoke-virtual {v13, v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 808
    .line 809
    .line 810
    const/high16 v34, -0x40800000    # -1.0f

    .line 811
    .line 812
    const/high16 v35, -0x40800000    # -1.0f

    .line 813
    .line 814
    const v30, -0x40f33333    # -0.55f

    .line 815
    .line 816
    .line 817
    const/high16 v32, -0x40800000    # -1.0f

    .line 818
    .line 819
    const v33, -0x4119999a    # -0.45f

    .line 820
    .line 821
    .line 822
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 823
    .line 824
    .line 825
    const v5, 0x3ee66666    # 0.45f

    .line 826
    .line 827
    .line 828
    const/high16 v14, 0x3f800000    # 1.0f

    .line 829
    .line 830
    invoke-virtual {v13, v5, v10, v14, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 831
    .line 832
    .line 833
    invoke-virtual {v13, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 834
    .line 835
    .line 836
    const/high16 v34, 0x3f800000    # 1.0f

    .line 837
    .line 838
    const/high16 v35, 0x3f800000    # 1.0f

    .line 839
    .line 840
    const v30, 0x3f0ccccd    # 0.55f

    .line 841
    .line 842
    .line 843
    const/high16 v32, 0x3f800000    # 1.0f

    .line 844
    .line 845
    const v33, 0x3ee66666    # 0.45f

    .line 846
    .line 847
    .line 848
    invoke-virtual/range {v29 .. v35}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 849
    .line 850
    .line 851
    const v5, -0x4119999a    # -0.45f

    .line 852
    .line 853
    .line 854
    invoke-virtual {v13, v5, v14, v10, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 858
    .line 859
    .line 860
    iget-object v5, v13, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 861
    .line 862
    invoke-static {v1, v5, v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    sput-object v1, Landroidx/compose/material/icons/automirrored/rounded/AssignmentKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 870
    .line 871
    goto/16 :goto_4

    .line 872
    .line 873
    :goto_5
    const-wide v14, 0xff24904cL

    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    invoke-static {v14, v15}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 879
    .line 880
    .line 881
    move-result-wide v14

    .line 882
    move-object/from16 v1, v21

    .line 883
    .line 884
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 885
    .line 886
    .line 887
    move-result v5

    .line 888
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    move-result-object v10

    .line 892
    if-nez v5, :cond_5

    .line 893
    .line 894
    move-object/from16 v5, v24

    .line 895
    .line 896
    if-ne v10, v5, :cond_6

    .line 897
    .line 898
    goto :goto_6

    .line 899
    :cond_5
    move-object/from16 v5, v24

    .line 900
    .line 901
    :goto_6
    new-instance v10, Lb8;

    .line 902
    .line 903
    const/16 v7, 0xa

    .line 904
    .line 905
    invoke-direct {v10, v6, v7}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 909
    .line 910
    .line 911
    :cond_6
    move-object/from16 v19, v10

    .line 912
    .line 913
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 914
    .line 915
    const/16 v21, 0xdb0

    .line 916
    .line 917
    const/16 v22, 0x0

    .line 918
    .line 919
    const/high16 v7, 0x41000000    # 8.0f

    .line 920
    .line 921
    const-string v16, "Paste"

    .line 922
    .line 923
    const-string v17, "Send copied text, links, and files"

    .line 924
    .line 925
    iget-boolean v0, v0, Li9;->k:Z

    .line 926
    .line 927
    move/from16 v18, v0

    .line 928
    .line 929
    move-object/from16 v20, v1

    .line 930
    .line 931
    move v0, v7

    .line 932
    invoke-static/range {v13 .. v22}, Lnet/blip/android/ui/peer/PeerScreenKt;->a(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 933
    .line 934
    .line 935
    move-object/from16 v14, v20

    .line 936
    .line 937
    sget-object v1, Landroidx/compose/material/icons/rounded/PhotoKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 938
    .line 939
    if-eqz v1, :cond_7

    .line 940
    .line 941
    :goto_7
    move-object v13, v1

    .line 942
    goto/16 :goto_8

    .line 943
    .line 944
    :cond_7
    new-instance v38, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 945
    .line 946
    const/16 v46, 0x0

    .line 947
    .line 948
    const/16 v48, 0x60

    .line 949
    .line 950
    const-string v39, "Rounded.Photo"

    .line 951
    .line 952
    const/high16 v40, 0x41c00000    # 24.0f

    .line 953
    .line 954
    const/high16 v41, 0x41c00000    # 24.0f

    .line 955
    .line 956
    const/high16 v42, 0x41c00000    # 24.0f

    .line 957
    .line 958
    const/high16 v43, 0x41c00000    # 24.0f

    .line 959
    .line 960
    const-wide/16 v44, 0x0

    .line 961
    .line 962
    const/16 v47, 0x0

    .line 963
    .line 964
    invoke-direct/range {v38 .. v48}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 965
    .line 966
    .line 967
    move-object/from16 v1, v38

    .line 968
    .line 969
    sget v7, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 970
    .line 971
    new-instance v7, Landroidx/compose/ui/graphics/SolidColor;

    .line 972
    .line 973
    sget-wide v9, Landroidx/compose/ui/graphics/Color;->b:J

    .line 974
    .line 975
    invoke-direct {v7, v9, v10}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 976
    .line 977
    .line 978
    new-instance v15, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 979
    .line 980
    invoke-direct {v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 981
    .line 982
    .line 983
    const/high16 v9, 0x41980000    # 19.0f

    .line 984
    .line 985
    invoke-virtual {v15, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 986
    .line 987
    .line 988
    invoke-virtual {v15, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->l(F)V

    .line 989
    .line 990
    .line 991
    const/high16 v20, -0x40000000    # -2.0f

    .line 992
    .line 993
    const/high16 v21, -0x40000000    # -2.0f

    .line 994
    .line 995
    const/16 v16, 0x0

    .line 996
    .line 997
    const v17, -0x40733333    # -1.1f

    .line 998
    .line 999
    .line 1000
    const v18, -0x4099999a    # -0.9f

    .line 1001
    .line 1002
    .line 1003
    const/high16 v19, -0x40000000    # -2.0f

    .line 1004
    .line 1005
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v15, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 1009
    .line 1010
    .line 1011
    const/high16 v21, 0x40000000    # 2.0f

    .line 1012
    .line 1013
    const v16, -0x40733333    # -1.1f

    .line 1014
    .line 1015
    .line 1016
    const/16 v17, 0x0

    .line 1017
    .line 1018
    const/high16 v18, -0x40000000    # -2.0f

    .line 1019
    .line 1020
    const v19, 0x3f666666    # 0.9f

    .line 1021
    .line 1022
    .line 1023
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v15, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1027
    .line 1028
    .line 1029
    const/high16 v20, 0x40000000    # 2.0f

    .line 1030
    .line 1031
    const/16 v16, 0x0

    .line 1032
    .line 1033
    const v17, 0x3f8ccccd    # 1.1f

    .line 1034
    .line 1035
    .line 1036
    const v18, 0x3f666666    # 0.9f

    .line 1037
    .line 1038
    .line 1039
    const/high16 v19, 0x40000000    # 2.0f

    .line 1040
    .line 1041
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v15, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1045
    .line 1046
    .line 1047
    const/high16 v21, -0x40000000    # -2.0f

    .line 1048
    .line 1049
    const v16, 0x3f8ccccd    # 1.1f

    .line 1050
    .line 1051
    .line 1052
    const/16 v17, 0x0

    .line 1053
    .line 1054
    const/high16 v18, 0x40000000    # 2.0f

    .line 1055
    .line 1056
    const v19, -0x4099999a    # -0.9f

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1063
    .line 1064
    .line 1065
    const v4, 0x410e6666    # 8.9f

    .line 1066
    .line 1067
    .line 1068
    const v9, 0x415fae14    # 13.98f

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v15, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1072
    .line 1073
    .line 1074
    const v4, 0x40066666    # 2.1f

    .line 1075
    .line 1076
    .line 1077
    const v9, 0x4021eb85    # 2.53f

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v15, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1081
    .line 1082
    .line 1083
    const v4, 0x40466666    # 3.1f

    .line 1084
    .line 1085
    .line 1086
    const v9, -0x3f80a3d7    # -3.99f

    .line 1087
    .line 1088
    .line 1089
    invoke-virtual {v15, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1090
    .line 1091
    .line 1092
    const v20, 0x3f4ccccd    # 0.8f

    .line 1093
    .line 1094
    .line 1095
    const v21, 0x3c23d70a    # 0.01f

    .line 1096
    .line 1097
    .line 1098
    const v16, 0x3e4ccccd    # 0.2f

    .line 1099
    .line 1100
    .line 1101
    const v17, -0x417ae148    # -0.26f

    .line 1102
    .line 1103
    .line 1104
    const v18, 0x3f19999a    # 0.6f

    .line 1105
    .line 1106
    .line 1107
    const v19, -0x417ae148    # -0.26f

    .line 1108
    .line 1109
    .line 1110
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1111
    .line 1112
    .line 1113
    const v4, 0x4060a3d7    # 3.51f

    .line 1114
    .line 1115
    .line 1116
    const v9, 0x4095c28f    # 4.68f

    .line 1117
    .line 1118
    .line 1119
    invoke-virtual {v15, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1120
    .line 1121
    .line 1122
    const v20, -0x41333333    # -0.4f

    .line 1123
    .line 1124
    .line 1125
    const v21, 0x3f4ccccd    # 0.8f

    .line 1126
    .line 1127
    .line 1128
    const/high16 v16, 0x3e800000    # 0.25f

    .line 1129
    .line 1130
    const v17, 0x3ea8f5c3    # 0.33f

    .line 1131
    .line 1132
    .line 1133
    const v18, 0x3c23d70a    # 0.01f

    .line 1134
    .line 1135
    .line 1136
    const v19, 0x3f4ccccd    # 0.8f

    .line 1137
    .line 1138
    .line 1139
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1140
    .line 1141
    .line 1142
    const v4, 0x40c0a3d7    # 6.02f

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v15, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 1146
    .line 1147
    .line 1148
    const v20, -0x413851ec    # -0.39f

    .line 1149
    .line 1150
    .line 1151
    const v21, -0x40b0a3d7    # -0.81f

    .line 1152
    .line 1153
    .line 1154
    const v16, -0x4128f5c3    # -0.42f

    .line 1155
    .line 1156
    .line 1157
    const/16 v17, 0x0

    .line 1158
    .line 1159
    const v18, -0x40d9999a    # -0.65f

    .line 1160
    .line 1161
    .line 1162
    const v19, -0x410a3d71    # -0.48f

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1166
    .line 1167
    .line 1168
    const v4, 0x4101eb85    # 8.12f

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v15, v4, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1172
    .line 1173
    .line 1174
    const v20, 0x3f47ae14    # 0.78f

    .line 1175
    .line 1176
    .line 1177
    const v21, -0x435c28f6    # -0.02f

    .line 1178
    .line 1179
    .line 1180
    const v16, 0x3e428f5c    # 0.19f

    .line 1181
    .line 1182
    .line 1183
    const v17, -0x417ae148    # -0.26f

    .line 1184
    .line 1185
    .line 1186
    const v18, 0x3f11eb85    # 0.57f

    .line 1187
    .line 1188
    .line 1189
    const v19, -0x4175c28f    # -0.27f

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1196
    .line 1197
    .line 1198
    iget-object v4, v15, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1199
    .line 1200
    invoke-static {v1, v4, v7}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v1

    .line 1207
    sput-object v1, Landroidx/compose/material/icons/rounded/PhotoKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1208
    .line 1209
    goto/16 :goto_7

    .line 1210
    .line 1211
    :goto_8
    const-wide v9, 0xffb659e5L

    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    invoke-static {v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 1217
    .line 1218
    .line 1219
    move-result-wide v9

    .line 1220
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v1

    .line 1224
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v4

    .line 1228
    if-nez v1, :cond_8

    .line 1229
    .line 1230
    if-ne v4, v5, :cond_9

    .line 1231
    .line 1232
    :cond_8
    new-instance v4, Lb8;

    .line 1233
    .line 1234
    const/16 v1, 0xb

    .line 1235
    .line 1236
    invoke-direct {v4, v6, v1}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1240
    .line 1241
    .line 1242
    :cond_9
    move-object/from16 v19, v4

    .line 1243
    .line 1244
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 1245
    .line 1246
    const/16 v21, 0xdb0

    .line 1247
    .line 1248
    const/16 v22, 0x10

    .line 1249
    .line 1250
    const-string v16, "Photos and videos"

    .line 1251
    .line 1252
    const-string v17, "Send media saved on this phone"

    .line 1253
    .line 1254
    const/16 v18, 0x0

    .line 1255
    .line 1256
    move-object/from16 v20, v14

    .line 1257
    .line 1258
    move-wide v14, v9

    .line 1259
    invoke-static/range {v13 .. v22}, Lnet/blip/android/ui/peer/PeerScreenKt;->a(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 1260
    .line 1261
    .line 1262
    move-object/from16 v14, v20

    .line 1263
    .line 1264
    sget-object v1, Landroidx/compose/material/icons/automirrored/rounded/InsertDriveFileKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1265
    .line 1266
    const/high16 v4, 0x41b00000    # 22.0f

    .line 1267
    .line 1268
    const/high16 v9, 0x40800000    # 4.0f

    .line 1269
    .line 1270
    const/high16 v10, 0x40c00000    # 6.0f

    .line 1271
    .line 1272
    const/high16 v13, 0x41a00000    # 20.0f

    .line 1273
    .line 1274
    if-eqz v1, :cond_a

    .line 1275
    .line 1276
    goto/16 :goto_9

    .line 1277
    .line 1278
    :cond_a
    new-instance v38, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1279
    .line 1280
    const/16 v46, 0x0

    .line 1281
    .line 1282
    const/16 v48, 0x60

    .line 1283
    .line 1284
    const-string v39, "AutoMirrored.Rounded.InsertDriveFile"

    .line 1285
    .line 1286
    const/high16 v40, 0x41c00000    # 24.0f

    .line 1287
    .line 1288
    const/high16 v41, 0x41c00000    # 24.0f

    .line 1289
    .line 1290
    const/high16 v42, 0x41c00000    # 24.0f

    .line 1291
    .line 1292
    const/high16 v43, 0x41c00000    # 24.0f

    .line 1293
    .line 1294
    const-wide/16 v44, 0x0

    .line 1295
    .line 1296
    const/16 v47, 0x1

    .line 1297
    .line 1298
    invoke-direct/range {v38 .. v48}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1299
    .line 1300
    .line 1301
    move-object/from16 v1, v38

    .line 1302
    .line 1303
    sget v7, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 1304
    .line 1305
    new-instance v15, Landroidx/compose/ui/graphics/SolidColor;

    .line 1306
    .line 1307
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->b:J

    .line 1308
    .line 1309
    invoke-direct {v15, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1310
    .line 1311
    .line 1312
    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 1313
    .line 1314
    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 1315
    .line 1316
    .line 1317
    const/high16 v7, 0x40000000    # 2.0f

    .line 1318
    .line 1319
    invoke-virtual {v2, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1320
    .line 1321
    .line 1322
    const v21, -0x400147ae    # -1.99f

    .line 1323
    .line 1324
    .line 1325
    const/high16 v22, 0x40000000    # 2.0f

    .line 1326
    .line 1327
    const v17, -0x40733333    # -1.1f

    .line 1328
    .line 1329
    .line 1330
    const/16 v18, 0x0

    .line 1331
    .line 1332
    const v19, -0x400147ae    # -1.99f

    .line 1333
    .line 1334
    .line 1335
    const v20, 0x3f666666    # 0.9f

    .line 1336
    .line 1337
    .line 1338
    move-object/from16 v16, v2

    .line 1339
    .line 1340
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1341
    .line 1342
    .line 1343
    invoke-virtual {v2, v9, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1344
    .line 1345
    .line 1346
    const v21, 0x3ffeb852    # 1.99f

    .line 1347
    .line 1348
    .line 1349
    const/16 v17, 0x0

    .line 1350
    .line 1351
    const v18, 0x3f8ccccd    # 1.1f

    .line 1352
    .line 1353
    .line 1354
    const v19, 0x3f63d70a    # 0.89f

    .line 1355
    .line 1356
    .line 1357
    const/high16 v20, 0x40000000    # 2.0f

    .line 1358
    .line 1359
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1360
    .line 1361
    .line 1362
    const/high16 v3, 0x41900000    # 18.0f

    .line 1363
    .line 1364
    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1365
    .line 1366
    .line 1367
    const/high16 v21, 0x40000000    # 2.0f

    .line 1368
    .line 1369
    const/high16 v22, -0x40000000    # -2.0f

    .line 1370
    .line 1371
    const v17, 0x3f8ccccd    # 1.1f

    .line 1372
    .line 1373
    .line 1374
    const/16 v18, 0x0

    .line 1375
    .line 1376
    const/high16 v19, 0x40000000    # 2.0f

    .line 1377
    .line 1378
    const v20, -0x4099999a    # -0.9f

    .line 1379
    .line 1380
    .line 1381
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1382
    .line 1383
    .line 1384
    const v3, 0x410d47ae    # 8.83f

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v2, v13, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1388
    .line 1389
    .line 1390
    const v21, -0x40e8f5c3    # -0.59f

    .line 1391
    .line 1392
    .line 1393
    const v22, -0x404b851f    # -1.41f

    .line 1394
    .line 1395
    .line 1396
    const/16 v17, 0x0

    .line 1397
    .line 1398
    const v18, -0x40f851ec    # -0.53f

    .line 1399
    .line 1400
    .line 1401
    const v19, -0x41a8f5c3    # -0.21f

    .line 1402
    .line 1403
    .line 1404
    const v20, -0x407ae148    # -1.04f

    .line 1405
    .line 1406
    .line 1407
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1408
    .line 1409
    .line 1410
    const v3, -0x3f6570a4    # -4.83f

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {v2, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1414
    .line 1415
    .line 1416
    const v21, -0x404b851f    # -1.41f

    .line 1417
    .line 1418
    .line 1419
    const v22, -0x40e8f5c3    # -0.59f

    .line 1420
    .line 1421
    .line 1422
    const v17, -0x41428f5c    # -0.37f

    .line 1423
    .line 1424
    .line 1425
    const v18, -0x413d70a4    # -0.38f

    .line 1426
    .line 1427
    .line 1428
    const v19, -0x409eb852    # -0.88f

    .line 1429
    .line 1430
    .line 1431
    const v20, -0x40e8f5c3    # -0.59f

    .line 1432
    .line 1433
    .line 1434
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1435
    .line 1436
    .line 1437
    const/high16 v7, 0x40000000    # 2.0f

    .line 1438
    .line 1439
    invoke-virtual {v2, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v2, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1446
    .line 1447
    .line 1448
    const/high16 v0, 0x40600000    # 3.5f

    .line 1449
    .line 1450
    invoke-virtual {v2, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1451
    .line 1452
    .line 1453
    const/high16 v0, 0x41940000    # 18.5f

    .line 1454
    .line 1455
    const/high16 v3, 0x41100000    # 9.0f

    .line 1456
    .line 1457
    invoke-virtual {v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {v2, v12, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1461
    .line 1462
    .line 1463
    const/high16 v21, -0x40800000    # -1.0f

    .line 1464
    .line 1465
    const/high16 v22, -0x40800000    # -1.0f

    .line 1466
    .line 1467
    const v17, -0x40f33333    # -0.55f

    .line 1468
    .line 1469
    .line 1470
    const/16 v18, 0x0

    .line 1471
    .line 1472
    const/high16 v19, -0x40800000    # -1.0f

    .line 1473
    .line 1474
    const v20, -0x4119999a    # -0.45f

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual/range {v16 .. v22}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1481
    .line 1482
    .line 1483
    iget-object v0, v2, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1484
    .line 1485
    invoke-static {v1, v0, v15}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v1

    .line 1492
    sput-object v1, Landroidx/compose/material/icons/automirrored/rounded/InsertDriveFileKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1493
    .line 1494
    :goto_9
    const-wide v2, 0xff745eeaL

    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 1500
    .line 1501
    .line 1502
    move-result-wide v2

    .line 1503
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1504
    .line 1505
    .line 1506
    move-result v0

    .line 1507
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v8

    .line 1511
    if-nez v0, :cond_b

    .line 1512
    .line 1513
    if-ne v8, v5, :cond_c

    .line 1514
    .line 1515
    :cond_b
    new-instance v8, Lb8;

    .line 1516
    .line 1517
    const/16 v0, 0xc

    .line 1518
    .line 1519
    invoke-direct {v8, v6, v0}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1523
    .line 1524
    .line 1525
    :cond_c
    move-object/from16 v19, v8

    .line 1526
    .line 1527
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 1528
    .line 1529
    const/16 v21, 0xdb0

    .line 1530
    .line 1531
    const/16 v22, 0x10

    .line 1532
    .line 1533
    const-string v16, "Files"

    .line 1534
    .line 1535
    const-string v17, "Send files saved by any app"

    .line 1536
    .line 1537
    const/16 v18, 0x0

    .line 1538
    .line 1539
    move v0, v13

    .line 1540
    move-object/from16 v20, v14

    .line 1541
    .line 1542
    move-object v13, v1

    .line 1543
    move-wide v14, v2

    .line 1544
    invoke-static/range {v13 .. v22}, Lnet/blip/android/ui/peer/PeerScreenKt;->a(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 1545
    .line 1546
    .line 1547
    move-object/from16 v14, v20

    .line 1548
    .line 1549
    invoke-static {}, Landroidx/compose/material/icons/rounded/FolderKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1550
    .line 1551
    .line 1552
    move-result-object v13

    .line 1553
    const-wide v1, 0xff3e78d8L

    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 1559
    .line 1560
    .line 1561
    move-result-wide v1

    .line 1562
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1563
    .line 1564
    .line 1565
    move-result v3

    .line 1566
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1567
    .line 1568
    .line 1569
    move-result-object v8

    .line 1570
    if-nez v3, :cond_d

    .line 1571
    .line 1572
    if-ne v8, v5, :cond_e

    .line 1573
    .line 1574
    :cond_d
    new-instance v8, Lb8;

    .line 1575
    .line 1576
    const/4 v3, 0x7

    .line 1577
    invoke-direct {v8, v6, v3}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1578
    .line 1579
    .line 1580
    invoke-virtual {v14, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1581
    .line 1582
    .line 1583
    :cond_e
    move-object/from16 v19, v8

    .line 1584
    .line 1585
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 1586
    .line 1587
    const/16 v21, 0xdb0

    .line 1588
    .line 1589
    const/16 v22, 0x10

    .line 1590
    .line 1591
    const-string v16, "Folder"

    .line 1592
    .line 1593
    const-string v17, "Send a folder and everything inside it"

    .line 1594
    .line 1595
    const/16 v18, 0x0

    .line 1596
    .line 1597
    move-object/from16 v20, v14

    .line 1598
    .line 1599
    move-wide v14, v1

    .line 1600
    invoke-static/range {v13 .. v22}, Lnet/blip/android/ui/peer/PeerScreenKt;->a(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 1601
    .line 1602
    .line 1603
    move-object/from16 v14, v20

    .line 1604
    .line 1605
    if-eqz v27, :cond_12

    .line 1606
    .line 1607
    const v1, 0x2b25c307

    .line 1608
    .line 1609
    .line 1610
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1611
    .line 1612
    .line 1613
    sget-object v1, Landroidx/compose/material/icons/rounded/CameraAltKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1614
    .line 1615
    if-eqz v1, :cond_f

    .line 1616
    .line 1617
    :goto_a
    move-object v13, v1

    .line 1618
    goto/16 :goto_b

    .line 1619
    .line 1620
    :cond_f
    new-instance v29, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1621
    .line 1622
    const/16 v37, 0x0

    .line 1623
    .line 1624
    const/16 v39, 0x60

    .line 1625
    .line 1626
    const-string v30, "Rounded.CameraAlt"

    .line 1627
    .line 1628
    const/high16 v31, 0x41c00000    # 24.0f

    .line 1629
    .line 1630
    const/high16 v32, 0x41c00000    # 24.0f

    .line 1631
    .line 1632
    const/high16 v33, 0x41c00000    # 24.0f

    .line 1633
    .line 1634
    const/high16 v34, 0x41c00000    # 24.0f

    .line 1635
    .line 1636
    const-wide/16 v35, 0x0

    .line 1637
    .line 1638
    const/16 v38, 0x0

    .line 1639
    .line 1640
    invoke-direct/range {v29 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1641
    .line 1642
    .line 1643
    move-object/from16 v1, v29

    .line 1644
    .line 1645
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 1646
    .line 1647
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 1648
    .line 1649
    sget-wide v12, Landroidx/compose/ui/graphics/Color;->b:J

    .line 1650
    .line 1651
    invoke-direct {v2, v12, v13}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1652
    .line 1653
    .line 1654
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 1655
    .line 1656
    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 1657
    .line 1658
    .line 1659
    const/high16 v8, 0x41400000    # 12.0f

    .line 1660
    .line 1661
    invoke-virtual {v3, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1662
    .line 1663
    .line 1664
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 1665
    .line 1666
    const/high16 v15, -0x3fc00000    # -3.0f

    .line 1667
    .line 1668
    const/4 v7, 0x0

    .line 1669
    invoke-direct {v8, v15, v7}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    .line 1670
    .line 1671
    .line 1672
    iget-object v7, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1673
    .line 1674
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    .line 1676
    .line 1677
    const/high16 v8, 0x40400000    # 3.0f

    .line 1678
    .line 1679
    invoke-virtual {v3, v8, v8, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a(FFF)V

    .line 1680
    .line 1681
    .line 1682
    const/high16 v15, -0x3f400000    # -6.0f

    .line 1683
    .line 1684
    invoke-virtual {v3, v8, v8, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a(FFF)V

    .line 1685
    .line 1686
    .line 1687
    invoke-static {v1, v7, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1688
    .line 1689
    .line 1690
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 1691
    .line 1692
    invoke-direct {v2, v12, v13}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1693
    .line 1694
    .line 1695
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 1696
    .line 1697
    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {v3, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1701
    .line 1702
    .line 1703
    const v0, -0x3fb51eb8    # -3.17f

    .line 1704
    .line 1705
    .line 1706
    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1707
    .line 1708
    .line 1709
    const v0, -0x406147ae    # -1.24f

    .line 1710
    .line 1711
    .line 1712
    const v7, -0x40533333    # -1.35f

    .line 1713
    .line 1714
    .line 1715
    invoke-virtual {v3, v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1716
    .line 1717
    .line 1718
    const v32, -0x4043d70a    # -1.47f

    .line 1719
    .line 1720
    .line 1721
    const v33, -0x40d9999a    # -0.65f

    .line 1722
    .line 1723
    .line 1724
    const v28, -0x41428f5c    # -0.37f

    .line 1725
    .line 1726
    .line 1727
    const v29, -0x412e147b    # -0.41f

    .line 1728
    .line 1729
    .line 1730
    const v30, -0x40970a3d    # -0.91f

    .line 1731
    .line 1732
    .line 1733
    const v31, -0x40d9999a    # -0.65f

    .line 1734
    .line 1735
    .line 1736
    move-object/from16 v27, v3

    .line 1737
    .line 1738
    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1739
    .line 1740
    .line 1741
    move-object/from16 v0, v27

    .line 1742
    .line 1743
    const v3, 0x411e147b    # 9.88f

    .line 1744
    .line 1745
    .line 1746
    const/high16 v7, 0x40000000    # 2.0f

    .line 1747
    .line 1748
    invoke-virtual {v0, v3, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1749
    .line 1750
    .line 1751
    const v32, -0x40428f5c    # -1.48f

    .line 1752
    .line 1753
    .line 1754
    const v33, 0x3f266666    # 0.65f

    .line 1755
    .line 1756
    .line 1757
    const v28, -0x40f0a3d7    # -0.56f

    .line 1758
    .line 1759
    .line 1760
    const/16 v29, 0x0

    .line 1761
    .line 1762
    const v30, -0x40733333    # -1.1f

    .line 1763
    .line 1764
    .line 1765
    const v31, 0x3e75c28f    # 0.24f

    .line 1766
    .line 1767
    .line 1768
    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1769
    .line 1770
    .line 1771
    const v3, 0x40e570a4    # 7.17f

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {v0, v3, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1775
    .line 1776
    .line 1777
    invoke-virtual {v0, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1778
    .line 1779
    .line 1780
    const/high16 v32, -0x40000000    # -2.0f

    .line 1781
    .line 1782
    const/high16 v33, 0x40000000    # 2.0f

    .line 1783
    .line 1784
    const v28, -0x40733333    # -1.1f

    .line 1785
    .line 1786
    .line 1787
    const/high16 v30, -0x40000000    # -2.0f

    .line 1788
    .line 1789
    const v31, 0x3f666666    # 0.9f

    .line 1790
    .line 1791
    .line 1792
    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1793
    .line 1794
    .line 1795
    const/high16 v8, 0x41400000    # 12.0f

    .line 1796
    .line 1797
    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1798
    .line 1799
    .line 1800
    const/high16 v32, 0x40000000    # 2.0f

    .line 1801
    .line 1802
    const/16 v28, 0x0

    .line 1803
    .line 1804
    const v29, 0x3f8ccccd    # 1.1f

    .line 1805
    .line 1806
    .line 1807
    const v30, 0x3f666666    # 0.9f

    .line 1808
    .line 1809
    .line 1810
    const/high16 v31, 0x40000000    # 2.0f

    .line 1811
    .line 1812
    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1813
    .line 1814
    .line 1815
    const/high16 v7, 0x41800000    # 16.0f

    .line 1816
    .line 1817
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1818
    .line 1819
    .line 1820
    const/high16 v33, -0x40000000    # -2.0f

    .line 1821
    .line 1822
    const v28, 0x3f8ccccd    # 1.1f

    .line 1823
    .line 1824
    .line 1825
    const/16 v29, 0x0

    .line 1826
    .line 1827
    const/high16 v30, 0x40000000    # 2.0f

    .line 1828
    .line 1829
    const v31, -0x4099999a    # -0.9f

    .line 1830
    .line 1831
    .line 1832
    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1833
    .line 1834
    .line 1835
    invoke-virtual {v0, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1836
    .line 1837
    .line 1838
    const/high16 v32, -0x40000000    # -2.0f

    .line 1839
    .line 1840
    const/16 v28, 0x0

    .line 1841
    .line 1842
    const v29, -0x40733333    # -1.1f

    .line 1843
    .line 1844
    .line 1845
    const v30, -0x4099999a    # -0.9f

    .line 1846
    .line 1847
    .line 1848
    const/high16 v31, -0x40000000    # -2.0f

    .line 1849
    .line 1850
    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1851
    .line 1852
    .line 1853
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1854
    .line 1855
    .line 1856
    const/high16 v3, 0x41880000    # 17.0f

    .line 1857
    .line 1858
    const/high16 v8, 0x41400000    # 12.0f

    .line 1859
    .line 1860
    invoke-virtual {v0, v8, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1861
    .line 1862
    .line 1863
    const/high16 v32, -0x3f600000    # -5.0f

    .line 1864
    .line 1865
    const/high16 v33, -0x3f600000    # -5.0f

    .line 1866
    .line 1867
    const v28, -0x3fcf5c29    # -2.76f

    .line 1868
    .line 1869
    .line 1870
    const/16 v29, 0x0

    .line 1871
    .line 1872
    const/high16 v30, -0x3f600000    # -5.0f

    .line 1873
    .line 1874
    const v31, -0x3ff0a3d7    # -2.24f

    .line 1875
    .line 1876
    .line 1877
    invoke-virtual/range {v27 .. v33}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1878
    .line 1879
    .line 1880
    const v3, 0x400f5c29    # 2.24f

    .line 1881
    .line 1882
    .line 1883
    const/high16 v4, -0x3f600000    # -5.0f

    .line 1884
    .line 1885
    invoke-virtual {v0, v3, v4, v11, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 1886
    .line 1887
    .line 1888
    invoke-virtual {v0, v11, v3, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 1889
    .line 1890
    .line 1891
    const v3, -0x3ff0a3d7    # -2.24f

    .line 1892
    .line 1893
    .line 1894
    invoke-virtual {v0, v3, v11, v4, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 1895
    .line 1896
    .line 1897
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1898
    .line 1899
    .line 1900
    iget-object v0, v0, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1901
    .line 1902
    invoke-static {v1, v0, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1906
    .line 1907
    .line 1908
    move-result-object v1

    .line 1909
    sput-object v1, Landroidx/compose/material/icons/rounded/CameraAltKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1910
    .line 1911
    goto/16 :goto_a

    .line 1912
    .line 1913
    :goto_b
    const-wide v0, 0xffe72b6cL

    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 1919
    .line 1920
    .line 1921
    move-result-wide v0

    .line 1922
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1923
    .line 1924
    .line 1925
    move-result v2

    .line 1926
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1927
    .line 1928
    .line 1929
    move-result-object v3

    .line 1930
    if-nez v2, :cond_10

    .line 1931
    .line 1932
    if-ne v3, v5, :cond_11

    .line 1933
    .line 1934
    :cond_10
    new-instance v3, Lb8;

    .line 1935
    .line 1936
    const/16 v2, 0x8

    .line 1937
    .line 1938
    invoke-direct {v3, v6, v2}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 1939
    .line 1940
    .line 1941
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1942
    .line 1943
    .line 1944
    :cond_11
    move-object/from16 v19, v3

    .line 1945
    .line 1946
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 1947
    .line 1948
    const/16 v21, 0xdb0

    .line 1949
    .line 1950
    const/16 v22, 0x10

    .line 1951
    .line 1952
    const-string v16, "Camera"

    .line 1953
    .line 1954
    const-string v17, "Take and send a new photo"

    .line 1955
    .line 1956
    const/16 v18, 0x0

    .line 1957
    .line 1958
    move-object/from16 v20, v14

    .line 1959
    .line 1960
    move-wide v14, v0

    .line 1961
    invoke-static/range {v13 .. v22}, Lnet/blip/android/ui/peer/PeerScreenKt;->a(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 1962
    .line 1963
    .line 1964
    move-object/from16 v14, v20

    .line 1965
    .line 1966
    const/4 v15, 0x0

    .line 1967
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1968
    .line 1969
    .line 1970
    goto :goto_c

    .line 1971
    :cond_12
    const/4 v15, 0x0

    .line 1972
    const v0, 0x2b2bb35c    # 6.1000315E-13f

    .line 1973
    .line 1974
    .line 1975
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1976
    .line 1977
    .line 1978
    invoke-virtual {v14, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1979
    .line 1980
    .line 1981
    :goto_c
    invoke-static {}, Landroidx/compose/material/icons/rounded/MusicNoteKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v13

    .line 1985
    const-wide v0, 0xfffa6533L

    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->c(J)J

    .line 1991
    .line 1992
    .line 1993
    move-result-wide v0

    .line 1994
    invoke-virtual {v14, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1995
    .line 1996
    .line 1997
    move-result v2

    .line 1998
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v3

    .line 2002
    if-nez v2, :cond_13

    .line 2003
    .line 2004
    if-ne v3, v5, :cond_14

    .line 2005
    .line 2006
    :cond_13
    new-instance v3, Lb8;

    .line 2007
    .line 2008
    const/16 v2, 0x9

    .line 2009
    .line 2010
    invoke-direct {v3, v6, v2}, Lb8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 2011
    .line 2012
    .line 2013
    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 2014
    .line 2015
    .line 2016
    :cond_14
    move-object/from16 v19, v3

    .line 2017
    .line 2018
    check-cast v19, Lkotlin/jvm/functions/Function0;

    .line 2019
    .line 2020
    const/16 v21, 0xdb0

    .line 2021
    .line 2022
    const/16 v22, 0x10

    .line 2023
    .line 2024
    const-string v16, "Audio"

    .line 2025
    .line 2026
    const-string v17, "Send audio saved on this phone"

    .line 2027
    .line 2028
    const/16 v18, 0x0

    .line 2029
    .line 2030
    move-object/from16 v20, v14

    .line 2031
    .line 2032
    move-wide v14, v0

    .line 2033
    invoke-static/range {v13 .. v22}, Lnet/blip/android/ui/peer/PeerScreenKt;->a(Landroidx/compose/ui/graphics/vector/ImageVector;JLjava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 2034
    .line 2035
    .line 2036
    move-object/from16 v14, v20

    .line 2037
    .line 2038
    const/4 v12, 0x1

    .line 2039
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 2040
    .line 2041
    .line 2042
    invoke-virtual {v14, v12}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 2043
    .line 2044
    .line 2045
    goto :goto_d

    .line 2046
    :cond_15
    move-object/from16 v26, v3

    .line 2047
    .line 2048
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2049
    .line 2050
    .line 2051
    :goto_d
    return-object v26

    .line 2052
    :pswitch_0
    move-object/from16 v26, v3

    .line 2053
    .line 2054
    check-cast v7, Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 2055
    .line 2056
    check-cast v6, Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 2057
    .line 2058
    move-object/from16 v1, p1

    .line 2059
    .line 2060
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2061
    .line 2062
    move-object/from16 v2, p2

    .line 2063
    .line 2064
    check-cast v2, Ljava/lang/Integer;

    .line 2065
    .line 2066
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2067
    .line 2068
    .line 2069
    move-result v2

    .line 2070
    and-int/lit8 v3, v2, 0x3

    .line 2071
    .line 2072
    if-eq v3, v8, :cond_16

    .line 2073
    .line 2074
    const/4 v3, 0x1

    .line 2075
    :goto_e
    const/16 v25, 0x1

    .line 2076
    .line 2077
    goto :goto_f

    .line 2078
    :cond_16
    const/4 v3, 0x0

    .line 2079
    goto :goto_e

    .line 2080
    :goto_f
    and-int/lit8 v2, v2, 0x1

    .line 2081
    .line 2082
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2083
    .line 2084
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2085
    .line 2086
    .line 2087
    move-result v2

    .line 2088
    if-eqz v2, :cond_21

    .line 2089
    .line 2090
    iget-boolean v2, v7, Lnet/blip/android/ui/util/NuancedPermissionState;->a:Z

    .line 2091
    .line 2092
    const v3, 0x7f0800de

    .line 2093
    .line 2094
    .line 2095
    if-nez v2, :cond_19

    .line 2096
    .line 2097
    const v0, 0x163e5a03

    .line 2098
    .line 2099
    .line 2100
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 2101
    .line 2102
    .line 2103
    invoke-static {v3, v1}, Landroidx/compose/ui/res/VectorResources_androidKt;->b(ILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2104
    .line 2105
    .line 2106
    move-result-object v10

    .line 2107
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 2108
    .line 2109
    .line 2110
    move-result v0

    .line 2111
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 2112
    .line 2113
    .line 2114
    move-result-object v2

    .line 2115
    if-nez v0, :cond_17

    .line 2116
    .line 2117
    if-ne v2, v5, :cond_18

    .line 2118
    .line 2119
    :cond_17
    new-instance v2, Ll3;

    .line 2120
    .line 2121
    const/4 v12, 0x1

    .line 2122
    invoke-direct {v2, v7, v12}, Ll3;-><init>(Lnet/blip/android/ui/util/NuancedPermissionState;I)V

    .line 2123
    .line 2124
    .line 2125
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 2126
    .line 2127
    .line 2128
    :cond_18
    move-object v15, v2

    .line 2129
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 2130
    .line 2131
    const/16 v17, 0x6d80

    .line 2132
    .line 2133
    const/16 v18, 0x21

    .line 2134
    .line 2135
    const/4 v9, 0x0

    .line 2136
    const-string v11, "Not ready to receive"

    .line 2137
    .line 2138
    const-string v12, "Blip needs to send you notifications so you can accept transfers"

    .line 2139
    .line 2140
    const-string v13, "Turn on notifications"

    .line 2141
    .line 2142
    const/4 v14, 0x0

    .line 2143
    move-object/from16 v16, v1

    .line 2144
    .line 2145
    invoke-static/range {v9 .. v18}, Lnet/blip/android/ui/lockups/BlankStateLockupKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 2146
    .line 2147
    .line 2148
    const/4 v15, 0x0

    .line 2149
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 2150
    .line 2151
    .line 2152
    goto/16 :goto_10

    .line 2153
    .line 2154
    :cond_19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2155
    .line 2156
    const/16 v4, 0x1d

    .line 2157
    .line 2158
    if-gt v2, v4, :cond_1c

    .line 2159
    .line 2160
    iget-boolean v2, v6, Lnet/blip/android/ui/util/NuancedPermissionState;->a:Z

    .line 2161
    .line 2162
    if-nez v2, :cond_1c

    .line 2163
    .line 2164
    const v0, 0x1648a7cc

    .line 2165
    .line 2166
    .line 2167
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 2168
    .line 2169
    .line 2170
    invoke-static {v3, v1}, Landroidx/compose/ui/res/VectorResources_androidKt;->b(ILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v10

    .line 2174
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 2175
    .line 2176
    .line 2177
    move-result v0

    .line 2178
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 2179
    .line 2180
    .line 2181
    move-result-object v2

    .line 2182
    if-nez v0, :cond_1a

    .line 2183
    .line 2184
    if-ne v2, v5, :cond_1b

    .line 2185
    .line 2186
    :cond_1a
    new-instance v2, Ll3;

    .line 2187
    .line 2188
    invoke-direct {v2, v6, v8}, Ll3;-><init>(Lnet/blip/android/ui/util/NuancedPermissionState;I)V

    .line 2189
    .line 2190
    .line 2191
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 2192
    .line 2193
    .line 2194
    :cond_1b
    move-object v15, v2

    .line 2195
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 2196
    .line 2197
    const/16 v17, 0x6d80

    .line 2198
    .line 2199
    const/16 v18, 0x21

    .line 2200
    .line 2201
    const/4 v9, 0x0

    .line 2202
    const-string v11, "Not ready to receive"

    .line 2203
    .line 2204
    const-string v12, "Blip needs to be able to save files to your phone\'s storage"

    .line 2205
    .line 2206
    const-string v13, "Allow storage access"

    .line 2207
    .line 2208
    const/4 v14, 0x0

    .line 2209
    move-object/from16 v16, v1

    .line 2210
    .line 2211
    invoke-static/range {v9 .. v18}, Lnet/blip/android/ui/lockups/BlankStateLockupKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 2212
    .line 2213
    .line 2214
    const/4 v15, 0x0

    .line 2215
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 2216
    .line 2217
    .line 2218
    goto/16 :goto_10

    .line 2219
    .line 2220
    :cond_1c
    const v2, 0x16564f2b

    .line 2221
    .line 2222
    .line 2223
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 2224
    .line 2225
    .line 2226
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 2227
    .line 2228
    .line 2229
    move-result-object v2

    .line 2230
    if-ne v2, v5, :cond_1d

    .line 2231
    .line 2232
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2233
    .line 2234
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 2235
    .line 2236
    .line 2237
    move-result-object v2

    .line 2238
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 2239
    .line 2240
    .line 2241
    :cond_1d
    move-object v7, v2

    .line 2242
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 2243
    .line 2244
    const/4 v15, 0x0

    .line 2245
    invoke-static {v15, v1}, Lnet/blip/android/ui/navigation/ShareInAppKt;->a(ILandroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function1;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v2

    .line 2249
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 2250
    .line 2251
    .line 2252
    move-result v3

    .line 2253
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 2254
    .line 2255
    .line 2256
    move-result-object v4

    .line 2257
    if-nez v3, :cond_1e

    .line 2258
    .line 2259
    if-ne v4, v5, :cond_1f

    .line 2260
    .line 2261
    :cond_1e
    new-instance v4, Lc8;

    .line 2262
    .line 2263
    const/4 v12, 0x1

    .line 2264
    invoke-direct {v4, v2, v12}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 2265
    .line 2266
    .line 2267
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 2268
    .line 2269
    .line 2270
    :cond_1f
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 2271
    .line 2272
    invoke-static {v4, v1}, Lnet/blip/android/ui/util/UmbrellaContentPickerKt;->d(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function1;

    .line 2273
    .line 2274
    .line 2275
    move-result-object v8

    .line 2276
    const v2, 0x7f0800dd

    .line 2277
    .line 2278
    .line 2279
    invoke-static {v2, v1}, Landroidx/compose/ui/res/VectorResources_androidKt;->b(ILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v2

    .line 2283
    new-instance v6, Li9;

    .line 2284
    .line 2285
    const/4 v11, 0x0

    .line 2286
    iget-boolean v9, v0, Li9;->k:Z

    .line 2287
    .line 2288
    iget-boolean v10, v0, Li9;->l:Z

    .line 2289
    .line 2290
    invoke-direct/range {v6 .. v11}, Li9;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZZI)V

    .line 2291
    .line 2292
    .line 2293
    const v0, 0xae8de67

    .line 2294
    .line 2295
    .line 2296
    invoke-static {v0, v6, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 2297
    .line 2298
    .line 2299
    move-result-object v14

    .line 2300
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 2301
    .line 2302
    .line 2303
    move-result-object v0

    .line 2304
    if-ne v0, v5, :cond_20

    .line 2305
    .line 2306
    new-instance v0, Lo1;

    .line 2307
    .line 2308
    const/16 v3, 0xe

    .line 2309
    .line 2310
    invoke-direct {v0, v7, v3}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 2311
    .line 2312
    .line 2313
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 2314
    .line 2315
    .line 2316
    :cond_20
    move-object v15, v0

    .line 2317
    check-cast v15, Lkotlin/jvm/functions/Function0;

    .line 2318
    .line 2319
    const v17, 0x1b6d80

    .line 2320
    .line 2321
    .line 2322
    const/16 v18, 0x1

    .line 2323
    .line 2324
    const/4 v9, 0x0

    .line 2325
    const-string v11, "Ready to receive"

    .line 2326
    .line 2327
    const-string v12, "Blip is enabled and ready to receive content at any time"

    .line 2328
    .line 2329
    const-string v13, "Send something"

    .line 2330
    .line 2331
    move-object/from16 v16, v1

    .line 2332
    .line 2333
    move-object v10, v2

    .line 2334
    invoke-static/range {v9 .. v18}, Lnet/blip/android/ui/lockups/BlankStateLockupKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 2335
    .line 2336
    .line 2337
    const/4 v15, 0x0

    .line 2338
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 2339
    .line 2340
    .line 2341
    goto :goto_10

    .line 2342
    :cond_21
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2343
    .line 2344
    .line 2345
    :goto_10
    return-object v26

    .line 2346
    :pswitch_1
    move/from16 v27, v2

    .line 2347
    .line 2348
    move-object/from16 v26, v3

    .line 2349
    .line 2350
    move v15, v4

    .line 2351
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 2352
    .line 2353
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 2354
    .line 2355
    move-object/from16 v1, p1

    .line 2356
    .line 2357
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2358
    .line 2359
    move-object/from16 v2, p2

    .line 2360
    .line 2361
    check-cast v2, Ljava/lang/Integer;

    .line 2362
    .line 2363
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2364
    .line 2365
    .line 2366
    move-result v2

    .line 2367
    and-int/lit8 v3, v2, 0x3

    .line 2368
    .line 2369
    if-eq v3, v8, :cond_22

    .line 2370
    .line 2371
    const/4 v4, 0x1

    .line 2372
    :goto_11
    const/16 v25, 0x1

    .line 2373
    .line 2374
    goto :goto_12

    .line 2375
    :cond_22
    move v4, v15

    .line 2376
    goto :goto_11

    .line 2377
    :goto_12
    and-int/lit8 v2, v2, 0x1

    .line 2378
    .line 2379
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2380
    .line 2381
    invoke-virtual {v1, v2, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2382
    .line 2383
    .line 2384
    move-result v2

    .line 2385
    if-eqz v2, :cond_24

    .line 2386
    .line 2387
    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2388
    .line 2389
    .line 2390
    move-result-object v2

    .line 2391
    check-cast v2, Ljava/lang/Boolean;

    .line 2392
    .line 2393
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2394
    .line 2395
    .line 2396
    move-result v8

    .line 2397
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 2398
    .line 2399
    .line 2400
    move-result-object v2

    .line 2401
    if-ne v2, v5, :cond_23

    .line 2402
    .line 2403
    new-instance v2, Lo1;

    .line 2404
    .line 2405
    const/16 v3, 0xf

    .line 2406
    .line 2407
    invoke-direct {v2, v7, v3}, Lo1;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 2408
    .line 2409
    .line 2410
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 2411
    .line 2412
    .line 2413
    :cond_23
    move-object v9, v2

    .line 2414
    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 2415
    .line 2416
    new-instance v2, Lj9;

    .line 2417
    .line 2418
    iget-boolean v0, v0, Li9;->k:Z

    .line 2419
    .line 2420
    move/from16 v3, v27

    .line 2421
    .line 2422
    invoke-direct {v2, v6, v0, v3, v7}, Lj9;-><init>(Lkotlin/jvm/functions/Function1;ZZLandroidx/compose/runtime/MutableState;)V

    .line 2423
    .line 2424
    .line 2425
    const v0, 0xf8bcd9a

    .line 2426
    .line 2427
    .line 2428
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 2429
    .line 2430
    .line 2431
    move-result-object v15

    .line 2432
    const v17, 0x180030

    .line 2433
    .line 2434
    .line 2435
    const/16 v18, 0x3c

    .line 2436
    .line 2437
    const/4 v10, 0x0

    .line 2438
    const-wide/16 v11, 0x0

    .line 2439
    .line 2440
    const/4 v13, 0x0

    .line 2441
    const/4 v14, 0x0

    .line 2442
    move-object/from16 v16, v1

    .line 2443
    .line 2444
    invoke-static/range {v8 .. v18}, Landroidx/compose/material/AndroidMenu_androidKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 2445
    .line 2446
    .line 2447
    goto :goto_13

    .line 2448
    :cond_24
    move-object/from16 v16, v1

    .line 2449
    .line 2450
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2451
    .line 2452
    .line 2453
    :goto_13
    return-object v26

    .line 2454
    nop

    .line 2455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
