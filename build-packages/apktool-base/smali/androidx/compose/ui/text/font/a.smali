.class public final synthetic Landroidx/compose/ui/text/font/a;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

.field public final synthetic k:Landroidx/compose/ui/text/font/TypefaceRequest;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;Landroidx/compose/ui/text/font/TypefaceRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/text/font/a;->j:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/text/font/a;->k:Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/text/font/a;->j:Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    .line 4
    .line 5
    iget-object v5, v0, Landroidx/compose/ui/text/font/a;->k:Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 6
    .line 7
    move-object/from16 v7, p1

    .line 8
    .line 9
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iget-object v0, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->d:Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;

    .line 12
    .line 13
    iget-object v8, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->a:Landroidx/compose/ui/text/font/AndroidFontLoader;

    .line 14
    .line 15
    iget-object v2, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->f:Lc;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v3, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->a:Landroidx/compose/ui/text/font/FontFamily;

    .line 21
    .line 22
    instance-of v4, v3, Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 23
    .line 24
    if-nez v4, :cond_0

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v13, 0x0

    .line 28
    goto/16 :goto_1a

    .line 29
    .line 30
    :cond_0
    check-cast v3, Landroidx/compose/ui/text/font/FontListFontFamily;

    .line 31
    .line 32
    iget-object v3, v3, Landroidx/compose/ui/text/font/FontListFontFamily;->k:Ljava/util/List;

    .line 33
    .line 34
    iget-object v4, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    .line 35
    .line 36
    iget v6, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    .line 37
    .line 38
    new-instance v12, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 48
    .line 49
    .line 50
    move-result v13

    .line 51
    const/4 v14, 0x0

    .line 52
    :goto_0
    if-ge v14, v13, :cond_2

    .line 53
    .line 54
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v15

    .line 58
    move-object/from16 v16, v15

    .line 59
    .line 60
    check-cast v16, Landroidx/compose/ui/text/font/Font;

    .line 61
    .line 62
    move-object/from16 v9, v16

    .line 63
    .line 64
    check-cast v9, Landroidx/compose/ui/text/font/ResourceFont;

    .line 65
    .line 66
    iget-object v9, v9, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 67
    .line 68
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_1

    .line 73
    .line 74
    if-nez v6, :cond_1

    .line 75
    .line 76
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_1
    add-int/lit8 v14, v14, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-nez v9, :cond_3

    .line 87
    .line 88
    goto/16 :goto_12

    .line 89
    .line 90
    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 100
    .line 101
    .line 102
    move-result v12

    .line 103
    const/4 v13, 0x0

    .line 104
    :goto_1
    if-ge v13, v12, :cond_5

    .line 105
    .line 106
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v14

    .line 110
    move-object v15, v14

    .line 111
    check-cast v15, Landroidx/compose/ui/text/font/Font;

    .line 112
    .line 113
    check-cast v15, Landroidx/compose/ui/text/font/ResourceFont;

    .line 114
    .line 115
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    if-nez v6, :cond_4

    .line 119
    .line 120
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_6

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    move-object v3, v9

    .line 134
    :goto_2
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->k:Landroidx/compose/ui/text/font/FontWeight;

    .line 135
    .line 136
    invoke-virtual {v4, v6}, Landroidx/compose/ui/text/font/FontWeight;->a(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    iget v9, v4, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 141
    .line 142
    if-gez v6, :cond_10

    .line 143
    .line 144
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const/4 v6, 0x0

    .line 149
    const/4 v12, 0x0

    .line 150
    const/4 v13, 0x0

    .line 151
    :goto_3
    if-ge v6, v4, :cond_c

    .line 152
    .line 153
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v14

    .line 157
    check-cast v14, Landroidx/compose/ui/text/font/Font;

    .line 158
    .line 159
    check-cast v14, Landroidx/compose/ui/text/font/ResourceFont;

    .line 160
    .line 161
    iget-object v14, v14, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 162
    .line 163
    iget v15, v14, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 164
    .line 165
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 166
    .line 167
    .line 168
    move-result v16

    .line 169
    if-gez v16, :cond_8

    .line 170
    .line 171
    if-eqz v12, :cond_7

    .line 172
    .line 173
    iget v11, v12, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 174
    .line 175
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 176
    .line 177
    .line 178
    move-result v11

    .line 179
    if-lez v11, :cond_a

    .line 180
    .line 181
    :cond_7
    move-object v12, v14

    .line 182
    goto :goto_4

    .line 183
    :cond_8
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 184
    .line 185
    .line 186
    move-result v11

    .line 187
    if-lez v11, :cond_b

    .line 188
    .line 189
    if-eqz v13, :cond_9

    .line 190
    .line 191
    iget v11, v13, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 192
    .line 193
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 194
    .line 195
    .line 196
    move-result v11

    .line 197
    if-gez v11, :cond_a

    .line 198
    .line 199
    :cond_9
    move-object v13, v14

    .line 200
    :cond_a
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_b
    move-object v12, v14

    .line 204
    move-object v13, v12

    .line 205
    :cond_c
    if-nez v12, :cond_d

    .line 206
    .line 207
    move-object v12, v13

    .line 208
    :cond_d
    new-instance v4, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    const/4 v9, 0x0

    .line 222
    :goto_5
    if-ge v9, v6, :cond_f

    .line 223
    .line 224
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    move-object v13, v11

    .line 229
    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .line 230
    .line 231
    check-cast v13, Landroidx/compose/ui/text/font/ResourceFont;

    .line 232
    .line 233
    iget-object v13, v13, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 234
    .line 235
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    if-eqz v13, :cond_e

    .line 240
    .line 241
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    :cond_e
    add-int/lit8 v9, v9, 0x1

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_f
    move-object v12, v4

    .line 248
    goto/16 :goto_12

    .line 249
    .line 250
    :cond_10
    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->l:Landroidx/compose/ui/text/font/FontWeight;

    .line 251
    .line 252
    invoke-virtual {v4, v6}, Landroidx/compose/ui/text/font/FontWeight;->a(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-lez v4, :cond_19

    .line 257
    .line 258
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    const/4 v6, 0x0

    .line 263
    const/4 v11, 0x0

    .line 264
    const/4 v12, 0x0

    .line 265
    :goto_6
    if-ge v12, v4, :cond_16

    .line 266
    .line 267
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v13

    .line 271
    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .line 272
    .line 273
    check-cast v13, Landroidx/compose/ui/text/font/ResourceFont;

    .line 274
    .line 275
    iget-object v13, v13, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 276
    .line 277
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 278
    .line 279
    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 280
    .line 281
    .line 282
    move-result v15

    .line 283
    if-gez v15, :cond_12

    .line 284
    .line 285
    if-eqz v6, :cond_11

    .line 286
    .line 287
    iget v15, v6, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 288
    .line 289
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 290
    .line 291
    .line 292
    move-result v14

    .line 293
    if-lez v14, :cond_14

    .line 294
    .line 295
    :cond_11
    move-object v6, v13

    .line 296
    goto :goto_7

    .line 297
    :cond_12
    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 298
    .line 299
    .line 300
    move-result v15

    .line 301
    if-lez v15, :cond_15

    .line 302
    .line 303
    if-eqz v11, :cond_13

    .line 304
    .line 305
    iget v15, v11, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 306
    .line 307
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 308
    .line 309
    .line 310
    move-result v14

    .line 311
    if-gez v14, :cond_14

    .line 312
    .line 313
    :cond_13
    move-object v11, v13

    .line 314
    :cond_14
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_15
    move-object v6, v13

    .line 318
    move-object v11, v6

    .line 319
    :cond_16
    if-nez v11, :cond_17

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_17
    move-object v6, v11

    .line 323
    :goto_8
    new-instance v12, Ljava/util/ArrayList;

    .line 324
    .line 325
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 326
    .line 327
    .line 328
    move-result v4

    .line 329
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 333
    .line 334
    .line 335
    move-result v4

    .line 336
    const/4 v9, 0x0

    .line 337
    :goto_9
    if-ge v9, v4, :cond_2d

    .line 338
    .line 339
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v11

    .line 343
    move-object v13, v11

    .line 344
    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .line 345
    .line 346
    check-cast v13, Landroidx/compose/ui/text/font/ResourceFont;

    .line 347
    .line 348
    iget-object v13, v13, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 349
    .line 350
    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    if-eqz v13, :cond_18

    .line 355
    .line 356
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    :cond_18
    add-int/lit8 v9, v9, 0x1

    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_19
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    const/4 v11, 0x0

    .line 367
    const/4 v12, 0x0

    .line 368
    const/4 v13, 0x0

    .line 369
    :goto_a
    if-ge v13, v4, :cond_20

    .line 370
    .line 371
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v14

    .line 375
    check-cast v14, Landroidx/compose/ui/text/font/Font;

    .line 376
    .line 377
    check-cast v14, Landroidx/compose/ui/text/font/ResourceFont;

    .line 378
    .line 379
    iget-object v14, v14, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 380
    .line 381
    iget v15, v14, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 382
    .line 383
    iget v10, v6, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 384
    .line 385
    invoke-static {v15, v10}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 386
    .line 387
    .line 388
    move-result v10

    .line 389
    if-lez v10, :cond_1a

    .line 390
    .line 391
    goto :goto_b

    .line 392
    :cond_1a
    iget v10, v14, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 393
    .line 394
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 395
    .line 396
    .line 397
    move-result v15

    .line 398
    if-gez v15, :cond_1c

    .line 399
    .line 400
    if-eqz v11, :cond_1b

    .line 401
    .line 402
    iget v15, v11, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 403
    .line 404
    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    if-lez v10, :cond_1e

    .line 409
    .line 410
    :cond_1b
    move-object v11, v14

    .line 411
    goto :goto_b

    .line 412
    :cond_1c
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 413
    .line 414
    .line 415
    move-result v15

    .line 416
    if-lez v15, :cond_1f

    .line 417
    .line 418
    if-eqz v12, :cond_1d

    .line 419
    .line 420
    iget v15, v12, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 421
    .line 422
    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 423
    .line 424
    .line 425
    move-result v10

    .line 426
    if-gez v10, :cond_1e

    .line 427
    .line 428
    :cond_1d
    move-object v12, v14

    .line 429
    :cond_1e
    :goto_b
    add-int/lit8 v13, v13, 0x1

    .line 430
    .line 431
    goto :goto_a

    .line 432
    :cond_1f
    move-object v11, v14

    .line 433
    move-object v12, v11

    .line 434
    :cond_20
    if-nez v12, :cond_21

    .line 435
    .line 436
    goto :goto_c

    .line 437
    :cond_21
    move-object v11, v12

    .line 438
    :goto_c
    new-instance v12, Ljava/util/ArrayList;

    .line 439
    .line 440
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    .line 446
    .line 447
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    const/4 v6, 0x0

    .line 452
    :goto_d
    if-ge v6, v4, :cond_23

    .line 453
    .line 454
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v10

    .line 458
    move-object v13, v10

    .line 459
    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .line 460
    .line 461
    check-cast v13, Landroidx/compose/ui/text/font/ResourceFont;

    .line 462
    .line 463
    iget-object v13, v13, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 464
    .line 465
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v13

    .line 469
    if-eqz v13, :cond_22

    .line 470
    .line 471
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    :cond_22
    add-int/lit8 v6, v6, 0x1

    .line 475
    .line 476
    goto :goto_d

    .line 477
    :cond_23
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 478
    .line 479
    .line 480
    move-result v4

    .line 481
    if-eqz v4, :cond_2d

    .line 482
    .line 483
    sget-object v4, Landroidx/compose/ui/text/font/FontWeight;->l:Landroidx/compose/ui/text/font/FontWeight;

    .line 484
    .line 485
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 486
    .line 487
    .line 488
    move-result v6

    .line 489
    const/4 v10, 0x0

    .line 490
    const/4 v11, 0x0

    .line 491
    const/4 v12, 0x0

    .line 492
    :goto_e
    if-ge v12, v6, :cond_2a

    .line 493
    .line 494
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v13

    .line 498
    check-cast v13, Landroidx/compose/ui/text/font/Font;

    .line 499
    .line 500
    check-cast v13, Landroidx/compose/ui/text/font/ResourceFont;

    .line 501
    .line 502
    iget-object v13, v13, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 503
    .line 504
    if-eqz v4, :cond_24

    .line 505
    .line 506
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 507
    .line 508
    iget v15, v4, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 509
    .line 510
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 511
    .line 512
    .line 513
    move-result v14

    .line 514
    if-gez v14, :cond_24

    .line 515
    .line 516
    goto :goto_f

    .line 517
    :cond_24
    iget v14, v13, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 518
    .line 519
    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 520
    .line 521
    .line 522
    move-result v15

    .line 523
    if-gez v15, :cond_26

    .line 524
    .line 525
    if-eqz v10, :cond_25

    .line 526
    .line 527
    iget v15, v10, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 528
    .line 529
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 530
    .line 531
    .line 532
    move-result v14

    .line 533
    if-lez v14, :cond_28

    .line 534
    .line 535
    :cond_25
    move-object v10, v13

    .line 536
    goto :goto_f

    .line 537
    :cond_26
    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 538
    .line 539
    .line 540
    move-result v15

    .line 541
    if-lez v15, :cond_29

    .line 542
    .line 543
    if-eqz v11, :cond_27

    .line 544
    .line 545
    iget v15, v11, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 546
    .line 547
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->b(II)I

    .line 548
    .line 549
    .line 550
    move-result v14

    .line 551
    if-gez v14, :cond_28

    .line 552
    .line 553
    :cond_27
    move-object v11, v13

    .line 554
    :cond_28
    :goto_f
    add-int/lit8 v12, v12, 0x1

    .line 555
    .line 556
    goto :goto_e

    .line 557
    :cond_29
    move-object v10, v13

    .line 558
    move-object v11, v10

    .line 559
    :cond_2a
    if-nez v11, :cond_2b

    .line 560
    .line 561
    goto :goto_10

    .line 562
    :cond_2b
    move-object v10, v11

    .line 563
    :goto_10
    new-instance v12, Ljava/util/ArrayList;

    .line 564
    .line 565
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 566
    .line 567
    .line 568
    move-result v4

    .line 569
    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 570
    .line 571
    .line 572
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    const/4 v6, 0x0

    .line 577
    :goto_11
    if-ge v6, v4, :cond_2d

    .line 578
    .line 579
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v9

    .line 583
    move-object v11, v9

    .line 584
    check-cast v11, Landroidx/compose/ui/text/font/Font;

    .line 585
    .line 586
    check-cast v11, Landroidx/compose/ui/text/font/ResourceFont;

    .line 587
    .line 588
    iget-object v11, v11, Landroidx/compose/ui/text/font/ResourceFont;->a:Landroidx/compose/ui/text/font/FontWeight;

    .line 589
    .line 590
    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v11

    .line 594
    if-eqz v11, :cond_2c

    .line 595
    .line 596
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    .line 598
    .line 599
    :cond_2c
    add-int/lit8 v6, v6, 0x1

    .line 600
    .line 601
    goto :goto_11

    .line 602
    :cond_2d
    :goto_12
    iget-object v3, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->a:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    .line 603
    .line 604
    invoke-interface {v12}, Ljava/util/Collection;->size()I

    .line 605
    .line 606
    .line 607
    move-result v4

    .line 608
    if-lez v4, :cond_32

    .line 609
    .line 610
    const/4 v9, 0x0

    .line 611
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    check-cast v4, Landroidx/compose/ui/text/font/Font;

    .line 616
    .line 617
    move-object v6, v4

    .line 618
    check-cast v6, Landroidx/compose/ui/text/font/ResourceFont;

    .line 619
    .line 620
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 621
    .line 622
    .line 623
    iget-object v6, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->c:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 624
    .line 625
    monitor-enter v6

    .line 626
    :try_start_0
    new-instance v10, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    .line 627
    .line 628
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 629
    .line 630
    .line 631
    invoke-direct {v10, v4}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;)V

    .line 632
    .line 633
    .line 634
    iget-object v11, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->a:Landroidx/collection/LruCache;

    .line 635
    .line 636
    invoke-virtual {v11, v10}, Landroidx/collection/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object v11

    .line 640
    check-cast v11, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 641
    .line 642
    if-nez v11, :cond_2e

    .line 643
    .line 644
    iget-object v11, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->b:Landroidx/collection/MutableScatterMap;

    .line 645
    .line 646
    invoke-virtual {v11, v10}, Landroidx/collection/ScatterMap;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v10

    .line 650
    move-object v11, v10

    .line 651
    check-cast v11, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 652
    .line 653
    goto :goto_13

    .line 654
    :catchall_0
    move-exception v0

    .line 655
    goto :goto_18

    .line 656
    :cond_2e
    :goto_13
    if-eqz v11, :cond_2f

    .line 657
    .line 658
    iget-object v3, v11, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    .line 660
    monitor-exit v6

    .line 661
    goto :goto_16

    .line 662
    :cond_2f
    monitor-exit v6

    .line 663
    :try_start_1
    invoke-virtual {v8, v4}, Landroidx/compose/ui/text/font/AndroidFontLoader;->a(Landroidx/compose/ui/text/font/Font;)Landroid/graphics/Typeface;

    .line 664
    .line 665
    .line 666
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 667
    goto :goto_14

    .line 668
    :catch_0
    invoke-virtual {v2, v5}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v6

    .line 672
    :goto_14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    new-instance v10, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;

    .line 676
    .line 677
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 678
    .line 679
    .line 680
    invoke-direct {v10, v4}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$Key;-><init>(Landroidx/compose/ui/text/font/Font;)V

    .line 681
    .line 682
    .line 683
    iget-object v11, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->c:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 684
    .line 685
    monitor-enter v11

    .line 686
    if-nez v6, :cond_30

    .line 687
    .line 688
    :try_start_2
    iget-object v3, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->b:Landroidx/collection/MutableScatterMap;

    .line 689
    .line 690
    new-instance v12, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 691
    .line 692
    const/4 v13, 0x0

    .line 693
    invoke-direct {v12, v13}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;-><init>(Ljava/lang/Object;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v3, v10, v12}, Landroidx/collection/MutableScatterMap;->o(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 697
    .line 698
    .line 699
    goto :goto_15

    .line 700
    :catchall_1
    move-exception v0

    .line 701
    goto :goto_17

    .line 702
    :cond_30
    iget-object v3, v3, Landroidx/compose/ui/text/font/AsyncTypefaceCache;->a:Landroidx/collection/LruCache;

    .line 703
    .line 704
    new-instance v12, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;

    .line 705
    .line 706
    invoke-direct {v12, v6}, Landroidx/compose/ui/text/font/AsyncTypefaceCache$AsyncTypefaceResult;-><init>(Ljava/lang/Object;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v3, v10, v12}, Landroidx/collection/LruCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 710
    .line 711
    .line 712
    :goto_15
    monitor-exit v11

    .line 713
    move-object v3, v6

    .line 714
    :goto_16
    if-nez v3, :cond_31

    .line 715
    .line 716
    invoke-virtual {v2, v5}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v3

    .line 720
    :cond_31
    iget v2, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->d:I

    .line 721
    .line 722
    iget-object v6, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    .line 723
    .line 724
    iget v10, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    .line 725
    .line 726
    invoke-static {v2, v3, v4, v6, v10}, Landroidx/compose/ui/text/font/FontSynthesis_androidKt;->a(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v2

    .line 730
    new-instance v3, Lkotlin/Pair;

    .line 731
    .line 732
    const/4 v13, 0x0

    .line 733
    invoke-direct {v3, v13, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    goto :goto_19

    .line 737
    :goto_17
    monitor-exit v11

    .line 738
    throw v0

    .line 739
    :goto_18
    monitor-exit v6

    .line 740
    throw v0

    .line 741
    :cond_32
    const/4 v9, 0x0

    .line 742
    invoke-virtual {v2, v5}, Lc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    .line 744
    .line 745
    move-result-object v2

    .line 746
    new-instance v3, Lkotlin/Pair;

    .line 747
    .line 748
    const/4 v13, 0x0

    .line 749
    invoke-direct {v3, v13, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 750
    .line 751
    .line 752
    :goto_19
    iget-object v2, v3, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 753
    .line 754
    check-cast v2, Ljava/util/List;

    .line 755
    .line 756
    iget-object v4, v3, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 757
    .line 758
    if-nez v2, :cond_33

    .line 759
    .line 760
    new-instance v0, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 761
    .line 762
    const/4 v10, 0x1

    .line 763
    invoke-direct {v0, v4, v10}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    .line 764
    .line 765
    .line 766
    move-object v13, v0

    .line 767
    goto :goto_1a

    .line 768
    :cond_33
    move-object v3, v2

    .line 769
    const/4 v10, 0x1

    .line 770
    new-instance v2, Landroidx/compose/ui/text/font/AsyncFontListLoader;

    .line 771
    .line 772
    iget-object v6, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->a:Landroidx/compose/ui/text/font/AsyncTypefaceCache;

    .line 773
    .line 774
    invoke-direct/range {v2 .. v8}, Landroidx/compose/ui/text/font/AsyncFontListLoader;-><init>(Ljava/util/List;Ljava/lang/Object;Landroidx/compose/ui/text/font/TypefaceRequest;Landroidx/compose/ui/text/font/AsyncTypefaceCache;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/font/AndroidFontLoader;)V

    .line 775
    .line 776
    .line 777
    iget-object v0, v0, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;->b:Lkotlinx/coroutines/internal/ContextScope;

    .line 778
    .line 779
    sget-object v3, Lkotlinx/coroutines/CoroutineStart;->m:Lkotlinx/coroutines/CoroutineStart;

    .line 780
    .line 781
    new-instance v4, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$resolve$1;

    .line 782
    .line 783
    const/4 v13, 0x0

    .line 784
    invoke-direct {v4, v2, v13}, Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter$resolve$1;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;Lkotlin/coroutines/Continuation;)V

    .line 785
    .line 786
    .line 787
    invoke-static {v0, v13, v3, v4, v10}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 788
    .line 789
    .line 790
    new-instance v13, Landroidx/compose/ui/text/font/TypefaceResult$Async;

    .line 791
    .line 792
    invoke-direct {v13, v2}, Landroidx/compose/ui/text/font/TypefaceResult$Async;-><init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;)V

    .line 793
    .line 794
    .line 795
    :goto_1a
    if-nez v13, :cond_3a

    .line 796
    .line 797
    iget-object v0, v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->e:Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;

    .line 798
    .line 799
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    .line 801
    .line 802
    iget-object v0, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->a:Landroidx/compose/ui/text/font/FontFamily;

    .line 803
    .line 804
    if-eqz v0, :cond_35

    .line 805
    .line 806
    instance-of v0, v0, Landroidx/compose/ui/text/font/DefaultFontFamily;

    .line 807
    .line 808
    if-eqz v0, :cond_34

    .line 809
    .line 810
    goto :goto_1b

    .line 811
    :cond_34
    const/4 v13, 0x0

    .line 812
    goto :goto_1e

    .line 813
    :cond_35
    :goto_1b
    iget-object v0, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->b:Landroidx/compose/ui/text/font/FontWeight;

    .line 814
    .line 815
    iget v1, v5, Landroidx/compose/ui/text/font/TypefaceRequest;->c:I

    .line 816
    .line 817
    if-nez v1, :cond_36

    .line 818
    .line 819
    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    .line 820
    .line 821
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 822
    .line 823
    .line 824
    move-result v2

    .line 825
    if-eqz v2, :cond_36

    .line 826
    .line 827
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 828
    .line 829
    :goto_1c
    const/4 v10, 0x1

    .line 830
    goto :goto_1d

    .line 831
    :cond_36
    if-nez v1, :cond_37

    .line 832
    .line 833
    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->t:Landroidx/compose/ui/text/font/FontWeight;

    .line 834
    .line 835
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 836
    .line 837
    .line 838
    move-result v2

    .line 839
    if-eqz v2, :cond_37

    .line 840
    .line 841
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 842
    .line 843
    goto :goto_1c

    .line 844
    :cond_37
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 845
    .line 846
    iget v0, v0, Landroidx/compose/ui/text/font/FontWeight;->j:I

    .line 847
    .line 848
    const/4 v10, 0x1

    .line 849
    if-ne v1, v10, :cond_38

    .line 850
    .line 851
    move v9, v10

    .line 852
    :cond_38
    invoke-static {v2, v0, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 853
    .line 854
    .line 855
    move-result-object v0

    .line 856
    :goto_1d
    new-instance v13, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;

    .line 857
    .line 858
    invoke-direct {v13, v0, v10}, Landroidx/compose/ui/text/font/TypefaceResult$Immutable;-><init>(Ljava/lang/Object;Z)V

    .line 859
    .line 860
    .line 861
    :goto_1e
    if-eqz v13, :cond_39

    .line 862
    .line 863
    goto :goto_1f

    .line 864
    :cond_39
    const-string v0, "Could not load font"

    .line 865
    .line 866
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 867
    .line 868
    .line 869
    const/4 v13, 0x0

    .line 870
    :cond_3a
    :goto_1f
    return-object v13
.end method
