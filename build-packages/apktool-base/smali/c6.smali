.class public final synthetic Lc6;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc6;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lc6;->j:I

    .line 4
    .line 5
    const/high16 v2, -0x40800000    # -1.0f

    .line 6
    .line 7
    const/16 v3, 0x186

    .line 8
    .line 9
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 10
    .line 11
    const/high16 v5, 0x42700000    # 60.0f

    .line 12
    .line 13
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 14
    .line 15
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 16
    .line 17
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 18
    .line 19
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 20
    .line 21
    sget-object v10, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 22
    .line 23
    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 24
    .line 25
    sget-object v13, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 26
    .line 27
    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    const/4 v15, 0x0

    .line 30
    const/4 v1, 0x2

    .line 31
    const/4 v12, 0x1

    .line 32
    packed-switch v0, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    move-object/from16 v0, p1

    .line 36
    .line 37
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 38
    .line 39
    move-object/from16 v2, p2

    .line 40
    .line 41
    check-cast v2, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    and-int/lit8 v3, v2, 0x3

    .line 48
    .line 49
    if-eq v3, v1, :cond_0

    .line 50
    .line 51
    move v15, v12

    .line 52
    :cond_0
    and-int/lit8 v1, v2, 0x1

    .line 53
    .line 54
    move-object v7, v0

    .line 55
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 56
    .line 57
    invoke-virtual {v7, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    const/16 v8, 0x30

    .line 64
    .line 65
    const/16 v9, 0xd

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    const-string v3, "Send to your devices"

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    const-wide/16 v5, 0x0

    .line 72
    .line 73
    invoke-static/range {v2 .. v9}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-object v14

    .line 81
    :pswitch_0
    move-object/from16 v0, p1

    .line 82
    .line 83
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 84
    .line 85
    move-object/from16 v2, p2

    .line 86
    .line 87
    check-cast v2, Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    and-int/lit8 v6, v2, 0x3

    .line 94
    .line 95
    if-eq v6, v1, :cond_2

    .line 96
    .line 97
    move v15, v12

    .line 98
    :cond_2
    and-int/lit8 v1, v2, 0x1

    .line 99
    .line 100
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 101
    .line 102
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    invoke-static {v13, v5}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    sget-object v2, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lnet/blip/shared/AvatarTheme;

    .line 119
    .line 120
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->b(Landroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    if-ne v5, v4, :cond_3

    .line 131
    .line 132
    new-instance v5, Lh;

    .line 133
    .line 134
    const/16 v4, 0x1b

    .line 135
    .line 136
    invoke-direct {v5, v4}, Lh;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    :cond_3
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 143
    .line 144
    invoke-static {v1, v2, v5, v0, v3}, Lnet/blip/shared/AvatarKt;->e(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 149
    .line 150
    .line 151
    :goto_1
    return-object v14

    .line 152
    :pswitch_1
    move-object/from16 v0, p1

    .line 153
    .line 154
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 155
    .line 156
    move-object/from16 v2, p2

    .line 157
    .line 158
    check-cast v2, Ljava/lang/Integer;

    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    and-int/lit8 v3, v2, 0x3

    .line 165
    .line 166
    if-eq v3, v1, :cond_5

    .line 167
    .line 168
    move v15, v12

    .line 169
    :cond_5
    and-int/lit8 v1, v2, 0x1

    .line 170
    .line 171
    move-object v7, v0

    .line 172
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 173
    .line 174
    invoke-virtual {v7, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    const/16 v8, 0x30

    .line 181
    .line 182
    const/16 v9, 0xd

    .line 183
    .line 184
    const/4 v2, 0x0

    .line 185
    const-string v3, "Send to other people"

    .line 186
    .line 187
    const/4 v4, 0x0

    .line 188
    const-wide/16 v5, 0x0

    .line 189
    .line 190
    invoke-static/range {v2 .. v9}, Lnet/blip/android/ui/list/ListRowKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;JLandroidx/compose/runtime/Composer;II)V

    .line 191
    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 195
    .line 196
    .line 197
    :goto_2
    return-object v14

    .line 198
    :pswitch_2
    move-object/from16 v0, p1

    .line 199
    .line 200
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 201
    .line 202
    move-object/from16 v2, p2

    .line 203
    .line 204
    check-cast v2, Ljava/lang/Integer;

    .line 205
    .line 206
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    and-int/lit8 v6, v2, 0x3

    .line 211
    .line 212
    if-eq v6, v1, :cond_7

    .line 213
    .line 214
    move v15, v12

    .line 215
    :cond_7
    and-int/lit8 v1, v2, 0x1

    .line 216
    .line 217
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 218
    .line 219
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-eqz v1, :cond_9

    .line 224
    .line 225
    invoke-static {v13, v5}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    sget-object v2, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 230
    .line 231
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    check-cast v2, Lnet/blip/shared/AvatarTheme;

    .line 236
    .line 237
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;

    .line 238
    .line 239
    invoke-virtual {v2, v0}, Lnet/blip/android/ui/androidtheme/AndroidAvatarTheme;->b(Landroidx/compose/runtime/Composer;)Lnet/blip/shared/AvatarTheme$Appearance;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    if-ne v5, v4, :cond_8

    .line 248
    .line 249
    new-instance v5, Lh;

    .line 250
    .line 251
    const/16 v4, 0x1a

    .line 252
    .line 253
    invoke-direct {v5, v4}, Lh;-><init>(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    :cond_8
    check-cast v5, Lkotlin/jvm/functions/Function1;

    .line 260
    .line 261
    invoke-static {v1, v2, v5, v0, v3}, Lnet/blip/shared/AvatarKt;->e(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_9
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 266
    .line 267
    .line 268
    :goto_3
    return-object v14

    .line 269
    :pswitch_3
    move-object/from16 v0, p1

    .line 270
    .line 271
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 272
    .line 273
    move-object/from16 v3, p2

    .line 274
    .line 275
    check-cast v3, Ljava/lang/Integer;

    .line 276
    .line 277
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    and-int/lit8 v4, v3, 0x3

    .line 282
    .line 283
    if-eq v4, v1, :cond_a

    .line 284
    .line 285
    move v15, v12

    .line 286
    :cond_a
    and-int/lit8 v1, v3, 0x1

    .line 287
    .line 288
    move-object v7, v0

    .line 289
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    .line 290
    .line 291
    invoke-virtual {v7, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    if-eqz v0, :cond_b

    .line 296
    .line 297
    const/16 v19, 0x0

    .line 298
    .line 299
    const/16 v20, 0xa

    .line 300
    .line 301
    sget-object v15, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 302
    .line 303
    const/high16 v16, 0x41d00000    # 26.0f

    .line 304
    .line 305
    const/16 v17, 0x0

    .line 306
    .line 307
    const/high16 v18, 0x41800000    # 16.0f

    .line 308
    .line 309
    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v0, v2, v12}, Landroidx/compose/foundation/layout/OffsetKt;->c(Landroidx/compose/ui/Modifier;FI)Landroidx/compose/ui/Modifier;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    invoke-static {}, Landroidx/compose/material/icons/rounded/SearchKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 322
    .line 323
    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 328
    .line 329
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->d:J

    .line 330
    .line 331
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    const/16 v8, 0x1b0

    .line 336
    .line 337
    const/16 v9, 0x38

    .line 338
    .line 339
    const-string v4, ""

    .line 340
    .line 341
    invoke-static/range {v3 .. v9}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 342
    .line 343
    .line 344
    goto :goto_4

    .line 345
    :cond_b
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 346
    .line 347
    .line 348
    :goto_4
    return-object v14

    .line 349
    :pswitch_4
    move-object/from16 v0, p1

    .line 350
    .line 351
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 352
    .line 353
    move-object/from16 v2, p2

    .line 354
    .line 355
    check-cast v2, Ljava/lang/Integer;

    .line 356
    .line 357
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    and-int/lit8 v3, v2, 0x3

    .line 362
    .line 363
    if-eq v3, v1, :cond_c

    .line 364
    .line 365
    move v15, v12

    .line 366
    :cond_c
    and-int/lit8 v1, v2, 0x1

    .line 367
    .line 368
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 369
    .line 370
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_d

    .line 375
    .line 376
    goto :goto_5

    .line 377
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 378
    .line 379
    .line 380
    :goto_5
    return-object v14

    .line 381
    :pswitch_5
    move-object/from16 v0, p1

    .line 382
    .line 383
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 384
    .line 385
    move-object/from16 v2, p2

    .line 386
    .line 387
    check-cast v2, Ljava/lang/Integer;

    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    and-int/lit8 v3, v2, 0x3

    .line 394
    .line 395
    if-eq v3, v1, :cond_e

    .line 396
    .line 397
    move v15, v12

    .line 398
    :cond_e
    and-int/lit8 v1, v2, 0x1

    .line 399
    .line 400
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 401
    .line 402
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-eqz v1, :cond_f

    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 410
    .line 411
    .line 412
    :goto_6
    return-object v14

    .line 413
    :pswitch_6
    move-object/from16 v0, p1

    .line 414
    .line 415
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 416
    .line 417
    move-object/from16 v2, p2

    .line 418
    .line 419
    check-cast v2, Ljava/lang/Integer;

    .line 420
    .line 421
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    and-int/lit8 v3, v2, 0x3

    .line 426
    .line 427
    if-eq v3, v1, :cond_10

    .line 428
    .line 429
    move v15, v12

    .line 430
    :cond_10
    and-int/lit8 v1, v2, 0x1

    .line 431
    .line 432
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 433
    .line 434
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_11

    .line 439
    .line 440
    goto :goto_7

    .line 441
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 442
    .line 443
    .line 444
    :goto_7
    return-object v14

    .line 445
    :pswitch_7
    move-object/from16 v0, p1

    .line 446
    .line 447
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 448
    .line 449
    move-object/from16 v2, p2

    .line 450
    .line 451
    check-cast v2, Ljava/lang/Integer;

    .line 452
    .line 453
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 454
    .line 455
    .line 456
    move-result v2

    .line 457
    and-int/lit8 v3, v2, 0x3

    .line 458
    .line 459
    if-eq v3, v1, :cond_12

    .line 460
    .line 461
    move v15, v12

    .line 462
    :cond_12
    and-int/lit8 v1, v2, 0x1

    .line 463
    .line 464
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 465
    .line 466
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    if-eqz v1, :cond_13

    .line 471
    .line 472
    goto :goto_8

    .line 473
    :cond_13
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 474
    .line 475
    .line 476
    :goto_8
    return-object v14

    .line 477
    :pswitch_8
    move-object/from16 v0, p1

    .line 478
    .line 479
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 480
    .line 481
    move-object/from16 v2, p2

    .line 482
    .line 483
    check-cast v2, Ljava/lang/Integer;

    .line 484
    .line 485
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 486
    .line 487
    .line 488
    move-result v2

    .line 489
    and-int/lit8 v3, v2, 0x3

    .line 490
    .line 491
    if-eq v3, v1, :cond_14

    .line 492
    .line 493
    move v15, v12

    .line 494
    :cond_14
    and-int/lit8 v1, v2, 0x1

    .line 495
    .line 496
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 497
    .line 498
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 499
    .line 500
    .line 501
    move-result v1

    .line 502
    if-eqz v1, :cond_15

    .line 503
    .line 504
    goto :goto_9

    .line 505
    :cond_15
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 506
    .line 507
    .line 508
    :goto_9
    return-object v14

    .line 509
    :pswitch_9
    move-object/from16 v0, p1

    .line 510
    .line 511
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 512
    .line 513
    move-object/from16 v2, p2

    .line 514
    .line 515
    check-cast v2, Ljava/lang/Integer;

    .line 516
    .line 517
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    and-int/lit8 v3, v2, 0x3

    .line 522
    .line 523
    if-eq v3, v1, :cond_16

    .line 524
    .line 525
    move v15, v12

    .line 526
    :cond_16
    and-int/lit8 v1, v2, 0x1

    .line 527
    .line 528
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 529
    .line 530
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 531
    .line 532
    .line 533
    move-result v1

    .line 534
    if-eqz v1, :cond_17

    .line 535
    .line 536
    goto :goto_a

    .line 537
    :cond_17
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 538
    .line 539
    .line 540
    :goto_a
    return-object v14

    .line 541
    :pswitch_a
    move-object/from16 v0, p1

    .line 542
    .line 543
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 544
    .line 545
    move-object/from16 v2, p2

    .line 546
    .line 547
    check-cast v2, Ljava/lang/Integer;

    .line 548
    .line 549
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 550
    .line 551
    .line 552
    move-result v2

    .line 553
    and-int/lit8 v3, v2, 0x3

    .line 554
    .line 555
    if-eq v3, v1, :cond_18

    .line 556
    .line 557
    move v1, v12

    .line 558
    goto :goto_b

    .line 559
    :cond_18
    move v1, v15

    .line 560
    :goto_b
    and-int/2addr v2, v12

    .line 561
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 562
    .line 563
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 564
    .line 565
    .line 566
    move-result v1

    .line 567
    if-eqz v1, :cond_19

    .line 568
    .line 569
    const/4 v1, 0x0

    .line 570
    invoke-static {v1, v0, v15}, Lnet/blip/android/ui/home/PeerTrayCellsKt;->e(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 571
    .line 572
    .line 573
    goto :goto_c

    .line 574
    :cond_19
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 575
    .line 576
    .line 577
    :goto_c
    return-object v14

    .line 578
    :pswitch_b
    move-object/from16 v0, p1

    .line 579
    .line 580
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 581
    .line 582
    move-object/from16 v2, p2

    .line 583
    .line 584
    check-cast v2, Ljava/lang/Integer;

    .line 585
    .line 586
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    and-int/lit8 v3, v2, 0x3

    .line 591
    .line 592
    if-eq v3, v1, :cond_1a

    .line 593
    .line 594
    move v15, v12

    .line 595
    :cond_1a
    and-int/lit8 v1, v2, 0x1

    .line 596
    .line 597
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 598
    .line 599
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 600
    .line 601
    .line 602
    move-result v1

    .line 603
    if-eqz v1, :cond_1b

    .line 604
    .line 605
    goto :goto_d

    .line 606
    :cond_1b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 607
    .line 608
    .line 609
    :goto_d
    return-object v14

    .line 610
    :pswitch_c
    move-object/from16 v0, p1

    .line 611
    .line 612
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 613
    .line 614
    move-object/from16 v2, p2

    .line 615
    .line 616
    check-cast v2, Ljava/lang/Integer;

    .line 617
    .line 618
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    and-int/lit8 v3, v2, 0x3

    .line 623
    .line 624
    if-eq v3, v1, :cond_1c

    .line 625
    .line 626
    move v1, v12

    .line 627
    goto :goto_e

    .line 628
    :cond_1c
    move v1, v15

    .line 629
    :goto_e
    and-int/2addr v2, v12

    .line 630
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 631
    .line 632
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 633
    .line 634
    .line 635
    move-result v1

    .line 636
    if-eqz v1, :cond_1d

    .line 637
    .line 638
    sget-object v1, Lnet/blip/shared/Strings$Onboarding$Splash;->a:Ljava/lang/String;

    .line 639
    .line 640
    const-string v1, "Send any size file or folder to anyone, wherever they are, super fast"

    .line 641
    .line 642
    const/4 v2, 0x0

    .line 643
    invoke-static {v2, v1, v0, v15}, Lnet/blip/android/ui/onboarding/ComposablesKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 644
    .line 645
    .line 646
    goto :goto_f

    .line 647
    :cond_1d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 648
    .line 649
    .line 650
    :goto_f
    return-object v14

    .line 651
    :pswitch_d
    move-object/from16 v0, p1

    .line 652
    .line 653
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 654
    .line 655
    move-object/from16 v2, p2

    .line 656
    .line 657
    check-cast v2, Ljava/lang/Integer;

    .line 658
    .line 659
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 660
    .line 661
    .line 662
    move-result v2

    .line 663
    and-int/lit8 v3, v2, 0x3

    .line 664
    .line 665
    if-eq v3, v1, :cond_1e

    .line 666
    .line 667
    move v1, v12

    .line 668
    goto :goto_10

    .line 669
    :cond_1e
    move v1, v15

    .line 670
    :goto_10
    and-int/2addr v2, v12

    .line 671
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 672
    .line 673
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 674
    .line 675
    .line 676
    move-result v1

    .line 677
    if-eqz v1, :cond_1f

    .line 678
    .line 679
    sget-object v1, Lnet/blip/shared/Strings$Onboarding$Splash;->a:Ljava/lang/String;

    .line 680
    .line 681
    const-string v1, "Welcome to Blip"

    .line 682
    .line 683
    invoke-static {v1, v0, v15}, Lnet/blip/android/ui/onboarding/ComposablesKt;->g(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 684
    .line 685
    .line 686
    goto :goto_11

    .line 687
    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 688
    .line 689
    .line 690
    :goto_11
    return-object v14

    .line 691
    :pswitch_e
    move-object/from16 v0, p1

    .line 692
    .line 693
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 694
    .line 695
    move-object/from16 v2, p2

    .line 696
    .line 697
    check-cast v2, Ljava/lang/Integer;

    .line 698
    .line 699
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 700
    .line 701
    .line 702
    move-result v2

    .line 703
    and-int/lit8 v3, v2, 0x3

    .line 704
    .line 705
    if-eq v3, v1, :cond_20

    .line 706
    .line 707
    move v15, v12

    .line 708
    :cond_20
    and-int/lit8 v1, v2, 0x1

    .line 709
    .line 710
    move-object v9, v0

    .line 711
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 712
    .line 713
    invoke-virtual {v9, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 714
    .line 715
    .line 716
    move-result v0

    .line 717
    if-eqz v0, :cond_21

    .line 718
    .line 719
    const/4 v0, 0x0

    .line 720
    const/high16 v1, 0x42200000    # 40.0f

    .line 721
    .line 722
    invoke-static {v13, v0, v1, v12}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    const/high16 v1, 0x43100000    # 144.0f

    .line 727
    .line 728
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    invoke-static {v9}, Lnet/blip/android/ui/util/AppIconKt;->a(Landroidx/compose/runtime/Composer;)Lcom/google/accompanist/drawablepainter/DrawablePainter;

    .line 733
    .line 734
    .line 735
    move-result-object v2

    .line 736
    const/16 v10, 0x1b8

    .line 737
    .line 738
    const/16 v11, 0x78

    .line 739
    .line 740
    const-string v3, "App Icon"

    .line 741
    .line 742
    const/4 v5, 0x0

    .line 743
    const/4 v6, 0x0

    .line 744
    const/4 v7, 0x0

    .line 745
    const/4 v8, 0x0

    .line 746
    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 747
    .line 748
    .line 749
    goto :goto_12

    .line 750
    :cond_21
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 751
    .line 752
    .line 753
    :goto_12
    return-object v14

    .line 754
    :pswitch_f
    move-object/from16 v0, p1

    .line 755
    .line 756
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 757
    .line 758
    move-object/from16 v2, p2

    .line 759
    .line 760
    check-cast v2, Ljava/lang/Integer;

    .line 761
    .line 762
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 763
    .line 764
    .line 765
    move-result v2

    .line 766
    and-int/lit8 v3, v2, 0x3

    .line 767
    .line 768
    if-eq v3, v1, :cond_22

    .line 769
    .line 770
    move v1, v12

    .line 771
    goto :goto_13

    .line 772
    :cond_22
    move v1, v15

    .line 773
    :goto_13
    and-int/2addr v2, v12

    .line 774
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 775
    .line 776
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 777
    .line 778
    .line 779
    move-result v1

    .line 780
    if-eqz v1, :cond_23

    .line 781
    .line 782
    const/4 v1, 0x0

    .line 783
    invoke-static {v1, v0, v15}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 784
    .line 785
    .line 786
    goto :goto_14

    .line 787
    :cond_23
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 788
    .line 789
    .line 790
    :goto_14
    return-object v14

    .line 791
    :pswitch_10
    move-object/from16 v0, p1

    .line 792
    .line 793
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 794
    .line 795
    move-object/from16 v2, p2

    .line 796
    .line 797
    check-cast v2, Ljava/lang/Integer;

    .line 798
    .line 799
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 800
    .line 801
    .line 802
    move-result v2

    .line 803
    and-int/lit8 v3, v2, 0x3

    .line 804
    .line 805
    if-eq v3, v1, :cond_24

    .line 806
    .line 807
    move v15, v12

    .line 808
    :cond_24
    and-int/lit8 v1, v2, 0x1

    .line 809
    .line 810
    move-object v5, v0

    .line 811
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 812
    .line 813
    invoke-virtual {v5, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 814
    .line 815
    .line 816
    move-result v0

    .line 817
    if-eqz v0, :cond_25

    .line 818
    .line 819
    sget-object v4, Lnet/blip/libblip/DeviceKind;->p:Lnet/blip/libblip/DeviceKind;

    .line 820
    .line 821
    const/16 v6, 0x180

    .line 822
    .line 823
    const/4 v7, 0x3

    .line 824
    const/4 v2, 0x0

    .line 825
    const/4 v3, 0x0

    .line 826
    invoke-static/range {v2 .. v7}, Lnet/blip/shared/AvatarKt;->b(Landroidx/compose/ui/Modifier;Lnet/blip/shared/AvatarTheme$Appearance;Lnet/blip/libblip/DeviceKind;Landroidx/compose/runtime/Composer;II)V

    .line 827
    .line 828
    .line 829
    goto :goto_15

    .line 830
    :cond_25
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 831
    .line 832
    .line 833
    :goto_15
    return-object v14

    .line 834
    :pswitch_11
    move-object/from16 v0, p1

    .line 835
    .line 836
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 837
    .line 838
    move-object/from16 v2, p2

    .line 839
    .line 840
    check-cast v2, Ljava/lang/Integer;

    .line 841
    .line 842
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 843
    .line 844
    .line 845
    move-result v2

    .line 846
    and-int/lit8 v3, v2, 0x3

    .line 847
    .line 848
    if-eq v3, v1, :cond_26

    .line 849
    .line 850
    move v15, v12

    .line 851
    :cond_26
    and-int/lit8 v1, v2, 0x1

    .line 852
    .line 853
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 854
    .line 855
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 856
    .line 857
    .line 858
    move-result v1

    .line 859
    if-eqz v1, :cond_27

    .line 860
    .line 861
    goto :goto_16

    .line 862
    :cond_27
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 863
    .line 864
    .line 865
    :goto_16
    return-object v14

    .line 866
    :pswitch_12
    move-object/from16 v0, p1

    .line 867
    .line 868
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 869
    .line 870
    move-object/from16 v2, p2

    .line 871
    .line 872
    check-cast v2, Ljava/lang/Integer;

    .line 873
    .line 874
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 875
    .line 876
    .line 877
    move-result v2

    .line 878
    and-int/lit8 v3, v2, 0x3

    .line 879
    .line 880
    if-eq v3, v1, :cond_28

    .line 881
    .line 882
    move v15, v12

    .line 883
    :cond_28
    and-int/lit8 v1, v2, 0x1

    .line 884
    .line 885
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 886
    .line 887
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 888
    .line 889
    .line 890
    move-result v1

    .line 891
    if-eqz v1, :cond_29

    .line 892
    .line 893
    const-string v1, "Send to your devices and other people using the Share icon"

    .line 894
    .line 895
    const/16 v2, 0x30

    .line 896
    .line 897
    const/4 v3, 0x0

    .line 898
    invoke-static {v3, v1, v0, v2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 899
    .line 900
    .line 901
    goto :goto_17

    .line 902
    :cond_29
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 903
    .line 904
    .line 905
    :goto_17
    return-object v14

    .line 906
    :pswitch_13
    move-object/from16 v0, p1

    .line 907
    .line 908
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 909
    .line 910
    move-object/from16 v2, p2

    .line 911
    .line 912
    check-cast v2, Ljava/lang/Integer;

    .line 913
    .line 914
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 915
    .line 916
    .line 917
    move-result v2

    .line 918
    and-int/lit8 v3, v2, 0x3

    .line 919
    .line 920
    if-eq v3, v1, :cond_2a

    .line 921
    .line 922
    move v1, v12

    .line 923
    goto :goto_18

    .line 924
    :cond_2a
    move v1, v15

    .line 925
    :goto_18
    and-int/2addr v2, v12

    .line 926
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 927
    .line 928
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 929
    .line 930
    .line 931
    move-result v1

    .line 932
    if-eqz v1, :cond_2b

    .line 933
    .line 934
    invoke-static {v15, v0}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->d(ILandroidx/compose/runtime/Composer;)V

    .line 935
    .line 936
    .line 937
    goto :goto_19

    .line 938
    :cond_2b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 939
    .line 940
    .line 941
    :goto_19
    return-object v14

    .line 942
    :pswitch_14
    move-object/from16 v0, p1

    .line 943
    .line 944
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 945
    .line 946
    move-object/from16 v3, p2

    .line 947
    .line 948
    check-cast v3, Ljava/lang/Integer;

    .line 949
    .line 950
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 951
    .line 952
    .line 953
    move-result v3

    .line 954
    and-int/lit8 v4, v3, 0x3

    .line 955
    .line 956
    if-eq v4, v1, :cond_2c

    .line 957
    .line 958
    move v1, v12

    .line 959
    goto :goto_1a

    .line 960
    :cond_2c
    move v1, v15

    .line 961
    :goto_1a
    and-int/2addr v3, v12

    .line 962
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 963
    .line 964
    invoke-virtual {v0, v3, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 965
    .line 966
    .line 967
    move-result v1

    .line 968
    if-eqz v1, :cond_2f

    .line 969
    .line 970
    const/high16 v1, 0x3f800000    # 1.0f

    .line 971
    .line 972
    invoke-static {v13, v1}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->d:J

    .line 977
    .line 978
    sget-object v12, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 979
    .line 980
    invoke-static {v3, v4, v5, v12}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 981
    .line 982
    .line 983
    move-result-object v3

    .line 984
    invoke-static {v11, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 985
    .line 986
    .line 987
    move-result-object v4

    .line 988
    iget-wide v11, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 989
    .line 990
    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    .line 991
    .line 992
    .line 993
    move-result v5

    .line 994
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 995
    .line 996
    .line 997
    move-result-object v11

    .line 998
    invoke-static {v0, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 999
    .line 1000
    .line 1001
    move-result-object v3

    .line 1002
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1003
    .line 1004
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1005
    .line 1006
    .line 1007
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1008
    .line 1009
    .line 1010
    iget-boolean v12, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1011
    .line 1012
    if-eqz v12, :cond_2d

    .line 1013
    .line 1014
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1015
    .line 1016
    .line 1017
    goto :goto_1b

    .line 1018
    :cond_2d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1019
    .line 1020
    .line 1021
    :goto_1b
    invoke-static {v0, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1022
    .line 1023
    .line 1024
    invoke-static {v0, v11, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1025
    .line 1026
    .line 1027
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v4

    .line 1031
    invoke-static {v0, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1032
    .line 1033
    .line 1034
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1035
    .line 1036
    .line 1037
    invoke-static {v0, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1038
    .line 1039
    .line 1040
    const/high16 v3, 0x3f400000    # 0.75f

    .line 1041
    .line 1042
    invoke-static {v13, v3}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v3

    .line 1046
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 1047
    .line 1048
    sget-object v5, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 1049
    .line 1050
    invoke-virtual {v5, v3, v4}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 1051
    .line 1052
    .line 1053
    move-result-object v18

    .line 1054
    sget-object v3, Landroidx/compose/material/icons/rounded/PrintKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1055
    .line 1056
    if-eqz v3, :cond_2e

    .line 1057
    .line 1058
    :goto_1c
    move-object/from16 v16, v3

    .line 1059
    .line 1060
    goto/16 :goto_1d

    .line 1061
    .line 1062
    :cond_2e
    new-instance v24, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1063
    .line 1064
    const/16 v32, 0x0

    .line 1065
    .line 1066
    const/16 v34, 0x60

    .line 1067
    .line 1068
    const/16 v33, 0x0

    .line 1069
    .line 1070
    const/high16 v26, 0x41c00000    # 24.0f

    .line 1071
    .line 1072
    const/high16 v27, 0x41c00000    # 24.0f

    .line 1073
    .line 1074
    const/high16 v28, 0x41c00000    # 24.0f

    .line 1075
    .line 1076
    const/high16 v29, 0x41c00000    # 24.0f

    .line 1077
    .line 1078
    const-wide/16 v30, 0x0

    .line 1079
    .line 1080
    const-string v25, "Rounded.Print"

    .line 1081
    .line 1082
    invoke-direct/range {v24 .. v34}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1083
    .line 1084
    .line 1085
    move-object/from16 v3, v24

    .line 1086
    .line 1087
    sget v4, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 1088
    .line 1089
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    .line 1090
    .line 1091
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->b:J

    .line 1092
    .line 1093
    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1094
    .line 1095
    .line 1096
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 1097
    .line 1098
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 1099
    .line 1100
    .line 1101
    const/high16 v5, 0x41000000    # 8.0f

    .line 1102
    .line 1103
    const/high16 v6, 0x41980000    # 19.0f

    .line 1104
    .line 1105
    invoke-virtual {v7, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1106
    .line 1107
    .line 1108
    const/high16 v5, 0x40a00000    # 5.0f

    .line 1109
    .line 1110
    const/high16 v6, 0x41000000    # 8.0f

    .line 1111
    .line 1112
    invoke-virtual {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1113
    .line 1114
    .line 1115
    const/high16 v12, -0x3fc00000    # -3.0f

    .line 1116
    .line 1117
    const/high16 v13, 0x40400000    # 3.0f

    .line 1118
    .line 1119
    const v8, -0x402b851f    # -1.66f

    .line 1120
    .line 1121
    .line 1122
    const/4 v9, 0x0

    .line 1123
    const/high16 v10, -0x3fc00000    # -3.0f

    .line 1124
    .line 1125
    const v11, 0x3fab851f    # 1.34f

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1129
    .line 1130
    .line 1131
    const/high16 v5, 0x40800000    # 4.0f

    .line 1132
    .line 1133
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1134
    .line 1135
    .line 1136
    const/high16 v12, 0x40000000    # 2.0f

    .line 1137
    .line 1138
    const/high16 v13, 0x40000000    # 2.0f

    .line 1139
    .line 1140
    const/4 v8, 0x0

    .line 1141
    const v9, 0x3f8ccccd    # 1.1f

    .line 1142
    .line 1143
    .line 1144
    const v10, 0x3f666666    # 0.9f

    .line 1145
    .line 1146
    .line 1147
    const/high16 v11, 0x40000000    # 2.0f

    .line 1148
    .line 1149
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1150
    .line 1151
    .line 1152
    const/high16 v5, 0x40000000    # 2.0f

    .line 1153
    .line 1154
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1161
    .line 1162
    .line 1163
    const/high16 v5, 0x41000000    # 8.0f

    .line 1164
    .line 1165
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1166
    .line 1167
    .line 1168
    const/high16 v13, -0x40000000    # -2.0f

    .line 1169
    .line 1170
    const v8, 0x3f8ccccd    # 1.1f

    .line 1171
    .line 1172
    .line 1173
    const/4 v9, 0x0

    .line 1174
    const/high16 v10, 0x40000000    # 2.0f

    .line 1175
    .line 1176
    const v11, -0x4099999a    # -0.9f

    .line 1177
    .line 1178
    .line 1179
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1180
    .line 1181
    .line 1182
    const/high16 v5, -0x40000000    # -2.0f

    .line 1183
    .line 1184
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1185
    .line 1186
    .line 1187
    const/high16 v5, 0x40000000    # 2.0f

    .line 1188
    .line 1189
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1193
    .line 1194
    .line 1195
    const/high16 v5, -0x3f800000    # -4.0f

    .line 1196
    .line 1197
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1198
    .line 1199
    .line 1200
    const/high16 v12, -0x3fc00000    # -3.0f

    .line 1201
    .line 1202
    const/high16 v13, -0x3fc00000    # -3.0f

    .line 1203
    .line 1204
    const/4 v8, 0x0

    .line 1205
    const v9, -0x402b851f    # -1.66f

    .line 1206
    .line 1207
    .line 1208
    const v10, -0x40547ae1    # -1.34f

    .line 1209
    .line 1210
    .line 1211
    const/high16 v11, -0x3fc00000    # -3.0f

    .line 1212
    .line 1213
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1217
    .line 1218
    .line 1219
    const/high16 v5, 0x41700000    # 15.0f

    .line 1220
    .line 1221
    const/high16 v6, 0x41980000    # 19.0f

    .line 1222
    .line 1223
    invoke-virtual {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1224
    .line 1225
    .line 1226
    const/high16 v5, 0x41100000    # 9.0f

    .line 1227
    .line 1228
    invoke-virtual {v7, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1229
    .line 1230
    .line 1231
    const/high16 v12, -0x40800000    # -1.0f

    .line 1232
    .line 1233
    const/high16 v13, -0x40800000    # -1.0f

    .line 1234
    .line 1235
    const v8, -0x40f33333    # -0.55f

    .line 1236
    .line 1237
    .line 1238
    const/4 v9, 0x0

    .line 1239
    const/high16 v10, -0x40800000    # -1.0f

    .line 1240
    .line 1241
    const v11, -0x4119999a    # -0.45f

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1245
    .line 1246
    .line 1247
    const/high16 v5, -0x3f800000    # -4.0f

    .line 1248
    .line 1249
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1250
    .line 1251
    .line 1252
    const/high16 v5, 0x41000000    # 8.0f

    .line 1253
    .line 1254
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1255
    .line 1256
    .line 1257
    const/high16 v5, 0x40800000    # 4.0f

    .line 1258
    .line 1259
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1260
    .line 1261
    .line 1262
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1263
    .line 1264
    const/4 v8, 0x0

    .line 1265
    const v9, 0x3f0ccccd    # 0.55f

    .line 1266
    .line 1267
    .line 1268
    const v10, -0x4119999a    # -0.45f

    .line 1269
    .line 1270
    .line 1271
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1272
    .line 1273
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1277
    .line 1278
    .line 1279
    const/high16 v5, 0x41400000    # 12.0f

    .line 1280
    .line 1281
    invoke-virtual {v7, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1282
    .line 1283
    .line 1284
    const/high16 v13, -0x40800000    # -1.0f

    .line 1285
    .line 1286
    const v8, -0x40f33333    # -0.55f

    .line 1287
    .line 1288
    .line 1289
    const/4 v9, 0x0

    .line 1290
    const/high16 v10, -0x40800000    # -1.0f

    .line 1291
    .line 1292
    const v11, -0x4119999a    # -0.45f

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1296
    .line 1297
    .line 1298
    const v5, 0x3ee66666    # 0.45f

    .line 1299
    .line 1300
    .line 1301
    invoke-virtual {v7, v5, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 1302
    .line 1303
    .line 1304
    invoke-virtual {v7, v1, v5, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 1305
    .line 1306
    .line 1307
    const v5, -0x4119999a    # -0.45f

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v7, v5, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 1311
    .line 1312
    .line 1313
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1314
    .line 1315
    .line 1316
    const/high16 v1, 0x41880000    # 17.0f

    .line 1317
    .line 1318
    const/high16 v2, 0x40400000    # 3.0f

    .line 1319
    .line 1320
    invoke-virtual {v7, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1321
    .line 1322
    .line 1323
    const/high16 v1, 0x40e00000    # 7.0f

    .line 1324
    .line 1325
    invoke-virtual {v7, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1326
    .line 1327
    .line 1328
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1329
    .line 1330
    const v11, 0x3ee66666    # 0.45f

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1334
    .line 1335
    .line 1336
    const/high16 v1, 0x40000000    # 2.0f

    .line 1337
    .line 1338
    invoke-virtual {v7, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1339
    .line 1340
    .line 1341
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1342
    .line 1343
    const/4 v8, 0x0

    .line 1344
    const v9, 0x3f0ccccd    # 0.55f

    .line 1345
    .line 1346
    .line 1347
    const v10, 0x3ee66666    # 0.45f

    .line 1348
    .line 1349
    .line 1350
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1351
    .line 1352
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1353
    .line 1354
    .line 1355
    const/high16 v1, 0x41200000    # 10.0f

    .line 1356
    .line 1357
    invoke-virtual {v7, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1358
    .line 1359
    .line 1360
    const/high16 v13, -0x40800000    # -1.0f

    .line 1361
    .line 1362
    const v8, 0x3f0ccccd    # 0.55f

    .line 1363
    .line 1364
    .line 1365
    const/4 v9, 0x0

    .line 1366
    const/high16 v10, 0x3f800000    # 1.0f

    .line 1367
    .line 1368
    const v11, -0x4119999a    # -0.45f

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1372
    .line 1373
    .line 1374
    const/high16 v1, 0x41900000    # 18.0f

    .line 1375
    .line 1376
    const/high16 v2, 0x40800000    # 4.0f

    .line 1377
    .line 1378
    invoke-virtual {v7, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1379
    .line 1380
    .line 1381
    const/high16 v12, -0x40800000    # -1.0f

    .line 1382
    .line 1383
    const/4 v8, 0x0

    .line 1384
    const v9, -0x40f33333    # -0.55f

    .line 1385
    .line 1386
    .line 1387
    const v10, -0x4119999a    # -0.45f

    .line 1388
    .line 1389
    .line 1390
    const/high16 v11, -0x40800000    # -1.0f

    .line 1391
    .line 1392
    invoke-virtual/range {v7 .. v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1396
    .line 1397
    .line 1398
    iget-object v1, v7, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1399
    .line 1400
    invoke-static {v3, v1, v4}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v3

    .line 1407
    sput-object v3, Landroidx/compose/material/icons/rounded/PrintKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1408
    .line 1409
    goto/16 :goto_1c

    .line 1410
    .line 1411
    :goto_1d
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1412
    .line 1413
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v1

    .line 1417
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1418
    .line 1419
    iget-wide v1, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 1420
    .line 1421
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 1422
    .line 1423
    .line 1424
    move-result-object v19

    .line 1425
    const/16 v21, 0x30

    .line 1426
    .line 1427
    const/16 v22, 0x38

    .line 1428
    .line 1429
    const-string v17, "Print"

    .line 1430
    .line 1431
    move-object/from16 v20, v0

    .line 1432
    .line 1433
    invoke-static/range {v16 .. v22}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 1434
    .line 1435
    .line 1436
    const/4 v1, 0x1

    .line 1437
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1438
    .line 1439
    .line 1440
    goto :goto_1e

    .line 1441
    :cond_2f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1442
    .line 1443
    .line 1444
    :goto_1e
    return-object v14

    .line 1445
    :pswitch_15
    move-object/from16 v0, p1

    .line 1446
    .line 1447
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1448
    .line 1449
    move-object/from16 v2, p2

    .line 1450
    .line 1451
    check-cast v2, Ljava/lang/Integer;

    .line 1452
    .line 1453
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1454
    .line 1455
    .line 1456
    move-result v2

    .line 1457
    and-int/lit8 v3, v2, 0x3

    .line 1458
    .line 1459
    if-eq v3, v1, :cond_30

    .line 1460
    .line 1461
    const/4 v1, 0x1

    .line 1462
    :goto_1f
    const/16 v23, 0x1

    .line 1463
    .line 1464
    goto :goto_20

    .line 1465
    :cond_30
    move v1, v15

    .line 1466
    goto :goto_1f

    .line 1467
    :goto_20
    and-int/lit8 v2, v2, 0x1

    .line 1468
    .line 1469
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1470
    .line 1471
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1472
    .line 1473
    .line 1474
    move-result v1

    .line 1475
    if-eqz v1, :cond_31

    .line 1476
    .line 1477
    const/4 v1, 0x0

    .line 1478
    invoke-static {v1, v0, v15}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 1479
    .line 1480
    .line 1481
    goto :goto_21

    .line 1482
    :cond_31
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1483
    .line 1484
    .line 1485
    :goto_21
    return-object v14

    .line 1486
    :pswitch_16
    move-object/from16 v0, p1

    .line 1487
    .line 1488
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1489
    .line 1490
    move-object/from16 v2, p2

    .line 1491
    .line 1492
    check-cast v2, Ljava/lang/Integer;

    .line 1493
    .line 1494
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1495
    .line 1496
    .line 1497
    move-result v2

    .line 1498
    and-int/lit8 v3, v2, 0x3

    .line 1499
    .line 1500
    if-eq v3, v1, :cond_32

    .line 1501
    .line 1502
    const/4 v15, 0x1

    .line 1503
    :cond_32
    const/16 v23, 0x1

    .line 1504
    .line 1505
    and-int/lit8 v1, v2, 0x1

    .line 1506
    .line 1507
    move-object v9, v0

    .line 1508
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 1509
    .line 1510
    invoke-virtual {v9, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1511
    .line 1512
    .line 1513
    move-result v0

    .line 1514
    if-eqz v0, :cond_33

    .line 1515
    .line 1516
    const v0, 0x7f0800c9

    .line 1517
    .line 1518
    .line 1519
    invoke-static {v0, v9}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1520
    .line 1521
    .line 1522
    move-result-object v2

    .line 1523
    const/16 v10, 0x38

    .line 1524
    .line 1525
    const/16 v11, 0x7c

    .line 1526
    .line 1527
    const-string v3, "Gmail"

    .line 1528
    .line 1529
    const/4 v4, 0x0

    .line 1530
    const/4 v5, 0x0

    .line 1531
    const/4 v6, 0x0

    .line 1532
    const/4 v7, 0x0

    .line 1533
    const/4 v8, 0x0

    .line 1534
    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 1535
    .line 1536
    .line 1537
    goto :goto_22

    .line 1538
    :cond_33
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1539
    .line 1540
    .line 1541
    :goto_22
    return-object v14

    .line 1542
    :pswitch_17
    move-object/from16 v0, p1

    .line 1543
    .line 1544
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1545
    .line 1546
    move-object/from16 v2, p2

    .line 1547
    .line 1548
    check-cast v2, Ljava/lang/Integer;

    .line 1549
    .line 1550
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1551
    .line 1552
    .line 1553
    move-result v2

    .line 1554
    and-int/lit8 v3, v2, 0x3

    .line 1555
    .line 1556
    if-eq v3, v1, :cond_34

    .line 1557
    .line 1558
    const/4 v15, 0x1

    .line 1559
    :cond_34
    const/16 v23, 0x1

    .line 1560
    .line 1561
    and-int/lit8 v1, v2, 0x1

    .line 1562
    .line 1563
    move-object v9, v0

    .line 1564
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 1565
    .line 1566
    invoke-virtual {v9, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v0

    .line 1570
    if-eqz v0, :cond_35

    .line 1571
    .line 1572
    const v0, 0x7f08014b

    .line 1573
    .line 1574
    .line 1575
    invoke-static {v0, v9}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1576
    .line 1577
    .line 1578
    move-result-object v2

    .line 1579
    const/16 v10, 0x38

    .line 1580
    .line 1581
    const/16 v11, 0x7c

    .line 1582
    .line 1583
    const-string v3, "Messages"

    .line 1584
    .line 1585
    const/4 v4, 0x0

    .line 1586
    const/4 v5, 0x0

    .line 1587
    const/4 v6, 0x0

    .line 1588
    const/4 v7, 0x0

    .line 1589
    const/4 v8, 0x0

    .line 1590
    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 1591
    .line 1592
    .line 1593
    goto :goto_23

    .line 1594
    :cond_35
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1595
    .line 1596
    .line 1597
    :goto_23
    return-object v14

    .line 1598
    :pswitch_18
    move-object/from16 v0, p1

    .line 1599
    .line 1600
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1601
    .line 1602
    move-object/from16 v2, p2

    .line 1603
    .line 1604
    check-cast v2, Ljava/lang/Integer;

    .line 1605
    .line 1606
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1607
    .line 1608
    .line 1609
    move-result v2

    .line 1610
    and-int/lit8 v3, v2, 0x3

    .line 1611
    .line 1612
    if-eq v3, v1, :cond_36

    .line 1613
    .line 1614
    const/4 v15, 0x1

    .line 1615
    :cond_36
    const/16 v23, 0x1

    .line 1616
    .line 1617
    and-int/lit8 v1, v2, 0x1

    .line 1618
    .line 1619
    move-object v9, v0

    .line 1620
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 1621
    .line 1622
    invoke-virtual {v9, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1623
    .line 1624
    .line 1625
    move-result v0

    .line 1626
    if-eqz v0, :cond_37

    .line 1627
    .line 1628
    const v0, 0x7f08014b

    .line 1629
    .line 1630
    .line 1631
    invoke-static {v0, v9}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1632
    .line 1633
    .line 1634
    move-result-object v2

    .line 1635
    const/16 v10, 0x38

    .line 1636
    .line 1637
    const/16 v11, 0x7c

    .line 1638
    .line 1639
    const-string v3, "Messages"

    .line 1640
    .line 1641
    const/4 v4, 0x0

    .line 1642
    const/4 v5, 0x0

    .line 1643
    const/4 v6, 0x0

    .line 1644
    const/4 v7, 0x0

    .line 1645
    const/4 v8, 0x0

    .line 1646
    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 1647
    .line 1648
    .line 1649
    goto :goto_24

    .line 1650
    :cond_37
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1651
    .line 1652
    .line 1653
    :goto_24
    return-object v14

    .line 1654
    :pswitch_19
    move-object/from16 v0, p1

    .line 1655
    .line 1656
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1657
    .line 1658
    move-object/from16 v2, p2

    .line 1659
    .line 1660
    check-cast v2, Ljava/lang/Integer;

    .line 1661
    .line 1662
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1663
    .line 1664
    .line 1665
    move-result v2

    .line 1666
    and-int/lit8 v3, v2, 0x3

    .line 1667
    .line 1668
    if-eq v3, v1, :cond_38

    .line 1669
    .line 1670
    const/4 v15, 0x1

    .line 1671
    :cond_38
    const/16 v23, 0x1

    .line 1672
    .line 1673
    and-int/lit8 v1, v2, 0x1

    .line 1674
    .line 1675
    move-object v9, v0

    .line 1676
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 1677
    .line 1678
    invoke-virtual {v9, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1679
    .line 1680
    .line 1681
    move-result v0

    .line 1682
    if-eqz v0, :cond_39

    .line 1683
    .line 1684
    const v0, 0x7f0800c8

    .line 1685
    .line 1686
    .line 1687
    invoke-static {v0, v9}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v2

    .line 1691
    const/16 v10, 0x38

    .line 1692
    .line 1693
    const/16 v11, 0x7c

    .line 1694
    .line 1695
    const-string v3, "Alicia"

    .line 1696
    .line 1697
    const/4 v4, 0x0

    .line 1698
    const/4 v5, 0x0

    .line 1699
    const/4 v6, 0x0

    .line 1700
    const/4 v7, 0x0

    .line 1701
    const/4 v8, 0x0

    .line 1702
    invoke-static/range {v2 .. v11}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 1703
    .line 1704
    .line 1705
    goto :goto_25

    .line 1706
    :cond_39
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1707
    .line 1708
    .line 1709
    :goto_25
    return-object v14

    .line 1710
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1711
    .line 1712
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1713
    .line 1714
    move-object/from16 v2, p2

    .line 1715
    .line 1716
    check-cast v2, Ljava/lang/Integer;

    .line 1717
    .line 1718
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1719
    .line 1720
    .line 1721
    move-result v2

    .line 1722
    and-int/lit8 v3, v2, 0x3

    .line 1723
    .line 1724
    if-eq v3, v1, :cond_3a

    .line 1725
    .line 1726
    const/4 v1, 0x1

    .line 1727
    :goto_26
    const/16 v23, 0x1

    .line 1728
    .line 1729
    goto :goto_27

    .line 1730
    :cond_3a
    move v1, v15

    .line 1731
    goto :goto_26

    .line 1732
    :goto_27
    and-int/lit8 v2, v2, 0x1

    .line 1733
    .line 1734
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1735
    .line 1736
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1737
    .line 1738
    .line 1739
    move-result v1

    .line 1740
    if-eqz v1, :cond_3d

    .line 1741
    .line 1742
    const/high16 v1, 0x3ec00000    # 0.375f

    .line 1743
    .line 1744
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 1745
    .line 1746
    invoke-static {v2, v1}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1747
    .line 1748
    .line 1749
    move-result-object v1

    .line 1750
    invoke-static {v11, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v3

    .line 1754
    iget-wide v4, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1755
    .line 1756
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 1757
    .line 1758
    .line 1759
    move-result v4

    .line 1760
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v5

    .line 1764
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v1

    .line 1768
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1769
    .line 1770
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1771
    .line 1772
    .line 1773
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1774
    .line 1775
    .line 1776
    iget-boolean v12, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1777
    .line 1778
    if-eqz v12, :cond_3b

    .line 1779
    .line 1780
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1781
    .line 1782
    .line 1783
    goto :goto_28

    .line 1784
    :cond_3b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1785
    .line 1786
    .line 1787
    :goto_28
    invoke-static {v0, v3, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1788
    .line 1789
    .line 1790
    invoke-static {v0, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1791
    .line 1792
    .line 1793
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v3

    .line 1797
    invoke-static {v0, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1798
    .line 1799
    .line 1800
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1801
    .line 1802
    .line 1803
    invoke-static {v0, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1804
    .line 1805
    .line 1806
    const/16 v37, 0x0

    .line 1807
    .line 1808
    const v38, 0xffeff

    .line 1809
    .line 1810
    .line 1811
    const/16 v25, 0x0

    .line 1812
    .line 1813
    const/16 v26, 0x0

    .line 1814
    .line 1815
    const/16 v27, 0x0

    .line 1816
    .line 1817
    const/high16 v28, -0x40000000    # -2.0f

    .line 1818
    .line 1819
    const-wide/16 v29, 0x0

    .line 1820
    .line 1821
    const/16 v31, 0x0

    .line 1822
    .line 1823
    const/16 v32, 0x0

    .line 1824
    .line 1825
    const-wide/16 v33, 0x0

    .line 1826
    .line 1827
    const-wide/16 v35, 0x0

    .line 1828
    .line 1829
    move-object/from16 v24, v2

    .line 1830
    .line 1831
    invoke-static/range {v24 .. v38}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->b(Landroidx/compose/ui/Modifier;FFFFJLandroidx/compose/ui/graphics/Shape;ZJJII)Landroidx/compose/ui/Modifier;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v1

    .line 1835
    const v2, 0x3f59999a    # 0.85f

    .line 1836
    .line 1837
    .line 1838
    invoke-static {v1, v2}, Landroidx/compose/ui/draw/ScaleKt;->a(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v1

    .line 1842
    invoke-static {v11, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v2

    .line 1846
    iget-wide v3, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1847
    .line 1848
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 1849
    .line 1850
    .line 1851
    move-result v3

    .line 1852
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1853
    .line 1854
    .line 1855
    move-result-object v4

    .line 1856
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1857
    .line 1858
    .line 1859
    move-result-object v1

    .line 1860
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1861
    .line 1862
    .line 1863
    iget-boolean v5, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1864
    .line 1865
    if-eqz v5, :cond_3c

    .line 1866
    .line 1867
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1868
    .line 1869
    .line 1870
    goto :goto_29

    .line 1871
    :cond_3c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1872
    .line 1873
    .line 1874
    :goto_29
    invoke-static {v0, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1875
    .line 1876
    .line 1877
    invoke-static {v0, v4, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1878
    .line 1879
    .line 1880
    invoke-static {v3, v0, v7, v0}, Lq;->s(ILandroidx/compose/runtime/GapComposer;Le6;Landroidx/compose/runtime/GapComposer;)V

    .line 1881
    .line 1882
    .line 1883
    invoke-static {v0, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1884
    .line 1885
    .line 1886
    invoke-static {v15, v0}, Lnet/blip/android/ui/onboarding/OnboardingShareInstructionsStepKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 1887
    .line 1888
    .line 1889
    const/4 v1, 0x1

    .line 1890
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1891
    .line 1892
    .line 1893
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1894
    .line 1895
    .line 1896
    goto :goto_2a

    .line 1897
    :cond_3d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1898
    .line 1899
    .line 1900
    :goto_2a
    return-object v14

    .line 1901
    :pswitch_1b
    move-object/from16 v0, p1

    .line 1902
    .line 1903
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1904
    .line 1905
    move-object/from16 v2, p2

    .line 1906
    .line 1907
    check-cast v2, Ljava/lang/Integer;

    .line 1908
    .line 1909
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1910
    .line 1911
    .line 1912
    move-result v2

    .line 1913
    and-int/lit8 v3, v2, 0x3

    .line 1914
    .line 1915
    if-eq v3, v1, :cond_3e

    .line 1916
    .line 1917
    const/4 v1, 0x1

    .line 1918
    :goto_2b
    const/16 v23, 0x1

    .line 1919
    .line 1920
    goto :goto_2c

    .line 1921
    :cond_3e
    move v1, v15

    .line 1922
    goto :goto_2b

    .line 1923
    :goto_2c
    and-int/lit8 v2, v2, 0x1

    .line 1924
    .line 1925
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1926
    .line 1927
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1928
    .line 1929
    .line 1930
    move-result v1

    .line 1931
    if-eqz v1, :cond_40

    .line 1932
    .line 1933
    invoke-static {v0, v13}, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1934
    .line 1935
    .line 1936
    move-result-object v1

    .line 1937
    invoke-static {v0, v1}, Lnet/blip/android/ui/util/SystemBarsMetricsKt;->b(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v1

    .line 1941
    invoke-static {v11, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v2

    .line 1945
    iget-wide v3, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1946
    .line 1947
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 1948
    .line 1949
    .line 1950
    move-result v3

    .line 1951
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v4

    .line 1955
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1956
    .line 1957
    .line 1958
    move-result-object v1

    .line 1959
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1960
    .line 1961
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1962
    .line 1963
    .line 1964
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1965
    .line 1966
    .line 1967
    iget-boolean v5, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1968
    .line 1969
    if-eqz v5, :cond_3f

    .line 1970
    .line 1971
    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1972
    .line 1973
    .line 1974
    goto :goto_2d

    .line 1975
    :cond_3f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1976
    .line 1977
    .line 1978
    :goto_2d
    invoke-static {v0, v2, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1979
    .line 1980
    .line 1981
    invoke-static {v0, v4, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1982
    .line 1983
    .line 1984
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v2

    .line 1988
    invoke-static {v0, v2, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1989
    .line 1990
    .line 1991
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1992
    .line 1993
    .line 1994
    invoke-static {v0, v1, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1995
    .line 1996
    .line 1997
    const/4 v1, 0x1

    .line 1998
    invoke-static {v1}, LOnboardingScreenKt;->b(Z)Landroidx/compose/animation/ContentTransform;

    .line 1999
    .line 2000
    .line 2001
    move-result-object v2

    .line 2002
    invoke-static {v15}, LOnboardingScreenKt;->b(Z)Landroidx/compose/animation/ContentTransform;

    .line 2003
    .line 2004
    .line 2005
    move-result-object v3

    .line 2006
    const v4, 0x91b6db6

    .line 2007
    .line 2008
    .line 2009
    invoke-static {v2, v3, v0, v4}, Lnet/blip/shared/OnboardingStepperKt;->a(Landroidx/compose/animation/ContentTransform;Landroidx/compose/animation/ContentTransform;Landroidx/compose/runtime/Composer;I)V

    .line 2010
    .line 2011
    .line 2012
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 2013
    .line 2014
    .line 2015
    goto :goto_2e

    .line 2016
    :cond_40
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2017
    .line 2018
    .line 2019
    :goto_2e
    return-object v14

    .line 2020
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2021
    .line 2022
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 2023
    .line 2024
    move-object/from16 v2, p2

    .line 2025
    .line 2026
    check-cast v2, Ljava/lang/Integer;

    .line 2027
    .line 2028
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2029
    .line 2030
    .line 2031
    move-result v2

    .line 2032
    and-int/lit8 v3, v2, 0x3

    .line 2033
    .line 2034
    if-eq v3, v1, :cond_41

    .line 2035
    .line 2036
    const/4 v15, 0x1

    .line 2037
    :cond_41
    const/16 v23, 0x1

    .line 2038
    .line 2039
    and-int/lit8 v1, v2, 0x1

    .line 2040
    .line 2041
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2042
    .line 2043
    invoke-virtual {v0, v1, v15}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2044
    .line 2045
    .line 2046
    move-result v1

    .line 2047
    if-eqz v1, :cond_42

    .line 2048
    .line 2049
    const-string v1, "Set your name and avatar"

    .line 2050
    .line 2051
    const/4 v2, 0x6

    .line 2052
    invoke-static {v1, v0, v2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->g(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2053
    .line 2054
    .line 2055
    goto :goto_2f

    .line 2056
    :cond_42
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2057
    .line 2058
    .line 2059
    :goto_2f
    return-object v14

    .line 2060
    nop

    .line 2061
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
