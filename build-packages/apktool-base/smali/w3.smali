.class public final synthetic Lw3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lw3;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lw3;->l:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lw3;->k:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p3, p0, Lw3;->m:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lokio/ByteString;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lw3;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3;->l:Ljava/lang/Object;

    iput-object p2, p0, Lw3;->m:Ljava/lang/Object;

    iput-object p3, p0, Lw3;->k:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lw3;->j:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x4

    .line 8
    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x1

    .line 12
    iget-object v7, v0, Lw3;->m:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v8, v0, Lw3;->k:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iget-object v0, v0, Lw3;->l:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    packed-switch v1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    check-cast v0, Ljava/util/Map;

    .line 23
    .line 24
    check-cast v7, Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    move-object/from16 v1, p1

    .line 27
    .line 28
    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    .line 29
    .line 30
    move-object/from16 v10, p2

    .line 31
    .line 32
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 33
    .line 34
    move-object/from16 v11, p3

    .line 35
    .line 36
    check-cast v11, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v11

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    and-int/lit8 v1, v11, 0x11

    .line 46
    .line 47
    const/16 v12, 0x10

    .line 48
    .line 49
    if-eq v1, v12, :cond_0

    .line 50
    .line 51
    move v1, v6

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move v1, v9

    .line 54
    :goto_0
    and-int/2addr v6, v11

    .line 55
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 56
    .line 57
    invoke-virtual {v10, v6, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    if-ne v6, v4, :cond_2

    .line 74
    .line 75
    :cond_1
    new-instance v6, Llc;

    .line 76
    .line 77
    invoke-direct {v6, v3, v7, v8}, Llc;-><init>(ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 84
    .line 85
    invoke-static {v5, v0, v6, v10, v9}, Lnet/blip/android/ui/components/DropdownMenuKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 90
    .line 91
    .line 92
    :goto_1
    return-object v2

    .line 93
    :pswitch_0
    check-cast v0, Lokio/ByteString;

    .line 94
    .line 95
    check-cast v7, Ljava/lang/String;

    .line 96
    .line 97
    move-object/from16 v1, p1

    .line 98
    .line 99
    check-cast v1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    .line 100
    .line 101
    move-object/from16 v10, p2

    .line 102
    .line 103
    check-cast v10, Landroidx/compose/runtime/Composer;

    .line 104
    .line 105
    move-object/from16 v11, p3

    .line 106
    .line 107
    check-cast v11, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    sget-object v12, Lnet/blip/shared/AvatarKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    and-int/lit8 v12, v11, 0x6

    .line 119
    .line 120
    const/4 v13, 0x2

    .line 121
    if-nez v12, :cond_5

    .line 122
    .line 123
    move-object v12, v10

    .line 124
    check-cast v12, Landroidx/compose/runtime/GapComposer;

    .line 125
    .line 126
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    if-eqz v12, :cond_4

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move v3, v13

    .line 134
    :goto_2
    or-int/2addr v11, v3

    .line 135
    :cond_5
    and-int/lit8 v3, v11, 0x13

    .line 136
    .line 137
    const/16 v12, 0x12

    .line 138
    .line 139
    if-eq v3, v12, :cond_6

    .line 140
    .line 141
    move v3, v6

    .line 142
    goto :goto_3

    .line 143
    :cond_6
    move v3, v9

    .line 144
    :goto_3
    and-int/2addr v11, v6

    .line 145
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 146
    .line 147
    invoke-virtual {v10, v11, v3}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_20

    .line 152
    .line 153
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    if-nez v3, :cond_7

    .line 162
    .line 163
    if-ne v11, v4, :cond_8

    .line 164
    .line 165
    :cond_7
    :try_start_0
    invoke-virtual {v0}, Lokio/ByteString;->r()[B

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    array-length v3, v0

    .line 170
    invoke-static {v0, v9, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    .line 176
    .line 177
    new-instance v3, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 178
    .line 179
    invoke-direct {v3, v0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    move-object v11, v3

    .line 183
    goto :goto_4

    .line 184
    :catch_0
    move-exception v0

    .line 185
    sget-object v3, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 186
    .line 187
    new-instance v11, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v14, "loading placeholder image bitmap: "

    .line 190
    .line 191
    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    new-array v11, v9, [Lkotlin/Pair;

    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    const-string v3, "RemoteAvatarImage"

    .line 207
    .line 208
    invoke-static {v3, v0, v11}, Lnet/blip/libblip/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 209
    .line 210
    .line 211
    move-object v11, v5

    .line 212
    :goto_4
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    :cond_8
    check-cast v11, Landroidx/compose/ui/graphics/ImageBitmap;

    .line 216
    .line 217
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    if-nez v0, :cond_9

    .line 226
    .line 227
    if-ne v3, v4, :cond_b

    .line 228
    .line 229
    :cond_9
    if-eqz v11, :cond_a

    .line 230
    .line 231
    new-instance v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 232
    .line 233
    invoke-direct {v0, v11}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;)V

    .line 234
    .line 235
    .line 236
    move-object v3, v0

    .line 237
    goto :goto_5

    .line 238
    :cond_a
    move-object v3, v5

    .line 239
    :goto_5
    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    :cond_b
    check-cast v3, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    .line 243
    .line 244
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 245
    .line 246
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 251
    .line 252
    const/4 v14, 0x0

    .line 253
    if-eqz v11, :cond_c

    .line 254
    .line 255
    check-cast v11, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    .line 256
    .line 257
    iget-object v11, v11, Landroidx/compose/ui/graphics/AndroidImageBitmap;->a:Landroid/graphics/Bitmap;

    .line 258
    .line 259
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    .line 264
    .line 265
    .line 266
    move-result v11

    .line 267
    invoke-static {v15, v11}, Ljava/lang/Math;->min(II)I

    .line 268
    .line 269
    .line 270
    move-result v11

    .line 271
    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->a()J

    .line 272
    .line 273
    .line 274
    move-result-wide v15

    .line 275
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 276
    .line 277
    .line 278
    move-result v15

    .line 279
    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->a()J

    .line 280
    .line 281
    .line 282
    move-result-wide v16

    .line 283
    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    div-int/2addr v5, v11

    .line 292
    invoke-interface {v0, v5}, Landroidx/compose/ui/unit/Density;->U(I)F

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    const/high16 v5, 0x3fa00000    # 1.25f

    .line 297
    .line 298
    mul-float/2addr v0, v5

    .line 299
    goto :goto_6

    .line 300
    :cond_c
    move v0, v14

    .line 301
    :goto_6
    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->a()J

    .line 302
    .line 303
    .line 304
    move-result-wide v15

    .line 305
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    invoke-interface {v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->a()J

    .line 310
    .line 311
    .line 312
    move-result-wide v15

    .line 313
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-ltz v1, :cond_d

    .line 322
    .line 323
    const/16 v5, 0x81

    .line 324
    .line 325
    if-ge v1, v5, :cond_d

    .line 326
    .line 327
    const-string v1, "s"

    .line 328
    .line 329
    goto :goto_7

    .line 330
    :cond_d
    const/16 v5, 0x80

    .line 331
    .line 332
    if-gt v5, v1, :cond_e

    .line 333
    .line 334
    const/16 v5, 0x101

    .line 335
    .line 336
    if-ge v1, v5, :cond_e

    .line 337
    .line 338
    const-string v1, "m"

    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_e
    const-string v1, "l"

    .line 342
    .line 343
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v7, "-"

    .line 352
    .line 353
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v1, ".jpg"

    .line 360
    .line 361
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    const-string v5, "https://static.blip.net/avatars/"

    .line 369
    .line 370
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    if-nez v5, :cond_f

    .line 383
    .line 384
    if-ne v7, v4, :cond_10

    .line 385
    .line 386
    :cond_f
    sget-object v5, Lkotlin/time/InstantJvmKt;->a:Lkotlin/time/Clock;

    .line 387
    .line 388
    invoke-interface {v5}, Lkotlin/time/Clock;->a()Lkotlin/time/Instant;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    :cond_10
    check-cast v7, Lkotlin/time/Instant;

    .line 396
    .line 397
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v11

    .line 405
    if-nez v5, :cond_11

    .line 406
    .line 407
    if-ne v11, v4, :cond_12

    .line 408
    .line 409
    :cond_11
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 410
    .line 411
    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 412
    .line 413
    .line 414
    move-result-object v11

    .line 415
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    :cond_12
    check-cast v11, Landroidx/compose/runtime/MutableState;

    .line 419
    .line 420
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v15

    .line 428
    if-nez v5, :cond_13

    .line 429
    .line 430
    if-ne v15, v4, :cond_14

    .line 431
    .line 432
    :cond_13
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 433
    .line 434
    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 435
    .line 436
    .line 437
    move-result-object v15

    .line 438
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    :cond_14
    check-cast v15, Landroidx/compose/runtime/MutableState;

    .line 442
    .line 443
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    check-cast v5, Ljava/lang/Boolean;

    .line 448
    .line 449
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    if-eqz v5, :cond_15

    .line 454
    .line 455
    move v0, v14

    .line 456
    :cond_15
    const/16 v5, 0x15e

    .line 457
    .line 458
    sget-object v12, Landroidx/compose/animation/core/EasingFunctionsKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 459
    .line 460
    invoke-static {v5, v9, v12, v13}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    invoke-static {v0, v5, v10, v9}, Landroidx/compose/animation/core/AnimateAsStateKt;->a(FLandroidx/compose/animation/core/TweenSpec;Landroidx/compose/runtime/GapComposer;I)Landroidx/compose/runtime/State;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 469
    .line 470
    .line 471
    move-result v12

    .line 472
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v13

    .line 476
    or-int/2addr v12, v13

    .line 477
    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 478
    .line 479
    .line 480
    move-result v13

    .line 481
    or-int/2addr v12, v13

    .line 482
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v13

    .line 486
    if-nez v12, :cond_16

    .line 487
    .line 488
    if-ne v13, v4, :cond_17

    .line 489
    .line 490
    :cond_16
    new-instance v13, Ly3;

    .line 491
    .line 492
    invoke-direct {v13, v0, v15, v5}, Ly3;-><init>(FLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 496
    .line 497
    .line 498
    :cond_17
    check-cast v13, Lkotlin/jvm/functions/Function0;

    .line 499
    .line 500
    invoke-static {v13}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    check-cast v0, Landroidx/compose/ui/unit/Dp;

    .line 509
    .line 510
    iget v0, v0, Landroidx/compose/ui/unit/Dp;->j:F

    .line 511
    .line 512
    invoke-static {v0, v14}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    if-lez v5, :cond_18

    .line 517
    .line 518
    invoke-static {v0, v14}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    :cond_18
    new-instance v5, Lm4;

    .line 523
    .line 524
    invoke-direct {v5, v0, v0, v9, v6}, Lm4;-><init>(FFIZ)V

    .line 525
    .line 526
    .line 527
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 528
    .line 529
    invoke-static {v0, v5}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    const/high16 v5, 0x3f800000    # 1.0f

    .line 534
    .line 535
    invoke-static {v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 536
    .line 537
    .line 538
    move-result-object v16

    .line 539
    new-instance v0, Lcoil3/request/ImageRequest$Builder;

    .line 540
    .line 541
    sget-object v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 542
    .line 543
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    move-result-object v6

    .line 547
    check-cast v6, Landroid/content/Context;

    .line 548
    .line 549
    invoke-direct {v0, v6}, Lcoil3/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 550
    .line 551
    .line 552
    iput-object v1, v0, Lcoil3/request/ImageRequest$Builder;->c:Ljava/lang/Object;

    .line 553
    .line 554
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->a:Lcoil3/Extras$Key;

    .line 555
    .line 556
    iget-object v1, v0, Lcoil3/request/ImageRequest$Builder;->o:Ljava/lang/Object;

    .line 557
    .line 558
    instance-of v6, v1, Lcoil3/Extras$Builder;

    .line 559
    .line 560
    if-eqz v6, :cond_19

    .line 561
    .line 562
    check-cast v1, Lcoil3/Extras$Builder;

    .line 563
    .line 564
    goto :goto_8

    .line 565
    :cond_19
    instance-of v6, v1, Lcoil3/Extras;

    .line 566
    .line 567
    if-eqz v6, :cond_1f

    .line 568
    .line 569
    check-cast v1, Lcoil3/Extras;

    .line 570
    .line 571
    new-instance v6, Lcoil3/Extras$Builder;

    .line 572
    .line 573
    invoke-direct {v6, v1}, Lcoil3/Extras$Builder;-><init>(Lcoil3/Extras;)V

    .line 574
    .line 575
    .line 576
    iput-object v6, v0, Lcoil3/request/ImageRequest$Builder;->o:Ljava/lang/Object;

    .line 577
    .line 578
    move-object v1, v6

    .line 579
    :goto_8
    sget-object v6, Lcoil3/request/ImageRequests_androidKt;->g:Lcoil3/Extras$Key;

    .line 580
    .line 581
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 582
    .line 583
    invoke-virtual {v1, v6, v9}, Lcoil3/Extras$Builder;->b(Lcoil3/Extras$Key;Ljava/lang/Object;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v0}, Lcoil3/request/ImageRequest$Builder;->a()Lcoil3/request/ImageRequest;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v6

    .line 598
    or-int/2addr v1, v6

    .line 599
    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 600
    .line 601
    .line 602
    move-result v6

    .line 603
    or-int/2addr v1, v6

    .line 604
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v6

    .line 608
    or-int/2addr v1, v6

    .line 609
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 610
    .line 611
    .line 612
    move-result-object v6

    .line 613
    if-nez v1, :cond_1a

    .line 614
    .line 615
    if-ne v6, v4, :cond_1b

    .line 616
    .line 617
    :cond_1a
    new-instance v6, Ls2;

    .line 618
    .line 619
    invoke-direct {v6, v7, v8, v15, v11}, Ls2;-><init>(Lkotlin/time/Instant;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    :cond_1b
    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 626
    .line 627
    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    check-cast v1, Landroid/content/Context;

    .line 632
    .line 633
    invoke-static {v1}, Lcoil3/SingletonImageLoader;->a(Landroid/content/Context;)Lcoil3/ImageLoader;

    .line 634
    .line 635
    .line 636
    move-result-object v1

    .line 637
    new-instance v14, Lcoil3/compose/internal/AsyncImageState;

    .line 638
    .line 639
    sget-object v4, Lcoil3/compose/LocalAsyncImageModelEqualityDelegateKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 640
    .line 641
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v4

    .line 645
    check-cast v4, Lcoil3/compose/AsyncImageModelEqualityDelegate;

    .line 646
    .line 647
    invoke-direct {v14, v0, v4, v1}, Lcoil3/compose/internal/AsyncImageState;-><init>(Ljava/lang/Object;Lcoil3/compose/AsyncImageModelEqualityDelegate;Lcoil3/ImageLoader;)V

    .line 648
    .line 649
    .line 650
    sget v0, Lcoil3/compose/internal/UtilsKt;->b:I

    .line 651
    .line 652
    if-nez v3, :cond_1d

    .line 653
    .line 654
    if-nez v3, :cond_1d

    .line 655
    .line 656
    if-eqz v3, :cond_1c

    .line 657
    .line 658
    goto :goto_a

    .line 659
    :cond_1c
    sget-object v0, Lcoil3/compose/AsyncImagePainter;->E:Lh;

    .line 660
    .line 661
    :goto_9
    move-object/from16 v17, v0

    .line 662
    .line 663
    goto :goto_b

    .line 664
    :cond_1d
    :goto_a
    new-instance v0, Lp2;

    .line 665
    .line 666
    const/16 v1, 0x12

    .line 667
    .line 668
    invoke-direct {v0, v3, v3, v3, v1}, Lp2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 669
    .line 670
    .line 671
    goto :goto_9

    .line 672
    :goto_b
    if-nez v6, :cond_1e

    .line 673
    .line 674
    const/16 v18, 0x0

    .line 675
    .line 676
    goto :goto_c

    .line 677
    :cond_1e
    new-instance v5, Lc8;

    .line 678
    .line 679
    const/16 v0, 0x8

    .line 680
    .line 681
    invoke-direct {v5, v6, v0}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 682
    .line 683
    .line 684
    move-object/from16 v18, v5

    .line 685
    .line 686
    :goto_c
    const v22, 0x180030

    .line 687
    .line 688
    .line 689
    const/16 v23, 0x0

    .line 690
    .line 691
    const-string v15, ""

    .line 692
    .line 693
    sget-object v19, Landroidx/compose/ui/Alignment$Companion;->e:Landroidx/compose/ui/BiasAlignment;

    .line 694
    .line 695
    sget-object v20, Landroidx/compose/ui/layout/ContentScale$Companion;->a:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    .line 696
    .line 697
    move-object/from16 v21, v10

    .line 698
    .line 699
    invoke-static/range {v14 .. v23}, Lcoil3/compose/AsyncImageKt;->a(Lcoil3/compose/internal/AsyncImageState;Ljava/lang/String;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;II)V

    .line 700
    .line 701
    .line 702
    goto :goto_d

    .line 703
    :cond_1f
    new-instance v0, Ljava/lang/AssertionError;

    .line 704
    .line 705
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 706
    .line 707
    .line 708
    throw v0

    .line 709
    :cond_20
    move-object/from16 v21, v10

    .line 710
    .line 711
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 712
    .line 713
    .line 714
    :goto_d
    return-object v2

    .line 715
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
