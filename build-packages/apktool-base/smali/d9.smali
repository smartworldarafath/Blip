.class public final synthetic Ld9;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic l:Landroidx/compose/ui/platform/Clipboard;

.field public final synthetic m:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/platform/Clipboard;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput p4, p0, Ld9;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Ld9;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p2, p0, Ld9;->l:Landroidx/compose/ui/platform/Clipboard;

    .line 6
    .line 7
    iput-object p3, p0, Ld9;->m:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ld9;->j:I

    .line 4
    .line 5
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 6
    .line 7
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 8
    .line 9
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 10
    .line 11
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 12
    .line 13
    sget-object v8, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 14
    .line 15
    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 16
    .line 17
    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 18
    .line 19
    sget-object v12, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 20
    .line 21
    sget-object v13, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    iget-object v14, v0, Ld9;->m:Landroid/content/Context;

    .line 24
    .line 25
    iget-object v15, v0, Ld9;->l:Landroidx/compose/ui/platform/Clipboard;

    .line 26
    .line 27
    iget-object v0, v0, Ld9;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 28
    .line 29
    const/16 v16, 0x20

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/16 v17, 0x12

    .line 33
    .line 34
    const/4 v11, 0x1

    .line 35
    const/4 v2, 0x2

    .line 36
    packed-switch v1, :pswitch_data_0

    .line 37
    .line 38
    .line 39
    move-object/from16 v1, p1

    .line 40
    .line 41
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 42
    .line 43
    move-object/from16 v4, p2

    .line 44
    .line 45
    check-cast v4, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    and-int/lit8 v5, v4, 0x3

    .line 52
    .line 53
    if-eq v5, v2, :cond_0

    .line 54
    .line 55
    move v3, v11

    .line 56
    :cond_0
    and-int/lit8 v2, v4, 0x1

    .line 57
    .line 58
    move-object v8, v1

    .line 59
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 60
    .line 61
    invoke-virtual {v8, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    const/high16 v1, -0x3f600000    # -5.0f

    .line 68
    .line 69
    invoke-static {v12, v1, v11}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    sget-object v1, Lnet/blip/shared/Strings;->a:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    const-string v2, "http://"

    .line 79
    .line 80
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    const-string v3, "https://"

    .line 85
    .line 86
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const-string v3, "]("

    .line 91
    .line 92
    const-string v5, ") to easily find the app."

    .line 93
    .line 94
    const-string v6, "Install the Blip app on your other device.Visit ["

    .line 95
    .line 96
    invoke-static {v6, v2, v3, v1, v5}, Ljb;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 101
    .line 102
    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 107
    .line 108
    iget-object v1, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 109
    .line 110
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 111
    .line 112
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 117
    .line 118
    iget-wide v6, v3, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 119
    .line 120
    const/16 v3, 0x10

    .line 121
    .line 122
    invoke-static {v3}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 123
    .line 124
    .line 125
    move-result-wide v19

    .line 126
    sget-object v21, Landroidx/compose/ui/text/font/FontWeight;->r:Landroidx/compose/ui/text/font/FontWeight;

    .line 127
    .line 128
    const/16 v27, 0x0

    .line 129
    .line 130
    const v28, 0xfffff8

    .line 131
    .line 132
    .line 133
    const-wide/16 v22, 0x0

    .line 134
    .line 135
    const-wide/16 v24, 0x0

    .line 136
    .line 137
    const/16 v26, 0x0

    .line 138
    .line 139
    move-object/from16 v16, v1

    .line 140
    .line 141
    move-wide/from16 v17, v6

    .line 142
    .line 143
    invoke-static/range {v16 .. v28}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    new-instance v7, Lnet/blip/shared/SimpleLinkTextButton;

    .line 148
    .line 149
    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 154
    .line 155
    iget-wide v1, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 156
    .line 157
    new-instance v3, Lnet/blip/android/ui/help/a;

    .line 158
    .line 159
    invoke-direct {v3, v0, v15, v14, v11}, Lnet/blip/android/ui/help/a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/platform/Clipboard;Landroid/content/Context;I)V

    .line 160
    .line 161
    .line 162
    invoke-direct {v7, v1, v2, v3}, Lnet/blip/shared/SimpleLinkTextButton;-><init>(JLkotlin/jvm/functions/Function1;)V

    .line 163
    .line 164
    .line 165
    const/4 v9, 0x6

    .line 166
    const/4 v10, 0x0

    .line 167
    invoke-static/range {v4 .. v10}, Lnet/blip/shared/LinkableTextKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lnet/blip/shared/SimpleLinkTextButton;Landroidx/compose/runtime/Composer;II)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 172
    .line 173
    .line 174
    :goto_0
    return-object v13

    .line 175
    :pswitch_0
    move-object/from16 v1, p1

    .line 176
    .line 177
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 178
    .line 179
    move-object/from16 v12, p2

    .line 180
    .line 181
    check-cast v12, Ljava/lang/Integer;

    .line 182
    .line 183
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    move/from16 p0, v11

    .line 188
    .line 189
    and-int/lit8 v11, v12, 0x3

    .line 190
    .line 191
    if-eq v11, v2, :cond_2

    .line 192
    .line 193
    move/from16 v11, p0

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_2
    move v11, v3

    .line 197
    :goto_1
    and-int/lit8 v12, v12, 0x1

    .line 198
    .line 199
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 200
    .line 201
    invoke-virtual {v1, v12, v11}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 202
    .line 203
    .line 204
    move-result v11

    .line 205
    if-eqz v11, :cond_8

    .line 206
    .line 207
    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 208
    .line 209
    invoke-static {v11}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->c(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 210
    .line 211
    .line 212
    move-result-object v19

    .line 213
    const/16 v23, 0x0

    .line 214
    .line 215
    const/16 v24, 0xd

    .line 216
    .line 217
    const/16 v20, 0x0

    .line 218
    .line 219
    const/high16 v21, 0x42400000    # 48.0f

    .line 220
    .line 221
    const/16 v22, 0x0

    .line 222
    .line 223
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    invoke-static {v1}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-static {v12, v2}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-static {v10, v9, v1, v3}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    move-object/from16 v31, v4

    .line 240
    .line 241
    iget-wide v3, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 242
    .line 243
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 256
    .line 257
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 261
    .line 262
    .line 263
    move/from16 p1, v3

    .line 264
    .line 265
    iget-boolean v3, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 266
    .line 267
    if-eqz v3, :cond_3

    .line 268
    .line 269
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 274
    .line 275
    .line 276
    :goto_2
    invoke-static {v1, v12, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 277
    .line 278
    .line 279
    invoke-static {v1, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 280
    .line 281
    .line 282
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v1, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 290
    .line 291
    .line 292
    move-object/from16 v3, v31

    .line 293
    .line 294
    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 295
    .line 296
    .line 297
    const/high16 v2, 0x41c00000    # 24.0f

    .line 298
    .line 299
    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 300
    .line 301
    .line 302
    move-result-object v19

    .line 303
    const/16 v23, 0x0

    .line 304
    .line 305
    const/16 v24, 0xb

    .line 306
    .line 307
    const/16 v20, 0x0

    .line 308
    .line 309
    const/16 v21, 0x0

    .line 310
    .line 311
    const/high16 v22, 0x42000000    # 32.0f

    .line 312
    .line 313
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 314
    .line 315
    .line 316
    move-result-object v4

    .line 317
    const/4 v12, 0x0

    .line 318
    invoke-static {v10, v9, v1, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    move-object/from16 v31, v13

    .line 323
    .line 324
    iget-wide v12, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 325
    .line 326
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 327
    .line 328
    .line 329
    move-result v12

    .line 330
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 331
    .line 332
    .line 333
    move-result-object v13

    .line 334
    invoke-static {v1, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 339
    .line 340
    .line 341
    move-object/from16 v32, v0

    .line 342
    .line 343
    iget-boolean v0, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 344
    .line 345
    if-eqz v0, :cond_4

    .line 346
    .line 347
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 348
    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_4
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 352
    .line 353
    .line 354
    :goto_3
    invoke-static {v1, v2, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 355
    .line 356
    .line 357
    invoke-static {v1, v13, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 358
    .line 359
    .line 360
    invoke-static {v12, v1, v5, v1}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 361
    .line 362
    .line 363
    invoke-static {v1, v4, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 364
    .line 365
    .line 366
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 367
    .line 368
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 373
    .line 374
    iget-object v2, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 375
    .line 376
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 377
    .line 378
    .line 379
    move-result-wide v36

    .line 380
    sget-object v38, Landroidx/compose/ui/text/font/FontWeight;->u:Landroidx/compose/ui/text/font/FontWeight;

    .line 381
    .line 382
    const/16 v44, 0x0

    .line 383
    .line 384
    const v45, 0xfffff9

    .line 385
    .line 386
    .line 387
    const-wide/16 v34, 0x0

    .line 388
    .line 389
    const-wide/16 v39, 0x0

    .line 390
    .line 391
    const-wide/16 v41, 0x0

    .line 392
    .line 393
    const/16 v43, 0x0

    .line 394
    .line 395
    move-object/from16 v33, v2

    .line 396
    .line 397
    invoke-static/range {v33 .. v45}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 398
    .line 399
    .line 400
    move-result-object v21

    .line 401
    const/16 v28, 0x0

    .line 402
    .line 403
    const/16 v29, 0x1fa

    .line 404
    .line 405
    const-string v19, "How to send to your other devices"

    .line 406
    .line 407
    const/16 v20, 0x0

    .line 408
    .line 409
    const/16 v22, 0x0

    .line 410
    .line 411
    const/16 v23, 0x0

    .line 412
    .line 413
    const/16 v24, 0x0

    .line 414
    .line 415
    const/16 v25, 0x0

    .line 416
    .line 417
    const/16 v26, 0x0

    .line 418
    .line 419
    move-object/from16 v27, v1

    .line 420
    .line 421
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 422
    .line 423
    .line 424
    const/high16 v2, 0x41200000    # 10.0f

    .line 425
    .line 426
    invoke-static {v11, v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 438
    .line 439
    iget-object v2, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 440
    .line 441
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 442
    .line 443
    .line 444
    move-result-wide v36

    .line 445
    sget-object v38, Landroidx/compose/ui/text/font/FontWeight;->r:Landroidx/compose/ui/text/font/FontWeight;

    .line 446
    .line 447
    sget-object v4, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 448
    .line 449
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v12

    .line 453
    check-cast v12, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 454
    .line 455
    iget-wide v12, v12, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 456
    .line 457
    const v45, 0xfffff8

    .line 458
    .line 459
    .line 460
    move-object/from16 v33, v2

    .line 461
    .line 462
    move-wide/from16 v34, v12

    .line 463
    .line 464
    invoke-static/range {v33 .. v45}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 465
    .line 466
    .line 467
    move-result-object v21

    .line 468
    const-string v19, "You can send to your other devices that have the Blip app \u2014 wherever they are in the world."

    .line 469
    .line 470
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 471
    .line 472
    .line 473
    move/from16 v2, p0

    .line 474
    .line 475
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 476
    .line 477
    .line 478
    const/high16 v12, 0x41000000    # 8.0f

    .line 479
    .line 480
    invoke-static {v11, v12}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 481
    .line 482
    .line 483
    move-result-object v13

    .line 484
    invoke-static {v1, v13}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 485
    .line 486
    .line 487
    const/4 v13, 0x0

    .line 488
    move-object/from16 v33, v14

    .line 489
    .line 490
    const/4 v14, 0x0

    .line 491
    invoke-static {v13, v1, v14, v2}, Lnet/blip/android/ui/components/DividerKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    .line 492
    .line 493
    .line 494
    invoke-static {v11, v12}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 499
    .line 500
    .line 501
    const/16 v23, 0x0

    .line 502
    .line 503
    const/16 v24, 0x8

    .line 504
    .line 505
    const/high16 v21, 0x41a00000    # 20.0f

    .line 506
    .line 507
    const/high16 v22, 0x42200000    # 40.0f

    .line 508
    .line 509
    move-object/from16 v19, v11

    .line 510
    .line 511
    const/high16 v20, 0x41c00000    # 24.0f

    .line 512
    .line 513
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 514
    .line 515
    .line 516
    move-result-object v2

    .line 517
    move/from16 v12, v20

    .line 518
    .line 519
    invoke-static {v10, v9, v1, v14}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 520
    .line 521
    .line 522
    move-result-object v9

    .line 523
    iget-wide v12, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 524
    .line 525
    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    .line 526
    .line 527
    .line 528
    move-result v10

    .line 529
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 530
    .line 531
    .line 532
    move-result-object v12

    .line 533
    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 534
    .line 535
    .line 536
    move-result-object v2

    .line 537
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 538
    .line 539
    .line 540
    iget-boolean v13, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 541
    .line 542
    if-eqz v13, :cond_5

    .line 543
    .line 544
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 545
    .line 546
    .line 547
    goto :goto_4

    .line 548
    :cond_5
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 549
    .line 550
    .line 551
    :goto_4
    invoke-static {v1, v9, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 552
    .line 553
    .line 554
    invoke-static {v1, v12, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 555
    .line 556
    .line 557
    invoke-static {v10, v1, v5, v1}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 558
    .line 559
    .line 560
    invoke-static {v1, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v0

    .line 567
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 568
    .line 569
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 570
    .line 571
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 572
    .line 573
    .line 574
    move-result-wide v37

    .line 575
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 580
    .line 581
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 582
    .line 583
    const/16 v45, 0x0

    .line 584
    .line 585
    const v46, 0xfffffc

    .line 586
    .line 587
    .line 588
    const/16 v39, 0x0

    .line 589
    .line 590
    const-wide/16 v40, 0x0

    .line 591
    .line 592
    const-wide/16 v42, 0x0

    .line 593
    .line 594
    const/16 v44, 0x0

    .line 595
    .line 596
    move-object/from16 v34, v0

    .line 597
    .line 598
    move-wide/from16 v35, v2

    .line 599
    .line 600
    invoke-static/range {v34 .. v46}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 601
    .line 602
    .line 603
    move-result-object v21

    .line 604
    const/16 v28, 0x0

    .line 605
    .line 606
    const/16 v29, 0x1fa

    .line 607
    .line 608
    const-string v19, "To set up another device"

    .line 609
    .line 610
    const/16 v20, 0x0

    .line 611
    .line 612
    const/16 v22, 0x0

    .line 613
    .line 614
    const/16 v23, 0x0

    .line 615
    .line 616
    const/16 v24, 0x0

    .line 617
    .line 618
    const/16 v25, 0x0

    .line 619
    .line 620
    const/16 v26, 0x0

    .line 621
    .line 622
    move-object/from16 v27, v1

    .line 623
    .line 624
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 625
    .line 626
    .line 627
    const/high16 v0, 0x41e00000    # 28.0f

    .line 628
    .line 629
    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 634
    .line 635
    .line 636
    new-instance v0, Ld9;

    .line 637
    .line 638
    move-object/from16 v4, v32

    .line 639
    .line 640
    move-object/from16 v2, v33

    .line 641
    .line 642
    const/4 v3, 0x2

    .line 643
    invoke-direct {v0, v4, v15, v2, v3}, Ld9;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/platform/Clipboard;Landroid/content/Context;I)V

    .line 644
    .line 645
    .line 646
    const v2, 0x2e7c0549

    .line 647
    .line 648
    .line 649
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    const-string v2, "1"

    .line 654
    .line 655
    const/16 v3, 0x1b0

    .line 656
    .line 657
    const/4 v4, 0x0

    .line 658
    invoke-static {v4, v2, v0, v1, v3}, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 659
    .line 660
    .line 661
    const/high16 v14, 0x41c00000    # 24.0f

    .line 662
    .line 663
    invoke-static {v11, v14}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 668
    .line 669
    .line 670
    sget-object v0, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->d:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 671
    .line 672
    invoke-static {v0, v1}, Lnet/blip/shared/ProvideSharedCompositionLocalsKt;->b(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/runtime/Composer;)Lnet/blip/libblip/frontend/State;

    .line 673
    .line 674
    .line 675
    move-result-object v0

    .line 676
    invoke-static {v0}, Lnet/blip/libblip/State_DerivedKt;->b(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/User;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    if-eqz v0, :cond_6

    .line 681
    .line 682
    iget-object v0, v0, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 683
    .line 684
    if-nez v0, :cond_7

    .line 685
    .line 686
    :cond_6
    const-string v0, "unknown"

    .line 687
    .line 688
    :cond_7
    new-instance v2, Lw;

    .line 689
    .line 690
    const/4 v4, 0x2

    .line 691
    invoke-direct {v2, v0, v4}, Lw;-><init>(Ljava/lang/String;I)V

    .line 692
    .line 693
    .line 694
    const v0, 0x3dff8f32

    .line 695
    .line 696
    .line 697
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    const-string v2, "2"

    .line 702
    .line 703
    const/4 v4, 0x0

    .line 704
    invoke-static {v4, v2, v0, v1, v3}, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 705
    .line 706
    .line 707
    const/high16 v0, 0x41d00000    # 26.0f

    .line 708
    .line 709
    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 710
    .line 711
    .line 712
    move-result-object v0

    .line 713
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 714
    .line 715
    .line 716
    const-string v0, "3"

    .line 717
    .line 718
    sget-object v2, Lnet/blip/android/ui/help/ComposableSingletons$HelpScreenSendToYourDevicesKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 719
    .line 720
    invoke-static {v4, v0, v2, v1, v3}, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 721
    .line 722
    .line 723
    const/4 v2, 0x1

    .line 724
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 728
    .line 729
    .line 730
    goto :goto_5

    .line 731
    :cond_8
    move-object/from16 v31, v13

    .line 732
    .line 733
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 734
    .line 735
    .line 736
    :goto_5
    return-object v31

    .line 737
    :pswitch_1
    move-object v3, v4

    .line 738
    move-object/from16 v31, v13

    .line 739
    .line 740
    move-object v2, v14

    .line 741
    move-object v4, v0

    .line 742
    move-object/from16 v0, p1

    .line 743
    .line 744
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 745
    .line 746
    move-object/from16 v1, p2

    .line 747
    .line 748
    check-cast v1, Ljava/lang/Integer;

    .line 749
    .line 750
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 751
    .line 752
    .line 753
    move-result v1

    .line 754
    and-int/lit8 v11, v1, 0x3

    .line 755
    .line 756
    const/4 v13, 0x2

    .line 757
    if-eq v11, v13, :cond_9

    .line 758
    .line 759
    const/4 v11, 0x1

    .line 760
    :goto_6
    const/4 v13, 0x1

    .line 761
    goto :goto_7

    .line 762
    :cond_9
    const/4 v11, 0x0

    .line 763
    goto :goto_6

    .line 764
    :goto_7
    and-int/2addr v1, v13

    .line 765
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 766
    .line 767
    invoke-virtual {v0, v1, v11}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    if-eqz v1, :cond_c

    .line 772
    .line 773
    const/high16 v1, 0x3f800000    # 1.0f

    .line 774
    .line 775
    invoke-static {v12, v1}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 776
    .line 777
    .line 778
    move-result-object v11

    .line 779
    invoke-static {v11}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->c(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 780
    .line 781
    .line 782
    move-result-object v19

    .line 783
    const/16 v23, 0x0

    .line 784
    .line 785
    const/16 v24, 0xd

    .line 786
    .line 787
    const/16 v20, 0x0

    .line 788
    .line 789
    const/high16 v21, 0x42400000    # 48.0f

    .line 790
    .line 791
    const/16 v22, 0x0

    .line 792
    .line 793
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 794
    .line 795
    .line 796
    move-result-object v11

    .line 797
    const/4 v14, 0x0

    .line 798
    invoke-static {v10, v9, v0, v14}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 799
    .line 800
    .line 801
    move-result-object v13

    .line 802
    move-object/from16 v33, v2

    .line 803
    .line 804
    iget-wide v1, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 805
    .line 806
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 807
    .line 808
    .line 809
    move-result v1

    .line 810
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 811
    .line 812
    .line 813
    move-result-object v2

    .line 814
    invoke-static {v0, v11}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 815
    .line 816
    .line 817
    move-result-object v11

    .line 818
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 819
    .line 820
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 824
    .line 825
    .line 826
    iget-boolean v14, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 827
    .line 828
    if-eqz v14, :cond_a

    .line 829
    .line 830
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 831
    .line 832
    .line 833
    goto :goto_8

    .line 834
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 835
    .line 836
    .line 837
    :goto_8
    invoke-static {v0, v13, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 838
    .line 839
    .line 840
    invoke-static {v0, v2, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 841
    .line 842
    .line 843
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 844
    .line 845
    .line 846
    move-result-object v1

    .line 847
    invoke-static {v0, v1, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 848
    .line 849
    .line 850
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 851
    .line 852
    .line 853
    invoke-static {v0, v11, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 854
    .line 855
    .line 856
    const/high16 v1, 0x3f800000    # 1.0f

    .line 857
    .line 858
    invoke-static {v12, v1}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    const/high16 v2, 0x41c00000    # 24.0f

    .line 863
    .line 864
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 865
    .line 866
    .line 867
    move-result-object v19

    .line 868
    const/16 v23, 0x0

    .line 869
    .line 870
    const/16 v24, 0xb

    .line 871
    .line 872
    const/16 v20, 0x0

    .line 873
    .line 874
    const/16 v21, 0x0

    .line 875
    .line 876
    const/high16 v22, 0x42000000    # 32.0f

    .line 877
    .line 878
    invoke-static/range {v19 .. v24}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 879
    .line 880
    .line 881
    move-result-object v1

    .line 882
    const/4 v14, 0x0

    .line 883
    invoke-static {v10, v9, v0, v14}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    iget-wide v9, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 888
    .line 889
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 890
    .line 891
    .line 892
    move-result v9

    .line 893
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 894
    .line 895
    .line 896
    move-result-object v10

    .line 897
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 902
    .line 903
    .line 904
    iget-boolean v11, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 905
    .line 906
    if-eqz v11, :cond_b

    .line 907
    .line 908
    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 909
    .line 910
    .line 911
    goto :goto_9

    .line 912
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 913
    .line 914
    .line 915
    :goto_9
    invoke-static {v0, v2, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 916
    .line 917
    .line 918
    invoke-static {v0, v10, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 919
    .line 920
    .line 921
    invoke-static {v9, v0, v5, v0}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 922
    .line 923
    .line 924
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 925
    .line 926
    .line 927
    sget-object v1, Lnet/blip/shared/Strings$Help$SendToOtherPeople;->a:Ljava/lang/String;

    .line 928
    .line 929
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 930
    .line 931
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 936
    .line 937
    iget-object v2, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 938
    .line 939
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 940
    .line 941
    .line 942
    move-result-wide v37

    .line 943
    sget-object v39, Landroidx/compose/ui/text/font/FontWeight;->u:Landroidx/compose/ui/text/font/FontWeight;

    .line 944
    .line 945
    const/16 v45, 0x0

    .line 946
    .line 947
    const v46, 0xfffff9

    .line 948
    .line 949
    .line 950
    const-wide/16 v35, 0x0

    .line 951
    .line 952
    const-wide/16 v40, 0x0

    .line 953
    .line 954
    const-wide/16 v42, 0x0

    .line 955
    .line 956
    const/16 v44, 0x0

    .line 957
    .line 958
    move-object/from16 v34, v2

    .line 959
    .line 960
    invoke-static/range {v34 .. v46}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 961
    .line 962
    .line 963
    move-result-object v21

    .line 964
    const/16 v28, 0x0

    .line 965
    .line 966
    const/16 v29, 0x1fa

    .line 967
    .line 968
    const-string v19, "How to send to other people"

    .line 969
    .line 970
    const/16 v20, 0x0

    .line 971
    .line 972
    const/16 v22, 0x0

    .line 973
    .line 974
    const/16 v23, 0x0

    .line 975
    .line 976
    const/16 v24, 0x0

    .line 977
    .line 978
    const/16 v25, 0x0

    .line 979
    .line 980
    const/16 v26, 0x0

    .line 981
    .line 982
    move-object/from16 v27, v0

    .line 983
    .line 984
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 985
    .line 986
    .line 987
    const/high16 v2, 0x41200000    # 10.0f

    .line 988
    .line 989
    invoke-static {v12, v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 990
    .line 991
    .line 992
    move-result-object v2

    .line 993
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 994
    .line 995
    .line 996
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v2

    .line 1000
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1001
    .line 1002
    iget-object v2, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1003
    .line 1004
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1005
    .line 1006
    .line 1007
    move-result-wide v21

    .line 1008
    sget-object v39, Landroidx/compose/ui/text/font/FontWeight;->r:Landroidx/compose/ui/text/font/FontWeight;

    .line 1009
    .line 1010
    sget-object v3, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1011
    .line 1012
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v5

    .line 1016
    check-cast v5, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1017
    .line 1018
    iget-wide v5, v5, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 1019
    .line 1020
    const/16 v29, 0x0

    .line 1021
    .line 1022
    const v30, 0xfffff8

    .line 1023
    .line 1024
    .line 1025
    const-wide/16 v24, 0x0

    .line 1026
    .line 1027
    const-wide/16 v26, 0x0

    .line 1028
    .line 1029
    const/16 v28, 0x0

    .line 1030
    .line 1031
    move-object/from16 v18, v2

    .line 1032
    .line 1033
    move-wide/from16 v19, v5

    .line 1034
    .line 1035
    move-object/from16 v23, v39

    .line 1036
    .line 1037
    invoke-static/range {v18 .. v30}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v21

    .line 1041
    const/16 v28, 0x0

    .line 1042
    .line 1043
    const/16 v29, 0x1fa

    .line 1044
    .line 1045
    const-string v19, "You can send files to other people who have the Blip app installed and set up."

    .line 1046
    .line 1047
    const/16 v20, 0x0

    .line 1048
    .line 1049
    const/16 v22, 0x0

    .line 1050
    .line 1051
    const/16 v23, 0x0

    .line 1052
    .line 1053
    const/16 v24, 0x0

    .line 1054
    .line 1055
    const/16 v25, 0x0

    .line 1056
    .line 1057
    const/16 v26, 0x0

    .line 1058
    .line 1059
    move-object/from16 v27, v0

    .line 1060
    .line 1061
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1062
    .line 1063
    .line 1064
    const/high16 v2, 0x41400000    # 12.0f

    .line 1065
    .line 1066
    invoke-static {v12, v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v5

    .line 1070
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 1071
    .line 1072
    .line 1073
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v5

    .line 1077
    check-cast v5, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1078
    .line 1079
    iget-object v5, v5, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1080
    .line 1081
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1082
    .line 1083
    .line 1084
    move-result-wide v37

    .line 1085
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1086
    .line 1087
    .line 1088
    move-result-object v6

    .line 1089
    check-cast v6, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1090
    .line 1091
    iget-wide v6, v6, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 1092
    .line 1093
    const v46, 0xfffff8

    .line 1094
    .line 1095
    .line 1096
    move-object/from16 v34, v5

    .line 1097
    .line 1098
    move-wide/from16 v35, v6

    .line 1099
    .line 1100
    invoke-static/range {v34 .. v46}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v21

    .line 1104
    const-string v19, "To send files, search for people by their name or email address."

    .line 1105
    .line 1106
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1107
    .line 1108
    .line 1109
    invoke-static {v12, v2}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v2

    .line 1113
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 1114
    .line 1115
    .line 1116
    sget-object v20, Lnet/blip/shared/Strings$Help$SendToOtherPeople;->a:Ljava/lang/String;

    .line 1117
    .line 1118
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v2

    .line 1122
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1123
    .line 1124
    iget-object v2, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1125
    .line 1126
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v5

    .line 1130
    check-cast v5, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1131
    .line 1132
    iget-wide v5, v5, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 1133
    .line 1134
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1135
    .line 1136
    .line 1137
    move-result-wide v37

    .line 1138
    move-object/from16 v34, v2

    .line 1139
    .line 1140
    move-wide/from16 v35, v5

    .line 1141
    .line 1142
    invoke-static/range {v34 .. v46}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v21

    .line 1146
    new-instance v2, Lnet/blip/shared/SimpleLinkTextButton;

    .line 1147
    .line 1148
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v5

    .line 1152
    check-cast v5, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1153
    .line 1154
    iget-wide v5, v5, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 1155
    .line 1156
    new-instance v7, Lnet/blip/android/ui/help/a;

    .line 1157
    .line 1158
    move-object/from16 v8, v33

    .line 1159
    .line 1160
    const/4 v14, 0x0

    .line 1161
    invoke-direct {v7, v4, v15, v8, v14}, Lnet/blip/android/ui/help/a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/platform/Clipboard;Landroid/content/Context;I)V

    .line 1162
    .line 1163
    .line 1164
    invoke-direct {v2, v5, v6, v7}, Lnet/blip/shared/SimpleLinkTextButton;-><init>(JLkotlin/jvm/functions/Function1;)V

    .line 1165
    .line 1166
    .line 1167
    const/16 v25, 0x1

    .line 1168
    .line 1169
    const/16 v19, 0x0

    .line 1170
    .line 1171
    move-object/from16 v23, v0

    .line 1172
    .line 1173
    move-object/from16 v22, v2

    .line 1174
    .line 1175
    invoke-static/range {v19 .. v25}, Lnet/blip/shared/LinkableTextKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lnet/blip/shared/SimpleLinkTextButton;Landroidx/compose/runtime/Composer;II)V

    .line 1176
    .line 1177
    .line 1178
    invoke-static {}, Landroidx/compose/foundation/layout/ColumnScope;->a()Landroidx/compose/ui/Modifier;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v2

    .line 1182
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 1183
    .line 1184
    .line 1185
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    move-result-object v1

    .line 1189
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1190
    .line 1191
    iget-object v4, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1192
    .line 1193
    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v1

    .line 1197
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1198
    .line 1199
    iget-wide v5, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 1200
    .line 1201
    const/4 v15, 0x0

    .line 1202
    const v16, 0xfffffe

    .line 1203
    .line 1204
    .line 1205
    const-wide/16 v7, 0x0

    .line 1206
    .line 1207
    const/4 v9, 0x0

    .line 1208
    const-wide/16 v10, 0x0

    .line 1209
    .line 1210
    const-wide/16 v12, 0x0

    .line 1211
    .line 1212
    const/4 v14, 0x0

    .line 1213
    invoke-static/range {v4 .. v16}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v21

    .line 1217
    const/16 v28, 0x6

    .line 1218
    .line 1219
    const-string v19, "Thanks for spreading the word! \u2764\ufe0e"

    .line 1220
    .line 1221
    const/16 v20, 0x0

    .line 1222
    .line 1223
    const/16 v22, 0x0

    .line 1224
    .line 1225
    const/16 v23, 0x0

    .line 1226
    .line 1227
    const/16 v25, 0x0

    .line 1228
    .line 1229
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1230
    .line 1231
    .line 1232
    const/4 v2, 0x1

    .line 1233
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1234
    .line 1235
    .line 1236
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1237
    .line 1238
    .line 1239
    goto :goto_a

    .line 1240
    :cond_c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1241
    .line 1242
    .line 1243
    :goto_a
    return-object v31

    .line 1244
    nop

    .line 1245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
