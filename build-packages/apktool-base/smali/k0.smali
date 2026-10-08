.class public final synthetic Lk0;
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
    iput p1, p0, Lk0;->j:I

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
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v0, v0, Lk0;->j:I

    .line 4
    .line 5
    const-string v1, ", "

    .line 6
    .line 7
    const/high16 v6, 0x41200000    # 10.0f

    .line 8
    .line 9
    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 13
    .line 14
    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Le6;

    .line 15
    .line 16
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Le6;

    .line 17
    .line 18
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c:Le6;

    .line 19
    .line 20
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Le6;

    .line 21
    .line 22
    sget-object v15, Landroidx/compose/ui/node/LayoutNode;->b0:Lx9;

    .line 23
    .line 24
    const/16 p0, 0x10

    .line 25
    .line 26
    const/4 v2, 0x6

    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v3, 0x2

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x1

    .line 31
    sget-object v19, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    packed-switch v0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    move-object/from16 v0, p1

    .line 37
    .line 38
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 39
    .line 40
    move-object/from16 v1, p2

    .line 41
    .line 42
    check-cast v1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    and-int/lit8 v2, v1, 0x3

    .line 49
    .line 50
    if-eq v2, v3, :cond_0

    .line 51
    .line 52
    move v4, v5

    .line 53
    :cond_0
    and-int/2addr v1, v5

    .line 54
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-object v19

    .line 67
    :pswitch_0
    move-object/from16 v0, p1

    .line 68
    .line 69
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 70
    .line 71
    move-object/from16 v1, p2

    .line 72
    .line 73
    check-cast v1, Ljava/lang/Integer;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    and-int/lit8 v2, v1, 0x3

    .line 80
    .line 81
    if-eq v2, v3, :cond_2

    .line 82
    .line 83
    move v4, v5

    .line 84
    :cond_2
    and-int/2addr v1, v5

    .line 85
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 86
    .line 87
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    const-string v1, "You\u2019ll get a notification when content is sent to this device"

    .line 94
    .line 95
    const/16 v2, 0x30

    .line 96
    .line 97
    invoke-static {v7, v1, v0, v2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 102
    .line 103
    .line 104
    :goto_1
    return-object v19

    .line 105
    :pswitch_1
    move-object/from16 v0, p1

    .line 106
    .line 107
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 108
    .line 109
    move-object/from16 v1, p2

    .line 110
    .line 111
    check-cast v1, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    and-int/lit8 v6, v1, 0x3

    .line 118
    .line 119
    if-eq v6, v3, :cond_4

    .line 120
    .line 121
    move v4, v5

    .line 122
    :cond_4
    and-int/2addr v1, v5

    .line 123
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 124
    .line 125
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_5

    .line 130
    .line 131
    const-string v1, "Enable notifications to receive things"

    .line 132
    .line 133
    invoke-static {v1, v0, v2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->g(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_5
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 138
    .line 139
    .line 140
    :goto_2
    return-object v19

    .line 141
    :pswitch_2
    move-object/from16 v0, p1

    .line 142
    .line 143
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 144
    .line 145
    move-object/from16 v1, p2

    .line 146
    .line 147
    check-cast v1, Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    and-int/lit8 v2, v1, 0x3

    .line 154
    .line 155
    if-eq v2, v3, :cond_6

    .line 156
    .line 157
    move v2, v5

    .line 158
    goto :goto_3

    .line 159
    :cond_6
    move v2, v4

    .line 160
    :goto_3
    and-int/2addr v1, v5

    .line 161
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 162
    .line 163
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_8

    .line 168
    .line 169
    const/high16 v1, 0x3ec00000    # 0.375f

    .line 170
    .line 171
    invoke-static {v10, v1}, Landroidx/compose/foundation/layout/SizeKt;->b(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const/high16 v2, 0x41800000    # 16.0f

    .line 176
    .line 177
    invoke-static {v1, v9, v2, v5}, Landroidx/compose/foundation/layout/PaddingKt;->f(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v8, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iget-wide v6, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 186
    .line 187
    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 205
    .line 206
    .line 207
    iget-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 208
    .line 209
    if-eqz v7, :cond_7

    .line 210
    .line 211
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_7
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 216
    .line 217
    .line 218
    :goto_4
    invoke-static {v0, v2, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v0, v6, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 222
    .line 223
    .line 224
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-static {v0, v2, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 229
    .line 230
    .line 231
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v0, v1, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 235
    .line 236
    .line 237
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 238
    .line 239
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 240
    .line 241
    invoke-virtual {v1, v10, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/BiasAlignment;)Landroidx/compose/ui/Modifier;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-static {v1, v0, v4}, Lnet/blip/android/ui/onboarding/OnboardingEnableNotificationsStepKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 253
    .line 254
    .line 255
    :goto_5
    return-object v19

    .line 256
    :pswitch_3
    move-object/from16 v0, p1

    .line 257
    .line 258
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 259
    .line 260
    move-object/from16 v1, p2

    .line 261
    .line 262
    check-cast v1, Ljava/lang/Integer;

    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    and-int/lit8 v6, v1, 0x3

    .line 269
    .line 270
    if-eq v6, v3, :cond_9

    .line 271
    .line 272
    move v4, v5

    .line 273
    :cond_9
    and-int/2addr v1, v5

    .line 274
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 275
    .line 276
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    if-eqz v1, :cond_a

    .line 281
    .line 282
    const-string v1, "Sign in with your email address"

    .line 283
    .line 284
    invoke-static {v1, v0, v2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->g(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 285
    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 289
    .line 290
    .line 291
    :goto_6
    return-object v19

    .line 292
    :pswitch_4
    move-object/from16 v0, p1

    .line 293
    .line 294
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 295
    .line 296
    move-object/from16 v1, p2

    .line 297
    .line 298
    check-cast v1, Ljava/lang/Integer;

    .line 299
    .line 300
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 301
    .line 302
    .line 303
    move-result v1

    .line 304
    and-int/lit8 v2, v1, 0x3

    .line 305
    .line 306
    if-eq v2, v3, :cond_b

    .line 307
    .line 308
    move v2, v5

    .line 309
    goto :goto_7

    .line 310
    :cond_b
    move v2, v4

    .line 311
    :goto_7
    and-int/2addr v1, v5

    .line 312
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 313
    .line 314
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_d

    .line 319
    .line 320
    sget-object v1, Landroidx/compose/material/icons/rounded/KeyKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 321
    .line 322
    if-eqz v1, :cond_c

    .line 323
    .line 324
    goto/16 :goto_8

    .line 325
    .line 326
    :cond_c
    new-instance v20, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 327
    .line 328
    const/16 v28, 0x0

    .line 329
    .line 330
    const/16 v30, 0x60

    .line 331
    .line 332
    const/16 v29, 0x0

    .line 333
    .line 334
    const/high16 v22, 0x41c00000    # 24.0f

    .line 335
    .line 336
    const/high16 v23, 0x41c00000    # 24.0f

    .line 337
    .line 338
    const/high16 v24, 0x41c00000    # 24.0f

    .line 339
    .line 340
    const/high16 v25, 0x41c00000    # 24.0f

    .line 341
    .line 342
    const-wide/16 v26, 0x0

    .line 343
    .line 344
    const-string v21, "Rounded.Key"

    .line 345
    .line 346
    invoke-direct/range {v20 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 347
    .line 348
    .line 349
    move-object/from16 v1, v20

    .line 350
    .line 351
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 352
    .line 353
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 354
    .line 355
    sget-wide v8, Landroidx/compose/ui/graphics/Color;->b:J

    .line 356
    .line 357
    invoke-direct {v2, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 358
    .line 359
    .line 360
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 361
    .line 362
    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    const v5, 0x41a4b852    # 20.59f

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 369
    .line 370
    .line 371
    const v5, -0x3f01eb85    # -7.94f

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 375
    .line 376
    .line 377
    const v25, 0x40b8a3d7    # 5.77f

    .line 378
    .line 379
    .line 380
    const v26, 0x40c3d70a    # 6.12f

    .line 381
    .line 382
    .line 383
    const v21, 0x413b3333    # 11.7f

    .line 384
    .line 385
    .line 386
    const v22, 0x40e9eb85    # 7.31f

    .line 387
    .line 388
    .line 389
    const v23, 0x410e3d71    # 8.89f

    .line 390
    .line 391
    .line 392
    const/high16 v24, 0x40b00000    # 5.5f

    .line 393
    .line 394
    move-object/from16 v20, v3

    .line 395
    .line 396
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 397
    .line 398
    .line 399
    const v25, -0x3f6bd70a    # -4.63f

    .line 400
    .line 401
    .line 402
    const v26, 0x40928f5c    # 4.58f

    .line 403
    .line 404
    .line 405
    const v21, -0x3fed70a4    # -2.29f

    .line 406
    .line 407
    .line 408
    const v22, 0x3eeb851f    # 0.46f

    .line 409
    .line 410
    .line 411
    const v23, -0x3f7b3333    # -4.15f

    .line 412
    .line 413
    .line 414
    const v24, 0x40133333    # 2.3f

    .line 415
    .line 416
    .line 417
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 418
    .line 419
    .line 420
    const/high16 v25, 0x40e00000    # 7.0f

    .line 421
    .line 422
    const/high16 v26, 0x41900000    # 18.0f

    .line 423
    .line 424
    const v21, 0x3ea3d70a    # 0.32f

    .line 425
    .line 426
    .line 427
    const v22, 0x416947ae    # 14.58f

    .line 428
    .line 429
    .line 430
    const v23, 0x4050a3d7    # 3.26f

    .line 431
    .line 432
    .line 433
    const/high16 v24, 0x41900000    # 18.0f

    .line 434
    .line 435
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 436
    .line 437
    .line 438
    const v25, 0x40b4cccd    # 5.65f

    .line 439
    .line 440
    .line 441
    const/high16 v26, -0x3f800000    # -4.0f

    .line 442
    .line 443
    const v21, 0x40270a3d    # 2.61f

    .line 444
    .line 445
    .line 446
    const/16 v22, 0x0

    .line 447
    .line 448
    const v23, 0x409a8f5c    # 4.83f

    .line 449
    .line 450
    .line 451
    const v24, -0x402a3d71    # -1.67f

    .line 452
    .line 453
    .line 454
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 455
    .line 456
    .line 457
    const/high16 v5, 0x41500000    # 13.0f

    .line 458
    .line 459
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 460
    .line 461
    .line 462
    const v5, 0x3fa51eb8    # 1.29f

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 466
    .line 467
    .line 468
    const v25, 0x3fb47ae1    # 1.41f

    .line 469
    .line 470
    .line 471
    const/16 v26, 0x0

    .line 472
    .line 473
    const v21, 0x3ec7ae14    # 0.39f

    .line 474
    .line 475
    .line 476
    const v22, 0x3ec7ae14    # 0.39f

    .line 477
    .line 478
    .line 479
    const v23, 0x3f828f5c    # 1.02f

    .line 480
    .line 481
    .line 482
    const v24, 0x3ec7ae14    # 0.39f

    .line 483
    .line 484
    .line 485
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 486
    .line 487
    .line 488
    const/high16 v5, 0x41880000    # 17.0f

    .line 489
    .line 490
    const/high16 v6, 0x41600000    # 14.0f

    .line 491
    .line 492
    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->g(FF)V

    .line 493
    .line 494
    .line 495
    const v5, 0x3fa51eb8    # 1.29f

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 499
    .line 500
    .line 501
    const v25, 0x3fb5c28f    # 1.42f

    .line 502
    .line 503
    .line 504
    const v23, 0x3f83d70a    # 1.03f

    .line 505
    .line 506
    .line 507
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 508
    .line 509
    .line 510
    const v5, 0x4025c28f    # 2.59f

    .line 511
    .line 512
    .line 513
    const v6, -0x3fd8f5c3    # -2.61f

    .line 514
    .line 515
    .line 516
    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 517
    .line 518
    .line 519
    const v25, -0x43dc28f6    # -0.01f

    .line 520
    .line 521
    .line 522
    const v26, -0x404a3d71    # -1.42f

    .line 523
    .line 524
    .line 525
    const v22, -0x413851ec    # -0.39f

    .line 526
    .line 527
    .line 528
    const v23, 0x3ec7ae14    # 0.39f

    .line 529
    .line 530
    .line 531
    const v24, -0x407c28f6    # -1.03f

    .line 532
    .line 533
    .line 534
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 535
    .line 536
    .line 537
    const v5, -0x40828f5c    # -0.99f

    .line 538
    .line 539
    .line 540
    const v6, -0x4087ae14    # -0.97f

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 544
    .line 545
    .line 546
    const v25, 0x41a4b852    # 20.59f

    .line 547
    .line 548
    .line 549
    const/high16 v26, 0x41200000    # 10.0f

    .line 550
    .line 551
    const v21, 0x41a8cccd    # 21.1f

    .line 552
    .line 553
    .line 554
    const v22, 0x4121999a    # 10.1f

    .line 555
    .line 556
    .line 557
    const v23, 0x41a6cccd    # 20.85f

    .line 558
    .line 559
    .line 560
    const/high16 v24, 0x41200000    # 10.0f

    .line 561
    .line 562
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 566
    .line 567
    .line 568
    const/high16 v5, 0x41700000    # 15.0f

    .line 569
    .line 570
    const/high16 v6, 0x40e00000    # 7.0f

    .line 571
    .line 572
    invoke-virtual {v3, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 573
    .line 574
    .line 575
    const/high16 v25, -0x3fc00000    # -3.0f

    .line 576
    .line 577
    const/high16 v26, -0x3fc00000    # -3.0f

    .line 578
    .line 579
    const v21, -0x402ccccd    # -1.65f

    .line 580
    .line 581
    .line 582
    const/16 v22, 0x0

    .line 583
    .line 584
    const/high16 v23, -0x3fc00000    # -3.0f

    .line 585
    .line 586
    const v24, -0x40533333    # -1.35f

    .line 587
    .line 588
    .line 589
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 590
    .line 591
    .line 592
    const/high16 v25, 0x40400000    # 3.0f

    .line 593
    .line 594
    const/16 v21, 0x0

    .line 595
    .line 596
    const v22, -0x402ccccd    # -1.65f

    .line 597
    .line 598
    .line 599
    const v23, 0x3faccccd    # 1.35f

    .line 600
    .line 601
    .line 602
    const/high16 v24, -0x3fc00000    # -3.0f

    .line 603
    .line 604
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 605
    .line 606
    .line 607
    const v5, 0x3faccccd    # 1.35f

    .line 608
    .line 609
    .line 610
    const/high16 v6, 0x40400000    # 3.0f

    .line 611
    .line 612
    invoke-virtual {v3, v6, v5, v6, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 613
    .line 614
    .line 615
    const/high16 v25, 0x40e00000    # 7.0f

    .line 616
    .line 617
    const/high16 v26, 0x41700000    # 15.0f

    .line 618
    .line 619
    const/high16 v21, 0x41200000    # 10.0f

    .line 620
    .line 621
    const v22, 0x415a6666    # 13.65f

    .line 622
    .line 623
    .line 624
    const v23, 0x410a6666    # 8.65f

    .line 625
    .line 626
    .line 627
    const/high16 v24, 0x41700000    # 15.0f

    .line 628
    .line 629
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 633
    .line 634
    .line 635
    iget-object v3, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 636
    .line 637
    invoke-static {v1, v3, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    sput-object v1, Landroidx/compose/material/icons/rounded/KeyKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 645
    .line 646
    :goto_8
    invoke-static {v1, v7, v0, v4}, Lnet/blip/android/ui/onboarding/ComposablesKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 647
    .line 648
    .line 649
    goto :goto_9

    .line 650
    :cond_d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 651
    .line 652
    .line 653
    :goto_9
    return-object v19

    .line 654
    :pswitch_5
    move-object/from16 v0, p1

    .line 655
    .line 656
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 657
    .line 658
    move-object/from16 v1, p2

    .line 659
    .line 660
    check-cast v1, Ljava/lang/Integer;

    .line 661
    .line 662
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 663
    .line 664
    .line 665
    move-result v1

    .line 666
    and-int/lit8 v2, v1, 0x3

    .line 667
    .line 668
    if-eq v2, v3, :cond_e

    .line 669
    .line 670
    move v4, v5

    .line 671
    :cond_e
    and-int/2addr v1, v5

    .line 672
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 673
    .line 674
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 675
    .line 676
    .line 677
    move-result v1

    .line 678
    if-eqz v1, :cond_f

    .line 679
    .line 680
    goto :goto_a

    .line 681
    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 682
    .line 683
    .line 684
    :goto_a
    return-object v19

    .line 685
    :pswitch_6
    move-object/from16 v0, p1

    .line 686
    .line 687
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 688
    .line 689
    move-object/from16 v1, p2

    .line 690
    .line 691
    check-cast v1, Ljava/lang/Integer;

    .line 692
    .line 693
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 694
    .line 695
    .line 696
    move-result v1

    .line 697
    and-int/lit8 v6, v1, 0x3

    .line 698
    .line 699
    if-eq v6, v3, :cond_10

    .line 700
    .line 701
    move v4, v5

    .line 702
    :cond_10
    and-int/2addr v1, v5

    .line 703
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 704
    .line 705
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 706
    .line 707
    .line 708
    move-result v1

    .line 709
    if-eqz v1, :cond_11

    .line 710
    .line 711
    const-string v1, "Check your email and enter the code"

    .line 712
    .line 713
    invoke-static {v1, v0, v2}, Lnet/blip/android/ui/onboarding/ComposablesKt;->g(Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 714
    .line 715
    .line 716
    goto :goto_b

    .line 717
    :cond_11
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 718
    .line 719
    .line 720
    :goto_b
    return-object v19

    .line 721
    :pswitch_7
    move-object/from16 v0, p1

    .line 722
    .line 723
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 724
    .line 725
    move-object/from16 v1, p2

    .line 726
    .line 727
    check-cast v1, Ljava/lang/Integer;

    .line 728
    .line 729
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    and-int/lit8 v2, v1, 0x3

    .line 734
    .line 735
    if-eq v2, v3, :cond_12

    .line 736
    .line 737
    move v2, v5

    .line 738
    goto :goto_c

    .line 739
    :cond_12
    move v2, v4

    .line 740
    :goto_c
    and-int/2addr v1, v5

    .line 741
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 742
    .line 743
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 744
    .line 745
    .line 746
    move-result v1

    .line 747
    if-eqz v1, :cond_14

    .line 748
    .line 749
    sget-object v1, Landroidx/compose/material/icons/rounded/MoveToInboxKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 750
    .line 751
    if-eqz v1, :cond_13

    .line 752
    .line 753
    goto/16 :goto_d

    .line 754
    .line 755
    :cond_13
    new-instance v20, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 756
    .line 757
    const/16 v28, 0x0

    .line 758
    .line 759
    const/16 v30, 0x60

    .line 760
    .line 761
    const/16 v29, 0x0

    .line 762
    .line 763
    const/high16 v22, 0x41c00000    # 24.0f

    .line 764
    .line 765
    const/high16 v23, 0x41c00000    # 24.0f

    .line 766
    .line 767
    const/high16 v24, 0x41c00000    # 24.0f

    .line 768
    .line 769
    const/high16 v25, 0x41c00000    # 24.0f

    .line 770
    .line 771
    const-wide/16 v26, 0x0

    .line 772
    .line 773
    const-string v21, "Rounded.MoveToInbox"

    .line 774
    .line 775
    invoke-direct/range {v20 .. v30}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 776
    .line 777
    .line 778
    move-object/from16 v1, v20

    .line 779
    .line 780
    sget v2, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 781
    .line 782
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    .line 783
    .line 784
    sget-wide v10, Landroidx/compose/ui/graphics/Color;->b:J

    .line 785
    .line 786
    invoke-direct {v2, v10, v11}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 787
    .line 788
    .line 789
    new-instance v3, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 790
    .line 791
    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 792
    .line 793
    .line 794
    const/high16 v5, 0x41980000    # 19.0f

    .line 795
    .line 796
    const/high16 v8, 0x40400000    # 3.0f

    .line 797
    .line 798
    invoke-virtual {v3, v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 799
    .line 800
    .line 801
    const/high16 v5, 0x40a00000    # 5.0f

    .line 802
    .line 803
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 804
    .line 805
    .line 806
    const/high16 v25, 0x40400000    # 3.0f

    .line 807
    .line 808
    const/high16 v26, 0x40a00000    # 5.0f

    .line 809
    .line 810
    const v21, 0x4079999a    # 3.9f

    .line 811
    .line 812
    .line 813
    const/high16 v22, 0x40400000    # 3.0f

    .line 814
    .line 815
    const/high16 v23, 0x40400000    # 3.0f

    .line 816
    .line 817
    const v24, 0x4079999a    # 3.9f

    .line 818
    .line 819
    .line 820
    move-object/from16 v20, v3

    .line 821
    .line 822
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 823
    .line 824
    .line 825
    const/high16 v5, 0x41600000    # 14.0f

    .line 826
    .line 827
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 828
    .line 829
    .line 830
    const/high16 v25, 0x40000000    # 2.0f

    .line 831
    .line 832
    const/high16 v26, 0x40000000    # 2.0f

    .line 833
    .line 834
    const/16 v21, 0x0

    .line 835
    .line 836
    const v22, 0x3f8ccccd    # 1.1f

    .line 837
    .line 838
    .line 839
    const v23, 0x3f666666    # 0.9f

    .line 840
    .line 841
    .line 842
    const/high16 v24, 0x40000000    # 2.0f

    .line 843
    .line 844
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 845
    .line 846
    .line 847
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 848
    .line 849
    .line 850
    const/high16 v26, -0x40000000    # -2.0f

    .line 851
    .line 852
    const v21, 0x3f8ccccd    # 1.1f

    .line 853
    .line 854
    .line 855
    const/16 v22, 0x0

    .line 856
    .line 857
    const/high16 v23, 0x40000000    # 2.0f

    .line 858
    .line 859
    const v24, -0x4099999a    # -0.9f

    .line 860
    .line 861
    .line 862
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 863
    .line 864
    .line 865
    const/high16 v5, 0x40a00000    # 5.0f

    .line 866
    .line 867
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->l(F)V

    .line 868
    .line 869
    .line 870
    const/high16 v25, 0x41980000    # 19.0f

    .line 871
    .line 872
    const/high16 v26, 0x40400000    # 3.0f

    .line 873
    .line 874
    const/high16 v21, 0x41a80000    # 21.0f

    .line 875
    .line 876
    const v22, 0x4079999a    # 3.9f

    .line 877
    .line 878
    .line 879
    const v23, 0x41a0cccd    # 20.1f

    .line 880
    .line 881
    .line 882
    const/high16 v24, 0x40400000    # 3.0f

    .line 883
    .line 884
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 885
    .line 886
    .line 887
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 888
    .line 889
    .line 890
    const/high16 v5, 0x41980000    # 19.0f

    .line 891
    .line 892
    const/high16 v8, 0x41600000    # 14.0f

    .line 893
    .line 894
    invoke-virtual {v3, v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 895
    .line 896
    .line 897
    const v5, -0x3f9c28f6    # -3.56f

    .line 898
    .line 899
    .line 900
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 901
    .line 902
    .line 903
    const v25, -0x40a3d70a    # -0.86f

    .line 904
    .line 905
    .line 906
    const/high16 v26, 0x3f000000    # 0.5f

    .line 907
    .line 908
    const v21, -0x4147ae14    # -0.36f

    .line 909
    .line 910
    .line 911
    const/16 v22, 0x0

    .line 912
    .line 913
    const v23, -0x40d1eb85    # -0.68f

    .line 914
    .line 915
    .line 916
    const v24, 0x3e428f5c    # 0.19f

    .line 917
    .line 918
    .line 919
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 920
    .line 921
    .line 922
    const/high16 v25, 0x41400000    # 12.0f

    .line 923
    .line 924
    const/high16 v26, 0x41800000    # 16.0f

    .line 925
    .line 926
    const v21, 0x4160f5c3    # 14.06f

    .line 927
    .line 928
    .line 929
    const v22, 0x41766666    # 15.4f

    .line 930
    .line 931
    .line 932
    const v23, 0x4151c28f    # 13.11f

    .line 933
    .line 934
    .line 935
    const/high16 v24, 0x41800000    # 16.0f

    .line 936
    .line 937
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 938
    .line 939
    .line 940
    const v5, -0x3fdae148    # -2.58f

    .line 941
    .line 942
    .line 943
    const/high16 v8, -0x40400000    # -1.5f

    .line 944
    .line 945
    const v10, -0x3ffc28f6    # -2.06f

    .line 946
    .line 947
    .line 948
    const v11, -0x40e66666    # -0.6f

    .line 949
    .line 950
    .line 951
    invoke-virtual {v3, v10, v11, v5, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->k(FFFF)V

    .line 952
    .line 953
    .line 954
    const v25, 0x4108f5c3    # 8.56f

    .line 955
    .line 956
    .line 957
    const/high16 v26, 0x41600000    # 14.0f

    .line 958
    .line 959
    const v21, 0x4113d70a    # 9.24f

    .line 960
    .line 961
    .line 962
    const v22, 0x41630a3d    # 14.19f

    .line 963
    .line 964
    .line 965
    const v23, 0x410e8f5c    # 8.91f

    .line 966
    .line 967
    .line 968
    const/high16 v24, 0x41600000    # 14.0f

    .line 969
    .line 970
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 971
    .line 972
    .line 973
    const/high16 v5, 0x40a00000    # 5.0f

    .line 974
    .line 975
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 976
    .line 977
    .line 978
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->l(F)V

    .line 979
    .line 980
    .line 981
    const/high16 v5, 0x41600000    # 14.0f

    .line 982
    .line 983
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->l(F)V

    .line 987
    .line 988
    .line 989
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 990
    .line 991
    .line 992
    const v5, 0x416ca3d7    # 14.79f

    .line 993
    .line 994
    .line 995
    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->i(FF)V

    .line 996
    .line 997
    .line 998
    const/high16 v5, 0x41500000    # 13.0f

    .line 999
    .line 1000
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 1001
    .line 1002
    .line 1003
    const/high16 v6, 0x40e00000    # 7.0f

    .line 1004
    .line 1005
    invoke-virtual {v3, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->l(F)V

    .line 1006
    .line 1007
    .line 1008
    const/high16 v25, -0x40800000    # -1.0f

    .line 1009
    .line 1010
    const/high16 v26, -0x40800000    # -1.0f

    .line 1011
    .line 1012
    const/16 v21, 0x0

    .line 1013
    .line 1014
    const v22, -0x40f33333    # -0.55f

    .line 1015
    .line 1016
    .line 1017
    const v23, -0x4119999a    # -0.45f

    .line 1018
    .line 1019
    .line 1020
    const/high16 v24, -0x40800000    # -1.0f

    .line 1021
    .line 1022
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1023
    .line 1024
    .line 1025
    invoke-virtual {v3, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->f(F)V

    .line 1026
    .line 1027
    .line 1028
    const/high16 v26, 0x3f800000    # 1.0f

    .line 1029
    .line 1030
    const v21, -0x40f33333    # -0.55f

    .line 1031
    .line 1032
    .line 1033
    const/16 v22, 0x0

    .line 1034
    .line 1035
    const/high16 v23, -0x40800000    # -1.0f

    .line 1036
    .line 1037
    const v24, 0x3ee66666    # 0.45f

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1041
    .line 1042
    .line 1043
    const/high16 v6, 0x40400000    # 3.0f

    .line 1044
    .line 1045
    invoke-virtual {v3, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->m(F)V

    .line 1046
    .line 1047
    .line 1048
    const v5, 0x41135c29    # 9.21f

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->e(F)V

    .line 1052
    .line 1053
    .line 1054
    const v25, -0x414ccccd    # -0.35f

    .line 1055
    .line 1056
    .line 1057
    const v26, 0x3f59999a    # 0.85f

    .line 1058
    .line 1059
    .line 1060
    const v21, -0x4119999a    # -0.45f

    .line 1061
    .line 1062
    .line 1063
    const v23, -0x40d47ae1    # -0.67f

    .line 1064
    .line 1065
    .line 1066
    const v24, 0x3f0a3d71    # 0.54f

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1070
    .line 1071
    .line 1072
    const v5, 0x40328f5c    # 2.79f

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v3, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1076
    .line 1077
    .line 1078
    const v25, 0x3f35c28f    # 0.71f

    .line 1079
    .line 1080
    .line 1081
    const/16 v26, 0x0

    .line 1082
    .line 1083
    const v21, 0x3e4ccccd    # 0.2f

    .line 1084
    .line 1085
    .line 1086
    const v22, 0x3e4ccccd    # 0.2f

    .line 1087
    .line 1088
    .line 1089
    const v23, 0x3f028f5c    # 0.51f

    .line 1090
    .line 1091
    .line 1092
    const v24, 0x3e4ccccd    # 0.2f

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->d(FFFFFF)V

    .line 1096
    .line 1097
    .line 1098
    const v5, -0x3fcd70a4    # -2.79f

    .line 1099
    .line 1100
    .line 1101
    const v6, 0x40328f5c    # 2.79f

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v3, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->h(FF)V

    .line 1105
    .line 1106
    .line 1107
    const v25, 0x416ca3d7    # 14.79f

    .line 1108
    .line 1109
    .line 1110
    const/high16 v26, 0x41200000    # 10.0f

    .line 1111
    .line 1112
    const v21, 0x41775c29    # 15.46f

    .line 1113
    .line 1114
    .line 1115
    const v22, 0x4128a3d7    # 10.54f

    .line 1116
    .line 1117
    .line 1118
    const v23, 0x4173d70a    # 15.24f

    .line 1119
    .line 1120
    .line 1121
    const/high16 v24, 0x41200000    # 10.0f

    .line 1122
    .line 1123
    invoke-virtual/range {v20 .. v26}, Landroidx/compose/ui/graphics/vector/PathBuilder;->c(FFFFFF)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->b()V

    .line 1127
    .line 1128
    .line 1129
    iget-object v3, v3, Landroidx/compose/ui/graphics/vector/PathBuilder;->a:Ljava/util/ArrayList;

    .line 1130
    .line 1131
    invoke-static {v1, v3, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->c(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/ArrayList;Landroidx/compose/ui/graphics/SolidColor;)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v1

    .line 1138
    sput-object v1, Landroidx/compose/material/icons/rounded/MoveToInboxKt;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1139
    .line 1140
    :goto_d
    invoke-static {v1, v7, v0, v4}, Lnet/blip/android/ui/onboarding/ComposablesKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    .line 1141
    .line 1142
    .line 1143
    goto :goto_e

    .line 1144
    :cond_14
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1145
    .line 1146
    .line 1147
    :goto_e
    return-object v19

    .line 1148
    :pswitch_8
    move-object/from16 v0, p1

    .line 1149
    .line 1150
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1151
    .line 1152
    move-object/from16 v1, p2

    .line 1153
    .line 1154
    check-cast v1, Ljava/lang/Integer;

    .line 1155
    .line 1156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    and-int/lit8 v2, v1, 0x3

    .line 1161
    .line 1162
    if-eq v2, v3, :cond_15

    .line 1163
    .line 1164
    move v2, v5

    .line 1165
    goto :goto_f

    .line 1166
    :cond_15
    move v2, v4

    .line 1167
    :goto_f
    and-int/2addr v1, v5

    .line 1168
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1169
    .line 1170
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1171
    .line 1172
    .line 1173
    move-result v1

    .line 1174
    if-eqz v1, :cond_16

    .line 1175
    .line 1176
    invoke-static {v4, v0}, LOnboardingScreenKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 1177
    .line 1178
    .line 1179
    goto :goto_10

    .line 1180
    :cond_16
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1181
    .line 1182
    .line 1183
    :goto_10
    return-object v19

    .line 1184
    :pswitch_9
    move-object/from16 v0, p1

    .line 1185
    .line 1186
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1187
    .line 1188
    move-object/from16 v1, p2

    .line 1189
    .line 1190
    check-cast v1, Ljava/lang/Integer;

    .line 1191
    .line 1192
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1193
    .line 1194
    .line 1195
    move-result v1

    .line 1196
    and-int/lit8 v2, v1, 0x3

    .line 1197
    .line 1198
    if-eq v2, v3, :cond_17

    .line 1199
    .line 1200
    move v2, v5

    .line 1201
    goto :goto_11

    .line 1202
    :cond_17
    move v2, v4

    .line 1203
    :goto_11
    and-int/2addr v1, v5

    .line 1204
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1205
    .line 1206
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1207
    .line 1208
    .line 1209
    move-result v1

    .line 1210
    if-eqz v1, :cond_18

    .line 1211
    .line 1212
    invoke-static {v4, v0}, Lnet/blip/android/ui/help/HelpScreenSendToOtherPeopleKt;->a(ILandroidx/compose/runtime/Composer;)V

    .line 1213
    .line 1214
    .line 1215
    goto :goto_12

    .line 1216
    :cond_18
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1217
    .line 1218
    .line 1219
    :goto_12
    return-object v19

    .line 1220
    :pswitch_a
    move-object/from16 v0, p1

    .line 1221
    .line 1222
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1223
    .line 1224
    move-object/from16 v1, p2

    .line 1225
    .line 1226
    check-cast v1, Ljava/lang/Integer;

    .line 1227
    .line 1228
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1229
    .line 1230
    .line 1231
    move-result v1

    .line 1232
    and-int/lit8 v2, v1, 0x3

    .line 1233
    .line 1234
    if-eq v2, v3, :cond_19

    .line 1235
    .line 1236
    move v2, v5

    .line 1237
    goto :goto_13

    .line 1238
    :cond_19
    move v2, v4

    .line 1239
    :goto_13
    and-int/2addr v1, v5

    .line 1240
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1241
    .line 1242
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v1

    .line 1246
    if-eqz v1, :cond_1a

    .line 1247
    .line 1248
    invoke-static {v4, v0}, Lnet/blip/android/ui/help/HelpScreenSendToYourDevicesKt;->b(ILandroidx/compose/runtime/Composer;)V

    .line 1249
    .line 1250
    .line 1251
    goto :goto_14

    .line 1252
    :cond_1a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1253
    .line 1254
    .line 1255
    :goto_14
    return-object v19

    .line 1256
    :pswitch_b
    move-object/from16 v0, p1

    .line 1257
    .line 1258
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1259
    .line 1260
    move-object/from16 v1, p2

    .line 1261
    .line 1262
    check-cast v1, Ljava/lang/Integer;

    .line 1263
    .line 1264
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1265
    .line 1266
    .line 1267
    move-result v1

    .line 1268
    and-int/lit8 v2, v1, 0x3

    .line 1269
    .line 1270
    if-eq v2, v3, :cond_1b

    .line 1271
    .line 1272
    move v2, v5

    .line 1273
    goto :goto_15

    .line 1274
    :cond_1b
    move v2, v4

    .line 1275
    :goto_15
    and-int/2addr v1, v5

    .line 1276
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1277
    .line 1278
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1279
    .line 1280
    .line 1281
    move-result v1

    .line 1282
    if-eqz v1, :cond_1d

    .line 1283
    .line 1284
    invoke-static {v8, v4}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 1285
    .line 1286
    .line 1287
    move-result-object v1

    .line 1288
    iget-wide v2, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1289
    .line 1290
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 1291
    .line 1292
    .line 1293
    move-result v2

    .line 1294
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v3

    .line 1298
    invoke-static {v0, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1299
    .line 1300
    .line 1301
    move-result-object v4

    .line 1302
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1303
    .line 1304
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1305
    .line 1306
    .line 1307
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1308
    .line 1309
    .line 1310
    iget-boolean v6, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1311
    .line 1312
    if-eqz v6, :cond_1c

    .line 1313
    .line 1314
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1315
    .line 1316
    .line 1317
    goto :goto_16

    .line 1318
    :cond_1c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1319
    .line 1320
    .line 1321
    :goto_16
    invoke-static {v0, v1, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1322
    .line 1323
    .line 1324
    invoke-static {v0, v3, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1325
    .line 1326
    .line 1327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1328
    .line 1329
    .line 1330
    move-result-object v1

    .line 1331
    invoke-static {v0, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1332
    .line 1333
    .line 1334
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1335
    .line 1336
    .line 1337
    invoke-static {v0, v4, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1341
    .line 1342
    .line 1343
    goto :goto_17

    .line 1344
    :cond_1d
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1345
    .line 1346
    .line 1347
    :goto_17
    return-object v19

    .line 1348
    :pswitch_c
    move-object/from16 v0, p1

    .line 1349
    .line 1350
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1351
    .line 1352
    move-object/from16 v1, p2

    .line 1353
    .line 1354
    check-cast v1, Ljava/lang/Integer;

    .line 1355
    .line 1356
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1357
    .line 1358
    .line 1359
    move-result v1

    .line 1360
    and-int/lit8 v2, v1, 0x3

    .line 1361
    .line 1362
    if-eq v2, v3, :cond_1e

    .line 1363
    .line 1364
    move v4, v5

    .line 1365
    :cond_1e
    and-int/2addr v1, v5

    .line 1366
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1367
    .line 1368
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1369
    .line 1370
    .line 1371
    move-result v1

    .line 1372
    if-eqz v1, :cond_1f

    .line 1373
    .line 1374
    goto :goto_18

    .line 1375
    :cond_1f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1376
    .line 1377
    .line 1378
    :goto_18
    return-object v19

    .line 1379
    :pswitch_d
    move-object/from16 v0, p1

    .line 1380
    .line 1381
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1382
    .line 1383
    move-object/from16 v1, p2

    .line 1384
    .line 1385
    check-cast v1, Ljava/lang/Integer;

    .line 1386
    .line 1387
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1388
    .line 1389
    .line 1390
    move-result v1

    .line 1391
    and-int/lit8 v2, v1, 0x3

    .line 1392
    .line 1393
    if-eq v2, v3, :cond_20

    .line 1394
    .line 1395
    move v4, v5

    .line 1396
    :cond_20
    and-int/2addr v1, v5

    .line 1397
    move-object v9, v0

    .line 1398
    check-cast v9, Landroidx/compose/runtime/GapComposer;

    .line 1399
    .line 1400
    invoke-virtual {v9, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1401
    .line 1402
    .line 1403
    move-result v0

    .line 1404
    if-eqz v0, :cond_21

    .line 1405
    .line 1406
    invoke-static {}, Landroidx/compose/material/icons/rounded/SearchKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v5

    .line 1410
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1411
    .line 1412
    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v0

    .line 1416
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1417
    .line 1418
    iget-wide v0, v0, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 1419
    .line 1420
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v8

    .line 1424
    const/16 v10, 0x30

    .line 1425
    .line 1426
    const/16 v11, 0x3c

    .line 1427
    .line 1428
    const-string v6, "Search"

    .line 1429
    .line 1430
    const/4 v7, 0x0

    .line 1431
    invoke-static/range {v5 .. v11}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 1432
    .line 1433
    .line 1434
    goto :goto_19

    .line 1435
    :cond_21
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1436
    .line 1437
    .line 1438
    :goto_19
    return-object v19

    .line 1439
    :pswitch_e
    move-object/from16 v0, p1

    .line 1440
    .line 1441
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1442
    .line 1443
    move-object/from16 v1, p2

    .line 1444
    .line 1445
    check-cast v1, Ljava/lang/Integer;

    .line 1446
    .line 1447
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1448
    .line 1449
    .line 1450
    move-result v1

    .line 1451
    and-int/lit8 v2, v1, 0x3

    .line 1452
    .line 1453
    if-eq v2, v3, :cond_22

    .line 1454
    .line 1455
    move v4, v5

    .line 1456
    :cond_22
    and-int/2addr v1, v5

    .line 1457
    move-object v13, v0

    .line 1458
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 1459
    .line 1460
    invoke-virtual {v13, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1461
    .line 1462
    .line 1463
    move-result v0

    .line 1464
    if-eqz v0, :cond_23

    .line 1465
    .line 1466
    sget-object v0, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1467
    .line 1468
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v0

    .line 1472
    check-cast v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1473
    .line 1474
    iget-object v0, v0, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->b:Landroidx/compose/ui/text/TextStyle;

    .line 1475
    .line 1476
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1477
    .line 1478
    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1479
    .line 1480
    .line 1481
    move-result-object v1

    .line 1482
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 1483
    .line 1484
    iget-wide v1, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->e:J

    .line 1485
    .line 1486
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1487
    .line 1488
    .line 1489
    move-result-wide v23

    .line 1490
    sget-object v25, Landroidx/compose/ui/text/font/FontWeight;->r:Landroidx/compose/ui/text/font/FontWeight;

    .line 1491
    .line 1492
    const/16 v31, 0x0

    .line 1493
    .line 1494
    const v32, 0xfffff8

    .line 1495
    .line 1496
    .line 1497
    const-wide/16 v26, 0x0

    .line 1498
    .line 1499
    const-wide/16 v28, 0x0

    .line 1500
    .line 1501
    const/16 v30, 0x0

    .line 1502
    .line 1503
    move-object/from16 v20, v0

    .line 1504
    .line 1505
    move-wide/from16 v21, v1

    .line 1506
    .line 1507
    invoke-static/range {v20 .. v32}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v7

    .line 1511
    const/4 v14, 0x0

    .line 1512
    const/16 v15, 0x1fa

    .line 1513
    .line 1514
    const-string v5, "Your device will now show up when sharing\u00a0in\u00a0Blip."

    .line 1515
    .line 1516
    const/4 v6, 0x0

    .line 1517
    const/4 v8, 0x0

    .line 1518
    const/4 v9, 0x0

    .line 1519
    const/4 v10, 0x0

    .line 1520
    const/4 v11, 0x0

    .line 1521
    const/4 v12, 0x0

    .line 1522
    invoke-static/range {v5 .. v15}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1523
    .line 1524
    .line 1525
    goto :goto_1a

    .line 1526
    :cond_23
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1527
    .line 1528
    .line 1529
    :goto_1a
    return-object v19

    .line 1530
    :pswitch_f
    move-object/from16 v0, p1

    .line 1531
    .line 1532
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1533
    .line 1534
    move-object/from16 v1, p2

    .line 1535
    .line 1536
    check-cast v1, Ljava/lang/Integer;

    .line 1537
    .line 1538
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1539
    .line 1540
    .line 1541
    move-result v1

    .line 1542
    and-int/lit8 v2, v1, 0x3

    .line 1543
    .line 1544
    if-eq v2, v3, :cond_24

    .line 1545
    .line 1546
    move v2, v5

    .line 1547
    goto :goto_1b

    .line 1548
    :cond_24
    move v2, v4

    .line 1549
    :goto_1b
    and-int/2addr v1, v5

    .line 1550
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1551
    .line 1552
    invoke-virtual {v0, v1, v2}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1553
    .line 1554
    .line 1555
    move-result v1

    .line 1556
    if-eqz v1, :cond_26

    .line 1557
    .line 1558
    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    .line 1559
    .line 1560
    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment$Vertical;

    .line 1561
    .line 1562
    invoke-static {v1, v2, v0, v4}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    .line 1563
    .line 1564
    .line 1565
    move-result-object v1

    .line 1566
    iget-wide v2, v0, Landroidx/compose/runtime/GapComposer;->T:J

    .line 1567
    .line 1568
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 1569
    .line 1570
    .line 1571
    move-result v2

    .line 1572
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->l()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    .line 1573
    .line 1574
    .line 1575
    move-result-object v3

    .line 1576
    sget-object v4, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 1577
    .line 1578
    invoke-static {v0, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v6

    .line 1582
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 1583
    .line 1584
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Z()V

    .line 1588
    .line 1589
    .line 1590
    iget-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    .line 1591
    .line 1592
    if-eqz v7, :cond_25

    .line 1593
    .line 1594
    invoke-virtual {v0, v15}, Landroidx/compose/runtime/GapComposer;->k(Lkotlin/jvm/functions/Function0;)V

    .line 1595
    .line 1596
    .line 1597
    goto :goto_1c

    .line 1598
    :cond_25
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->j0()V

    .line 1599
    .line 1600
    .line 1601
    :goto_1c
    invoke-static {v0, v1, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1602
    .line 1603
    .line 1604
    invoke-static {v0, v3, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1605
    .line 1606
    .line 1607
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1608
    .line 1609
    .line 1610
    move-result-object v1

    .line 1611
    invoke-static {v0, v1, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1612
    .line 1613
    .line 1614
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;)V

    .line 1615
    .line 1616
    .line 1617
    invoke-static {v0, v6, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 1618
    .line 1619
    .line 1620
    const/16 v24, 0x0

    .line 1621
    .line 1622
    const/16 v25, 0xa

    .line 1623
    .line 1624
    const/high16 v21, 0x41600000    # 14.0f

    .line 1625
    .line 1626
    const/16 v22, 0x0

    .line 1627
    .line 1628
    const/high16 v23, 0x41000000    # 8.0f

    .line 1629
    .line 1630
    move-object/from16 v20, v4

    .line 1631
    .line 1632
    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v22

    .line 1636
    move-object/from16 v1, v20

    .line 1637
    .line 1638
    invoke-static {}, Landroidx/compose/material/icons/rounded/CloudOffKt;->a()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1639
    .line 1640
    .line 1641
    move-result-object v20

    .line 1642
    sget-wide v7, Landroidx/compose/ui/graphics/Color;->d:J

    .line 1643
    .line 1644
    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 1645
    .line 1646
    .line 1647
    move-result-object v23

    .line 1648
    const v25, 0x1801b0

    .line 1649
    .line 1650
    .line 1651
    const/16 v26, 0x38

    .line 1652
    .line 1653
    const-string v21, ""

    .line 1654
    .line 1655
    move-object/from16 v24, v0

    .line 1656
    .line 1657
    invoke-static/range {v20 .. v26}, Landroidx/compose/foundation/ImageKt;->b(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/BlendModeColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 1658
    .line 1659
    .line 1660
    const/high16 v24, 0x3f800000    # 1.0f

    .line 1661
    .line 1662
    const/16 v25, 0x7

    .line 1663
    .line 1664
    const/16 v21, 0x0

    .line 1665
    .line 1666
    const/16 v22, 0x0

    .line 1667
    .line 1668
    const/16 v23, 0x0

    .line 1669
    .line 1670
    move-object/from16 v20, v1

    .line 1671
    .line 1672
    invoke-static/range {v20 .. v25}, Landroidx/compose/foundation/layout/PaddingKt;->h(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v21

    .line 1676
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidTextStylesKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 1677
    .line 1678
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 1679
    .line 1680
    .line 1681
    move-result-object v1

    .line 1682
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;

    .line 1683
    .line 1684
    iget-object v6, v1, Lnet/blip/android/ui/androidtheme/AndroidTextStyles;->a:Landroidx/compose/ui/text/TextStyle;

    .line 1685
    .line 1686
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 1687
    .line 1688
    .line 1689
    move-result-wide v9

    .line 1690
    const/16 v17, 0x0

    .line 1691
    .line 1692
    const v18, 0xff7ffc

    .line 1693
    .line 1694
    .line 1695
    const/4 v11, 0x0

    .line 1696
    const-wide/16 v12, 0x0

    .line 1697
    .line 1698
    const-wide/16 v14, 0x0

    .line 1699
    .line 1700
    const/16 v16, 0x0

    .line 1701
    .line 1702
    invoke-static/range {v6 .. v18}, Landroidx/compose/ui/text/TextStyle;->a(Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/ui/text/font/FontWeight;JJLandroidx/compose/ui/text/style/LineHeightStyle;II)Landroidx/compose/ui/text/TextStyle;

    .line 1703
    .line 1704
    .line 1705
    move-result-object v22

    .line 1706
    const/16 v29, 0x36

    .line 1707
    .line 1708
    const/16 v30, 0x1f8

    .line 1709
    .line 1710
    const-string v20, "Waiting for connection\u2026"

    .line 1711
    .line 1712
    const/16 v23, 0x0

    .line 1713
    .line 1714
    const/16 v24, 0x0

    .line 1715
    .line 1716
    const/16 v25, 0x0

    .line 1717
    .line 1718
    const/16 v26, 0x0

    .line 1719
    .line 1720
    const/16 v27, 0x0

    .line 1721
    .line 1722
    move-object/from16 v28, v0

    .line 1723
    .line 1724
    invoke-static/range {v20 .. v30}, Lnet/blip/shared/PlatformTextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V

    .line 1725
    .line 1726
    .line 1727
    const/high16 v1, 0x41900000    # 18.0f

    .line 1728
    .line 1729
    invoke-static {v1}, Landroidx/compose/foundation/layout/SizeKt;->n(F)Landroidx/compose/ui/Modifier;

    .line 1730
    .line 1731
    .line 1732
    move-result-object v1

    .line 1733
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    .line 1734
    .line 1735
    .line 1736
    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 1737
    .line 1738
    .line 1739
    goto :goto_1d

    .line 1740
    :cond_26
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1741
    .line 1742
    .line 1743
    :goto_1d
    return-object v19

    .line 1744
    :pswitch_10
    move-object/from16 v0, p1

    .line 1745
    .line 1746
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1747
    .line 1748
    move-object/from16 v1, p2

    .line 1749
    .line 1750
    check-cast v1, Ljava/lang/Integer;

    .line 1751
    .line 1752
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1753
    .line 1754
    .line 1755
    move-result v1

    .line 1756
    and-int/lit8 v2, v1, 0x3

    .line 1757
    .line 1758
    if-eq v2, v3, :cond_27

    .line 1759
    .line 1760
    move v4, v5

    .line 1761
    :cond_27
    and-int/2addr v1, v5

    .line 1762
    move-object v8, v0

    .line 1763
    check-cast v8, Landroidx/compose/runtime/GapComposer;

    .line 1764
    .line 1765
    invoke-virtual {v8, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1766
    .line 1767
    .line 1768
    move-result v0

    .line 1769
    if-eqz v0, :cond_28

    .line 1770
    .line 1771
    const/16 v9, 0x30

    .line 1772
    .line 1773
    const/4 v10, 0x5

    .line 1774
    const/4 v5, 0x0

    .line 1775
    const-string v6, "Choose audio file"

    .line 1776
    .line 1777
    const/4 v7, 0x0

    .line 1778
    invoke-static/range {v5 .. v10}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;II)V

    .line 1779
    .line 1780
    .line 1781
    goto :goto_1e

    .line 1782
    :cond_28
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1783
    .line 1784
    .line 1785
    :goto_1e
    return-object v19

    .line 1786
    :pswitch_11
    move-object/from16 v0, p1

    .line 1787
    .line 1788
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1789
    .line 1790
    move-object/from16 v1, p2

    .line 1791
    .line 1792
    check-cast v1, Ljava/lang/Integer;

    .line 1793
    .line 1794
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1795
    .line 1796
    .line 1797
    move-result v1

    .line 1798
    and-int/lit8 v2, v1, 0x3

    .line 1799
    .line 1800
    if-eq v2, v3, :cond_29

    .line 1801
    .line 1802
    move v4, v5

    .line 1803
    :cond_29
    and-int/2addr v1, v5

    .line 1804
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1805
    .line 1806
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1807
    .line 1808
    .line 1809
    move-result v1

    .line 1810
    if-eqz v1, :cond_2a

    .line 1811
    .line 1812
    goto :goto_1f

    .line 1813
    :cond_2a
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1814
    .line 1815
    .line 1816
    :goto_1f
    return-object v19

    .line 1817
    :pswitch_12
    move-object/from16 v0, p1

    .line 1818
    .line 1819
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 1820
    .line 1821
    move-object/from16 v1, p2

    .line 1822
    .line 1823
    check-cast v1, Ljava/lang/Integer;

    .line 1824
    .line 1825
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1826
    .line 1827
    .line 1828
    move-result v1

    .line 1829
    and-int/lit8 v2, v1, 0x3

    .line 1830
    .line 1831
    if-eq v2, v3, :cond_2b

    .line 1832
    .line 1833
    move v4, v5

    .line 1834
    :cond_2b
    and-int/2addr v1, v5

    .line 1835
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 1836
    .line 1837
    invoke-virtual {v0, v1, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 1838
    .line 1839
    .line 1840
    move-result v1

    .line 1841
    if-eqz v1, :cond_2c

    .line 1842
    .line 1843
    goto :goto_20

    .line 1844
    :cond_2c
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 1845
    .line 1846
    .line 1847
    :goto_20
    return-object v19

    .line 1848
    :pswitch_13
    move-object/from16 v0, p1

    .line 1849
    .line 1850
    check-cast v0, Ljava/lang/StringBuilder;

    .line 1851
    .line 1852
    move-object/from16 v2, p2

    .line 1853
    .line 1854
    check-cast v2, Landroidx/compose/ui/Modifier$Element;

    .line 1855
    .line 1856
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 1857
    .line 1858
    .line 1859
    move-result v3

    .line 1860
    if-le v3, v5, :cond_2d

    .line 1861
    .line 1862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    .line 1864
    .line 1865
    :cond_2d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1866
    .line 1867
    .line 1868
    return-object v0

    .line 1869
    :pswitch_14
    move-object/from16 v0, p1

    .line 1870
    .line 1871
    check-cast v0, Ljava/lang/String;

    .line 1872
    .line 1873
    move-object/from16 v2, p2

    .line 1874
    .line 1875
    check-cast v2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 1876
    .line 1877
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1878
    .line 1879
    .line 1880
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1881
    .line 1882
    .line 1883
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 1884
    .line 1885
    .line 1886
    move-result v3

    .line 1887
    if-nez v3, :cond_2e

    .line 1888
    .line 1889
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 1890
    .line 1891
    .line 1892
    move-result-object v0

    .line 1893
    goto :goto_21

    .line 1894
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1895
    .line 1896
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1897
    .line 1898
    .line 1899
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    .line 1901
    .line 1902
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    .line 1904
    .line 1905
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1906
    .line 1907
    .line 1908
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v0

    .line 1912
    :goto_21
    return-object v0

    .line 1913
    :pswitch_15
    move-object/from16 v0, p1

    .line 1914
    .line 1915
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 1916
    .line 1917
    move-object/from16 v1, p2

    .line 1918
    .line 1919
    check-cast v1, Landroidx/savedstate/SavedStateRegistryOwner;

    .line 1920
    .line 1921
    invoke-static {v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->c(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v0

    .line 1925
    invoke-virtual {v0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setSavedStateRegistryOwner(Landroidx/savedstate/SavedStateRegistryOwner;)V

    .line 1926
    .line 1927
    .line 1928
    return-object v19

    .line 1929
    :pswitch_16
    move-object/from16 v0, p1

    .line 1930
    .line 1931
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 1932
    .line 1933
    move-object/from16 v1, p2

    .line 1934
    .line 1935
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 1936
    .line 1937
    invoke-static {v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->c(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v0

    .line 1941
    invoke-virtual {v0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 1942
    .line 1943
    .line 1944
    return-object v19

    .line 1945
    :pswitch_17
    move-object/from16 v0, p1

    .line 1946
    .line 1947
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 1948
    .line 1949
    move-object/from16 v1, p2

    .line 1950
    .line 1951
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 1952
    .line 1953
    invoke-static {v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->c(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 1954
    .line 1955
    .line 1956
    move-result-object v0

    .line 1957
    invoke-virtual {v0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 1958
    .line 1959
    .line 1960
    return-object v19

    .line 1961
    :pswitch_18
    move-object/from16 v0, p1

    .line 1962
    .line 1963
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 1964
    .line 1965
    move-object/from16 v1, p2

    .line 1966
    .line 1967
    check-cast v1, Landroidx/compose/ui/Modifier;

    .line 1968
    .line 1969
    invoke-static {v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->c(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 1970
    .line 1971
    .line 1972
    move-result-object v0

    .line 1973
    invoke-virtual {v0, v1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setModifier(Landroidx/compose/ui/Modifier;)V

    .line 1974
    .line 1975
    .line 1976
    return-object v19

    .line 1977
    :pswitch_19
    move-object/from16 v0, p1

    .line 1978
    .line 1979
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 1980
    .line 1981
    move-object/from16 v1, p2

    .line 1982
    .line 1983
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 1984
    .line 1985
    invoke-static {v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->c(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 1986
    .line 1987
    .line 1988
    move-result-object v0

    .line 1989
    invoke-virtual {v0, v1}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->setReleaseBlock(Lkotlin/jvm/functions/Function1;)V

    .line 1990
    .line 1991
    .line 1992
    return-object v19

    .line 1993
    :pswitch_1a
    move-object/from16 v0, p1

    .line 1994
    .line 1995
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 1996
    .line 1997
    move-object/from16 v1, p2

    .line 1998
    .line 1999
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 2000
    .line 2001
    invoke-static {v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->c(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v0

    .line 2005
    invoke-virtual {v0, v1}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->setUpdateBlock(Lkotlin/jvm/functions/Function1;)V

    .line 2006
    .line 2007
    .line 2008
    return-object v19

    .line 2009
    :pswitch_1b
    move-object/from16 v0, p1

    .line 2010
    .line 2011
    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    .line 2012
    .line 2013
    move-object/from16 v1, p2

    .line 2014
    .line 2015
    check-cast v1, Landroidx/compose/ui/unit/LayoutDirection;

    .line 2016
    .line 2017
    invoke-static {v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->c(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    .line 2018
    .line 2019
    .line 2020
    move-result-object v0

    .line 2021
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 2022
    .line 2023
    .line 2024
    move-result v1

    .line 2025
    if-eqz v1, :cond_30

    .line 2026
    .line 2027
    if-ne v1, v5, :cond_2f

    .line 2028
    .line 2029
    move v4, v5

    .line 2030
    goto :goto_22

    .line 2031
    :cond_2f
    invoke-static {}, Lk8;->e()V

    .line 2032
    .line 2033
    .line 2034
    goto :goto_23

    .line 2035
    :cond_30
    :goto_22
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 2036
    .line 2037
    .line 2038
    move-object/from16 v7, v19

    .line 2039
    .line 2040
    :goto_23
    return-object v7

    .line 2041
    :pswitch_1c
    move-object/from16 v0, p1

    .line 2042
    .line 2043
    check-cast v0, Landroidx/compose/runtime/Composer;

    .line 2044
    .line 2045
    move-object/from16 v1, p2

    .line 2046
    .line 2047
    check-cast v1, Ljava/lang/Integer;

    .line 2048
    .line 2049
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2050
    .line 2051
    .line 2052
    check-cast v0, Landroidx/compose/runtime/GapComposer;

    .line 2053
    .line 2054
    const v1, 0x2dddcf2d

    .line 2055
    .line 2056
    .line 2057
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 2058
    .line 2059
    .line 2060
    const v1, 0x7f0800d5

    .line 2061
    .line 2062
    .line 2063
    invoke-static {v1, v0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/painter/Painter;

    .line 2064
    .line 2065
    .line 2066
    move-result-object v1

    .line 2067
    sget-wide v2, Landroidx/compose/ui/graphics/Color;->d:J

    .line 2068
    .line 2069
    const/16 v5, 0x38

    .line 2070
    .line 2071
    invoke-static {v1, v2, v3, v0, v5}, Lnet/blip/shared/BrushPainterKt;->a(Landroidx/compose/ui/graphics/painter/Painter;JLandroidx/compose/runtime/Composer;I)Lnet/blip/shared/BrushPainter;

    .line 2072
    .line 2073
    .line 2074
    move-result-object v1

    .line 2075
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 2076
    .line 2077
    .line 2078
    return-object v1

    .line 2079
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
