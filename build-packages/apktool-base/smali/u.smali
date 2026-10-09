.class public final synthetic Lu;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lu;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lu;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lu;->l:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lu;->m:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 13
    iput p5, p0, Lu;->j:I

    iput-object p1, p0, Lu;->k:Ljava/lang/Object;

    iput-object p2, p0, Lu;->l:Ljava/lang/Object;

    iput-object p3, p0, Lu;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu;->j:I

    .line 4
    .line 5
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 6
    .line 7
    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 8
    .line 9
    const/high16 v6, 0x41000000    # 8.0f

    .line 10
    .line 11
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 12
    .line 13
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 14
    .line 15
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 16
    .line 17
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 18
    .line 19
    sget-object v11, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 20
    .line 21
    const/16 v13, 0x14

    .line 22
    .line 23
    sget-object v14, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 24
    .line 25
    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 26
    .line 27
    const/16 v16, 0x181

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    const/16 v17, 0x0

    .line 31
    .line 32
    sget-object v19, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    const/16 v20, 0x1

    .line 35
    .line 36
    iget-object v12, v0, Lu;->m:Ljava/lang/Object;

    .line 37
    .line 38
    const/16 v21, 0x0

    .line 39
    .line 40
    iget-object v5, v0, Lu;->l:Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v0, v0, Lu;->k:Ljava/lang/Object;

    .line 43
    .line 44
    packed-switch v1, :pswitch_data_0

    .line 45
    .line 46
    .line 47
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 48
    .line 49
    check-cast v5, Lnet/blip/libblip/frontend/Transfer;

    .line 50
    .line 51
    check-cast v12, Lnet/blip/libblip/Peer;

    .line 52
    .line 53
    move-object/from16 v1, p1

    .line 54
    .line 55
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 56
    .line 57
    move-object/from16 v2, p2

    .line 58
    .line 59
    check-cast v2, Ljava/lang/Integer;

    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v0, v5, v12, v1, v2}, Lnet/blip/android/ui/home/TransferGridCellKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/frontend/Transfer;Lnet/blip/libblip/Peer;Landroidx/compose/runtime/Composer;I)V

    .line 69
    .line 70
    .line 71
    return-object v19

    .line 72
    :pswitch_0
    check-cast v0, Landroidx/compose/runtime/State;

    .line 73
    .line 74
    check-cast v5, Lnet/blip/libblip/PeerPickerViewModel;

    .line 75
    .line 76
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 77
    .line 78
    move-object/from16 v1, p1

    .line 79
    .line 80
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 81
    .line 82
    move-object/from16 v3, p2

    .line 83
    .line 84
    check-cast v3, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    and-int/lit8 v4, v3, 0x3

    .line 91
    .line 92
    if-eq v4, v2, :cond_0

    .line 93
    .line 94
    move/from16 v2, v20

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    move/from16 v2, v21

    .line 98
    .line 99
    :goto_0
    and-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 102
    .line 103
    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 116
    .line 117
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 118
    .line 119
    sget-object v4, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 120
    .line 121
    invoke-static {v14, v2, v3, v4}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 126
    .line 127
    .line 128
    move-result-object v20

    .line 129
    sget-object v2, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lnet/blip/android/ui/util/SystemBarsMetrics;

    .line 136
    .line 137
    iget v2, v2, Lnet/blip/android/ui/util/SystemBarsMetrics;->b:F

    .line 138
    .line 139
    add-float/2addr v2, v6

    .line 140
    new-instance v3, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    .line 141
    .line 142
    invoke-direct {v3, v6, v6, v6, v2}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    or-int/2addr v2, v4

    .line 154
    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    or-int/2addr v2, v4

    .line 159
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    if-nez v2, :cond_1

    .line 164
    .line 165
    if-ne v4, v15, :cond_2

    .line 166
    .line 167
    :cond_1
    new-instance v4, Lnet/blip/android/ui/transfer/a;

    .line 168
    .line 169
    invoke-direct {v4, v5, v12, v0}, Lnet/blip/android/ui/transfer/a;-><init>(Lnet/blip/libblip/PeerPickerViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_2
    move-object/from16 v28, v4

    .line 176
    .line 177
    check-cast v28, Lkotlin/jvm/functions/Function1;

    .line 178
    .line 179
    const/16 v30, 0x0

    .line 180
    .line 181
    const/16 v21, 0x0

    .line 182
    .line 183
    const/16 v23, 0x0

    .line 184
    .line 185
    const/16 v24, 0x0

    .line 186
    .line 187
    const/16 v25, 0x0

    .line 188
    .line 189
    const/16 v26, 0x0

    .line 190
    .line 191
    const/16 v27, 0x0

    .line 192
    .line 193
    move-object/from16 v29, v1

    .line 194
    .line 195
    move-object/from16 v22, v3

    .line 196
    .line 197
    invoke-static/range {v20 .. v30}, Lnet/blip/shared/SelectionListKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValuesImpl;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLnet/blip/shared/SelectionListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :cond_3
    move-object/from16 v29, v1

    .line 202
    .line 203
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 204
    .line 205
    .line 206
    :goto_1
    return-object v19

    .line 207
    :pswitch_1
    move-object v8, v0

    .line 208
    check-cast v8, Landroid/content/Context;

    .line 209
    .line 210
    check-cast v5, Lnet/blip/libblip/frontend/State;

    .line 211
    .line 212
    move-object v9, v12

    .line 213
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 214
    .line 215
    move-object/from16 v0, p1

    .line 216
    .line 217
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 218
    .line 219
    move-object/from16 v1, p2

    .line 220
    .line 221
    check-cast v1, Ljava/lang/Integer;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    and-int/lit8 v3, v1, 0x3

    .line 228
    .line 229
    if-eq v3, v2, :cond_4

    .line 230
    .line 231
    move/from16 v2, v20

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_4
    move/from16 v2, v21

    .line 235
    .line 236
    :goto_2
    and-int/lit8 v1, v1, 0x1

    .line 237
    .line 238
    move-object v3, v0

    .line 239
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 240
    .line 241
    invoke-virtual {v3, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_19

    .line 246
    .line 247
    invoke-static {v3}, Lnet/blip/android/ui/util/NuancedPermissionStateKt;->b(Landroidx/compose/runtime/Composer;)Lnet/blip/android/ui/util/NuancedPermissionState;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    invoke-virtual {v3, v8}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    or-int/2addr v1, v2

    .line 260
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    if-nez v1, :cond_5

    .line 265
    .line 266
    if-ne v2, v15, :cond_6

    .line 267
    .line 268
    :cond_5
    new-instance v2, Lp0;

    .line 269
    .line 270
    const/16 v1, 0x1b

    .line 271
    .line 272
    invoke-direct {v2, v1, v0, v8}, Lp0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_6
    move-object/from16 v26, v2

    .line 279
    .line 280
    check-cast v26, Lkotlin/jvm/functions/Function0;

    .line 281
    .line 282
    new-instance v1, Ld;

    .line 283
    .line 284
    invoke-direct {v1, v13, v0}, Ld;-><init>(ILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    const v0, 0x6009d80f

    .line 288
    .line 289
    .line 290
    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 291
    .line 292
    .line 293
    move-result-object v28

    .line 294
    const v30, 0x180030

    .line 295
    .line 296
    .line 297
    const/16 v31, 0x2d

    .line 298
    .line 299
    const/16 v22, 0x0

    .line 300
    .line 301
    sget-object v23, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 302
    .line 303
    const/16 v24, 0x0

    .line 304
    .line 305
    const/16 v25, 0x0

    .line 306
    .line 307
    const/16 v27, 0x0

    .line 308
    .line 309
    move-object/from16 v29, v3

    .line 310
    .line 311
    invoke-static/range {v22 .. v31}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 312
    .line 313
    .line 314
    move-object/from16 v1, v29

    .line 315
    .line 316
    new-instance v0, Lkotlin/Pair;

    .line 317
    .line 318
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 319
    .line 320
    const-string v3, "Never"

    .line 321
    .line 322
    invoke-direct {v0, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    new-instance v3, Lkotlin/Pair;

    .line 326
    .line 327
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 328
    .line 329
    const-string v6, "From my devices"

    .line 330
    .line 331
    invoke-direct {v3, v4, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    filled-new-array {v0, v3}, [Lkotlin/Pair;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-static {v0}, Lkotlin/collections/MapsKt;->f([Lkotlin/Pair;)Ljava/util/Map;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    if-ne v3, v15, :cond_7

    .line 347
    .line 348
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    :cond_7
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 356
    .line 357
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    if-ne v2, v15, :cond_8

    .line 362
    .line 363
    new-instance v2, Lcd;

    .line 364
    .line 365
    const/16 v4, 0x13

    .line 366
    .line 367
    invoke-direct {v2, v3, v4}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    :cond_8
    move-object/from16 v26, v2

    .line 374
    .line 375
    check-cast v26, Lkotlin/jvm/functions/Function0;

    .line 376
    .line 377
    new-instance v2, Ld4;

    .line 378
    .line 379
    invoke-direct {v2, v0, v5, v3, v9}, Ld4;-><init>(Ljava/util/Map;Lnet/blip/libblip/frontend/State;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 380
    .line 381
    .line 382
    const v0, 0x3c57f6c6

    .line 383
    .line 384
    .line 385
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 386
    .line 387
    .line 388
    move-result-object v28

    .line 389
    const v30, 0x186030

    .line 390
    .line 391
    .line 392
    const/16 v31, 0x2d

    .line 393
    .line 394
    const/16 v22, 0x0

    .line 395
    .line 396
    sget-object v23, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 397
    .line 398
    const/16 v24, 0x0

    .line 399
    .line 400
    const/16 v25, 0x0

    .line 401
    .line 402
    const/16 v27, 0x0

    .line 403
    .line 404
    move-object/from16 v29, v1

    .line 405
    .line 406
    invoke-static/range {v22 .. v31}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 407
    .line 408
    .line 409
    move-object/from16 v11, v29

    .line 410
    .line 411
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    if-ne v0, v15, :cond_9

    .line 416
    .line 417
    invoke-static {v11}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 422
    .line 423
    .line 424
    :cond_9
    move-object v1, v0

    .line 425
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 426
    .line 427
    invoke-static {v11}, Lnet/blip/shared/ContentPicker_androidKt;->b(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function2;

    .line 428
    .line 429
    .line 430
    move-result-object v6

    .line 431
    invoke-static {v5}, Lnet/blip/libblip/State_DerivedKt;->a(Lnet/blip/libblip/frontend/State;)Lnet/blip/libblip/frontend/Config;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    iget-object v0, v0, Lnet/blip/libblip/frontend/Config;->o:Ljava/lang/String;

    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    if-nez v2, :cond_a

    .line 442
    .line 443
    move-object/from16 v0, v17

    .line 444
    .line 445
    :cond_a
    if-eqz v0, :cond_c

    .line 446
    .line 447
    sget-object v2, Lnet/blip/libblip/PathDecoder$Companion;->a:Lnet/blip/android/PathDecoderAndroid;

    .line 448
    .line 449
    if-eqz v2, :cond_b

    .line 450
    .line 451
    invoke-virtual {v2, v0}, Lnet/blip/android/PathDecoderAndroid;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    move-object v2, v0

    .line 456
    goto :goto_3

    .line 457
    :cond_b
    const-string v0, "shared"

    .line 458
    .line 459
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    throw v17

    .line 463
    :cond_c
    move-object/from16 v2, v17

    .line 464
    .line 465
    :goto_3
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    if-ne v0, v15, :cond_d

    .line 470
    .line 471
    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/SnapshotIntStateKt;->a(I)Landroidx/compose/runtime/MutableIntState;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    :cond_d
    move-object v10, v0

    .line 479
    check-cast v10, Landroidx/compose/runtime/MutableIntState;

    .line 480
    .line 481
    move-object v0, v10

    .line 482
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 483
    .line 484
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->j()I

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 493
    .line 494
    .line 495
    move-result v0

    .line 496
    or-int/2addr v0, v3

    .line 497
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    if-nez v0, :cond_e

    .line 502
    .line 503
    if-ne v3, v15, :cond_11

    .line 504
    .line 505
    :cond_e
    if-eqz v2, :cond_10

    .line 506
    .line 507
    :try_start_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-static {v8, v0}, Landroidx/documentfile/provider/DocumentFile;->c(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->d()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    goto :goto_4

    .line 520
    :catchall_0
    move-exception v0

    .line 521
    new-instance v3, Lkotlin/Result$Failure;

    .line 522
    .line 523
    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 524
    .line 525
    .line 526
    move-object v0, v3

    .line 527
    :goto_4
    nop

    .line 528
    instance-of v3, v0, Lkotlin/Result$Failure;

    .line 529
    .line 530
    if-eqz v3, :cond_f

    .line 531
    .line 532
    move-object/from16 v5, v17

    .line 533
    .line 534
    goto :goto_5

    .line 535
    :cond_f
    move-object v5, v0

    .line 536
    :goto_5
    check-cast v5, Ljava/lang/String;

    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_10
    move-object/from16 v5, v17

    .line 540
    .line 541
    :goto_6
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    move-object v3, v5

    .line 545
    :cond_11
    check-cast v3, Ljava/lang/String;

    .line 546
    .line 547
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 552
    .line 553
    .line 554
    move-result v4

    .line 555
    or-int/2addr v0, v4

    .line 556
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    if-nez v0, :cond_12

    .line 561
    .line 562
    if-ne v4, v15, :cond_15

    .line 563
    .line 564
    :cond_12
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 565
    .line 566
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 567
    .line 568
    .line 569
    if-eqz v2, :cond_14

    .line 570
    .line 571
    if-nez v3, :cond_13

    .line 572
    .line 573
    const-string v0, "Selected folder"

    .line 574
    .line 575
    goto :goto_7

    .line 576
    :cond_13
    move-object v0, v3

    .line 577
    :goto_7
    invoke-virtual {v4, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .line 579
    .line 580
    :cond_14
    const-string v0, ""

    .line 581
    .line 582
    const-string v5, "Download"

    .line 583
    .line 584
    invoke-virtual {v4, v0, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    const-string v0, "choose"

    .line 588
    .line 589
    const-string v5, "Choose folder\u2026"

    .line 590
    .line 591
    invoke-virtual {v4, v0, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    :cond_15
    check-cast v4, Ljava/util/LinkedHashMap;

    .line 598
    .line 599
    if-nez v2, :cond_16

    .line 600
    .line 601
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 602
    .line 603
    new-instance v5, Ljava/lang/StringBuilder;

    .line 604
    .line 605
    const-string v7, "primary:"

    .line 606
    .line 607
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    const-string v5, "com.android.externalstorage.documents"

    .line 618
    .line 619
    invoke-static {v5, v0}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 620
    .line 621
    .line 622
    move-result-object v0

    .line 623
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 628
    .line 629
    .line 630
    move-object v7, v0

    .line 631
    goto :goto_8

    .line 632
    :cond_16
    move-object v7, v2

    .line 633
    :goto_8
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    if-ne v0, v15, :cond_17

    .line 638
    .line 639
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 640
    .line 641
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 642
    .line 643
    .line 644
    move-result-object v0

    .line 645
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 646
    .line 647
    .line 648
    :cond_17
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 649
    .line 650
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v5

    .line 654
    if-ne v5, v15, :cond_18

    .line 655
    .line 656
    new-instance v5, Lcd;

    .line 657
    .line 658
    invoke-direct {v5, v0, v13}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    :cond_18
    move-object/from16 v26, v5

    .line 665
    .line 666
    check-cast v26, Lkotlin/jvm/functions/Function0;

    .line 667
    .line 668
    move-object v5, v1

    .line 669
    move-object v1, v3

    .line 670
    move-object v3, v0

    .line 671
    new-instance v0, Lhf;

    .line 672
    .line 673
    invoke-direct/range {v0 .. v10}, Lhf;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Ljava/util/LinkedHashMap;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableIntState;)V

    .line 674
    .line 675
    .line 676
    const v1, -0x4f900739

    .line 677
    .line 678
    .line 679
    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 680
    .line 681
    .line 682
    move-result-object v28

    .line 683
    const v30, 0x186030

    .line 684
    .line 685
    .line 686
    const/16 v31, 0x2d

    .line 687
    .line 688
    const/16 v22, 0x0

    .line 689
    .line 690
    sget-object v23, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->d:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 691
    .line 692
    const/16 v24, 0x0

    .line 693
    .line 694
    const/16 v25, 0x0

    .line 695
    .line 696
    const/16 v27, 0x0

    .line 697
    .line 698
    move-object/from16 v29, v11

    .line 699
    .line 700
    invoke-static/range {v22 .. v31}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 701
    .line 702
    .line 703
    goto :goto_9

    .line 704
    :cond_19
    move-object/from16 v29, v3

    .line 705
    .line 706
    invoke-virtual/range {v29 .. v29}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 707
    .line 708
    .line 709
    :goto_9
    return-object v19

    .line 710
    :pswitch_2
    check-cast v0, Lnet/blip/android/ui/navigation/AuthScope;

    .line 711
    .line 712
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 713
    .line 714
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 715
    .line 716
    move-object/from16 v1, p1

    .line 717
    .line 718
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 719
    .line 720
    move-object/from16 v3, p2

    .line 721
    .line 722
    check-cast v3, Ljava/lang/Integer;

    .line 723
    .line 724
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 725
    .line 726
    .line 727
    move-result v3

    .line 728
    and-int/lit8 v4, v3, 0x3

    .line 729
    .line 730
    if-eq v4, v2, :cond_1a

    .line 731
    .line 732
    move/from16 v4, v20

    .line 733
    .line 734
    goto :goto_a

    .line 735
    :cond_1a
    move/from16 v4, v21

    .line 736
    .line 737
    :goto_a
    and-int/lit8 v3, v3, 0x1

    .line 738
    .line 739
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 740
    .line 741
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 742
    .line 743
    .line 744
    move-result v3

    .line 745
    if-eqz v3, :cond_20

    .line 746
    .line 747
    iget-object v3, v0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 748
    .line 749
    iget-object v3, v3, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 750
    .line 751
    const/16 v28, 0x30

    .line 752
    .line 753
    const/16 v29, 0x9

    .line 754
    .line 755
    const/16 v22, 0x0

    .line 756
    .line 757
    const-string v23, "Name"

    .line 758
    .line 759
    const-wide/16 v25, 0x0

    .line 760
    .line 761
    move-object/from16 v27, v1

    .line 762
    .line 763
    move-object/from16 v24, v3

    .line 764
    .line 765
    invoke-static/range {v22 .. v29}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 766
    .line 767
    .line 768
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v3

    .line 772
    check-cast v3, Ljava/lang/Boolean;

    .line 773
    .line 774
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 775
    .line 776
    .line 777
    move-result v3

    .line 778
    if-eqz v3, :cond_1f

    .line 779
    .line 780
    const v3, -0x7ba27614

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 784
    .line 785
    .line 786
    iget-object v0, v0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 787
    .line 788
    iget-object v0, v0, Lnet/blip/libblip/User;->o:Ljava/lang/String;

    .line 789
    .line 790
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v3

    .line 794
    if-ne v3, v15, :cond_1b

    .line 795
    .line 796
    new-instance v3, Lle;

    .line 797
    .line 798
    invoke-direct {v3, v13}, Lle;-><init>(I)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 802
    .line 803
    .line 804
    :cond_1b
    move-object/from16 v24, v3

    .line 805
    .line 806
    check-cast v24, Lkotlin/jvm/functions/Function1;

    .line 807
    .line 808
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    move-result v3

    .line 812
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    move-result-object v4

    .line 816
    if-nez v3, :cond_1c

    .line 817
    .line 818
    if-ne v4, v15, :cond_1d

    .line 819
    .line 820
    :cond_1c
    new-instance v4, Llc;

    .line 821
    .line 822
    invoke-direct {v4, v2, v12, v5}, Llc;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 826
    .line 827
    .line 828
    :cond_1d
    move-object/from16 v25, v4

    .line 829
    .line 830
    check-cast v25, Lkotlin/jvm/functions/Function1;

    .line 831
    .line 832
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    move-result-object v2

    .line 836
    if-ne v2, v15, :cond_1e

    .line 837
    .line 838
    new-instance v2, Lcd;

    .line 839
    .line 840
    const/16 v3, 0x10

    .line 841
    .line 842
    invoke-direct {v2, v12, v3}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 843
    .line 844
    .line 845
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 846
    .line 847
    .line 848
    :cond_1e
    move-object/from16 v26, v2

    .line 849
    .line 850
    check-cast v26, Lkotlin/jvm/functions/Function0;

    .line 851
    .line 852
    new-instance v2, Landroidx/compose/foundation/text/KeyboardOptions;

    .line 853
    .line 854
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 855
    .line 856
    const/4 v6, 0x0

    .line 857
    const/16 v7, 0x7c

    .line 858
    .line 859
    const/4 v3, 0x2

    .line 860
    const/4 v5, 0x0

    .line 861
    invoke-direct/range {v2 .. v7}, Landroidx/compose/foundation/text/KeyboardOptions;-><init>(ILjava/lang/Boolean;III)V

    .line 862
    .line 863
    .line 864
    const/16 v29, 0x0

    .line 865
    .line 866
    const v31, 0xd86006

    .line 867
    .line 868
    .line 869
    const-string v22, "Edit name"

    .line 870
    .line 871
    const/16 v28, 0x0

    .line 872
    .line 873
    move-object/from16 v23, v0

    .line 874
    .line 875
    move-object/from16 v30, v1

    .line 876
    .line 877
    move-object/from16 v27, v2

    .line 878
    .line 879
    invoke-static/range {v22 .. v31}, Lnet/blip/android/ui/components/TextFieldDialogKt;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/KeyboardOptions;ZLandroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/Composer;I)V

    .line 880
    .line 881
    .line 882
    move/from16 v0, v21

    .line 883
    .line 884
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 885
    .line 886
    .line 887
    goto :goto_b

    .line 888
    :cond_1f
    move/from16 v0, v21

    .line 889
    .line 890
    const v2, -0x7b95f3ff

    .line 891
    .line 892
    .line 893
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 897
    .line 898
    .line 899
    goto :goto_b

    .line 900
    :cond_20
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 901
    .line 902
    .line 903
    :goto_b
    return-object v19

    .line 904
    :pswitch_3
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 905
    .line 906
    check-cast v5, Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 907
    .line 908
    check-cast v12, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 909
    .line 910
    move-object/from16 v1, p1

    .line 911
    .line 912
    check-cast v1, Ljava/lang/Float;

    .line 913
    .line 914
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 915
    .line 916
    .line 917
    move-result v1

    .line 918
    move-object/from16 v2, p2

    .line 919
    .line 920
    check-cast v2, Ljava/lang/Float;

    .line 921
    .line 922
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 923
    .line 924
    .line 925
    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 926
    .line 927
    sub-float/2addr v1, v2

    .line 928
    invoke-virtual {v5, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(F)F

    .line 929
    .line 930
    .line 931
    move-result v1

    .line 932
    invoke-virtual {v5, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(F)J

    .line 933
    .line 934
    .line 935
    move-result-wide v1

    .line 936
    check-cast v12, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;

    .line 937
    .line 938
    iget-object v3, v12, Landroidx/compose/foundation/gestures/ScrollingLogic$nestedScrollScope$1;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 939
    .line 940
    iget-object v4, v3, Landroidx/compose/foundation/gestures/ScrollingLogic;->k:Landroidx/compose/foundation/gestures/ScrollScope;

    .line 941
    .line 942
    move/from16 v6, v20

    .line 943
    .line 944
    invoke-virtual {v3, v4, v1, v2, v6}, Landroidx/compose/foundation/gestures/ScrollingLogic;->d(Landroidx/compose/foundation/gestures/ScrollScope;JI)J

    .line 945
    .line 946
    .line 947
    move-result-wide v1

    .line 948
    invoke-virtual {v5, v1, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(J)F

    .line 949
    .line 950
    .line 951
    move-result v1

    .line 952
    invoke-virtual {v5, v1}, Landroidx/compose/foundation/gestures/ScrollingLogic;->e(F)F

    .line 953
    .line 954
    .line 955
    move-result v1

    .line 956
    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 957
    .line 958
    add-float/2addr v2, v1

    .line 959
    iput v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 960
    .line 961
    return-object v19

    .line 962
    :pswitch_4
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 963
    .line 964
    check-cast v5, Lnet/blip/libblip/User;

    .line 965
    .line 966
    check-cast v12, Landroidx/compose/runtime/MutableState;

    .line 967
    .line 968
    move-object/from16 v1, p1

    .line 969
    .line 970
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 971
    .line 972
    move-object/from16 v3, p2

    .line 973
    .line 974
    check-cast v3, Ljava/lang/Integer;

    .line 975
    .line 976
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 977
    .line 978
    .line 979
    move-result v3

    .line 980
    and-int/lit8 v4, v3, 0x3

    .line 981
    .line 982
    if-eq v4, v2, :cond_21

    .line 983
    .line 984
    const/4 v2, 0x1

    .line 985
    :goto_c
    const/16 v20, 0x1

    .line 986
    .line 987
    goto :goto_d

    .line 988
    :cond_21
    const/4 v2, 0x0

    .line 989
    goto :goto_c

    .line 990
    :goto_d
    and-int/lit8 v3, v3, 0x1

    .line 991
    .line 992
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 993
    .line 994
    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 995
    .line 996
    .line 997
    move-result v2

    .line 998
    if-eqz v2, :cond_22

    .line 999
    .line 1000
    const/high16 v2, 0x42c00000    # 96.0f

    .line 1001
    .line 1002
    invoke-static {v14, v2}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v3

    .line 1010
    check-cast v3, Landroidx/compose/ui/text/input/TextFieldValue;

    .line 1011
    .line 1012
    iget-object v3, v3, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 1013
    .line 1014
    iget-object v3, v3, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 1015
    .line 1016
    iget-object v4, v5, Lnet/blip/libblip/User;->m:Ljava/lang/String;

    .line 1017
    .line 1018
    iget-object v6, v5, Lnet/blip/libblip/User;->n:Ljava/lang/String;

    .line 1019
    .line 1020
    iget-object v7, v5, Lnet/blip/libblip/User;->p:Lokio/ByteString;

    .line 1021
    .line 1022
    iget-object v8, v5, Lnet/blip/libblip/User;->q:Lokio/ByteString;

    .line 1023
    .line 1024
    iget-object v9, v5, Lnet/blip/libblip/User;->x:Ljava/util/Map;

    .line 1025
    .line 1026
    iget-boolean v10, v5, Lnet/blip/libblip/User;->r:Z

    .line 1027
    .line 1028
    iget-boolean v11, v5, Lnet/blip/libblip/User;->s:Z

    .line 1029
    .line 1030
    iget-boolean v12, v5, Lnet/blip/libblip/User;->t:Z

    .line 1031
    .line 1032
    iget-object v13, v5, Lnet/blip/libblip/User;->u:Lnet/blip/libblip/PlanKind;

    .line 1033
    .line 1034
    iget-object v14, v5, Lnet/blip/libblip/User;->v:Ljava/time/Instant;

    .line 1035
    .line 1036
    iget-object v15, v5, Lnet/blip/libblip/User;->w:Ljava/time/Instant;

    .line 1037
    .line 1038
    invoke-virtual {v5}, Lcom/squareup/wire/Message;->a()Lokio/ByteString;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v33

    .line 1042
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    .line 1059
    .line 1060
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    .line 1065
    .line 1066
    new-instance v20, Lnet/blip/libblip/User;

    .line 1067
    .line 1068
    move-object/from16 v23, v3

    .line 1069
    .line 1070
    move-object/from16 v21, v4

    .line 1071
    .line 1072
    move-object/from16 v22, v6

    .line 1073
    .line 1074
    move-object/from16 v24, v7

    .line 1075
    .line 1076
    move-object/from16 v25, v8

    .line 1077
    .line 1078
    move-object/from16 v26, v9

    .line 1079
    .line 1080
    move/from16 v27, v10

    .line 1081
    .line 1082
    move/from16 v28, v11

    .line 1083
    .line 1084
    move/from16 v29, v12

    .line 1085
    .line 1086
    move-object/from16 v30, v13

    .line 1087
    .line 1088
    move-object/from16 v31, v14

    .line 1089
    .line 1090
    move-object/from16 v32, v15

    .line 1091
    .line 1092
    invoke-direct/range {v20 .. v33}, Lnet/blip/libblip/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;Ljava/util/Map;ZZZLnet/blip/libblip/PlanKind;Ljava/time/Instant;Ljava/time/Instant;Lokio/ByteString;)V

    .line 1093
    .line 1094
    .line 1095
    move-object/from16 v3, v20

    .line 1096
    .line 1097
    const/4 v4, 0x6

    .line 1098
    invoke-static {v2, v0, v3, v1, v4}, Lnet/blip/android/ui/components/AndroidAvatarEditorKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/User;Landroidx/compose/runtime/Composer;I)V

    .line 1099
    .line 1100
    .line 1101
    goto :goto_e

    .line 1102
    :cond_22
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1103
    .line 1104
    .line 1105
    :goto_e
    return-object v19

    .line 1106
    :pswitch_5
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1107
    .line 1108
    check-cast v5, Landroidx/compose/foundation/ScrollState;

    .line 1109
    .line 1110
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1111
    .line 1112
    move-object/from16 v1, p1

    .line 1113
    .line 1114
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1115
    .line 1116
    move-object/from16 v13, p2

    .line 1117
    .line 1118
    check-cast v13, Ljava/lang/Integer;

    .line 1119
    .line 1120
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 1121
    .line 1122
    .line 1123
    move-result v13

    .line 1124
    and-int/lit8 v14, v13, 0x3

    .line 1125
    .line 1126
    if-eq v14, v2, :cond_23

    .line 1127
    .line 1128
    const/4 v2, 0x1

    .line 1129
    :goto_f
    const/4 v14, 0x1

    .line 1130
    goto :goto_10

    .line 1131
    :cond_23
    const/4 v2, 0x0

    .line 1132
    goto :goto_f

    .line 1133
    :goto_10
    and-int/2addr v13, v14

    .line 1134
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1135
    .line 1136
    invoke-virtual {v1, v13, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1137
    .line 1138
    .line 1139
    move-result v2

    .line 1140
    if-eqz v2, :cond_27

    .line 1141
    .line 1142
    const/4 v2, 0x0

    .line 1143
    invoke-static {v0, v2, v6, v14}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v0

    .line 1147
    sget-object v2, Landroidx/compose/foundation/layout/IntrinsicSize;->j:Landroidx/compose/foundation/layout/IntrinsicSize;

    .line 1148
    .line 1149
    invoke-static {v0}, Landroidx/compose/foundation/layout/IntrinsicKt;->a(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v0

    .line 1153
    invoke-static {v0, v5}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v0

    .line 1157
    const/4 v2, 0x0

    .line 1158
    invoke-static {v4, v3, v1, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v2

    .line 1162
    invoke-static {v1}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 1163
    .line 1164
    .line 1165
    move-result v3

    .line 1166
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v4

    .line 1170
    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v0

    .line 1174
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1175
    .line 1176
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1180
    .line 1181
    .line 1182
    iget-boolean v5, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1183
    .line 1184
    if-eqz v5, :cond_24

    .line 1185
    .line 1186
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1187
    .line 1188
    .line 1189
    goto :goto_11

    .line 1190
    :cond_24
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1191
    .line 1192
    .line 1193
    :goto_11
    invoke-static {v1, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1194
    .line 1195
    .line 1196
    invoke-static {v1, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1197
    .line 1198
    .line 1199
    iget-boolean v2, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1200
    .line 1201
    if-nez v2, :cond_25

    .line 1202
    .line 1203
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v2

    .line 1207
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v4

    .line 1211
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1212
    .line 1213
    .line 1214
    move-result v2

    .line 1215
    if-nez v2, :cond_26

    .line 1216
    .line 1217
    :cond_25
    invoke-static {v3, v1, v3, v8}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 1218
    .line 1219
    .line 1220
    :cond_26
    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1221
    .line 1222
    .line 1223
    sget-object v0, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    .line 1224
    .line 1225
    const/16 v18, 0x6

    .line 1226
    .line 1227
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v2

    .line 1231
    invoke-virtual {v12, v0, v1, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    .line 1233
    .line 1234
    const/4 v14, 0x1

    .line 1235
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1236
    .line 1237
    .line 1238
    goto :goto_12

    .line 1239
    :cond_27
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1240
    .line 1241
    .line 1242
    :goto_12
    return-object v19

    .line 1243
    :pswitch_6
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1244
    .line 1245
    check-cast v5, Ljava/lang/String;

    .line 1246
    .line 1247
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1248
    .line 1249
    move-object/from16 v1, p1

    .line 1250
    .line 1251
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1252
    .line 1253
    move-object/from16 v2, p2

    .line 1254
    .line 1255
    check-cast v2, Ljava/lang/Integer;

    .line 1256
    .line 1257
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1258
    .line 1259
    .line 1260
    const/16 v2, 0x1b1

    .line 1261
    .line 1262
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1263
    .line 1264
    .line 1265
    move-result v2

    .line 1266
    invoke-static {v0, v5, v12, v1, v2}, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1267
    .line 1268
    .line 1269
    return-object v19

    .line 1270
    :pswitch_7
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1271
    .line 1272
    check-cast v5, Ljava/util/Map;

    .line 1273
    .line 1274
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 1275
    .line 1276
    move-object/from16 v1, p1

    .line 1277
    .line 1278
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1279
    .line 1280
    move-object/from16 v2, p2

    .line 1281
    .line 1282
    check-cast v2, Ljava/lang/Integer;

    .line 1283
    .line 1284
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1285
    .line 1286
    .line 1287
    const/16 v20, 0x1

    .line 1288
    .line 1289
    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1290
    .line 1291
    .line 1292
    move-result v2

    .line 1293
    invoke-static {v0, v5, v12, v1, v2}, Lnet/blip/android/ui/components/DropdownMenuKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 1294
    .line 1295
    .line 1296
    return-object v19

    .line 1297
    :pswitch_8
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1298
    .line 1299
    check-cast v5, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 1300
    .line 1301
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1302
    .line 1303
    move-object/from16 v1, p1

    .line 1304
    .line 1305
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1306
    .line 1307
    move-object/from16 v2, p2

    .line 1308
    .line 1309
    check-cast v2, Ljava/lang/Integer;

    .line 1310
    .line 1311
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1312
    .line 1313
    .line 1314
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1315
    .line 1316
    .line 1317
    move-result v2

    .line 1318
    invoke-static {v0, v5, v12, v1, v2}, Landroidx/compose/foundation/text/CoreTextFieldKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1319
    .line 1320
    .line 1321
    return-object v19

    .line 1322
    :pswitch_9
    check-cast v0, Landroidx/compose/ui/node/Owner;

    .line 1323
    .line 1324
    check-cast v5, Landroidx/compose/ui/platform/UriHandler;

    .line 1325
    .line 1326
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1327
    .line 1328
    move-object/from16 v1, p1

    .line 1329
    .line 1330
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1331
    .line 1332
    move-object/from16 v2, p2

    .line 1333
    .line 1334
    check-cast v2, Ljava/lang/Integer;

    .line 1335
    .line 1336
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1337
    .line 1338
    .line 1339
    const/16 v20, 0x1

    .line 1340
    .line 1341
    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1342
    .line 1343
    .line 1344
    move-result v2

    .line 1345
    invoke-static {v0, v5, v12, v1, v2}, Landroidx/compose/ui/platform/CompositionLocalsKt;->a(Landroidx/compose/ui/node/Owner;Landroidx/compose/ui/platform/UriHandler;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1346
    .line 1347
    .line 1348
    return-object v19

    .line 1349
    :pswitch_a
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 1350
    .line 1351
    check-cast v5, Landroidx/compose/foundation/layout/PaddingValues;

    .line 1352
    .line 1353
    check-cast v12, Lkotlin/jvm/functions/Function3;

    .line 1354
    .line 1355
    move-object/from16 v1, p1

    .line 1356
    .line 1357
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1358
    .line 1359
    move-object/from16 v3, p2

    .line 1360
    .line 1361
    check-cast v3, Ljava/lang/Integer;

    .line 1362
    .line 1363
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1364
    .line 1365
    .line 1366
    move-result v3

    .line 1367
    and-int/lit8 v4, v3, 0x3

    .line 1368
    .line 1369
    if-eq v4, v2, :cond_28

    .line 1370
    .line 1371
    const/4 v2, 0x1

    .line 1372
    :goto_13
    const/16 v20, 0x1

    .line 1373
    .line 1374
    goto :goto_14

    .line 1375
    :cond_28
    const/4 v2, 0x0

    .line 1376
    goto :goto_13

    .line 1377
    :goto_14
    and-int/lit8 v3, v3, 0x1

    .line 1378
    .line 1379
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1380
    .line 1381
    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1382
    .line 1383
    .line 1384
    move-result v2

    .line 1385
    if-eqz v2, :cond_29

    .line 1386
    .line 1387
    sget-object v2, Landroidx/compose/material/ContentAlphaKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1388
    .line 1389
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v0

    .line 1393
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 1394
    .line 1395
    iget-wide v3, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 1396
    .line 1397
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 1398
    .line 1399
    .line 1400
    move-result v0

    .line 1401
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v0

    .line 1405
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->b(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v0

    .line 1409
    new-instance v2, Lv4;

    .line 1410
    .line 1411
    const/4 v3, 0x0

    .line 1412
    invoke-direct {v2, v5, v12, v3}, Lv4;-><init>(Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;I)V

    .line 1413
    .line 1414
    .line 1415
    const v3, -0x33da2ede    # -4.3467912E7f

    .line 1416
    .line 1417
    .line 1418
    invoke-static {v3, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v2

    .line 1422
    const/16 v3, 0x38

    .line 1423
    .line 1424
    invoke-static {v0, v2, v1, v3}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 1425
    .line 1426
    .line 1427
    goto :goto_15

    .line 1428
    :cond_29
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1429
    .line 1430
    .line 1431
    :goto_15
    return-object v19

    .line 1432
    :pswitch_b
    check-cast v0, Lnet/blip/libblip/User;

    .line 1433
    .line 1434
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 1435
    .line 1436
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 1437
    .line 1438
    move-object/from16 v1, p1

    .line 1439
    .line 1440
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1441
    .line 1442
    move-object/from16 v2, p2

    .line 1443
    .line 1444
    check-cast v2, Ljava/lang/Integer;

    .line 1445
    .line 1446
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1447
    .line 1448
    .line 1449
    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1450
    .line 1451
    .line 1452
    move-result v2

    .line 1453
    invoke-static {v0, v5, v12, v1, v2}, Lnet/blip/android/ui/dialogs/BlockUserConfirmationDialogKt;->a(Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 1454
    .line 1455
    .line 1456
    return-object v19

    .line 1457
    :pswitch_c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1458
    .line 1459
    check-cast v5, Landroidx/compose/ui/Modifier;

    .line 1460
    .line 1461
    check-cast v12, Lkotlin/jvm/functions/Function1;

    .line 1462
    .line 1463
    move-object/from16 v1, p1

    .line 1464
    .line 1465
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1466
    .line 1467
    move-object/from16 v2, p2

    .line 1468
    .line 1469
    check-cast v2, Ljava/lang/Integer;

    .line 1470
    .line 1471
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1472
    .line 1473
    .line 1474
    const/16 v20, 0x1

    .line 1475
    .line 1476
    invoke-static/range {v20 .. v20}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1477
    .line 1478
    .line 1479
    move-result v2

    .line 1480
    invoke-static {v0, v5, v12, v1, v2}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->b(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 1481
    .line 1482
    .line 1483
    return-object v19

    .line 1484
    :pswitch_d
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1485
    .line 1486
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 1487
    .line 1488
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1489
    .line 1490
    move-object/from16 v1, p1

    .line 1491
    .line 1492
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1493
    .line 1494
    move-object/from16 v3, p2

    .line 1495
    .line 1496
    check-cast v3, Ljava/lang/Integer;

    .line 1497
    .line 1498
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1499
    .line 1500
    .line 1501
    move-result v3

    .line 1502
    and-int/lit8 v4, v3, 0x3

    .line 1503
    .line 1504
    if-eq v4, v2, :cond_2a

    .line 1505
    .line 1506
    const/4 v2, 0x1

    .line 1507
    :goto_16
    const/16 v20, 0x1

    .line 1508
    .line 1509
    goto :goto_17

    .line 1510
    :cond_2a
    const/4 v2, 0x0

    .line 1511
    goto :goto_16

    .line 1512
    :goto_17
    and-int/lit8 v3, v3, 0x1

    .line 1513
    .line 1514
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1515
    .line 1516
    invoke-virtual {v1, v3, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1517
    .line 1518
    .line 1519
    move-result v2

    .line 1520
    if-eqz v2, :cond_2d

    .line 1521
    .line 1522
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v2

    .line 1526
    if-ne v2, v15, :cond_2b

    .line 1527
    .line 1528
    new-instance v2, Li2;

    .line 1529
    .line 1530
    const/4 v3, 0x0

    .line 1531
    invoke-direct {v2, v5, v3}, Li2;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 1532
    .line 1533
    .line 1534
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 1535
    .line 1536
    .line 1537
    :cond_2b
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1538
    .line 1539
    invoke-static {v0, v2}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v0

    .line 1543
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 1544
    .line 1545
    const/4 v14, 0x1

    .line 1546
    invoke-static {v2, v14}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1547
    .line 1548
    .line 1549
    move-result-object v2

    .line 1550
    iget-wide v3, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1551
    .line 1552
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 1553
    .line 1554
    .line 1555
    move-result v3

    .line 1556
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v4

    .line 1560
    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v0

    .line 1564
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1565
    .line 1566
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1567
    .line 1568
    .line 1569
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1570
    .line 1571
    .line 1572
    iget-boolean v5, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1573
    .line 1574
    if-eqz v5, :cond_2c

    .line 1575
    .line 1576
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1577
    .line 1578
    .line 1579
    goto :goto_18

    .line 1580
    :cond_2c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1581
    .line 1582
    .line 1583
    :goto_18
    invoke-static {v1, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1584
    .line 1585
    .line 1586
    invoke-static {v1, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1587
    .line 1588
    .line 1589
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1590
    .line 1591
    .line 1592
    move-result-object v2

    .line 1593
    invoke-static {v1, v2, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1594
    .line 1595
    .line 1596
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1597
    .line 1598
    .line 1599
    invoke-static {v1, v0, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1600
    .line 1601
    .line 1602
    const/16 v21, 0x0

    .line 1603
    .line 1604
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v0

    .line 1608
    invoke-virtual {v12, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    const/4 v14, 0x1

    .line 1612
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1613
    .line 1614
    .line 1615
    goto :goto_19

    .line 1616
    :cond_2d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1617
    .line 1618
    .line 1619
    :goto_19
    return-object v19

    .line 1620
    :pswitch_e
    check-cast v0, Landroidx/compose/ui/Modifier;

    .line 1621
    .line 1622
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 1623
    .line 1624
    check-cast v12, Lnet/blip/libblip/User;

    .line 1625
    .line 1626
    move-object/from16 v1, p1

    .line 1627
    .line 1628
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1629
    .line 1630
    move-object/from16 v2, p2

    .line 1631
    .line 1632
    check-cast v2, Ljava/lang/Integer;

    .line 1633
    .line 1634
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1635
    .line 1636
    .line 1637
    const/4 v2, 0x7

    .line 1638
    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 1639
    .line 1640
    .line 1641
    move-result v2

    .line 1642
    invoke-static {v0, v5, v12, v1, v2}, Lnet/blip/android/ui/components/AndroidAvatarEditorKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/User;Landroidx/compose/runtime/Composer;I)V

    .line 1643
    .line 1644
    .line 1645
    return-object v19

    .line 1646
    :pswitch_f
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 1647
    .line 1648
    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 1649
    .line 1650
    check-cast v12, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1651
    .line 1652
    move-object/from16 v1, p1

    .line 1653
    .line 1654
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1655
    .line 1656
    move-object/from16 v6, p2

    .line 1657
    .line 1658
    check-cast v6, Ljava/lang/Integer;

    .line 1659
    .line 1660
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1661
    .line 1662
    .line 1663
    move-result v6

    .line 1664
    sget-object v13, Landroidx/compose/material/AlertDialogKt;->a:Landroidx/compose/ui/Modifier;

    .line 1665
    .line 1666
    and-int/lit8 v13, v6, 0x3

    .line 1667
    .line 1668
    if-eq v13, v2, :cond_2e

    .line 1669
    .line 1670
    const/4 v2, 0x1

    .line 1671
    :goto_1a
    const/16 v20, 0x1

    .line 1672
    .line 1673
    goto :goto_1b

    .line 1674
    :cond_2e
    const/4 v2, 0x0

    .line 1675
    goto :goto_1a

    .line 1676
    :goto_1b
    and-int/lit8 v6, v6, 0x1

    .line 1677
    .line 1678
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1679
    .line 1680
    invoke-virtual {v1, v6, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1681
    .line 1682
    .line 1683
    move-result v2

    .line 1684
    if-eqz v2, :cond_34

    .line 1685
    .line 1686
    const/4 v2, 0x0

    .line 1687
    invoke-static {v4, v3, v1, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v3

    .line 1691
    invoke-static {v1}, Landroidx/compose/runtime/ComposablesKt;->a(Landroidx/compose/runtime/Composer;)I

    .line 1692
    .line 1693
    .line 1694
    move-result v2

    .line 1695
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1696
    .line 1697
    .line 1698
    move-result-object v4

    .line 1699
    invoke-static {v1, v14}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1700
    .line 1701
    .line 1702
    move-result-object v6

    .line 1703
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1704
    .line 1705
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1706
    .line 1707
    .line 1708
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1709
    .line 1710
    .line 1711
    iget-boolean v13, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1712
    .line 1713
    if-eqz v13, :cond_2f

    .line 1714
    .line 1715
    invoke-virtual {v1, v11}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1716
    .line 1717
    .line 1718
    goto :goto_1c

    .line 1719
    :cond_2f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1720
    .line 1721
    .line 1722
    :goto_1c
    invoke-static {v1, v3, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1723
    .line 1724
    .line 1725
    invoke-static {v1, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1726
    .line 1727
    .line 1728
    iget-boolean v3, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1729
    .line 1730
    if-nez v3, :cond_30

    .line 1731
    .line 1732
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 1733
    .line 1734
    .line 1735
    move-result-object v3

    .line 1736
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1737
    .line 1738
    .line 1739
    move-result-object v4

    .line 1740
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1741
    .line 1742
    .line 1743
    move-result v3

    .line 1744
    if-nez v3, :cond_31

    .line 1745
    .line 1746
    :cond_30
    invoke-static {v2, v1, v2, v8}, Lq;->r(ILandroidx/compose/runtime/GapComposer;ILe6;)V

    .line 1747
    .line 1748
    .line 1749
    :cond_31
    invoke-static {v1, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1750
    .line 1751
    .line 1752
    if-nez v0, :cond_32

    .line 1753
    .line 1754
    const v0, -0x5d6e349

    .line 1755
    .line 1756
    .line 1757
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1758
    .line 1759
    .line 1760
    const/4 v2, 0x0

    .line 1761
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1762
    .line 1763
    .line 1764
    move-object/from16 v0, v17

    .line 1765
    .line 1766
    goto :goto_1d

    .line 1767
    :cond_32
    const/4 v2, 0x0

    .line 1768
    const v3, -0x5d6e348

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1772
    .line 1773
    .line 1774
    new-instance v3, Lx;

    .line 1775
    .line 1776
    invoke-direct {v3, v2, v0}, Lx;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 1777
    .line 1778
    .line 1779
    const v0, 0x6790e913

    .line 1780
    .line 1781
    .line 1782
    invoke-static {v0, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v0

    .line 1786
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1787
    .line 1788
    .line 1789
    :goto_1d
    if-nez v5, :cond_33

    .line 1790
    .line 1791
    const v3, -0x5d07504

    .line 1792
    .line 1793
    .line 1794
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1795
    .line 1796
    .line 1797
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1798
    .line 1799
    .line 1800
    move-object/from16 v5, v17

    .line 1801
    .line 1802
    const/4 v14, 0x1

    .line 1803
    :goto_1e
    const/4 v4, 0x6

    .line 1804
    goto :goto_1f

    .line 1805
    :cond_33
    const v3, -0x5d07503

    .line 1806
    .line 1807
    .line 1808
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 1809
    .line 1810
    .line 1811
    new-instance v3, Lx;

    .line 1812
    .line 1813
    const/4 v14, 0x1

    .line 1814
    invoke-direct {v3, v14, v5}, Lx;-><init>(ILkotlin/jvm/functions/Function2;)V

    .line 1815
    .line 1816
    .line 1817
    const v4, 0x4b6ecd32    # 1.5650098E7f

    .line 1818
    .line 1819
    .line 1820
    invoke-static {v4, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v5

    .line 1824
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1825
    .line 1826
    .line 1827
    goto :goto_1e

    .line 1828
    :goto_1f
    invoke-static {v0, v5, v1, v4}, Landroidx/compose/material/AlertDialogKt;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 1829
    .line 1830
    .line 1831
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v0

    .line 1835
    invoke-virtual {v12, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    .line 1837
    .line 1838
    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1839
    .line 1840
    .line 1841
    goto :goto_20

    .line 1842
    :cond_34
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1843
    .line 1844
    .line 1845
    :goto_20
    return-object v19

    .line 1846
    nop

    .line 1847
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
