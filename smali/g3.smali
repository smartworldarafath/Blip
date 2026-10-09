.class public final synthetic Lg3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg3;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lg3;->k:Landroidx/navigation/NavHostController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;II)V
    .locals 0

    .line 9
    iput p3, p0, Lg3;->j:I

    iput-object p1, p0, Lg3;->k:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lg3;->j:I

    .line 4
    .line 5
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x0

    .line 9
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v0, v0, Lg3;->k:Landroidx/navigation/NavHostController;

    .line 13
    .line 14
    packed-switch v1, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 20
    .line 21
    move-object/from16 v7, p2

    .line 22
    .line 23
    check-cast v7, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    and-int/lit8 v8, v7, 0x3

    .line 30
    .line 31
    if-eq v8, v3, :cond_0

    .line 32
    .line 33
    move v4, v6

    .line 34
    :cond_0
    and-int/lit8 v3, v7, 0x1

    .line 35
    .line 36
    move-object v12, v1

    .line 37
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 38
    .line 39
    invoke-virtual {v12, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    sget-object v1, Lnet/blip/android/ui/androidtheme/AndroidColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 46
    .line 47
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lnet/blip/android/ui/androidtheme/AndroidColors;

    .line 52
    .line 53
    iget-wide v3, v1, Lnet/blip/android/ui/androidtheme/AndroidColors;->i:J

    .line 54
    .line 55
    sget-object v1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    .line 56
    .line 57
    sget-object v6, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 58
    .line 59
    invoke-static {v6, v3, v4, v1}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    if-ne v3, v2, :cond_2

    .line 74
    .line 75
    :cond_1
    new-instance v3, Li3;

    .line 76
    .line 77
    const/16 v1, 0xb

    .line 78
    .line 79
    invoke-direct {v3, v0, v1}, Li3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    move-object v11, v3

    .line 86
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 87
    .line 88
    const/16 v13, 0x180

    .line 89
    .line 90
    const/16 v14, 0xa

    .line 91
    .line 92
    const-wide/16 v7, 0x0

    .line 93
    .line 94
    sget-object v9, Lnet/blip/android/ui/settings/ComposableSingletons$SettingsScreenKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 95
    .line 96
    const/4 v10, 0x0

    .line 97
    invoke-static/range {v6 .. v14}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->d(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 102
    .line 103
    .line 104
    :goto_0
    return-object v5

    .line 105
    :pswitch_0
    move-object/from16 v1, p1

    .line 106
    .line 107
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 108
    .line 109
    move-object/from16 v7, p2

    .line 110
    .line 111
    check-cast v7, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    and-int/lit8 v8, v7, 0x3

    .line 118
    .line 119
    if-eq v8, v3, :cond_4

    .line 120
    .line 121
    move v4, v6

    .line 122
    :cond_4
    and-int/lit8 v3, v7, 0x1

    .line 123
    .line 124
    move-object v12, v1

    .line 125
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 126
    .line 127
    invoke-virtual {v12, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    if-nez v1, :cond_5

    .line 142
    .line 143
    if-ne v3, v2, :cond_6

    .line 144
    .line 145
    :cond_5
    new-instance v3, Li3;

    .line 146
    .line 147
    const/16 v1, 0x9

    .line 148
    .line 149
    invoke-direct {v3, v0, v1}, Li3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    :cond_6
    move-object v11, v3

    .line 156
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 157
    .line 158
    const/4 v13, 0x0

    .line 159
    const/16 v14, 0xf

    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    const-wide/16 v7, 0x0

    .line 163
    .line 164
    const/4 v9, 0x0

    .line 165
    const/4 v10, 0x0

    .line 166
    invoke-static/range {v6 .. v14}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->d(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_7
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 171
    .line 172
    .line 173
    :goto_1
    return-object v5

    .line 174
    :pswitch_1
    move-object/from16 v1, p1

    .line 175
    .line 176
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 177
    .line 178
    move-object/from16 v7, p2

    .line 179
    .line 180
    check-cast v7, Ljava/lang/Integer;

    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v7

    .line 186
    and-int/lit8 v8, v7, 0x3

    .line 187
    .line 188
    if-eq v8, v3, :cond_8

    .line 189
    .line 190
    move v4, v6

    .line 191
    :cond_8
    and-int/lit8 v3, v7, 0x1

    .line 192
    .line 193
    move-object v12, v1

    .line 194
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 195
    .line 196
    invoke-virtual {v12, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_b

    .line 201
    .line 202
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v3

    .line 210
    if-nez v1, :cond_9

    .line 211
    .line 212
    if-ne v3, v2, :cond_a

    .line 213
    .line 214
    :cond_9
    new-instance v3, Li3;

    .line 215
    .line 216
    const/16 v1, 0x8

    .line 217
    .line 218
    invoke-direct {v3, v0, v1}, Li3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    :cond_a
    move-object v11, v3

    .line 225
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 226
    .line 227
    const/4 v13, 0x0

    .line 228
    const/16 v14, 0xf

    .line 229
    .line 230
    const/4 v6, 0x0

    .line 231
    const-wide/16 v7, 0x0

    .line 232
    .line 233
    const/4 v9, 0x0

    .line 234
    const/4 v10, 0x0

    .line 235
    invoke-static/range {v6 .. v14}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->d(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 240
    .line 241
    .line 242
    :goto_2
    return-object v5

    .line 243
    :pswitch_2
    move-object/from16 v1, p1

    .line 244
    .line 245
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 246
    .line 247
    move-object/from16 v2, p2

    .line 248
    .line 249
    check-cast v2, Ljava/lang/Integer;

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    sget-object v7, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 256
    .line 257
    and-int/lit8 v7, v2, 0x3

    .line 258
    .line 259
    if-eq v7, v3, :cond_c

    .line 260
    .line 261
    move v3, v6

    .line 262
    goto :goto_3

    .line 263
    :cond_c
    move v3, v4

    .line 264
    :goto_3
    and-int/2addr v2, v6

    .line 265
    check-cast v1, Landroidx/compose/runtime/GapComposer;

    .line 266
    .line 267
    invoke-virtual {v1, v2, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-eqz v2, :cond_d

    .line 272
    .line 273
    invoke-static {v0, v1, v4}, Lnet/blip/android/ui/home/HomeScreenKt;->a(Landroidx/navigation/NavController;Landroidx/compose/runtime/Composer;I)V

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_d
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 278
    .line 279
    .line 280
    :goto_4
    return-object v5

    .line 281
    :pswitch_3
    move-object/from16 v1, p1

    .line 282
    .line 283
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 284
    .line 285
    move-object/from16 v2, p2

    .line 286
    .line 287
    check-cast v2, Ljava/lang/Integer;

    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/navigation/NavigationRootKt;->b(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)V

    .line 297
    .line 298
    .line 299
    return-object v5

    .line 300
    :pswitch_4
    move-object/from16 v1, p1

    .line 301
    .line 302
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 303
    .line 304
    move-object/from16 v2, p2

    .line 305
    .line 306
    check-cast v2, Ljava/lang/Integer;

    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 309
    .line 310
    .line 311
    invoke-static {v6}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    invoke-static {v0, v1, v2}, Lnet/blip/android/ui/navigation/NavigationRootKt;->b(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)V

    .line 316
    .line 317
    .line 318
    return-object v5

    .line 319
    :pswitch_5
    move-object/from16 v1, p1

    .line 320
    .line 321
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 322
    .line 323
    move-object/from16 v7, p2

    .line 324
    .line 325
    check-cast v7, Ljava/lang/Integer;

    .line 326
    .line 327
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    and-int/lit8 v8, v7, 0x3

    .line 332
    .line 333
    if-eq v8, v3, :cond_e

    .line 334
    .line 335
    move v4, v6

    .line 336
    :cond_e
    and-int/lit8 v3, v7, 0x1

    .line 337
    .line 338
    move-object v12, v1

    .line 339
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 340
    .line 341
    invoke-virtual {v12, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-eqz v1, :cond_11

    .line 346
    .line 347
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    if-nez v1, :cond_f

    .line 356
    .line 357
    if-ne v3, v2, :cond_10

    .line 358
    .line 359
    :cond_f
    new-instance v3, Li3;

    .line 360
    .line 361
    const/4 v1, 0x4

    .line 362
    invoke-direct {v3, v0, v1}, Li3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    :cond_10
    move-object v11, v3

    .line 369
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 370
    .line 371
    const/4 v13, 0x0

    .line 372
    const/16 v14, 0xf

    .line 373
    .line 374
    const/4 v6, 0x0

    .line 375
    const-wide/16 v7, 0x0

    .line 376
    .line 377
    const/4 v9, 0x0

    .line 378
    const/4 v10, 0x0

    .line 379
    invoke-static/range {v6 .. v14}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->d(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 380
    .line 381
    .line 382
    goto :goto_5

    .line 383
    :cond_11
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 384
    .line 385
    .line 386
    :goto_5
    return-object v5

    .line 387
    :pswitch_6
    move-object/from16 v1, p1

    .line 388
    .line 389
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 390
    .line 391
    move-object/from16 v7, p2

    .line 392
    .line 393
    check-cast v7, Ljava/lang/Integer;

    .line 394
    .line 395
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 396
    .line 397
    .line 398
    move-result v7

    .line 399
    and-int/lit8 v8, v7, 0x3

    .line 400
    .line 401
    if-eq v8, v3, :cond_12

    .line 402
    .line 403
    move v4, v6

    .line 404
    :cond_12
    and-int/lit8 v3, v7, 0x1

    .line 405
    .line 406
    move-object v12, v1

    .line 407
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 408
    .line 409
    invoke-virtual {v12, v3, v4}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 410
    .line 411
    .line 412
    move-result v1

    .line 413
    if-eqz v1, :cond_15

    .line 414
    .line 415
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    if-nez v1, :cond_13

    .line 424
    .line 425
    if-ne v3, v2, :cond_14

    .line 426
    .line 427
    :cond_13
    new-instance v3, Li3;

    .line 428
    .line 429
    const/4 v1, 0x3

    .line 430
    invoke-direct {v3, v0, v1}, Li3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    :cond_14
    move-object v11, v3

    .line 437
    check-cast v11, Lkotlin/jvm/functions/Function0;

    .line 438
    .line 439
    const/4 v13, 0x0

    .line 440
    const/16 v14, 0xf

    .line 441
    .line 442
    const/4 v6, 0x0

    .line 443
    const-wide/16 v7, 0x0

    .line 444
    .line 445
    const/4 v9, 0x0

    .line 446
    const/4 v10, 0x0

    .line 447
    invoke-static/range {v6 .. v14}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->d(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 448
    .line 449
    .line 450
    goto :goto_6

    .line 451
    :cond_15
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 452
    .line 453
    .line 454
    :goto_6
    return-object v5

    .line 455
    :pswitch_7
    move-object/from16 v1, p1

    .line 456
    .line 457
    check-cast v1, Landroidx/compose/runtime/Composer;

    .line 458
    .line 459
    move-object/from16 v7, p2

    .line 460
    .line 461
    check-cast v7, Ljava/lang/Integer;

    .line 462
    .line 463
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 464
    .line 465
    .line 466
    move-result v7

    .line 467
    and-int/lit8 v8, v7, 0x3

    .line 468
    .line 469
    if-eq v8, v3, :cond_16

    .line 470
    .line 471
    move v3, v6

    .line 472
    goto :goto_7

    .line 473
    :cond_16
    move v3, v4

    .line 474
    :goto_7
    and-int/2addr v6, v7

    .line 475
    move-object v13, v1

    .line 476
    check-cast v13, Landroidx/compose/runtime/GapComposer;

    .line 477
    .line 478
    invoke-virtual {v13, v6, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-eqz v1, :cond_19

    .line 483
    .line 484
    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    if-nez v1, :cond_17

    .line 493
    .line 494
    if-ne v3, v2, :cond_18

    .line 495
    .line 496
    :cond_17
    new-instance v3, Li3;

    .line 497
    .line 498
    invoke-direct {v3, v0, v4}, Li3;-><init>(Landroidx/navigation/NavHostController;I)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 502
    .line 503
    .line 504
    :cond_18
    move-object v12, v3

    .line 505
    check-cast v12, Lkotlin/jvm/functions/Function0;

    .line 506
    .line 507
    const/16 v14, 0x180

    .line 508
    .line 509
    const/16 v15, 0xb

    .line 510
    .line 511
    const/4 v7, 0x0

    .line 512
    const-wide/16 v8, 0x0

    .line 513
    .line 514
    sget-object v10, Lnet/blip/android/ui/audiopicker/ComposableSingletons$AudioPickerScreenKt;->a:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 515
    .line 516
    const/4 v11, 0x0

    .line 517
    invoke-static/range {v7 .. v15}, Lnet/blip/android/ui/lockups/ScreenLockupKt;->d(Landroidx/compose/ui/Modifier;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 518
    .line 519
    .line 520
    goto :goto_8

    .line 521
    :cond_19
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 522
    .line 523
    .line 524
    :goto_8
    return-object v5

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
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
