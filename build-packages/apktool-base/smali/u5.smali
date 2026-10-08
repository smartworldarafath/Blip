.class public final synthetic Lu5;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lu5;->j:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    and-int/lit8 p1, p0, 0x11

    .line 15
    .line 16
    const/16 p3, 0x10

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-eq p1, p3, :cond_0

    .line 20
    .line 21
    move p1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    and-int/2addr p0, v0

    .line 25
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 26
    .line 27
    invoke-virtual {p2, p0, p1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    const-string p0, "Block"

    .line 34
    .line 35
    const/16 p1, 0x30

    .line 36
    .line 37
    invoke-static {p0, p2, p1}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 42
    .line 43
    .line 44
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu5;->j:I

    .line 4
    .line 5
    const v3, 0x414b3333    # 12.7f

    .line 6
    .line 7
    .line 8
    const/high16 v4, 0x41900000    # 18.0f

    .line 9
    .line 10
    const-string v5, "Remove"

    .line 11
    .line 12
    const-string v6, "Paste"

    .line 13
    .line 14
    const/16 v7, 0x12

    .line 15
    .line 16
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 17
    .line 18
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 19
    .line 20
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 21
    .line 22
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 23
    .line 24
    sget-object v15, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 25
    .line 26
    const/high16 v16, 0x40c00000    # 6.0f

    .line 27
    .line 28
    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 29
    .line 30
    const/16 v8, 0x30

    .line 31
    .line 32
    const/16 v9, 0x10

    .line 33
    .line 34
    sget-object v18, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    const/4 v10, 0x1

    .line 37
    packed-switch v1, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    move-object/from16 v0, p1

    .line 41
    .line 42
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 43
    .line 44
    move-object/from16 v1, p2

    .line 45
    .line 46
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 47
    .line 48
    move-object/from16 v2, p3

    .line 49
    .line 50
    check-cast v2, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    and-int/lit8 v0, v2, 0x11

    .line 60
    .line 61
    if-eq v0, v9, :cond_0

    .line 62
    .line 63
    move v0, v10

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    and-int/2addr v2, v10

    .line 67
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 68
    .line 69
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    invoke-static {v6, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-object v18

    .line 83
    :pswitch_0
    invoke-direct/range {p0 .. p3}, Lu5;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :pswitch_1
    move-object/from16 v0, p1

    .line 89
    .line 90
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 91
    .line 92
    move-object/from16 v1, p2

    .line 93
    .line 94
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 95
    .line 96
    move-object/from16 v2, p3

    .line 97
    .line 98
    check-cast v2, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    .line 106
    .line 107
    and-int/lit8 v0, v2, 0x11

    .line 108
    .line 109
    if-eq v0, v9, :cond_2

    .line 110
    .line 111
    move v0, v10

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    const/4 v0, 0x0

    .line 114
    :goto_2
    and-int/2addr v2, v10

    .line 115
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 116
    .line 117
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_3

    .line 122
    .line 123
    invoke-static {v5, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_3
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 128
    .line 129
    .line 130
    :goto_3
    return-object v18

    .line 131
    :pswitch_2
    move-object/from16 v0, p1

    .line 132
    .line 133
    check-cast v0, Ljava/lang/String;

    .line 134
    .line 135
    move-object/from16 v1, p2

    .line 136
    .line 137
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 138
    .line 139
    move-object/from16 v5, p3

    .line 140
    .line 141
    check-cast v5, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    and-int/lit8 v0, v5, 0x11

    .line 151
    .line 152
    if-eq v0, v9, :cond_4

    .line 153
    .line 154
    move v0, v10

    .line 155
    goto :goto_4

    .line 156
    :cond_4
    const/4 v0, 0x0

    .line 157
    :goto_4
    and-int/2addr v5, v10

    .line 158
    move-object v10, v1

    .line 159
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 160
    .line 161
    invoke-virtual {v10, v5, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_6

    .line 166
    .line 167
    const/high16 v0, 0x42180000    # 38.0f

    .line 168
    .line 169
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    sget-object v0, Landroidx/compose/material/icons/rounded/ShareKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 174
    .line 175
    if-eqz v0, :cond_5

    .line 176
    .line 177
    :goto_5
    move-object v6, v0

    .line 178
    goto/16 :goto_6

    .line 179
    .line 180
    :cond_5
    new-instance v19, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 181
    .line 182
    const/16 v27, 0x0

    .line 183
    .line 184
    const/16 v29, 0x60

    .line 185
    .line 186
    const/16 v28, 0x0

    .line 187
    .line 188
    const/high16 v21, 0x41c00000    # 24.0f

    .line 189
    .line 190
    const/high16 v22, 0x41c00000    # 24.0f

    .line 191
    .line 192
    const/high16 v23, 0x41c00000    # 24.0f

    .line 193
    .line 194
    const/high16 v24, 0x41c00000    # 24.0f

    .line 195
    .line 196
    const-wide/16 v25, 0x0

    .line 197
    .line 198
    const-string v20, "Rounded.Share"

    .line 199
    .line 200
    invoke-direct/range {v19 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 201
    .line 202
    .line 203
    move-object/from16 v0, v19

    .line 204
    .line 205
    sget v1, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 206
    .line 207
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    .line 208
    .line 209
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->b:J

    .line 210
    .line 211
    invoke-direct {v1, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 212
    .line 213
    .line 214
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 215
    .line 216
    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const v2, 0x4180a3d7    # 16.08f

    .line 220
    .line 221
    .line 222
    invoke-virtual {v11, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 223
    .line 224
    .line 225
    const v16, -0x40051eb8    # -1.96f

    .line 226
    .line 227
    .line 228
    const v17, 0x3f451eb8    # 0.77f

    .line 229
    .line 230
    .line 231
    const v12, -0x40bd70a4    # -0.76f

    .line 232
    .line 233
    .line 234
    const/4 v13, 0x0

    .line 235
    const v14, -0x4047ae14    # -1.44f

    .line 236
    .line 237
    .line 238
    const v15, 0x3e99999a    # 0.3f

    .line 239
    .line 240
    .line 241
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 242
    .line 243
    .line 244
    const v2, 0x410e8f5c    # 8.91f

    .line 245
    .line 246
    .line 247
    invoke-virtual {v11, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 248
    .line 249
    .line 250
    const v16, 0x3db851ec    # 0.09f

    .line 251
    .line 252
    .line 253
    const v17, -0x40cccccd    # -0.7f

    .line 254
    .line 255
    .line 256
    const v12, 0x3d4ccccd    # 0.05f

    .line 257
    .line 258
    .line 259
    const v13, -0x41947ae1    # -0.23f

    .line 260
    .line 261
    .line 262
    const v14, 0x3db851ec    # 0.09f

    .line 263
    .line 264
    .line 265
    const v15, -0x41147ae1    # -0.46f

    .line 266
    .line 267
    .line 268
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 269
    .line 270
    .line 271
    const v2, -0x4247ae14    # -0.09f

    .line 272
    .line 273
    .line 274
    const v3, -0x40cccccd    # -0.7f

    .line 275
    .line 276
    .line 277
    const v4, -0x42dc28f6    # -0.04f

    .line 278
    .line 279
    .line 280
    const v5, -0x410f5c29    # -0.47f

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11, v4, v5, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 284
    .line 285
    .line 286
    const v2, 0x40e1999a    # 7.05f

    .line 287
    .line 288
    .line 289
    const v3, -0x3f7c7ae1    # -4.11f

    .line 290
    .line 291
    .line 292
    invoke-virtual {v11, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 293
    .line 294
    .line 295
    const v16, 0x40028f5c    # 2.04f

    .line 296
    .line 297
    .line 298
    const v17, 0x3f4f5c29    # 0.81f

    .line 299
    .line 300
    .line 301
    const v12, 0x3f0a3d71    # 0.54f

    .line 302
    .line 303
    .line 304
    const/high16 v13, 0x3f000000    # 0.5f

    .line 305
    .line 306
    const/high16 v14, 0x3fa00000    # 1.25f

    .line 307
    .line 308
    const v15, 0x3f4f5c29    # 0.81f

    .line 309
    .line 310
    .line 311
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 312
    .line 313
    .line 314
    const/high16 v16, 0x40400000    # 3.0f

    .line 315
    .line 316
    const/high16 v17, -0x3fc00000    # -3.0f

    .line 317
    .line 318
    const v12, 0x3fd47ae1    # 1.66f

    .line 319
    .line 320
    .line 321
    const/4 v13, 0x0

    .line 322
    const/high16 v14, 0x40400000    # 3.0f

    .line 323
    .line 324
    const v15, -0x40547ae1    # -1.34f

    .line 325
    .line 326
    .line 327
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 328
    .line 329
    .line 330
    const v2, -0x40547ae1    # -1.34f

    .line 331
    .line 332
    .line 333
    const/high16 v3, -0x3fc00000    # -3.0f

    .line 334
    .line 335
    invoke-virtual {v11, v2, v3, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 336
    .line 337
    .line 338
    const v2, 0x3fab851f    # 1.34f

    .line 339
    .line 340
    .line 341
    const/high16 v3, 0x40400000    # 3.0f

    .line 342
    .line 343
    const/high16 v4, -0x3fc00000    # -3.0f

    .line 344
    .line 345
    invoke-virtual {v11, v4, v2, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 346
    .line 347
    .line 348
    const v16, 0x3db851ec    # 0.09f

    .line 349
    .line 350
    .line 351
    const v17, 0x3f333333    # 0.7f

    .line 352
    .line 353
    .line 354
    const/4 v12, 0x0

    .line 355
    const v13, 0x3e75c28f    # 0.24f

    .line 356
    .line 357
    .line 358
    const v14, 0x3d23d70a    # 0.04f

    .line 359
    .line 360
    .line 361
    const v15, 0x3ef0a3d7    # 0.47f

    .line 362
    .line 363
    .line 364
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 365
    .line 366
    .line 367
    const v2, 0x4100a3d7    # 8.04f

    .line 368
    .line 369
    .line 370
    const v3, 0x411cf5c3    # 9.81f

    .line 371
    .line 372
    .line 373
    invoke-virtual {v11, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 374
    .line 375
    .line 376
    const/high16 v16, 0x40c00000    # 6.0f

    .line 377
    .line 378
    const/high16 v17, 0x41100000    # 9.0f

    .line 379
    .line 380
    const/high16 v12, 0x40f00000    # 7.5f

    .line 381
    .line 382
    const v13, 0x4114f5c3    # 9.31f

    .line 383
    .line 384
    .line 385
    const v14, 0x40d947ae    # 6.79f

    .line 386
    .line 387
    .line 388
    const/high16 v15, 0x41100000    # 9.0f

    .line 389
    .line 390
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 391
    .line 392
    .line 393
    const/high16 v16, -0x3fc00000    # -3.0f

    .line 394
    .line 395
    const/high16 v17, 0x40400000    # 3.0f

    .line 396
    .line 397
    const v12, -0x402b851f    # -1.66f

    .line 398
    .line 399
    .line 400
    const/4 v13, 0x0

    .line 401
    const/high16 v14, -0x3fc00000    # -3.0f

    .line 402
    .line 403
    const v15, 0x3fab851f    # 1.34f

    .line 404
    .line 405
    .line 406
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 407
    .line 408
    .line 409
    const v2, 0x3fab851f    # 1.34f

    .line 410
    .line 411
    .line 412
    const/high16 v3, 0x40400000    # 3.0f

    .line 413
    .line 414
    invoke-virtual {v11, v2, v3, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 415
    .line 416
    .line 417
    const v16, 0x40028f5c    # 2.04f

    .line 418
    .line 419
    .line 420
    const v17, -0x40b0a3d7    # -0.81f

    .line 421
    .line 422
    .line 423
    const v12, 0x3f4a3d71    # 0.79f

    .line 424
    .line 425
    .line 426
    const/high16 v14, 0x3fc00000    # 1.5f

    .line 427
    .line 428
    const v15, -0x416147ae    # -0.31f

    .line 429
    .line 430
    .line 431
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 432
    .line 433
    .line 434
    const v2, 0x40e3d70a    # 7.12f

    .line 435
    .line 436
    .line 437
    const v3, 0x40851eb8    # 4.16f

    .line 438
    .line 439
    .line 440
    invoke-virtual {v11, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 441
    .line 442
    .line 443
    const v16, -0x425c28f6    # -0.08f

    .line 444
    .line 445
    .line 446
    const v17, 0x3f266666    # 0.65f

    .line 447
    .line 448
    .line 449
    const v12, -0x42b33333    # -0.05f

    .line 450
    .line 451
    .line 452
    const v13, 0x3e570a3d    # 0.21f

    .line 453
    .line 454
    .line 455
    const v14, -0x425c28f6    # -0.08f

    .line 456
    .line 457
    .line 458
    const v15, 0x3edc28f6    # 0.43f

    .line 459
    .line 460
    .line 461
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 462
    .line 463
    .line 464
    const v16, 0x403ae148    # 2.92f

    .line 465
    .line 466
    .line 467
    const v17, 0x403ae148    # 2.92f

    .line 468
    .line 469
    .line 470
    const/4 v12, 0x0

    .line 471
    const v13, 0x3fce147b    # 1.61f

    .line 472
    .line 473
    .line 474
    const v14, 0x3fa7ae14    # 1.31f

    .line 475
    .line 476
    .line 477
    const v15, 0x403ae148    # 2.92f

    .line 478
    .line 479
    .line 480
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 481
    .line 482
    .line 483
    const v2, -0x405851ec    # -1.31f

    .line 484
    .line 485
    .line 486
    const v3, 0x403ae148    # 2.92f

    .line 487
    .line 488
    .line 489
    const v4, -0x3fc51eb8    # -2.92f

    .line 490
    .line 491
    .line 492
    invoke-virtual {v11, v3, v2, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 493
    .line 494
    .line 495
    const v3, -0x3fc51eb8    # -2.92f

    .line 496
    .line 497
    .line 498
    invoke-virtual {v11, v2, v3, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 502
    .line 503
    .line 504
    iget-object v2, v11, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 505
    .line 506
    invoke-static {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    sput-object v0, Landroidx/compose/material/icons/rounded/ShareKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 514
    .line 515
    goto/16 :goto_5

    .line 516
    .line 517
    :goto_6
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 518
    .line 519
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 524
    .line 525
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 526
    .line 527
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 528
    .line 529
    .line 530
    move-result-object v9

    .line 531
    const/16 v11, 0x1b0

    .line 532
    .line 533
    const/16 v12, 0x38

    .line 534
    .line 535
    const-string v7, "Share"

    .line 536
    .line 537
    invoke-static/range {v6 .. v12}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 538
    .line 539
    .line 540
    goto :goto_7

    .line 541
    :cond_6
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 542
    .line 543
    .line 544
    :goto_7
    return-object v18

    .line 545
    :pswitch_3
    move-object/from16 v0, p1

    .line 546
    .line 547
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 548
    .line 549
    move-object/from16 v1, p2

    .line 550
    .line 551
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 552
    .line 553
    move-object/from16 v3, p3

    .line 554
    .line 555
    check-cast v3, Ljava/lang/Integer;

    .line 556
    .line 557
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result v3

    .line 561
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    .line 563
    .line 564
    and-int/lit8 v0, v3, 0x11

    .line 565
    .line 566
    if-eq v0, v9, :cond_7

    .line 567
    .line 568
    move v0, v10

    .line 569
    goto :goto_8

    .line 570
    :cond_7
    const/4 v0, 0x0

    .line 571
    :goto_8
    and-int/2addr v3, v10

    .line 572
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 573
    .line 574
    invoke-virtual {v1, v3, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_a

    .line 579
    .line 580
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 585
    .line 586
    const/16 v4, 0x36

    .line 587
    .line 588
    invoke-static {v0, v3, v1, v4}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    iget-wide v3, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 593
    .line 594
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 603
    .line 604
    .line 605
    move-result-object v5

    .line 606
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 607
    .line 608
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 612
    .line 613
    .line 614
    iget-boolean v6, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 615
    .line 616
    if-eqz v6, :cond_8

    .line 617
    .line 618
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 619
    .line 620
    .line 621
    goto :goto_9

    .line 622
    :cond_8
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 623
    .line 624
    .line 625
    :goto_9
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 626
    .line 627
    .line 628
    invoke-static {v1, v4, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 629
    .line 630
    .line 631
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 636
    .line 637
    .line 638
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 639
    .line 640
    .line 641
    invoke-static {v1, v5, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 642
    .line 643
    .line 644
    const/high16 v0, 0x41a00000    # 20.0f

    .line 645
    .line 646
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 647
    .line 648
    .line 649
    move-result-object v21

    .line 650
    sget-object v0, Landroidx/compose/material/icons/rounded/CloseKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 651
    .line 652
    if-eqz v0, :cond_9

    .line 653
    .line 654
    :goto_a
    move-object/from16 v19, v0

    .line 655
    .line 656
    goto/16 :goto_b

    .line 657
    .line 658
    :cond_9
    new-instance v22, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 659
    .line 660
    const/16 v30, 0x0

    .line 661
    .line 662
    const/16 v32, 0x60

    .line 663
    .line 664
    const-string v23, "Rounded.Close"

    .line 665
    .line 666
    const/high16 v24, 0x41c00000    # 24.0f

    .line 667
    .line 668
    const/high16 v25, 0x41c00000    # 24.0f

    .line 669
    .line 670
    const/high16 v26, 0x41c00000    # 24.0f

    .line 671
    .line 672
    const/high16 v27, 0x41c00000    # 24.0f

    .line 673
    .line 674
    const-wide/16 v28, 0x0

    .line 675
    .line 676
    const/16 v31, 0x0

    .line 677
    .line 678
    invoke-direct/range {v22 .. v32}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 679
    .line 680
    .line 681
    move-object/from16 v0, v22

    .line 682
    .line 683
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 684
    .line 685
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 686
    .line 687
    sget-wide v3, Landroidx/compose/ui/graphics/Color;->b:J

    .line 688
    .line 689
    invoke-direct {v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 690
    .line 691
    .line 692
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 693
    .line 694
    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 695
    .line 696
    .line 697
    const v3, 0x41926666    # 18.3f

    .line 698
    .line 699
    .line 700
    const v4, 0x40b6b852    # 5.71f

    .line 701
    .line 702
    .line 703
    invoke-virtual {v11, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 704
    .line 705
    .line 706
    const v16, -0x404b851f    # -1.41f

    .line 707
    .line 708
    .line 709
    const/16 v17, 0x0

    .line 710
    .line 711
    const v12, -0x413851ec    # -0.39f

    .line 712
    .line 713
    .line 714
    const v13, -0x413851ec    # -0.39f

    .line 715
    .line 716
    .line 717
    const v14, -0x407d70a4    # -1.02f

    .line 718
    .line 719
    .line 720
    const v15, -0x413851ec    # -0.39f

    .line 721
    .line 722
    .line 723
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 724
    .line 725
    .line 726
    const/high16 v3, 0x41400000    # 12.0f

    .line 727
    .line 728
    const v4, 0x412970a4    # 10.59f

    .line 729
    .line 730
    .line 731
    invoke-virtual {v11, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 732
    .line 733
    .line 734
    const v5, 0x40e3851f    # 7.11f

    .line 735
    .line 736
    .line 737
    const v6, 0x40b66666    # 5.7f

    .line 738
    .line 739
    .line 740
    invoke-virtual {v11, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 741
    .line 742
    .line 743
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 744
    .line 745
    .line 746
    const/16 v16, 0x0

    .line 747
    .line 748
    const v17, 0x3fb47ae1    # 1.41f

    .line 749
    .line 750
    .line 751
    const v13, 0x3ec7ae14    # 0.39f

    .line 752
    .line 753
    .line 754
    const v14, -0x413851ec    # -0.39f

    .line 755
    .line 756
    .line 757
    const v15, 0x3f828f5c    # 1.02f

    .line 758
    .line 759
    .line 760
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v11, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 764
    .line 765
    .line 766
    const v4, 0x41871eb8    # 16.89f

    .line 767
    .line 768
    .line 769
    invoke-virtual {v11, v6, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 770
    .line 771
    .line 772
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 773
    .line 774
    .line 775
    const v16, 0x3fb47ae1    # 1.41f

    .line 776
    .line 777
    .line 778
    const/16 v17, 0x0

    .line 779
    .line 780
    const v12, 0x3ec7ae14    # 0.39f

    .line 781
    .line 782
    .line 783
    const v14, 0x3f828f5c    # 1.02f

    .line 784
    .line 785
    .line 786
    const v15, 0x3ec7ae14    # 0.39f

    .line 787
    .line 788
    .line 789
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 790
    .line 791
    .line 792
    const v4, 0x41568f5c    # 13.41f

    .line 793
    .line 794
    .line 795
    invoke-virtual {v11, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 796
    .line 797
    .line 798
    const v5, 0x409c7ae1    # 4.89f

    .line 799
    .line 800
    .line 801
    invoke-virtual {v11, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 802
    .line 803
    .line 804
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 805
    .line 806
    .line 807
    const/16 v16, 0x0

    .line 808
    .line 809
    const v17, -0x404b851f    # -1.41f

    .line 810
    .line 811
    .line 812
    const v13, -0x413851ec    # -0.39f

    .line 813
    .line 814
    .line 815
    const v14, 0x3ec7ae14    # 0.39f

    .line 816
    .line 817
    .line 818
    const v15, -0x407d70a4    # -1.02f

    .line 819
    .line 820
    .line 821
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v11, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 825
    .line 826
    .line 827
    const v3, -0x3f63851f    # -4.89f

    .line 828
    .line 829
    .line 830
    invoke-virtual {v11, v5, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 831
    .line 832
    .line 833
    const v17, -0x404ccccd    # -1.4f

    .line 834
    .line 835
    .line 836
    const v12, 0x3ec28f5c    # 0.38f

    .line 837
    .line 838
    .line 839
    const v13, -0x413d70a4    # -0.38f

    .line 840
    .line 841
    .line 842
    const v14, 0x3ec28f5c    # 0.38f

    .line 843
    .line 844
    .line 845
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 849
    .line 850
    .line 851
    iget-object v3, v11, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 852
    .line 853
    invoke-static {v0, v3, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 854
    .line 855
    .line 856
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    sput-object v0, Landroidx/compose/material/icons/rounded/CloseKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 861
    .line 862
    goto/16 :goto_a

    .line 863
    .line 864
    :goto_b
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 865
    .line 866
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v2

    .line 870
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 871
    .line 872
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 873
    .line 874
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 875
    .line 876
    .line 877
    move-result-object v22

    .line 878
    const/16 v24, 0x1b0

    .line 879
    .line 880
    const/16 v25, 0x38

    .line 881
    .line 882
    const-string v20, "Decline"

    .line 883
    .line 884
    move-object/from16 v23, v1

    .line 885
    .line 886
    invoke-static/range {v19 .. v25}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 887
    .line 888
    .line 889
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 890
    .line 891
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 892
    .line 893
    .line 894
    move-result-object v2

    .line 895
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 896
    .line 897
    iget-object v2, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 898
    .line 899
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 904
    .line 905
    iget-wide v3, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 906
    .line 907
    const/16 v0, 0xe

    .line 908
    .line 909
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 910
    .line 911
    .line 912
    move-result-wide v22

    .line 913
    sget-object v24, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 914
    .line 915
    const/16 v30, 0x0

    .line 916
    .line 917
    const v31, 0xfffff8

    .line 918
    .line 919
    .line 920
    const-wide/16 v25, 0x0

    .line 921
    .line 922
    const-wide/16 v27, 0x0

    .line 923
    .line 924
    const/16 v29, 0x0

    .line 925
    .line 926
    move-object/from16 v19, v2

    .line 927
    .line 928
    move-wide/from16 v20, v3

    .line 929
    .line 930
    invoke-static/range {v19 .. v31}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 931
    .line 932
    .line 933
    move-result-object v21

    .line 934
    const/16 v28, 0x6

    .line 935
    .line 936
    const/16 v29, 0x1fa

    .line 937
    .line 938
    const-string v19, "Decline"

    .line 939
    .line 940
    const/16 v20, 0x0

    .line 941
    .line 942
    const/16 v22, 0x0

    .line 943
    .line 944
    const/16 v23, 0x0

    .line 945
    .line 946
    const/16 v24, 0x0

    .line 947
    .line 948
    const/16 v25, 0x0

    .line 949
    .line 950
    const/16 v26, 0x0

    .line 951
    .line 952
    move-object/from16 v27, v1

    .line 953
    .line 954
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 958
    .line 959
    .line 960
    goto :goto_c

    .line 961
    :cond_a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 962
    .line 963
    .line 964
    :goto_c
    return-object v18

    .line 965
    :pswitch_4
    move-object/from16 v0, p1

    .line 966
    .line 967
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 968
    .line 969
    move-object/from16 v1, p2

    .line 970
    .line 971
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 972
    .line 973
    move-object/from16 v4, p3

    .line 974
    .line 975
    check-cast v4, Ljava/lang/Integer;

    .line 976
    .line 977
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 978
    .line 979
    .line 980
    move-result v4

    .line 981
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 982
    .line 983
    .line 984
    and-int/lit8 v0, v4, 0x11

    .line 985
    .line 986
    if-eq v0, v9, :cond_b

    .line 987
    .line 988
    move v0, v10

    .line 989
    goto :goto_d

    .line 990
    :cond_b
    const/4 v0, 0x0

    .line 991
    :goto_d
    and-int/2addr v4, v10

    .line 992
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 993
    .line 994
    invoke-virtual {v1, v4, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 995
    .line 996
    .line 997
    move-result v0

    .line 998
    if-eqz v0, :cond_e

    .line 999
    .line 1000
    invoke-static/range {v16 .. v16}, Landroidx/compose/foundation/layout/Arrangement;->e(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 1005
    .line 1006
    const/16 v5, 0x36

    .line 1007
    .line 1008
    invoke-static {v0, v4, v1, v5}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    iget-wide v4, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1013
    .line 1014
    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    .line 1015
    .line 1016
    .line 1017
    move-result v4

    .line 1018
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v5

    .line 1022
    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v6

    .line 1026
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1027
    .line 1028
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1032
    .line 1033
    .line 1034
    iget-boolean v7, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1035
    .line 1036
    if-eqz v7, :cond_c

    .line 1037
    .line 1038
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1039
    .line 1040
    .line 1041
    goto :goto_e

    .line 1042
    :cond_c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1043
    .line 1044
    .line 1045
    :goto_e
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1046
    .line 1047
    .line 1048
    invoke-static {v1, v5, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1049
    .line 1050
    .line 1051
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v0

    .line 1055
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1056
    .line 1057
    .line 1058
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-static {v1, v6, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1062
    .line 1063
    .line 1064
    const/high16 v0, 0x41a00000    # 20.0f

    .line 1065
    .line 1066
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->k(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v21

    .line 1070
    sget-object v0, Landroidx/compose/material/icons/rounded/CheckKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1071
    .line 1072
    if-eqz v0, :cond_d

    .line 1073
    .line 1074
    :goto_f
    move-object/from16 v19, v0

    .line 1075
    .line 1076
    goto/16 :goto_10

    .line 1077
    .line 1078
    :cond_d
    new-instance v22, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 1079
    .line 1080
    const/16 v30, 0x0

    .line 1081
    .line 1082
    const/16 v32, 0x60

    .line 1083
    .line 1084
    const-string v23, "Rounded.Check"

    .line 1085
    .line 1086
    const/high16 v24, 0x41c00000    # 24.0f

    .line 1087
    .line 1088
    const/high16 v25, 0x41c00000    # 24.0f

    .line 1089
    .line 1090
    const/high16 v26, 0x41c00000    # 24.0f

    .line 1091
    .line 1092
    const/high16 v27, 0x41c00000    # 24.0f

    .line 1093
    .line 1094
    const-wide/16 v28, 0x0

    .line 1095
    .line 1096
    const/16 v31, 0x0

    .line 1097
    .line 1098
    invoke-direct/range {v22 .. v32}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 1099
    .line 1100
    .line 1101
    move-object/from16 v0, v22

    .line 1102
    .line 1103
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 1104
    .line 1105
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 1106
    .line 1107
    sget-wide v4, Landroidx/compose/ui/graphics/Color;->b:J

    .line 1108
    .line 1109
    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 1110
    .line 1111
    .line 1112
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 1113
    .line 1114
    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 1115
    .line 1116
    .line 1117
    const/high16 v4, 0x41100000    # 9.0f

    .line 1118
    .line 1119
    const v5, 0x41815c29    # 16.17f

    .line 1120
    .line 1121
    .line 1122
    invoke-virtual {v11, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 1123
    .line 1124
    .line 1125
    const v6, 0x40b0f5c3    # 5.53f

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v11, v6, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1129
    .line 1130
    .line 1131
    const v16, -0x404b851f    # -1.41f

    .line 1132
    .line 1133
    .line 1134
    const/16 v17, 0x0

    .line 1135
    .line 1136
    const v12, -0x413851ec    # -0.39f

    .line 1137
    .line 1138
    .line 1139
    const v13, -0x413851ec    # -0.39f

    .line 1140
    .line 1141
    .line 1142
    const v14, -0x407d70a4    # -1.02f

    .line 1143
    .line 1144
    .line 1145
    const v15, -0x413851ec    # -0.39f

    .line 1146
    .line 1147
    .line 1148
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1149
    .line 1150
    .line 1151
    const/16 v16, 0x0

    .line 1152
    .line 1153
    const v17, 0x3fb47ae1    # 1.41f

    .line 1154
    .line 1155
    .line 1156
    const v13, 0x3ec7ae14    # 0.39f

    .line 1157
    .line 1158
    .line 1159
    const v14, -0x413851ec    # -0.39f

    .line 1160
    .line 1161
    .line 1162
    const v15, 0x3f828f5c    # 1.02f

    .line 1163
    .line 1164
    .line 1165
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1166
    .line 1167
    .line 1168
    const v3, 0x4085c28f    # 4.18f

    .line 1169
    .line 1170
    .line 1171
    invoke-virtual {v11, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1172
    .line 1173
    .line 1174
    const v16, 0x3fb47ae1    # 1.41f

    .line 1175
    .line 1176
    .line 1177
    const/16 v17, 0x0

    .line 1178
    .line 1179
    const v12, 0x3ec7ae14    # 0.39f

    .line 1180
    .line 1181
    .line 1182
    const v14, 0x3f828f5c    # 1.02f

    .line 1183
    .line 1184
    .line 1185
    const v15, 0x3ec7ae14    # 0.39f

    .line 1186
    .line 1187
    .line 1188
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1189
    .line 1190
    .line 1191
    const v3, 0x41a251ec    # 20.29f

    .line 1192
    .line 1193
    .line 1194
    const v6, 0x40f6b852    # 7.71f

    .line 1195
    .line 1196
    .line 1197
    invoke-virtual {v11, v3, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1198
    .line 1199
    .line 1200
    const/16 v16, 0x0

    .line 1201
    .line 1202
    const v17, -0x404b851f    # -1.41f

    .line 1203
    .line 1204
    .line 1205
    const v13, -0x413851ec    # -0.39f

    .line 1206
    .line 1207
    .line 1208
    const v14, 0x3ec7ae14    # 0.39f

    .line 1209
    .line 1210
    .line 1211
    const v15, -0x407d70a4    # -1.02f

    .line 1212
    .line 1213
    .line 1214
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1215
    .line 1216
    .line 1217
    const v16, -0x404b851f    # -1.41f

    .line 1218
    .line 1219
    .line 1220
    const/16 v17, 0x0

    .line 1221
    .line 1222
    const v12, -0x413851ec    # -0.39f

    .line 1223
    .line 1224
    .line 1225
    const v14, -0x407d70a4    # -1.02f

    .line 1226
    .line 1227
    .line 1228
    const v15, -0x413851ec    # -0.39f

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1232
    .line 1233
    .line 1234
    invoke-virtual {v11, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 1235
    .line 1236
    .line 1237
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1238
    .line 1239
    .line 1240
    iget-object v3, v11, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1241
    .line 1242
    invoke-static {v0, v3, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1243
    .line 1244
    .line 1245
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v0

    .line 1249
    sput-object v0, Landroidx/compose/material/icons/rounded/CheckKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1250
    .line 1251
    goto/16 :goto_f

    .line 1252
    .line 1253
    :goto_10
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1254
    .line 1255
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v2

    .line 1259
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1260
    .line 1261
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 1262
    .line 1263
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v22

    .line 1267
    const/16 v24, 0x1b0

    .line 1268
    .line 1269
    const/16 v25, 0x38

    .line 1270
    .line 1271
    const-string v20, "Accept"

    .line 1272
    .line 1273
    move-object/from16 v23, v1

    .line 1274
    .line 1275
    invoke-static/range {v19 .. v25}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 1276
    .line 1277
    .line 1278
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1279
    .line 1280
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1281
    .line 1282
    .line 1283
    move-result-object v2

    .line 1284
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1285
    .line 1286
    iget-object v2, v2, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1287
    .line 1288
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v0

    .line 1292
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1293
    .line 1294
    iget-wide v3, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 1295
    .line 1296
    const/16 v0, 0xe

    .line 1297
    .line 1298
    invoke-static {v0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1299
    .line 1300
    .line 1301
    move-result-wide v22

    .line 1302
    sget-object v24, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 1303
    .line 1304
    const/16 v30, 0x0

    .line 1305
    .line 1306
    const v31, 0xfffff8

    .line 1307
    .line 1308
    .line 1309
    const-wide/16 v25, 0x0

    .line 1310
    .line 1311
    const-wide/16 v27, 0x0

    .line 1312
    .line 1313
    const/16 v29, 0x0

    .line 1314
    .line 1315
    move-object/from16 v19, v2

    .line 1316
    .line 1317
    move-wide/from16 v20, v3

    .line 1318
    .line 1319
    invoke-static/range {v19 .. v31}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1320
    .line 1321
    .line 1322
    move-result-object v21

    .line 1323
    const/16 v28, 0x6

    .line 1324
    .line 1325
    const/16 v29, 0x1fa

    .line 1326
    .line 1327
    const-string v19, "Accept"

    .line 1328
    .line 1329
    const/16 v20, 0x0

    .line 1330
    .line 1331
    const/16 v22, 0x0

    .line 1332
    .line 1333
    const/16 v23, 0x0

    .line 1334
    .line 1335
    const/16 v24, 0x0

    .line 1336
    .line 1337
    const/16 v25, 0x0

    .line 1338
    .line 1339
    const/16 v26, 0x0

    .line 1340
    .line 1341
    move-object/from16 v27, v1

    .line 1342
    .line 1343
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1344
    .line 1345
    .line 1346
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1347
    .line 1348
    .line 1349
    goto :goto_11

    .line 1350
    :cond_e
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1351
    .line 1352
    .line 1353
    :goto_11
    return-object v18

    .line 1354
    :pswitch_5
    move-object/from16 v0, p1

    .line 1355
    .line 1356
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1357
    .line 1358
    move-object/from16 v1, p2

    .line 1359
    .line 1360
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1361
    .line 1362
    move-object/from16 v2, p3

    .line 1363
    .line 1364
    check-cast v2, Ljava/lang/Integer;

    .line 1365
    .line 1366
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1367
    .line 1368
    .line 1369
    move-result v2

    .line 1370
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1371
    .line 1372
    .line 1373
    and-int/lit8 v0, v2, 0x11

    .line 1374
    .line 1375
    if-eq v0, v9, :cond_f

    .line 1376
    .line 1377
    move v0, v10

    .line 1378
    goto :goto_12

    .line 1379
    :cond_f
    const/4 v0, 0x0

    .line 1380
    :goto_12
    and-int/2addr v2, v10

    .line 1381
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1382
    .line 1383
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1384
    .line 1385
    .line 1386
    move-result v0

    .line 1387
    if-eqz v0, :cond_10

    .line 1388
    .line 1389
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1390
    .line 1391
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1392
    .line 1393
    .line 1394
    move-result-object v0

    .line 1395
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1396
    .line 1397
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1398
    .line 1399
    sget-object v2, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1400
    .line 1401
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v2

    .line 1405
    check-cast v2, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1406
    .line 1407
    iget-wide v2, v2, Lnet/blip/android/ui/androidtheme/AndroidColors;->b:J

    .line 1408
    .line 1409
    invoke-static {v9}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1410
    .line 1411
    .line 1412
    move-result-wide v22

    .line 1413
    sget-object v24, Landroidx/compose/ui/text/font/FontWeight;->s:Landroidx/compose/ui/text/font/FontWeight;

    .line 1414
    .line 1415
    const/16 v30, 0x0

    .line 1416
    .line 1417
    const v31, 0xfffff8

    .line 1418
    .line 1419
    .line 1420
    const-wide/16 v25, 0x0

    .line 1421
    .line 1422
    const-wide/16 v27, 0x0

    .line 1423
    .line 1424
    const/16 v29, 0x0

    .line 1425
    .line 1426
    move-object/from16 v19, v0

    .line 1427
    .line 1428
    move-wide/from16 v20, v2

    .line 1429
    .line 1430
    invoke-static/range {v19 .. v31}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v21

    .line 1434
    const/16 v28, 0x6

    .line 1435
    .line 1436
    const/16 v29, 0x1fa

    .line 1437
    .line 1438
    const-string v19, "Skip"

    .line 1439
    .line 1440
    const/16 v20, 0x0

    .line 1441
    .line 1442
    const/16 v22, 0x0

    .line 1443
    .line 1444
    const/16 v23, 0x0

    .line 1445
    .line 1446
    const/16 v24, 0x0

    .line 1447
    .line 1448
    const/16 v25, 0x0

    .line 1449
    .line 1450
    const/16 v26, 0x0

    .line 1451
    .line 1452
    move-object/from16 v27, v1

    .line 1453
    .line 1454
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1455
    .line 1456
    .line 1457
    goto :goto_13

    .line 1458
    :cond_10
    move-object/from16 v27, v1

    .line 1459
    .line 1460
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1461
    .line 1462
    .line 1463
    :goto_13
    return-object v18

    .line 1464
    :pswitch_6
    move-object/from16 v0, p1

    .line 1465
    .line 1466
    check-cast v0, Lnet/blip/android/ui/navigation/AuthScope;

    .line 1467
    .line 1468
    move-object/from16 v1, p2

    .line 1469
    .line 1470
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1471
    .line 1472
    move-object/from16 v2, p3

    .line 1473
    .line 1474
    check-cast v2, Ljava/lang/Integer;

    .line 1475
    .line 1476
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1477
    .line 1478
    .line 1479
    move-result v2

    .line 1480
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1481
    .line 1482
    .line 1483
    and-int/lit8 v3, v2, 0x6

    .line 1484
    .line 1485
    if-nez v3, :cond_13

    .line 1486
    .line 1487
    and-int/lit8 v3, v2, 0x8

    .line 1488
    .line 1489
    if-nez v3, :cond_11

    .line 1490
    .line 1491
    move-object v3, v1

    .line 1492
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 1493
    .line 1494
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1495
    .line 1496
    .line 1497
    move-result v3

    .line 1498
    goto :goto_14

    .line 1499
    :cond_11
    move-object v3, v1

    .line 1500
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 1501
    .line 1502
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1503
    .line 1504
    .line 1505
    move-result v3

    .line 1506
    :goto_14
    if-eqz v3, :cond_12

    .line 1507
    .line 1508
    const/4 v8, 0x4

    .line 1509
    goto :goto_15

    .line 1510
    :cond_12
    const/4 v8, 0x2

    .line 1511
    :goto_15
    or-int/2addr v2, v8

    .line 1512
    :cond_13
    and-int/lit8 v3, v2, 0x13

    .line 1513
    .line 1514
    if-eq v3, v7, :cond_14

    .line 1515
    .line 1516
    move v3, v10

    .line 1517
    goto :goto_16

    .line 1518
    :cond_14
    const/4 v3, 0x0

    .line 1519
    :goto_16
    and-int/2addr v2, v10

    .line 1520
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1521
    .line 1522
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1523
    .line 1524
    .line 1525
    move-result v2

    .line 1526
    if-eqz v2, :cond_15

    .line 1527
    .line 1528
    new-instance v2, Lz5;

    .line 1529
    .line 1530
    invoke-direct {v2, v0, v10}, Lz5;-><init>(Lnet/blip/android/ui/navigation/AuthScope;I)V

    .line 1531
    .line 1532
    .line 1533
    const v0, -0x125cf56c

    .line 1534
    .line 1535
    .line 1536
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1537
    .line 1538
    .line 1539
    move-result-object v0

    .line 1540
    const/4 v2, 0x6

    .line 1541
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/navigation/NavigationRootKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1542
    .line 1543
    .line 1544
    goto :goto_17

    .line 1545
    :cond_15
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1546
    .line 1547
    .line 1548
    :goto_17
    return-object v18

    .line 1549
    :pswitch_7
    move-object/from16 v0, p1

    .line 1550
    .line 1551
    check-cast v0, Lnet/blip/android/ui/navigation/AuthScope;

    .line 1552
    .line 1553
    move-object/from16 v1, p2

    .line 1554
    .line 1555
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1556
    .line 1557
    move-object/from16 v2, p3

    .line 1558
    .line 1559
    check-cast v2, Ljava/lang/Integer;

    .line 1560
    .line 1561
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1562
    .line 1563
    .line 1564
    move-result v2

    .line 1565
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1566
    .line 1567
    .line 1568
    and-int/lit8 v3, v2, 0x6

    .line 1569
    .line 1570
    if-nez v3, :cond_18

    .line 1571
    .line 1572
    and-int/lit8 v3, v2, 0x8

    .line 1573
    .line 1574
    if-nez v3, :cond_16

    .line 1575
    .line 1576
    move-object v3, v1

    .line 1577
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 1578
    .line 1579
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 1580
    .line 1581
    .line 1582
    move-result v3

    .line 1583
    goto :goto_18

    .line 1584
    :cond_16
    move-object v3, v1

    .line 1585
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 1586
    .line 1587
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 1588
    .line 1589
    .line 1590
    move-result v3

    .line 1591
    :goto_18
    if-eqz v3, :cond_17

    .line 1592
    .line 1593
    const/4 v8, 0x4

    .line 1594
    goto :goto_19

    .line 1595
    :cond_17
    const/4 v8, 0x2

    .line 1596
    :goto_19
    or-int/2addr v2, v8

    .line 1597
    :cond_18
    and-int/lit8 v3, v2, 0x13

    .line 1598
    .line 1599
    if-eq v3, v7, :cond_19

    .line 1600
    .line 1601
    move v3, v10

    .line 1602
    goto :goto_1a

    .line 1603
    :cond_19
    const/4 v3, 0x0

    .line 1604
    :goto_1a
    and-int/2addr v2, v10

    .line 1605
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1606
    .line 1607
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1608
    .line 1609
    .line 1610
    move-result v2

    .line 1611
    if-eqz v2, :cond_1a

    .line 1612
    .line 1613
    new-instance v2, Lz5;

    .line 1614
    .line 1615
    const/4 v3, 0x0

    .line 1616
    invoke-direct {v2, v0, v3}, Lz5;-><init>(Lnet/blip/android/ui/navigation/AuthScope;I)V

    .line 1617
    .line 1618
    .line 1619
    const v0, -0x499a1d2d

    .line 1620
    .line 1621
    .line 1622
    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v0

    .line 1626
    const/4 v2, 0x6

    .line 1627
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/navigation/NavigationRootKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 1628
    .line 1629
    .line 1630
    goto :goto_1b

    .line 1631
    :cond_1a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1632
    .line 1633
    .line 1634
    :goto_1b
    return-object v18

    .line 1635
    :pswitch_8
    move-object/from16 v0, p1

    .line 1636
    .line 1637
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1638
    .line 1639
    move-object/from16 v1, p2

    .line 1640
    .line 1641
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1642
    .line 1643
    move-object/from16 v2, p3

    .line 1644
    .line 1645
    check-cast v2, Ljava/lang/Integer;

    .line 1646
    .line 1647
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1648
    .line 1649
    .line 1650
    move-result v2

    .line 1651
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1652
    .line 1653
    .line 1654
    and-int/lit8 v0, v2, 0x11

    .line 1655
    .line 1656
    if-eq v0, v9, :cond_1b

    .line 1657
    .line 1658
    move v0, v10

    .line 1659
    goto :goto_1c

    .line 1660
    :cond_1b
    const/4 v0, 0x0

    .line 1661
    :goto_1c
    and-int/2addr v2, v10

    .line 1662
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1663
    .line 1664
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1665
    .line 1666
    .line 1667
    move-result v0

    .line 1668
    if-eqz v0, :cond_1c

    .line 1669
    .line 1670
    const-string v0, "Settings"

    .line 1671
    .line 1672
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 1673
    .line 1674
    .line 1675
    goto :goto_1d

    .line 1676
    :cond_1c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1677
    .line 1678
    .line 1679
    :goto_1d
    return-object v18

    .line 1680
    :pswitch_9
    move-object/from16 v0, p1

    .line 1681
    .line 1682
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1683
    .line 1684
    move-object/from16 v1, p2

    .line 1685
    .line 1686
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1687
    .line 1688
    move-object/from16 v2, p3

    .line 1689
    .line 1690
    check-cast v2, Ljava/lang/Integer;

    .line 1691
    .line 1692
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1693
    .line 1694
    .line 1695
    move-result v2

    .line 1696
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1697
    .line 1698
    .line 1699
    and-int/lit8 v0, v2, 0x11

    .line 1700
    .line 1701
    if-eq v0, v9, :cond_1d

    .line 1702
    .line 1703
    move v0, v10

    .line 1704
    goto :goto_1e

    .line 1705
    :cond_1d
    const/4 v0, 0x0

    .line 1706
    :goto_1e
    and-int/2addr v2, v10

    .line 1707
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1708
    .line 1709
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1710
    .line 1711
    .line 1712
    move-result v0

    .line 1713
    if-eqz v0, :cond_1e

    .line 1714
    .line 1715
    const-string v0, "Feedback"

    .line 1716
    .line 1717
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 1718
    .line 1719
    .line 1720
    goto :goto_1f

    .line 1721
    :cond_1e
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1722
    .line 1723
    .line 1724
    :goto_1f
    return-object v18

    .line 1725
    :pswitch_a
    move-object/from16 v0, p1

    .line 1726
    .line 1727
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1728
    .line 1729
    move-object/from16 v1, p2

    .line 1730
    .line 1731
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1732
    .line 1733
    move-object/from16 v2, p3

    .line 1734
    .line 1735
    check-cast v2, Ljava/lang/Integer;

    .line 1736
    .line 1737
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1738
    .line 1739
    .line 1740
    move-result v2

    .line 1741
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1742
    .line 1743
    .line 1744
    and-int/lit8 v0, v2, 0x11

    .line 1745
    .line 1746
    if-eq v0, v9, :cond_1f

    .line 1747
    .line 1748
    move v0, v10

    .line 1749
    goto :goto_20

    .line 1750
    :cond_1f
    const/4 v0, 0x0

    .line 1751
    :goto_20
    and-int/2addr v2, v10

    .line 1752
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1753
    .line 1754
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1755
    .line 1756
    .line 1757
    move-result v0

    .line 1758
    if-eqz v0, :cond_20

    .line 1759
    .line 1760
    const-string v0, "Delete all transfers"

    .line 1761
    .line 1762
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 1763
    .line 1764
    .line 1765
    goto :goto_21

    .line 1766
    :cond_20
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1767
    .line 1768
    .line 1769
    :goto_21
    return-object v18

    .line 1770
    :pswitch_b
    move-object/from16 v0, p1

    .line 1771
    .line 1772
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1773
    .line 1774
    move-object/from16 v1, p2

    .line 1775
    .line 1776
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1777
    .line 1778
    move-object/from16 v2, p3

    .line 1779
    .line 1780
    check-cast v2, Ljava/lang/Integer;

    .line 1781
    .line 1782
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1783
    .line 1784
    .line 1785
    move-result v2

    .line 1786
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1787
    .line 1788
    .line 1789
    and-int/lit8 v0, v2, 0x11

    .line 1790
    .line 1791
    if-eq v0, v9, :cond_21

    .line 1792
    .line 1793
    move v0, v10

    .line 1794
    goto :goto_22

    .line 1795
    :cond_21
    const/4 v0, 0x0

    .line 1796
    :goto_22
    and-int/2addr v2, v10

    .line 1797
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1798
    .line 1799
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1800
    .line 1801
    .line 1802
    move-result v0

    .line 1803
    if-eqz v0, :cond_22

    .line 1804
    .line 1805
    const-string v0, "Send audio"

    .line 1806
    .line 1807
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 1808
    .line 1809
    .line 1810
    goto :goto_23

    .line 1811
    :cond_22
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1812
    .line 1813
    .line 1814
    :goto_23
    return-object v18

    .line 1815
    :pswitch_c
    move-object/from16 v0, p1

    .line 1816
    .line 1817
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1818
    .line 1819
    move-object/from16 v1, p2

    .line 1820
    .line 1821
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1822
    .line 1823
    move-object/from16 v2, p3

    .line 1824
    .line 1825
    check-cast v2, Ljava/lang/Integer;

    .line 1826
    .line 1827
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1828
    .line 1829
    .line 1830
    move-result v2

    .line 1831
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1832
    .line 1833
    .line 1834
    and-int/lit8 v0, v2, 0x11

    .line 1835
    .line 1836
    if-eq v0, v9, :cond_23

    .line 1837
    .line 1838
    move v0, v10

    .line 1839
    goto :goto_24

    .line 1840
    :cond_23
    const/4 v0, 0x0

    .line 1841
    :goto_24
    and-int/2addr v2, v10

    .line 1842
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1843
    .line 1844
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1845
    .line 1846
    .line 1847
    move-result v0

    .line 1848
    if-eqz v0, :cond_24

    .line 1849
    .line 1850
    const-string v0, "Capture a photo"

    .line 1851
    .line 1852
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 1853
    .line 1854
    .line 1855
    goto :goto_25

    .line 1856
    :cond_24
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1857
    .line 1858
    .line 1859
    :goto_25
    return-object v18

    .line 1860
    :pswitch_d
    move-object/from16 v0, p1

    .line 1861
    .line 1862
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1863
    .line 1864
    move-object/from16 v1, p2

    .line 1865
    .line 1866
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1867
    .line 1868
    move-object/from16 v2, p3

    .line 1869
    .line 1870
    check-cast v2, Ljava/lang/Integer;

    .line 1871
    .line 1872
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1873
    .line 1874
    .line 1875
    move-result v2

    .line 1876
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1877
    .line 1878
    .line 1879
    and-int/lit8 v0, v2, 0x11

    .line 1880
    .line 1881
    if-eq v0, v9, :cond_25

    .line 1882
    .line 1883
    move v0, v10

    .line 1884
    goto :goto_26

    .line 1885
    :cond_25
    const/4 v0, 0x0

    .line 1886
    :goto_26
    and-int/2addr v2, v10

    .line 1887
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1888
    .line 1889
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1890
    .line 1891
    .line 1892
    move-result v0

    .line 1893
    if-eqz v0, :cond_26

    .line 1894
    .line 1895
    const-string v0, "Send a folder"

    .line 1896
    .line 1897
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 1898
    .line 1899
    .line 1900
    goto :goto_27

    .line 1901
    :cond_26
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1902
    .line 1903
    .line 1904
    :goto_27
    return-object v18

    .line 1905
    :pswitch_e
    move-object/from16 v0, p1

    .line 1906
    .line 1907
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1908
    .line 1909
    move-object/from16 v1, p2

    .line 1910
    .line 1911
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1912
    .line 1913
    move-object/from16 v2, p3

    .line 1914
    .line 1915
    check-cast v2, Ljava/lang/Integer;

    .line 1916
    .line 1917
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1918
    .line 1919
    .line 1920
    move-result v2

    .line 1921
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1922
    .line 1923
    .line 1924
    and-int/lit8 v0, v2, 0x11

    .line 1925
    .line 1926
    if-eq v0, v9, :cond_27

    .line 1927
    .line 1928
    move v0, v10

    .line 1929
    goto :goto_28

    .line 1930
    :cond_27
    const/4 v0, 0x0

    .line 1931
    :goto_28
    and-int/2addr v2, v10

    .line 1932
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1933
    .line 1934
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1935
    .line 1936
    .line 1937
    move-result v0

    .line 1938
    if-eqz v0, :cond_28

    .line 1939
    .line 1940
    const-string v0, "Send files"

    .line 1941
    .line 1942
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 1943
    .line 1944
    .line 1945
    goto :goto_29

    .line 1946
    :cond_28
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1947
    .line 1948
    .line 1949
    :goto_29
    return-object v18

    .line 1950
    :pswitch_f
    move-object/from16 v0, p1

    .line 1951
    .line 1952
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1953
    .line 1954
    move-object/from16 v1, p2

    .line 1955
    .line 1956
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 1957
    .line 1958
    move-object/from16 v2, p3

    .line 1959
    .line 1960
    check-cast v2, Ljava/lang/Integer;

    .line 1961
    .line 1962
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 1963
    .line 1964
    .line 1965
    move-result v2

    .line 1966
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1967
    .line 1968
    .line 1969
    and-int/lit8 v0, v2, 0x11

    .line 1970
    .line 1971
    if-eq v0, v9, :cond_29

    .line 1972
    .line 1973
    move v0, v10

    .line 1974
    goto :goto_2a

    .line 1975
    :cond_29
    const/4 v0, 0x0

    .line 1976
    :goto_2a
    and-int/2addr v2, v10

    .line 1977
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 1978
    .line 1979
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1980
    .line 1981
    .line 1982
    move-result v0

    .line 1983
    if-eqz v0, :cond_2a

    .line 1984
    .line 1985
    const-string v0, "Send photos"

    .line 1986
    .line 1987
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 1988
    .line 1989
    .line 1990
    goto :goto_2b

    .line 1991
    :cond_2a
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1992
    .line 1993
    .line 1994
    :goto_2b
    return-object v18

    .line 1995
    :pswitch_10
    move-object/from16 v0, p1

    .line 1996
    .line 1997
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 1998
    .line 1999
    move-object/from16 v1, p2

    .line 2000
    .line 2001
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2002
    .line 2003
    move-object/from16 v2, p3

    .line 2004
    .line 2005
    check-cast v2, Ljava/lang/Integer;

    .line 2006
    .line 2007
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2008
    .line 2009
    .line 2010
    move-result v2

    .line 2011
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2012
    .line 2013
    .line 2014
    and-int/lit8 v0, v2, 0x11

    .line 2015
    .line 2016
    if-eq v0, v9, :cond_2b

    .line 2017
    .line 2018
    move v0, v10

    .line 2019
    goto :goto_2c

    .line 2020
    :cond_2b
    const/4 v0, 0x0

    .line 2021
    :goto_2c
    and-int/2addr v2, v10

    .line 2022
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2023
    .line 2024
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2025
    .line 2026
    .line 2027
    move-result v0

    .line 2028
    if-eqz v0, :cond_2c

    .line 2029
    .line 2030
    invoke-static {v6, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2031
    .line 2032
    .line 2033
    goto :goto_2d

    .line 2034
    :cond_2c
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2035
    .line 2036
    .line 2037
    :goto_2d
    return-object v18

    .line 2038
    :pswitch_11
    move-object/from16 v0, p1

    .line 2039
    .line 2040
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2041
    .line 2042
    move-object/from16 v1, p2

    .line 2043
    .line 2044
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2045
    .line 2046
    move-object/from16 v2, p3

    .line 2047
    .line 2048
    check-cast v2, Ljava/lang/Integer;

    .line 2049
    .line 2050
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2051
    .line 2052
    .line 2053
    move-result v2

    .line 2054
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2055
    .line 2056
    .line 2057
    and-int/lit8 v0, v2, 0x11

    .line 2058
    .line 2059
    if-eq v0, v9, :cond_2d

    .line 2060
    .line 2061
    move v0, v10

    .line 2062
    goto :goto_2e

    .line 2063
    :cond_2d
    const/4 v0, 0x0

    .line 2064
    :goto_2e
    and-int/2addr v2, v10

    .line 2065
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2066
    .line 2067
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2068
    .line 2069
    .line 2070
    move-result v0

    .line 2071
    if-eqz v0, :cond_2e

    .line 2072
    .line 2073
    const-string v0, "Share in other app"

    .line 2074
    .line 2075
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2076
    .line 2077
    .line 2078
    goto :goto_2f

    .line 2079
    :cond_2e
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2080
    .line 2081
    .line 2082
    :goto_2f
    return-object v18

    .line 2083
    :pswitch_12
    move-object/from16 v0, p1

    .line 2084
    .line 2085
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2086
    .line 2087
    move-object/from16 v1, p2

    .line 2088
    .line 2089
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2090
    .line 2091
    move-object/from16 v2, p3

    .line 2092
    .line 2093
    check-cast v2, Ljava/lang/Integer;

    .line 2094
    .line 2095
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2096
    .line 2097
    .line 2098
    move-result v2

    .line 2099
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2100
    .line 2101
    .line 2102
    and-int/lit8 v0, v2, 0x11

    .line 2103
    .line 2104
    if-eq v0, v9, :cond_2f

    .line 2105
    .line 2106
    move v0, v10

    .line 2107
    goto :goto_30

    .line 2108
    :cond_2f
    const/4 v0, 0x0

    .line 2109
    :goto_30
    and-int/2addr v2, v10

    .line 2110
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2111
    .line 2112
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2113
    .line 2114
    .line 2115
    move-result v0

    .line 2116
    if-eqz v0, :cond_30

    .line 2117
    .line 2118
    const-string v0, "Forward"

    .line 2119
    .line 2120
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2121
    .line 2122
    .line 2123
    goto :goto_31

    .line 2124
    :cond_30
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2125
    .line 2126
    .line 2127
    :goto_31
    return-object v18

    .line 2128
    :pswitch_13
    move-object/from16 v0, p1

    .line 2129
    .line 2130
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2131
    .line 2132
    move-object/from16 v1, p2

    .line 2133
    .line 2134
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2135
    .line 2136
    move-object/from16 v2, p3

    .line 2137
    .line 2138
    check-cast v2, Ljava/lang/Integer;

    .line 2139
    .line 2140
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2141
    .line 2142
    .line 2143
    move-result v2

    .line 2144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2145
    .line 2146
    .line 2147
    and-int/lit8 v0, v2, 0x11

    .line 2148
    .line 2149
    if-eq v0, v9, :cond_31

    .line 2150
    .line 2151
    move v0, v10

    .line 2152
    goto :goto_32

    .line 2153
    :cond_31
    const/4 v0, 0x0

    .line 2154
    :goto_32
    and-int/2addr v2, v10

    .line 2155
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2156
    .line 2157
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2158
    .line 2159
    .line 2160
    move-result v0

    .line 2161
    if-eqz v0, :cond_32

    .line 2162
    .line 2163
    const-string v0, "Open"

    .line 2164
    .line 2165
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 2166
    .line 2167
    .line 2168
    goto :goto_33

    .line 2169
    :cond_32
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2170
    .line 2171
    .line 2172
    :goto_33
    return-object v18

    .line 2173
    :pswitch_14
    move-object/from16 v0, p1

    .line 2174
    .line 2175
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 2176
    .line 2177
    move-object/from16 v1, p2

    .line 2178
    .line 2179
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2180
    .line 2181
    move-object/from16 v2, p3

    .line 2182
    .line 2183
    check-cast v2, Ljava/lang/Integer;

    .line 2184
    .line 2185
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2186
    .line 2187
    .line 2188
    move-result v2

    .line 2189
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2190
    .line 2191
    .line 2192
    and-int/lit8 v0, v2, 0x11

    .line 2193
    .line 2194
    if-eq v0, v9, :cond_33

    .line 2195
    .line 2196
    move v0, v10

    .line 2197
    goto :goto_34

    .line 2198
    :cond_33
    const/4 v0, 0x0

    .line 2199
    :goto_34
    and-int/2addr v2, v10

    .line 2200
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2201
    .line 2202
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2203
    .line 2204
    .line 2205
    move-result v0

    .line 2206
    if-eqz v0, :cond_34

    .line 2207
    .line 2208
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 2209
    .line 2210
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v0

    .line 2214
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 2215
    .line 2216
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 2217
    .line 2218
    invoke-static {v9}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 2219
    .line 2220
    .line 2221
    move-result-wide v22

    .line 2222
    const/16 v30, 0x0

    .line 2223
    .line 2224
    const v31, 0xfffffd

    .line 2225
    .line 2226
    .line 2227
    const-wide/16 v20, 0x0

    .line 2228
    .line 2229
    const/16 v24, 0x0

    .line 2230
    .line 2231
    const-wide/16 v25, 0x0

    .line 2232
    .line 2233
    const-wide/16 v27, 0x0

    .line 2234
    .line 2235
    const/16 v29, 0x0

    .line 2236
    .line 2237
    move-object/from16 v19, v0

    .line 2238
    .line 2239
    invoke-static/range {v19 .. v31}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 2240
    .line 2241
    .line 2242
    move-result-object v21

    .line 2243
    const/16 v28, 0x6

    .line 2244
    .line 2245
    const/16 v29, 0x1fa

    .line 2246
    .line 2247
    const-string v19, "Open File"

    .line 2248
    .line 2249
    const/16 v20, 0x0

    .line 2250
    .line 2251
    const/16 v22, 0x0

    .line 2252
    .line 2253
    const/16 v23, 0x0

    .line 2254
    .line 2255
    const/16 v24, 0x0

    .line 2256
    .line 2257
    const/16 v25, 0x0

    .line 2258
    .line 2259
    const/16 v26, 0x0

    .line 2260
    .line 2261
    move-object/from16 v27, v1

    .line 2262
    .line 2263
    invoke-static/range {v19 .. v29}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 2264
    .line 2265
    .line 2266
    goto :goto_35

    .line 2267
    :cond_34
    move-object/from16 v27, v1

    .line 2268
    .line 2269
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2270
    .line 2271
    .line 2272
    :goto_35
    return-object v18

    .line 2273
    :pswitch_15
    move-object/from16 v0, p1

    .line 2274
    .line 2275
    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 2276
    .line 2277
    move-object/from16 v0, p2

    .line 2278
    .line 2279
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 2280
    .line 2281
    move-object/from16 v0, p3

    .line 2282
    .line 2283
    check-cast v0, Ljava/lang/Integer;

    .line 2284
    .line 2285
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2286
    .line 2287
    .line 2288
    return-object v18

    .line 2289
    :pswitch_16
    move-object/from16 v0, p1

    .line 2290
    .line 2291
    check-cast v0, Landroidx/compose/foundation/contextmenu/ContextMenuColors;

    .line 2292
    .line 2293
    move-object/from16 v1, p2

    .line 2294
    .line 2295
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2296
    .line 2297
    move-object/from16 v3, p3

    .line 2298
    .line 2299
    check-cast v3, Ljava/lang/Integer;

    .line 2300
    .line 2301
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 2302
    .line 2303
    .line 2304
    move-result v3

    .line 2305
    and-int/lit8 v4, v3, 0x6

    .line 2306
    .line 2307
    if-nez v4, :cond_36

    .line 2308
    .line 2309
    move-object v4, v1

    .line 2310
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 2311
    .line 2312
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 2313
    .line 2314
    .line 2315
    move-result v4

    .line 2316
    if-eqz v4, :cond_35

    .line 2317
    .line 2318
    const/4 v8, 0x4

    .line 2319
    goto :goto_36

    .line 2320
    :cond_35
    const/4 v8, 0x2

    .line 2321
    :goto_36
    or-int/2addr v3, v8

    .line 2322
    :cond_36
    and-int/lit8 v4, v3, 0x13

    .line 2323
    .line 2324
    if-eq v4, v7, :cond_37

    .line 2325
    .line 2326
    move v4, v10

    .line 2327
    goto :goto_37

    .line 2328
    :cond_37
    const/4 v4, 0x0

    .line 2329
    :goto_37
    and-int/2addr v3, v10

    .line 2330
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2331
    .line 2332
    invoke-virtual {v1, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2333
    .line 2334
    .line 2335
    move-result v3

    .line 2336
    if-eqz v3, :cond_38

    .line 2337
    .line 2338
    sget v3, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->g:F

    .line 2339
    .line 2340
    const/4 v4, 0x0

    .line 2341
    invoke-static {v2, v4, v3, v10}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 2342
    .line 2343
    .line 2344
    move-result-object v2

    .line 2345
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2346
    .line 2347
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2348
    .line 2349
    .line 2350
    move-result-object v2

    .line 2351
    sget v3, Landroidx/compose/foundation/contextmenu/ContextMenuSpec;->f:F

    .line 2352
    .line 2353
    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 2354
    .line 2355
    .line 2356
    move-result-object v2

    .line 2357
    iget-wide v3, v0, Landroidx/compose/foundation/contextmenu/ContextMenuColors;->c:J

    .line 2358
    .line 2359
    sget-object v0, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 2360
    .line 2361
    invoke-static {v2, v3, v4, v0}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 2362
    .line 2363
    .line 2364
    move-result-object v0

    .line 2365
    const/4 v3, 0x0

    .line 2366
    invoke-static {v0, v1, v3}, Landroidx/compose/foundation/layout/BoxKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 2367
    .line 2368
    .line 2369
    goto :goto_38

    .line 2370
    :cond_38
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2371
    .line 2372
    .line 2373
    :goto_38
    return-object v18

    .line 2374
    :pswitch_17
    move-object/from16 v0, p1

    .line 2375
    .line 2376
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    .line 2377
    .line 2378
    move-object/from16 v1, p2

    .line 2379
    .line 2380
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2381
    .line 2382
    move-object/from16 v3, p3

    .line 2383
    .line 2384
    check-cast v3, Ljava/lang/Integer;

    .line 2385
    .line 2386
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 2387
    .line 2388
    .line 2389
    move-result v3

    .line 2390
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2391
    .line 2392
    .line 2393
    and-int/lit8 v0, v3, 0x11

    .line 2394
    .line 2395
    if-eq v0, v9, :cond_39

    .line 2396
    .line 2397
    move v0, v10

    .line 2398
    goto :goto_39

    .line 2399
    :cond_39
    const/4 v0, 0x0

    .line 2400
    :goto_39
    and-int/2addr v3, v10

    .line 2401
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2402
    .line 2403
    invoke-virtual {v1, v3, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2404
    .line 2405
    .line 2406
    move-result v0

    .line 2407
    if-eqz v0, :cond_3d

    .line 2408
    .line 2409
    sget-object v0, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 2410
    .line 2411
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 2412
    .line 2413
    .line 2414
    move-result-object v0

    .line 2415
    check-cast v0, Landroidx/navigation/NavHostController;

    .line 2416
    .line 2417
    const/high16 v3, 0x42400000    # 48.0f

    .line 2418
    .line 2419
    invoke-static {v2, v3, v3}, Landroidx/compose/foundation/layout/PaddingKt;->e(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 2420
    .line 2421
    .line 2422
    move-result-object v19

    .line 2423
    sget-object v2, Landroidx/compose/material/icons/rounded/PersonSearchKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2424
    .line 2425
    if-eqz v2, :cond_3a

    .line 2426
    .line 2427
    :goto_3a
    move-object/from16 v20, v2

    .line 2428
    .line 2429
    goto/16 :goto_3b

    .line 2430
    .line 2431
    :cond_3a
    new-instance v20, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 2432
    .line 2433
    const/16 v28, 0x0

    .line 2434
    .line 2435
    const/16 v30, 0x60

    .line 2436
    .line 2437
    const/16 v29, 0x0

    .line 2438
    .line 2439
    const/high16 v22, 0x41c00000    # 24.0f

    .line 2440
    .line 2441
    const/high16 v23, 0x41c00000    # 24.0f

    .line 2442
    .line 2443
    const/high16 v24, 0x41c00000    # 24.0f

    .line 2444
    .line 2445
    const/high16 v25, 0x41c00000    # 24.0f

    .line 2446
    .line 2447
    const-wide/16 v26, 0x0

    .line 2448
    .line 2449
    const-string v21, "Rounded.PersonSearch"

    .line 2450
    .line 2451
    invoke-direct/range {v20 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 2452
    .line 2453
    .line 2454
    move-object/from16 v2, v20

    .line 2455
    .line 2456
    sget v3, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 2457
    .line 2458
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 2459
    .line 2460
    sget-wide v5, Landroidx/compose/ui/graphics/Color;->b:J

    .line 2461
    .line 2462
    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2463
    .line 2464
    .line 2465
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 2466
    .line 2467
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 2468
    .line 2469
    .line 2470
    const/high16 v8, 0x41200000    # 10.0f

    .line 2471
    .line 2472
    const/high16 v9, 0x41000000    # 8.0f

    .line 2473
    .line 2474
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 2475
    .line 2476
    .line 2477
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 2478
    .line 2479
    const/4 v9, 0x0

    .line 2480
    const/high16 v11, -0x3f800000    # -4.0f

    .line 2481
    .line 2482
    invoke-direct {v8, v11, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    .line 2483
    .line 2484
    .line 2485
    iget-object v9, v7, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 2486
    .line 2487
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2488
    .line 2489
    .line 2490
    const/high16 v8, 0x41000000    # 8.0f

    .line 2491
    .line 2492
    const/high16 v11, 0x40800000    # 4.0f

    .line 2493
    .line 2494
    invoke-virtual {v7, v11, v11, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a(FFF)V

    .line 2495
    .line 2496
    .line 2497
    const/high16 v8, -0x3f000000    # -8.0f

    .line 2498
    .line 2499
    invoke-virtual {v7, v11, v11, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->a(FFF)V

    .line 2500
    .line 2501
    .line 2502
    invoke-static {v2, v9, v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 2503
    .line 2504
    .line 2505
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 2506
    .line 2507
    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2508
    .line 2509
    .line 2510
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 2511
    .line 2512
    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 2513
    .line 2514
    .line 2515
    const v7, 0x4125999a    # 10.35f

    .line 2516
    .line 2517
    .line 2518
    const v8, 0x416028f6    # 14.01f

    .line 2519
    .line 2520
    .line 2521
    invoke-virtual {v11, v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 2522
    .line 2523
    .line 2524
    const/high16 v16, 0x40000000    # 2.0f

    .line 2525
    .line 2526
    const/high16 v17, 0x41900000    # 18.0f

    .line 2527
    .line 2528
    const v12, 0x40f3d70a    # 7.62f

    .line 2529
    .line 2530
    .line 2531
    const v13, 0x415e8f5c    # 13.91f

    .line 2532
    .line 2533
    .line 2534
    const/high16 v14, 0x40000000    # 2.0f

    .line 2535
    .line 2536
    const v15, 0x417451ec    # 15.27f

    .line 2537
    .line 2538
    .line 2539
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 2540
    .line 2541
    .line 2542
    const/high16 v7, 0x3f800000    # 1.0f

    .line 2543
    .line 2544
    invoke-virtual {v11, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 2545
    .line 2546
    .line 2547
    const/high16 v16, 0x3f800000    # 1.0f

    .line 2548
    .line 2549
    const/high16 v17, 0x3f800000    # 1.0f

    .line 2550
    .line 2551
    const/4 v12, 0x0

    .line 2552
    const v13, 0x3f0ccccd    # 0.55f

    .line 2553
    .line 2554
    .line 2555
    const v14, 0x3ee66666    # 0.45f

    .line 2556
    .line 2557
    .line 2558
    const/high16 v15, 0x3f800000    # 1.0f

    .line 2559
    .line 2560
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2561
    .line 2562
    .line 2563
    const v7, 0x4108a3d7    # 8.54f

    .line 2564
    .line 2565
    .line 2566
    invoke-virtual {v11, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 2567
    .line 2568
    .line 2569
    const v16, 0x4125999a    # 10.35f

    .line 2570
    .line 2571
    .line 2572
    const v17, 0x416028f6    # 14.01f

    .line 2573
    .line 2574
    .line 2575
    const v12, 0x41111eb8    # 9.07f

    .line 2576
    .line 2577
    .line 2578
    const v13, 0x4189eb85    # 17.24f

    .line 2579
    .line 2580
    .line 2581
    const v14, 0x4124f5c3    # 10.31f

    .line 2582
    .line 2583
    .line 2584
    const v15, 0x4161c28f    # 14.11f

    .line 2585
    .line 2586
    .line 2587
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 2588
    .line 2589
    .line 2590
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 2591
    .line 2592
    .line 2593
    iget-object v7, v11, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 2594
    .line 2595
    invoke-static {v2, v7, v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 2596
    .line 2597
    .line 2598
    new-instance v3, Landroidx/compose/ui/graphics/SolidColor;

    .line 2599
    .line 2600
    invoke-direct {v3, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 2601
    .line 2602
    .line 2603
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 2604
    .line 2605
    invoke-direct {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 2606
    .line 2607
    .line 2608
    const v5, 0x419028f6    # 18.02f

    .line 2609
    .line 2610
    .line 2611
    const v6, 0x419b70a4    # 19.43f

    .line 2612
    .line 2613
    .line 2614
    invoke-virtual {v11, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 2615
    .line 2616
    .line 2617
    const v16, 0x3ef5c28f    # 0.48f

    .line 2618
    .line 2619
    .line 2620
    const v17, -0x3fcb851f    # -2.82f

    .line 2621
    .line 2622
    .line 2623
    const v12, 0x3ef0a3d7    # 0.47f

    .line 2624
    .line 2625
    .line 2626
    const v13, -0x40b33333    # -0.8f

    .line 2627
    .line 2628
    .line 2629
    const v14, 0x3f333333    # 0.7f

    .line 2630
    .line 2631
    .line 2632
    const v15, -0x401d70a4    # -1.77f

    .line 2633
    .line 2634
    .line 2635
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2636
    .line 2637
    .line 2638
    const v16, -0x3fa7ae14    # -3.38f

    .line 2639
    .line 2640
    .line 2641
    const v17, -0x3fb5c28f    # -3.16f

    .line 2642
    .line 2643
    .line 2644
    const v12, -0x4151eb85    # -0.34f

    .line 2645
    .line 2646
    .line 2647
    const v13, -0x402e147b    # -1.64f

    .line 2648
    .line 2649
    .line 2650
    const v14, -0x4023d70a    # -1.72f

    .line 2651
    .line 2652
    .line 2653
    const v15, -0x3fc33333    # -2.95f

    .line 2654
    .line 2655
    .line 2656
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2657
    .line 2658
    .line 2659
    const/high16 v16, -0x3f700000    # -4.5f

    .line 2660
    .line 2661
    const/high16 v17, 0x40900000    # 4.5f

    .line 2662
    .line 2663
    const v12, -0x3fd7ae14    # -2.63f

    .line 2664
    .line 2665
    .line 2666
    const v13, -0x4151eb85    # -0.34f

    .line 2667
    .line 2668
    .line 2669
    const v14, -0x3f64cccd    # -4.85f

    .line 2670
    .line 2671
    .line 2672
    const v15, 0x3fef5c29    # 1.87f

    .line 2673
    .line 2674
    .line 2675
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2676
    .line 2677
    .line 2678
    const v16, 0x404a3d71    # 3.16f

    .line 2679
    .line 2680
    .line 2681
    const v17, 0x405851ec    # 3.38f

    .line 2682
    .line 2683
    .line 2684
    const v12, 0x3e6147ae    # 0.22f

    .line 2685
    .line 2686
    .line 2687
    const v13, 0x3fd47ae1    # 1.66f

    .line 2688
    .line 2689
    .line 2690
    const v14, 0x3fc28f5c    # 1.52f

    .line 2691
    .line 2692
    .line 2693
    const v15, 0x40428f5c    # 3.04f

    .line 2694
    .line 2695
    .line 2696
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2697
    .line 2698
    .line 2699
    const v16, 0x40347ae1    # 2.82f

    .line 2700
    .line 2701
    .line 2702
    const v17, -0x410a3d71    # -0.48f

    .line 2703
    .line 2704
    .line 2705
    const v12, 0x3f866666    # 1.05f

    .line 2706
    .line 2707
    .line 2708
    const v13, 0x3e6147ae    # 0.22f

    .line 2709
    .line 2710
    .line 2711
    const v14, 0x400147ae    # 2.02f

    .line 2712
    .line 2713
    .line 2714
    const v15, -0x43dc28f6    # -0.01f

    .line 2715
    .line 2716
    .line 2717
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2718
    .line 2719
    .line 2720
    const v5, 0x3fee147b    # 1.86f

    .line 2721
    .line 2722
    .line 2723
    invoke-virtual {v11, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 2724
    .line 2725
    .line 2726
    const v16, 0x3fb47ae1    # 1.41f

    .line 2727
    .line 2728
    .line 2729
    const/16 v17, 0x0

    .line 2730
    .line 2731
    const v12, 0x3ec7ae14    # 0.39f

    .line 2732
    .line 2733
    .line 2734
    const v13, 0x3ec7ae14    # 0.39f

    .line 2735
    .line 2736
    .line 2737
    const v14, 0x3f828f5c    # 1.02f

    .line 2738
    .line 2739
    .line 2740
    const v15, 0x3ec7ae14    # 0.39f

    .line 2741
    .line 2742
    .line 2743
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2744
    .line 2745
    .line 2746
    const/4 v5, 0x0

    .line 2747
    invoke-virtual {v11, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 2748
    .line 2749
    .line 2750
    const/16 v16, 0x0

    .line 2751
    .line 2752
    const v17, -0x404b851f    # -1.41f

    .line 2753
    .line 2754
    .line 2755
    const v13, -0x413851ec    # -0.39f

    .line 2756
    .line 2757
    .line 2758
    const v14, 0x3ec7ae14    # 0.39f

    .line 2759
    .line 2760
    .line 2761
    const v15, -0x407d70a4    # -1.02f

    .line 2762
    .line 2763
    .line 2764
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2765
    .line 2766
    .line 2767
    const v5, 0x419028f6    # 18.02f

    .line 2768
    .line 2769
    .line 2770
    invoke-virtual {v11, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 2771
    .line 2772
    .line 2773
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 2774
    .line 2775
    .line 2776
    const/high16 v5, 0x41800000    # 16.0f

    .line 2777
    .line 2778
    invoke-virtual {v11, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 2779
    .line 2780
    .line 2781
    const/high16 v16, -0x40000000    # -2.0f

    .line 2782
    .line 2783
    const/high16 v17, -0x40000000    # -2.0f

    .line 2784
    .line 2785
    const v12, -0x40733333    # -1.1f

    .line 2786
    .line 2787
    .line 2788
    const/4 v13, 0x0

    .line 2789
    const/high16 v14, -0x40000000    # -2.0f

    .line 2790
    .line 2791
    const v15, -0x4099999a    # -0.9f

    .line 2792
    .line 2793
    .line 2794
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2795
    .line 2796
    .line 2797
    const/high16 v16, 0x40000000    # 2.0f

    .line 2798
    .line 2799
    const/4 v12, 0x0

    .line 2800
    const v13, -0x40733333    # -1.1f

    .line 2801
    .line 2802
    .line 2803
    const v14, 0x3f666666    # 0.9f

    .line 2804
    .line 2805
    .line 2806
    const/high16 v15, -0x40000000    # -2.0f

    .line 2807
    .line 2808
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 2809
    .line 2810
    .line 2811
    const v4, 0x3f666666    # 0.9f

    .line 2812
    .line 2813
    .line 2814
    const/high16 v5, 0x40000000    # 2.0f

    .line 2815
    .line 2816
    invoke-virtual {v11, v5, v4, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 2817
    .line 2818
    .line 2819
    const/high16 v16, 0x41800000    # 16.0f

    .line 2820
    .line 2821
    const/high16 v17, 0x41900000    # 18.0f

    .line 2822
    .line 2823
    const/high16 v12, 0x41900000    # 18.0f

    .line 2824
    .line 2825
    const v13, 0x4188cccd    # 17.1f

    .line 2826
    .line 2827
    .line 2828
    const v14, 0x4188cccd    # 17.1f

    .line 2829
    .line 2830
    .line 2831
    const/high16 v15, 0x41900000    # 18.0f

    .line 2832
    .line 2833
    invoke-virtual/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 2834
    .line 2835
    .line 2836
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 2837
    .line 2838
    .line 2839
    iget-object v4, v11, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 2840
    .line 2841
    invoke-static {v2, v4, v3}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 2842
    .line 2843
    .line 2844
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2845
    .line 2846
    .line 2847
    move-result-object v2

    .line 2848
    sput-object v2, Landroidx/compose/material/icons/rounded/PersonSearchKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 2849
    .line 2850
    goto/16 :goto_3a

    .line 2851
    .line 2852
    :goto_3b
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 2853
    .line 2854
    .line 2855
    move-result v2

    .line 2856
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 2857
    .line 2858
    .line 2859
    move-result-object v3

    .line 2860
    if-nez v2, :cond_3b

    .line 2861
    .line 2862
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 2863
    .line 2864
    if-ne v3, v2, :cond_3c

    .line 2865
    .line 2866
    :cond_3b
    new-instance v3, Li3;

    .line 2867
    .line 2868
    invoke-direct {v3, v0, v10}, Li3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 2869
    .line 2870
    .line 2871
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 2872
    .line 2873
    .line 2874
    :cond_3c
    move-object/from16 v25, v3

    .line 2875
    .line 2876
    check-cast v25, Lkotlin/jvm/functions/Function0;

    .line 2877
    .line 2878
    const/16 v27, 0x6d86

    .line 2879
    .line 2880
    const/16 v28, 0x20

    .line 2881
    .line 2882
    const-string v21, "No people or devices found"

    .line 2883
    .line 2884
    const-string v22, "Hint: to find someone by their email address, enter the full address"

    .line 2885
    .line 2886
    const-string v23, "How to send to other people"

    .line 2887
    .line 2888
    const/16 v24, 0x0

    .line 2889
    .line 2890
    move-object/from16 v26, v1

    .line 2891
    .line 2892
    invoke-static/range {v19 .. v28}, Lnet/blip/android/ui/lockups/BlankStateLockupKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 2893
    .line 2894
    .line 2895
    goto :goto_3c

    .line 2896
    :cond_3d
    move-object/from16 v26, v1

    .line 2897
    .line 2898
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2899
    .line 2900
    .line 2901
    :goto_3c
    return-object v18

    .line 2902
    :pswitch_18
    move-object/from16 v0, p1

    .line 2903
    .line 2904
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    .line 2905
    .line 2906
    move-object/from16 v1, p2

    .line 2907
    .line 2908
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2909
    .line 2910
    move-object/from16 v2, p3

    .line 2911
    .line 2912
    check-cast v2, Ljava/lang/Integer;

    .line 2913
    .line 2914
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2915
    .line 2916
    .line 2917
    move-result v2

    .line 2918
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2919
    .line 2920
    .line 2921
    and-int/lit8 v0, v2, 0x11

    .line 2922
    .line 2923
    if-eq v0, v9, :cond_3e

    .line 2924
    .line 2925
    move v0, v10

    .line 2926
    goto :goto_3d

    .line 2927
    :cond_3e
    const/4 v0, 0x0

    .line 2928
    :goto_3d
    and-int/2addr v2, v10

    .line 2929
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2930
    .line 2931
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2932
    .line 2933
    .line 2934
    move-result v0

    .line 2935
    if-eqz v0, :cond_3f

    .line 2936
    .line 2937
    const/4 v0, 0x0

    .line 2938
    const/4 v3, 0x0

    .line 2939
    invoke-static {v0, v1, v3}, Lnet/blip/android/ui/list/SendToOtherPeopleListRowKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 2940
    .line 2941
    .line 2942
    goto :goto_3e

    .line 2943
    :cond_3f
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2944
    .line 2945
    .line 2946
    :goto_3e
    return-object v18

    .line 2947
    :pswitch_19
    move-object/from16 v0, p1

    .line 2948
    .line 2949
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    .line 2950
    .line 2951
    move-object/from16 v1, p2

    .line 2952
    .line 2953
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2954
    .line 2955
    move-object/from16 v2, p3

    .line 2956
    .line 2957
    check-cast v2, Ljava/lang/Integer;

    .line 2958
    .line 2959
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2960
    .line 2961
    .line 2962
    move-result v2

    .line 2963
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2964
    .line 2965
    .line 2966
    and-int/lit8 v0, v2, 0x11

    .line 2967
    .line 2968
    if-eq v0, v9, :cond_40

    .line 2969
    .line 2970
    move v0, v10

    .line 2971
    goto :goto_3f

    .line 2972
    :cond_40
    const/4 v0, 0x0

    .line 2973
    :goto_3f
    and-int/2addr v2, v10

    .line 2974
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 2975
    .line 2976
    invoke-virtual {v1, v2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 2977
    .line 2978
    .line 2979
    move-result v0

    .line 2980
    if-eqz v0, :cond_41

    .line 2981
    .line 2982
    const/4 v0, 0x0

    .line 2983
    const/4 v3, 0x0

    .line 2984
    invoke-static {v0, v1, v3}, Lnet/blip/android/ui/list/SendToYourDevicesListRowKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 2985
    .line 2986
    .line 2987
    goto :goto_40

    .line 2988
    :cond_41
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 2989
    .line 2990
    .line 2991
    :goto_40
    return-object v18

    .line 2992
    :pswitch_1a
    move-object/from16 v0, p1

    .line 2993
    .line 2994
    check-cast v0, Landroidx/compose/foundation/lazy/LazyItemScope;

    .line 2995
    .line 2996
    move-object/from16 v1, p2

    .line 2997
    .line 2998
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 2999
    .line 3000
    move-object/from16 v3, p3

    .line 3001
    .line 3002
    check-cast v3, Ljava/lang/Integer;

    .line 3003
    .line 3004
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 3005
    .line 3006
    .line 3007
    move-result v3

    .line 3008
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3009
    .line 3010
    .line 3011
    and-int/lit8 v0, v3, 0x11

    .line 3012
    .line 3013
    if-eq v0, v9, :cond_42

    .line 3014
    .line 3015
    move v0, v10

    .line 3016
    goto :goto_41

    .line 3017
    :cond_42
    const/4 v0, 0x0

    .line 3018
    :goto_41
    and-int/2addr v3, v10

    .line 3019
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 3020
    .line 3021
    invoke-virtual {v1, v3, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 3022
    .line 3023
    .line 3024
    move-result v0

    .line 3025
    if-eqz v0, :cond_44

    .line 3026
    .line 3027
    sget-object v0, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    .line 3028
    .line 3029
    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->m:Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 3030
    .line 3031
    const/4 v4, 0x0

    .line 3032
    invoke-static {v0, v3, v1, v4}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/BiasAlignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    .line 3033
    .line 3034
    .line 3035
    move-result-object v0

    .line 3036
    iget-wide v3, v1, Landroidx/compose/runtime/GapComposer;->T:J

    .line 3037
    .line 3038
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 3039
    .line 3040
    .line 3041
    move-result v3

    .line 3042
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 3043
    .line 3044
    .line 3045
    move-result-object v4

    .line 3046
    invoke-static {v1, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 3047
    .line 3048
    .line 3049
    move-result-object v5

    .line 3050
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 3051
    .line 3052
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3053
    .line 3054
    .line 3055
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 3056
    .line 3057
    .line 3058
    iget-boolean v6, v1, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 3059
    .line 3060
    if-eqz v6, :cond_43

    .line 3061
    .line 3062
    invoke-virtual {v1, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 3063
    .line 3064
    .line 3065
    goto :goto_42

    .line 3066
    :cond_43
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 3067
    .line 3068
    .line 3069
    :goto_42
    invoke-static {v1, v0, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 3070
    .line 3071
    .line 3072
    invoke-static {v1, v4, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 3073
    .line 3074
    .line 3075
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3076
    .line 3077
    .line 3078
    move-result-object v0

    .line 3079
    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 3080
    .line 3081
    .line 3082
    invoke-static {v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 3083
    .line 3084
    .line 3085
    invoke-static {v1, v5, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 3086
    .line 3087
    .line 3088
    const/high16 v0, 0x42200000    # 40.0f

    .line 3089
    .line 3090
    const/high16 v3, 0x42400000    # 48.0f

    .line 3091
    .line 3092
    invoke-static {v2, v0, v3}, Landroidx/compose/foundation/layout/PaddingKt;->e(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    .line 3093
    .line 3094
    .line 3095
    move-result-object v21

    .line 3096
    const/16 v29, 0x186

    .line 3097
    .line 3098
    const/16 v30, 0x7a

    .line 3099
    .line 3100
    const/16 v22, 0x0

    .line 3101
    .line 3102
    const-string v23, "To send files, search for people by their name or email address"

    .line 3103
    .line 3104
    const/16 v24, 0x0

    .line 3105
    .line 3106
    const/16 v25, 0x0

    .line 3107
    .line 3108
    const/16 v26, 0x0

    .line 3109
    .line 3110
    const/16 v27, 0x0

    .line 3111
    .line 3112
    move-object/from16 v28, v1

    .line 3113
    .line 3114
    invoke-static/range {v21 .. v30}, Lnet/blip/android/ui/lockups/BlankStateLockupKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 3115
    .line 3116
    .line 3117
    const/4 v3, 0x0

    .line 3118
    invoke-static {v3, v1}, Lnet/blip/android/ui/list/ListRowKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 3119
    .line 3120
    .line 3121
    const/high16 v0, 0x41000000    # 8.0f

    .line 3122
    .line 3123
    invoke-static {v2, v0}, Landroidx/compose/foundation/layout/SizeKt;->e(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 3124
    .line 3125
    .line 3126
    move-result-object v0

    .line 3127
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 3128
    .line 3129
    .line 3130
    invoke-virtual {v1, v10}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 3131
    .line 3132
    .line 3133
    goto :goto_43

    .line 3134
    :cond_44
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 3135
    .line 3136
    .line 3137
    :goto_43
    return-object v18

    .line 3138
    :pswitch_1b
    const/4 v3, 0x0

    .line 3139
    move-object/from16 v0, p1

    .line 3140
    .line 3141
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 3142
    .line 3143
    move-object/from16 v1, p2

    .line 3144
    .line 3145
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 3146
    .line 3147
    move-object/from16 v2, p3

    .line 3148
    .line 3149
    check-cast v2, Ljava/lang/Integer;

    .line 3150
    .line 3151
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 3152
    .line 3153
    .line 3154
    move-result v2

    .line 3155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3156
    .line 3157
    .line 3158
    and-int/lit8 v0, v2, 0x11

    .line 3159
    .line 3160
    if-eq v0, v9, :cond_45

    .line 3161
    .line 3162
    move v3, v10

    .line 3163
    :cond_45
    and-int/lit8 v0, v2, 0x1

    .line 3164
    .line 3165
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 3166
    .line 3167
    invoke-virtual {v1, v0, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 3168
    .line 3169
    .line 3170
    move-result v0

    .line 3171
    if-eqz v0, :cond_46

    .line 3172
    .line 3173
    const-string v0, "Block"

    .line 3174
    .line 3175
    invoke-static {v0, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 3176
    .line 3177
    .line 3178
    goto :goto_44

    .line 3179
    :cond_46
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 3180
    .line 3181
    .line 3182
    :goto_44
    return-object v18

    .line 3183
    :pswitch_1c
    const/4 v3, 0x0

    .line 3184
    move-object/from16 v0, p1

    .line 3185
    .line 3186
    check-cast v0, Landroidx/compose/foundation/layout/RowScope;

    .line 3187
    .line 3188
    move-object/from16 v1, p2

    .line 3189
    .line 3190
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 3191
    .line 3192
    move-object/from16 v2, p3

    .line 3193
    .line 3194
    check-cast v2, Ljava/lang/Integer;

    .line 3195
    .line 3196
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 3197
    .line 3198
    .line 3199
    move-result v2

    .line 3200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3201
    .line 3202
    .line 3203
    and-int/lit8 v0, v2, 0x11

    .line 3204
    .line 3205
    if-eq v0, v9, :cond_47

    .line 3206
    .line 3207
    move v3, v10

    .line 3208
    :cond_47
    and-int/lit8 v0, v2, 0x1

    .line 3209
    .line 3210
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 3211
    .line 3212
    invoke-virtual {v1, v0, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 3213
    .line 3214
    .line 3215
    move-result v0

    .line 3216
    if-eqz v0, :cond_48

    .line 3217
    .line 3218
    invoke-static {v5, v1, v8}, Lnet/blip/android/ui/components/DropdownMenuKt;->a(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 3219
    .line 3220
    .line 3221
    goto :goto_45

    .line 3222
    :cond_48
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 3223
    .line 3224
    .line 3225
    :goto_45
    return-object v18

    .line 3226
    nop

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
