.class public final synthetic Lw;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lw;->k:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw;->j:I

    .line 4
    .line 5
    const/16 v2, 0x10

    .line 6
    .line 7
    iget-object v3, v0, Lw;->k:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x1

    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v0, p1

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    move-object/from16 v1, p2

    .line 22
    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    and-int/lit8 v2, v1, 0x3

    .line 30
    .line 31
    if-eq v2, v6, :cond_0

    .line 32
    .line 33
    move v5, v7

    .line 34
    :cond_0
    and-int/2addr v1, v7

    .line 35
    move-object v14, v0

    .line 36
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 37
    .line 38
    invoke-virtual {v14, v1, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    const-string v0, "Delete "

    .line 45
    .line 46
    const-string v1, "?"

    .line 47
    .line 48
    invoke-static {v0, v3, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 53
    .line 54
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 59
    .line 60
    iget-object v15, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 61
    .line 62
    const/16 v0, 0x12

    .line 63
    .line 64
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v18

    .line 68
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 69
    .line 70
    const v26, 0x20203

    .line 71
    .line 72
    .line 73
    const v27, 0xdffff9

    .line 74
    .line 75
    .line 76
    const-wide/16 v16, 0x0

    .line 77
    .line 78
    const-wide/16 v21, 0x0

    .line 79
    .line 80
    const-wide/16 v23, 0x0

    .line 81
    .line 82
    const/16 v25, 0x0

    .line 83
    .line 84
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    const/4 v15, 0x0

    .line 89
    const/16 v16, 0x1fa

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v9, 0x0

    .line 93
    const/4 v10, 0x0

    .line 94
    const/4 v11, 0x0

    .line 95
    const/4 v12, 0x0

    .line 96
    const/4 v13, 0x0

    .line 97
    invoke-static/range {v6 .. v16}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-object v4

    .line 105
    :pswitch_0
    move-object/from16 v1, p1

    .line 106
    .line 107
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 108
    .line 109
    move-object/from16 v3, p2

    .line 110
    .line 111
    check-cast v3, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    and-int/lit8 v8, v3, 0x3

    .line 118
    .line 119
    if-eq v8, v6, :cond_2

    .line 120
    .line 121
    move v5, v7

    .line 122
    :cond_2
    and-int/2addr v3, v7

    .line 123
    move-object v14, v1

    .line 124
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 125
    .line 126
    invoke-virtual {v14, v3, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 133
    .line 134
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 139
    .line 140
    iget-object v15, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 141
    .line 142
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 143
    .line 144
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 149
    .line 150
    iget-wide v5, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->f:J

    .line 151
    .line 152
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 153
    .line 154
    .line 155
    move-result-wide v18

    .line 156
    const/16 v26, 0x0

    .line 157
    .line 158
    const v27, 0xfffffc

    .line 159
    .line 160
    .line 161
    const/16 v20, 0x0

    .line 162
    .line 163
    const-wide/16 v21, 0x0

    .line 164
    .line 165
    const-wide/16 v23, 0x0

    .line 166
    .line 167
    const/16 v25, 0x0

    .line 168
    .line 169
    move-wide/from16 v16, v5

    .line 170
    .line 171
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    const/4 v15, 0x0

    .line 176
    const/16 v16, 0x1fa

    .line 177
    .line 178
    iget-object v6, v0, Lw;->k:Ljava/lang/String;

    .line 179
    .line 180
    const/4 v7, 0x0

    .line 181
    const/4 v9, 0x0

    .line 182
    const/4 v10, 0x0

    .line 183
    const/4 v11, 0x0

    .line 184
    const/4 v12, 0x0

    .line 185
    const/4 v13, 0x0

    .line 186
    invoke-static/range {v6 .. v16}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_3
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 191
    .line 192
    .line 193
    :goto_1
    return-object v4

    .line 194
    :pswitch_1
    move-object/from16 v0, p1

    .line 195
    .line 196
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 197
    .line 198
    move-object/from16 v1, p2

    .line 199
    .line 200
    check-cast v1, Ljava/lang/Integer;

    .line 201
    .line 202
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    and-int/lit8 v2, v1, 0x3

    .line 207
    .line 208
    if-eq v2, v6, :cond_4

    .line 209
    .line 210
    move v5, v7

    .line 211
    :cond_4
    and-int/2addr v1, v7

    .line 212
    move-object v10, v0

    .line 213
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 214
    .line 215
    invoke-virtual {v10, v1, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_5

    .line 220
    .line 221
    new-instance v8, Lnet/blip/libblip/User;

    .line 222
    .line 223
    const/16 v0, 0x1ffb

    .line 224
    .line 225
    invoke-direct {v8, v3, v0}, Lnet/blip/libblip/User;-><init>(Ljava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    const/4 v11, 0x0

    .line 229
    const/16 v12, 0xb

    .line 230
    .line 231
    const/4 v6, 0x0

    .line 232
    const/4 v7, 0x0

    .line 233
    const/4 v9, 0x0

    .line 234
    invoke-static/range {v6 .. v12}, Lnet/blip/shared/AvatarKt;->c(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/User;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 235
    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_5
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 239
    .line 240
    .line 241
    :goto_2
    return-object v4

    .line 242
    :pswitch_2
    move-object/from16 v0, p1

    .line 243
    .line 244
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 245
    .line 246
    move-object/from16 v1, p2

    .line 247
    .line 248
    check-cast v1, Ljava/lang/Integer;

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    and-int/lit8 v8, v1, 0x3

    .line 255
    .line 256
    if-eq v8, v6, :cond_6

    .line 257
    .line 258
    move v5, v7

    .line 259
    :cond_6
    and-int/2addr v1, v7

    .line 260
    move-object v14, v0

    .line 261
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 262
    .line 263
    invoke-virtual {v14, v1, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_7

    .line 268
    .line 269
    const-string v0, "Sign in using your email:\n"

    .line 270
    .line 271
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 276
    .line 277
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 282
    .line 283
    iget-object v15, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 284
    .line 285
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 286
    .line 287
    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 292
    .line 293
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 294
    .line 295
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 296
    .line 297
    .line 298
    move-result-wide v18

    .line 299
    sget-object v20, Landroidx/compose/ui/text/font/FontWeight;->r:Landroidx/compose/ui/text/font/FontWeight;

    .line 300
    .line 301
    const/16 v26, 0x0

    .line 302
    .line 303
    const v27, 0xfffff8

    .line 304
    .line 305
    .line 306
    const-wide/16 v21, 0x0

    .line 307
    .line 308
    const-wide/16 v23, 0x0

    .line 309
    .line 310
    const/16 v25, 0x0

    .line 311
    .line 312
    move-wide/from16 v16, v0

    .line 313
    .line 314
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    const/4 v15, 0x0

    .line 319
    const/16 v16, 0x1fa

    .line 320
    .line 321
    const/4 v7, 0x0

    .line 322
    const/4 v9, 0x0

    .line 323
    const/4 v10, 0x0

    .line 324
    const/4 v11, 0x0

    .line 325
    const/4 v12, 0x0

    .line 326
    const/4 v13, 0x0

    .line 327
    invoke-static/range {v6 .. v16}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 328
    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_7
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 332
    .line 333
    .line 334
    :goto_3
    return-object v4

    .line 335
    :pswitch_3
    move-object/from16 v1, p1

    .line 336
    .line 337
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 338
    .line 339
    move-object/from16 v3, p2

    .line 340
    .line 341
    check-cast v3, Ljava/lang/Integer;

    .line 342
    .line 343
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    and-int/lit8 v8, v3, 0x3

    .line 348
    .line 349
    if-eq v8, v6, :cond_8

    .line 350
    .line 351
    move v6, v7

    .line 352
    goto :goto_4

    .line 353
    :cond_8
    move v6, v5

    .line 354
    :goto_4
    and-int/2addr v3, v7

    .line 355
    move-object v13, v1

    .line 356
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 357
    .line 358
    invoke-virtual {v13, v3, v6}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-eqz v1, :cond_a

    .line 363
    .line 364
    iget-object v9, v0, Lw;->k:Ljava/lang/String;

    .line 365
    .line 366
    if-nez v9, :cond_9

    .line 367
    .line 368
    const v0, 0x7bef3a8e

    .line 369
    .line 370
    .line 371
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 375
    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_9
    const v0, 0x7bef3a8f

    .line 379
    .line 380
    .line 381
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 382
    .line 383
    .line 384
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 385
    .line 386
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 391
    .line 392
    iget-object v14, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 393
    .line 394
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 395
    .line 396
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 401
    .line 402
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 403
    .line 404
    invoke-static {v2}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 405
    .line 406
    .line 407
    move-result-wide v17

    .line 408
    const/16 v25, 0x0

    .line 409
    .line 410
    const v26, 0xfffffc

    .line 411
    .line 412
    .line 413
    const/16 v19, 0x0

    .line 414
    .line 415
    const-wide/16 v20, 0x0

    .line 416
    .line 417
    const-wide/16 v22, 0x0

    .line 418
    .line 419
    const/16 v24, 0x0

    .line 420
    .line 421
    move-wide v15, v0

    .line 422
    invoke-static/range {v14 .. v26}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 423
    .line 424
    .line 425
    move-result-object v10

    .line 426
    const/16 v0, 0x8

    .line 427
    .line 428
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 429
    .line 430
    .line 431
    move-result-wide v11

    .line 432
    const/16 v14, 0x6000

    .line 433
    .line 434
    const/4 v15, 0x3

    .line 435
    const/4 v7, 0x0

    .line 436
    const/4 v8, 0x0

    .line 437
    invoke-static/range {v7 .. v15}, Lnet/blip/shared/ParagraphsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/runtime/Composer;II)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 441
    .line 442
    .line 443
    goto :goto_5

    .line 444
    :cond_a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 445
    .line 446
    .line 447
    :goto_5
    return-object v4

    .line 448
    :pswitch_4
    move-object/from16 v1, p1

    .line 449
    .line 450
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 451
    .line 452
    move-object/from16 v2, p2

    .line 453
    .line 454
    check-cast v2, Ljava/lang/Integer;

    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    and-int/lit8 v3, v2, 0x3

    .line 461
    .line 462
    if-eq v3, v6, :cond_b

    .line 463
    .line 464
    move v5, v7

    .line 465
    :cond_b
    and-int/2addr v2, v7

    .line 466
    move-object v14, v1

    .line 467
    check-cast v14, Landroidx/compose/runtime/GapComposer;

    .line 468
    .line 469
    invoke-virtual {v14, v2, v5}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    if-eqz v1, :cond_c

    .line 474
    .line 475
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 476
    .line 477
    invoke-virtual {v14, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 482
    .line 483
    iget-object v15, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 484
    .line 485
    const/16 v1, 0x14

    .line 486
    .line 487
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 488
    .line 489
    .line 490
    move-result-wide v18

    .line 491
    const/16 v26, 0x0

    .line 492
    .line 493
    const v27, 0xfffffd

    .line 494
    .line 495
    .line 496
    const-wide/16 v16, 0x0

    .line 497
    .line 498
    const/16 v20, 0x0

    .line 499
    .line 500
    const-wide/16 v21, 0x0

    .line 501
    .line 502
    const-wide/16 v23, 0x0

    .line 503
    .line 504
    const/16 v25, 0x0

    .line 505
    .line 506
    invoke-static/range {v15 .. v27}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    const/4 v15, 0x0

    .line 511
    const/16 v16, 0x1fa

    .line 512
    .line 513
    iget-object v6, v0, Lw;->k:Ljava/lang/String;

    .line 514
    .line 515
    const/4 v7, 0x0

    .line 516
    const/4 v9, 0x0

    .line 517
    const/4 v10, 0x0

    .line 518
    const/4 v11, 0x0

    .line 519
    const/4 v12, 0x0

    .line 520
    const/4 v13, 0x0

    .line 521
    invoke-static/range {v6 .. v16}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 522
    .line 523
    .line 524
    goto :goto_6

    .line 525
    :cond_c
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 526
    .line 527
    .line 528
    :goto_6
    return-object v4

    .line 529
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
