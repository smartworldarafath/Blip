.class public final synthetic Lff;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lnet/blip/android/ui/navigation/AuthScope;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lnet/blip/android/ui/navigation/AuthScope;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lff;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lff;->k:Lkotlin/jvm/functions/Function1;

    .line 8
    .line 9
    iput-object p2, p0, Lff;->l:Lnet/blip/android/ui/navigation/AuthScope;

    .line 10
    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Lnet/blip/android/ui/navigation/AuthScope;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 12
    iput p3, p0, Lff;->j:I

    iput-object p1, p0, Lff;->l:Lnet/blip/android/ui/navigation/AuthScope;

    iput-object p2, p0, Lff;->k:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lff;->j:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 6
    .line 7
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    iget-object v6, v0, Lff;->k:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iget-object v0, v0, Lff;->l:Lnet/blip/android/ui/navigation/AuthScope;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v8, 0x2

    .line 18
    packed-switch v1, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    move-object/from16 v1, p1

    .line 22
    .line 23
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 24
    .line 25
    move-object/from16 v2, p2

    .line 26
    .line 27
    check-cast v2, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    and-int/lit8 v9, v2, 0x3

    .line 34
    .line 35
    if-eq v9, v8, :cond_0

    .line 36
    .line 37
    move v8, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move v8, v7

    .line 40
    :goto_0
    and-int/2addr v2, v5

    .line 41
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v8}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_7

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-ne v2, v3, :cond_1

    .line 54
    .line 55
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 56
    .line 57
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    if-ne v5, v3, :cond_2

    .line 71
    .line 72
    new-instance v5, Lcd;

    .line 73
    .line 74
    const/16 v8, 0x11

    .line 75
    .line 76
    invoke-direct {v5, v2, v8}, Lcd;-><init>(Landroidx/compose/runtime/MutableState;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    move-object v13, v5

    .line 83
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 84
    .line 85
    new-instance v5, Lu;

    .line 86
    .line 87
    const/16 v8, 0xd

    .line 88
    .line 89
    invoke-direct {v5, v0, v6, v2, v8}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 90
    .line 91
    .line 92
    const v2, -0x5f2a4d1f

    .line 93
    .line 94
    .line 95
    invoke-static {v2, v5, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    const v17, 0x186030

    .line 100
    .line 101
    .line 102
    const/16 v18, 0x2d

    .line 103
    .line 104
    const/4 v9, 0x0

    .line 105
    sget-object v10, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsProfileScreenKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 106
    .line 107
    const/4 v11, 0x0

    .line 108
    const/4 v12, 0x0

    .line 109
    const/4 v14, 0x0

    .line 110
    move-object/from16 v16, v1

    .line 111
    .line 112
    invoke-static/range {v9 .. v18}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 116
    .line 117
    iget-boolean v2, v2, Lnet/blip/libblip/User;->t:Z

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    if-nez v2, :cond_3

    .line 128
    .line 129
    if-ne v5, v3, :cond_4

    .line 130
    .line 131
    :cond_3
    iget-object v0, v0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 132
    .line 133
    iget-boolean v0, v0, Lnet/blip/libblip/User;->t:Z

    .line 134
    .line 135
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 147
    .line 148
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    or-int/2addr v0, v2

    .line 157
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    if-nez v0, :cond_5

    .line 162
    .line 163
    if-ne v2, v3, :cond_6

    .line 164
    .line 165
    :cond_5
    new-instance v2, Lk9;

    .line 166
    .line 167
    invoke-direct {v2, v5, v6}, Lk9;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_6
    move-object v13, v2

    .line 174
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 175
    .line 176
    new-instance v0, Lef;

    .line 177
    .line 178
    invoke-direct {v0, v7, v5, v6}, Lef;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 179
    .line 180
    .line 181
    const v2, 0x52907718

    .line 182
    .line 183
    .line 184
    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 185
    .line 186
    .line 187
    move-result-object v15

    .line 188
    const v17, 0x180030

    .line 189
    .line 190
    .line 191
    const/16 v18, 0x2d

    .line 192
    .line 193
    const/4 v9, 0x0

    .line 194
    sget-object v10, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsProfileScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 195
    .line 196
    const/4 v11, 0x0

    .line 197
    const/4 v12, 0x0

    .line 198
    const/4 v14, 0x0

    .line 199
    move-object/from16 v16, v1

    .line 200
    .line 201
    invoke-static/range {v9 .. v18}, Lnet/blip/android/ui/list/ListRowKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_7
    move-object/from16 v16, v1

    .line 206
    .line 207
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 208
    .line 209
    .line 210
    :goto_1
    return-object v4

    .line 211
    :pswitch_0
    move-object/from16 v1, p1

    .line 212
    .line 213
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 214
    .line 215
    move-object/from16 v9, p2

    .line 216
    .line 217
    check-cast v9, Ljava/lang/Integer;

    .line 218
    .line 219
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    and-int/lit8 v10, v9, 0x3

    .line 224
    .line 225
    if-eq v10, v8, :cond_8

    .line 226
    .line 227
    move v7, v5

    .line 228
    :cond_8
    and-int/2addr v5, v9

    .line 229
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 230
    .line 231
    invoke-virtual {v1, v5, v7}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_b

    .line 236
    .line 237
    const/high16 v5, 0x42c00000    # 96.0f

    .line 238
    .line 239
    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    if-nez v5, :cond_9

    .line 252
    .line 253
    if-ne v7, v3, :cond_a

    .line 254
    .line 255
    :cond_9
    new-instance v7, Lc8;

    .line 256
    .line 257
    const/4 v3, 0x5

    .line 258
    invoke-direct {v7, v6, v3}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_a
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 265
    .line 266
    iget-object v0, v0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 267
    .line 268
    const/4 v3, 0x6

    .line 269
    invoke-static {v2, v7, v0, v1, v3}, Lnet/blip/android/ui/components/AndroidAvatarEditorKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lnet/blip/libblip/User;Landroidx/compose/runtime/Composer;I)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_b
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 274
    .line 275
    .line 276
    :goto_2
    return-object v4

    .line 277
    :pswitch_1
    move-object/from16 v1, p1

    .line 278
    .line 279
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 280
    .line 281
    move-object/from16 v3, p2

    .line 282
    .line 283
    check-cast v3, Ljava/lang/Integer;

    .line 284
    .line 285
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    and-int/lit8 v9, v3, 0x3

    .line 290
    .line 291
    if-eq v9, v8, :cond_c

    .line 292
    .line 293
    move v9, v5

    .line 294
    goto :goto_3

    .line 295
    :cond_c
    move v9, v7

    .line 296
    :goto_3
    and-int/2addr v3, v5

    .line 297
    move-object v13, v1

    .line 298
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 299
    .line 300
    invoke-virtual {v13, v3, v9}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    if-eqz v1, :cond_e

    .line 305
    .line 306
    const/high16 v1, 0x3f800000    # 1.0f

    .line 307
    .line 308
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 313
    .line 314
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 319
    .line 320
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 321
    .line 322
    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 323
    .line 324
    invoke-static {v1, v2, v3, v9}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 325
    .line 326
    .line 327
    move-result-object v14

    .line 328
    const/16 v18, 0x0

    .line 329
    .line 330
    const/16 v19, 0xd

    .line 331
    .line 332
    const/4 v15, 0x0

    .line 333
    const/high16 v16, 0x42400000    # 48.0f

    .line 334
    .line 335
    const/16 v17, 0x0

    .line 336
    .line 337
    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-static {v13}, Landroidx/compose/foundation/ScrollKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-static {v1, v2}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;)Landroidx/compose/ui/Modifier;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->c(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    const/high16 v2, 0x41000000    # 8.0f

    .line 354
    .line 355
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 360
    .line 361
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 362
    .line 363
    invoke-static {v2, v3, v13, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    iget-wide v9, v13, Landroidx/compose/runtime/GapComposer;->T:J

    .line 368
    .line 369
    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 374
    .line 375
    .line 376
    move-result-object v9

    .line 377
    invoke-static {v13, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 382
    .line 383
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 387
    .line 388
    .line 389
    iget-boolean v10, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 390
    .line 391
    if-eqz v10, :cond_d

    .line 392
    .line 393
    sget-object v10, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 394
    .line 395
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 400
    .line 401
    .line 402
    :goto_4
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 403
    .line 404
    invoke-static {v13, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 405
    .line 406
    .line 407
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 408
    .line 409
    invoke-static {v13, v9, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 410
    .line 411
    .line 412
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 417
    .line 418
    invoke-static {v13, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 419
    .line 420
    .line 421
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 422
    .line 423
    .line 424
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 425
    .line 426
    invoke-static {v13, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 427
    .line 428
    .line 429
    new-instance v11, Lnet/blip/libblip/Peer$User;

    .line 430
    .line 431
    iget-object v1, v0, Lnet/blip/android/ui/navigation/AuthScope;->a:Lnet/blip/libblip/User;

    .line 432
    .line 433
    invoke-direct {v11, v1}, Lnet/blip/libblip/Peer$User;-><init>(Lnet/blip/libblip/User;)V

    .line 434
    .line 435
    .line 436
    new-instance v1, Lff;

    .line 437
    .line 438
    invoke-direct {v1, v6, v0}, Lff;-><init>(Lkotlin/jvm/functions/Function1;Lnet/blip/android/ui/navigation/AuthScope;)V

    .line 439
    .line 440
    .line 441
    const v2, 0x59a114aa

    .line 442
    .line 443
    .line 444
    invoke-static {v2, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 445
    .line 446
    .line 447
    move-result-object v12

    .line 448
    const/16 v14, 0x180

    .line 449
    .line 450
    const/4 v15, 0x1

    .line 451
    const/4 v10, 0x0

    .line 452
    invoke-static/range {v10 .. v15}, Lnet/blip/android/ui/settings/SettingsPeerHeaderKt;->a(Landroidx/compose/ui/Modifier;Lnet/blip/libblip/Peer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 453
    .line 454
    .line 455
    invoke-static {v7, v13}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 456
    .line 457
    .line 458
    new-instance v1, Lff;

    .line 459
    .line 460
    invoke-direct {v1, v0, v6, v8}, Lff;-><init>(Lnet/blip/android/ui/navigation/AuthScope;Lkotlin/jvm/functions/Function1;I)V

    .line 461
    .line 462
    .line 463
    const v2, 0x7d9c6a76

    .line 464
    .line 465
    .line 466
    invoke-static {v2, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 467
    .line 468
    .line 469
    move-result-object v12

    .line 470
    const/4 v15, 0x3

    .line 471
    const/4 v11, 0x0

    .line 472
    invoke-static/range {v10 .. v15}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 473
    .line 474
    .line 475
    invoke-static {v7, v13}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 476
    .line 477
    .line 478
    new-instance v1, Lz5;

    .line 479
    .line 480
    const/4 v2, 0x3

    .line 481
    invoke-direct {v1, v0, v2}, Lz5;-><init>(Lnet/blip/android/ui/navigation/AuthScope;I)V

    .line 482
    .line 483
    .line 484
    const v0, -0x76e56421

    .line 485
    .line 486
    .line 487
    invoke-static {v0, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 488
    .line 489
    .line 490
    move-result-object v12

    .line 491
    invoke-static/range {v10 .. v15}, Lnet/blip/android/ui/settings/SettingsComposablesKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 495
    .line 496
    .line 497
    goto :goto_5

    .line 498
    :cond_e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 499
    .line 500
    .line 501
    :goto_5
    return-object v4

    .line 502
    nop

    .line 503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
