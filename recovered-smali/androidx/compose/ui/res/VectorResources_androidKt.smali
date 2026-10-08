.class public abstract Landroidx/compose/ui/res/VectorResources_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;
    .locals 43

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    new-instance v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    .line 12
    .line 13
    invoke-direct {v5, v3}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Landroid/content/res/XmlResourceParser;)V

    .line 14
    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->a:[I

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    move-object v7, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {v1, v4, v0, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :goto_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {v5, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 37
    .line 38
    .line 39
    const-string v0, "autoMirrored"

    .line 40
    .line 41
    invoke-static {v3, v0}, Landroidx/core/content/res/TypedArrayUtils;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v8, 0x5

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    move/from16 v18, v6

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {v7, v8, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    move/from16 v18, v0

    .line 56
    .line 57
    :goto_2
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {v5, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 62
    .line 63
    .line 64
    const-string v0, "viewportWidth"

    .line 65
    .line 66
    const/4 v9, 0x7

    .line 67
    const/4 v10, 0x0

    .line 68
    invoke-virtual {v5, v7, v0, v9, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 69
    .line 70
    .line 71
    move-result v13

    .line 72
    const-string v0, "viewportHeight"

    .line 73
    .line 74
    const/16 v11, 0x8

    .line 75
    .line 76
    invoke-virtual {v5, v7, v0, v11, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    cmpg-float v0, v13, v10

    .line 81
    .line 82
    if-lez v0, :cond_35

    .line 83
    .line 84
    cmpg-float v0, v14, v10

    .line 85
    .line 86
    if-lez v0, :cond_34

    .line 87
    .line 88
    const/4 v12, 0x3

    .line 89
    invoke-virtual {v7, v12, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 90
    .line 91
    .line 92
    move-result v15

    .line 93
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {v5, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 98
    .line 99
    .line 100
    const/4 v8, 0x2

    .line 101
    invoke-virtual {v7, v8, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 102
    .line 103
    .line 104
    move-result v16

    .line 105
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v5, v0}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 110
    .line 111
    .line 112
    const/4 v10, 0x1

    .line 113
    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const-string v12, "http://schemas.android.com/apk/res/android"

    .line 118
    .line 119
    const/16 v20, 0x0

    .line 120
    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    new-instance v0, Landroid/util/TypedValue;

    .line 124
    .line 125
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v10, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 129
    .line 130
    .line 131
    iget v0, v0, Landroid/util/TypedValue;->type:I

    .line 132
    .line 133
    if-ne v0, v8, :cond_2

    .line 134
    .line 135
    sget-wide v21, Landroidx/compose/ui/graphics/Color;->h:J

    .line 136
    .line 137
    move-wide/from16 v23, v21

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_2
    const-string v0, "tint"

    .line 141
    .line 142
    invoke-interface {v3, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_4

    .line 147
    .line 148
    new-instance v0, Landroid/util/TypedValue;

    .line 149
    .line 150
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v7, v10, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 154
    .line 155
    .line 156
    iget v9, v0, Landroid/util/TypedValue;->type:I

    .line 157
    .line 158
    if-eq v9, v8, :cond_5

    .line 159
    .line 160
    const/16 v11, 0x1c

    .line 161
    .line 162
    if-lt v9, v11, :cond_3

    .line 163
    .line 164
    const/16 v11, 0x1f

    .line 165
    .line 166
    if-gt v9, v11, :cond_3

    .line 167
    .line 168
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 169
    .line 170
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    goto :goto_3

    .line 175
    :cond_3
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-virtual {v7, v10, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 180
    .line 181
    .line 182
    move-result v9

    .line 183
    sget-object v11, Landroidx/core/content/res/ColorStateListInflaterCompat;->a:Ljava/lang/ThreadLocal;

    .line 184
    .line 185
    :try_start_0
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-static {v0, v9, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->a(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 190
    .line 191
    .line 192
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    goto :goto_3

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v9, "CSLCompat"

    .line 196
    .line 197
    const-string v11, "Failed to inflate ColorStateList."

    .line 198
    .line 199
    invoke-static {v9, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    .line 201
    .line 202
    :cond_4
    move-object/from16 v0, v20

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v3, "Failed to resolve attribute at index 1: "

    .line 210
    .line 211
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v1

    .line 225
    :goto_3
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 226
    .line 227
    .line 228
    move-result v9

    .line 229
    invoke-virtual {v5, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 230
    .line 231
    .line 232
    if-eqz v0, :cond_6

    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 239
    .line 240
    .line 241
    move-result-wide v23

    .line 242
    goto :goto_4

    .line 243
    :cond_6
    sget-wide v23, Landroidx/compose/ui/graphics/Color;->h:J

    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_7
    sget-wide v23, Landroidx/compose/ui/graphics/Color;->h:J

    .line 247
    .line 248
    :goto_4
    const/4 v0, 0x6

    .line 249
    const/4 v9, -0x1

    .line 250
    invoke-virtual {v7, v0, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 251
    .line 252
    .line 253
    move-result v11

    .line 254
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 255
    .line 256
    .line 257
    move-result v10

    .line 258
    invoke-virtual {v5, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 259
    .line 260
    .line 261
    const/16 v10, 0xd

    .line 262
    .line 263
    const/16 v0, 0x9

    .line 264
    .line 265
    if-eq v11, v9, :cond_8

    .line 266
    .line 267
    const/4 v9, 0x3

    .line 268
    if-eq v11, v9, :cond_a

    .line 269
    .line 270
    const/4 v9, 0x5

    .line 271
    if-eq v11, v9, :cond_8

    .line 272
    .line 273
    if-eq v11, v0, :cond_9

    .line 274
    .line 275
    packed-switch v11, :pswitch_data_0

    .line 276
    .line 277
    .line 278
    :cond_8
    const/4 v9, 0x0

    .line 279
    const/16 v17, 0x5

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :pswitch_0
    const/4 v9, 0x0

    .line 283
    const/16 v17, 0xc

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :pswitch_1
    const/16 v9, 0xe

    .line 287
    .line 288
    move/from16 v17, v9

    .line 289
    .line 290
    :goto_5
    const/4 v9, 0x0

    .line 291
    goto :goto_6

    .line 292
    :pswitch_2
    move/from16 v17, v10

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_9
    move/from16 v17, v0

    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_a
    const/4 v9, 0x0

    .line 299
    const/16 v17, 0x3

    .line 300
    .line 301
    :goto_6
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 302
    .line 303
    .line 304
    move-result-object v11

    .line 305
    iget v11, v11, Landroid/util/DisplayMetrics;->density:F

    .line 306
    .line 307
    div-float v11, v15, v11

    .line 308
    .line 309
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 310
    .line 311
    .line 312
    move-result-object v15

    .line 313
    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    .line 314
    .line 315
    div-float v16, v16, v15

    .line 316
    .line 317
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 318
    .line 319
    .line 320
    new-instance v26, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 321
    .line 322
    move v7, v10

    .line 323
    const/4 v10, 0x0

    .line 324
    const/4 v15, 0x3

    .line 325
    const/16 v19, 0x1

    .line 326
    .line 327
    move-object/from16 v41, v12

    .line 328
    .line 329
    move v6, v15

    .line 330
    move/from16 v12, v16

    .line 331
    .line 332
    move-wide/from16 v15, v23

    .line 333
    .line 334
    move-object/from16 v9, v26

    .line 335
    .line 336
    const/4 v7, 0x1

    .line 337
    invoke-direct/range {v9 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZI)V

    .line 338
    .line 339
    .line 340
    const/4 v9, 0x0

    .line 341
    :goto_7
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 342
    .line 343
    .line 344
    move-result v10

    .line 345
    if-eq v10, v7, :cond_33

    .line 346
    .line 347
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 348
    .line 349
    .line 350
    move-result v10

    .line 351
    if-ge v10, v7, :cond_b

    .line 352
    .line 353
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    if-ne v10, v6, :cond_b

    .line 358
    .line 359
    goto/16 :goto_22

    .line 360
    .line 361
    :cond_b
    iget-object v10, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 362
    .line 363
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 364
    .line 365
    .line 366
    move-result v11

    .line 367
    const-string v12, "group"

    .line 368
    .line 369
    if-eq v11, v8, :cond_11

    .line 370
    .line 371
    if-eq v11, v6, :cond_c

    .line 372
    .line 373
    :goto_8
    goto :goto_a

    .line 374
    :cond_c
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    invoke-virtual {v12, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    if-eqz v10, :cond_f

    .line 383
    .line 384
    add-int/lit8 v9, v9, 0x1

    .line 385
    .line 386
    const/4 v10, 0x0

    .line 387
    :goto_9
    if-ge v10, v9, :cond_d

    .line 388
    .line 389
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->e()V

    .line 390
    .line 391
    .line 392
    add-int/lit8 v10, v10, 0x1

    .line 393
    .line 394
    goto :goto_9

    .line 395
    :cond_d
    iget-object v9, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c:[I

    .line 396
    .line 397
    if-eqz v9, :cond_10

    .line 398
    .line 399
    iget v10, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->d:I

    .line 400
    .line 401
    if-nez v10, :cond_e

    .line 402
    .line 403
    goto :goto_b

    .line 404
    :cond_e
    add-int/lit8 v10, v10, -0x1

    .line 405
    .line 406
    iput v10, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->d:I

    .line 407
    .line 408
    aget v9, v9, v10

    .line 409
    .line 410
    :cond_f
    :goto_a
    const/4 v10, 0x0

    .line 411
    const/4 v14, 0x7

    .line 412
    const/16 v25, -0x1

    .line 413
    .line 414
    const/16 v42, 0x0

    .line 415
    .line 416
    goto/16 :goto_21

    .line 417
    .line 418
    :cond_10
    :goto_b
    const/4 v9, 0x0

    .line 419
    goto :goto_a

    .line 420
    :cond_11
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v11

    .line 424
    if-eqz v11, :cond_f

    .line 425
    .line 426
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    .line 427
    .line 428
    .line 429
    move-result v13

    .line 430
    const v14, -0x624e8b7e

    .line 431
    .line 432
    .line 433
    sget-object v35, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 434
    .line 435
    const-string v15, ""

    .line 436
    .line 437
    iget-object v0, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->e:Landroidx/compose/ui/graphics/vector/PathParser;

    .line 438
    .line 439
    if-eq v13, v14, :cond_2e

    .line 440
    .line 441
    const v14, 0x346425

    .line 442
    .line 443
    .line 444
    const/4 v6, 0x4

    .line 445
    if-eq v13, v14, :cond_18

    .line 446
    .line 447
    const v0, 0x5e0f67f

    .line 448
    .line 449
    .line 450
    if-eq v13, v0, :cond_12

    .line 451
    .line 452
    goto :goto_8

    .line 453
    :cond_12
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    if-nez v0, :cond_13

    .line 458
    .line 459
    goto :goto_8

    .line 460
    :cond_13
    sget-object v0, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->b:[I

    .line 461
    .line 462
    if-nez v1, :cond_14

    .line 463
    .line 464
    invoke-virtual {v2, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    goto :goto_c

    .line 469
    :cond_14
    const/4 v10, 0x0

    .line 470
    invoke-virtual {v1, v4, v0, v10, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    :goto_c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 475
    .line 476
    .line 477
    move-result v10

    .line 478
    invoke-virtual {v5, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 479
    .line 480
    .line 481
    const-string v10, "rotation"

    .line 482
    .line 483
    const/4 v11, 0x5

    .line 484
    const/4 v12, 0x0

    .line 485
    invoke-virtual {v5, v0, v10, v11, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 486
    .line 487
    .line 488
    move-result v28

    .line 489
    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 490
    .line 491
    .line 492
    move-result v29

    .line 493
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 494
    .line 495
    .line 496
    move-result v10

    .line 497
    invoke-virtual {v5, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v0, v8, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 501
    .line 502
    .line 503
    move-result v30

    .line 504
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 505
    .line 506
    .line 507
    move-result v10

    .line 508
    invoke-virtual {v5, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 509
    .line 510
    .line 511
    const-string v10, "scaleX"

    .line 512
    .line 513
    const/4 v11, 0x3

    .line 514
    const/high16 v13, 0x3f800000    # 1.0f

    .line 515
    .line 516
    invoke-virtual {v5, v0, v10, v11, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 517
    .line 518
    .line 519
    move-result v31

    .line 520
    const-string v10, "scaleY"

    .line 521
    .line 522
    invoke-virtual {v5, v0, v10, v6, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 523
    .line 524
    .line 525
    move-result v32

    .line 526
    const-string v10, "translateX"

    .line 527
    .line 528
    const/4 v11, 0x6

    .line 529
    invoke-virtual {v5, v0, v10, v11, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 530
    .line 531
    .line 532
    move-result v33

    .line 533
    const-string v10, "translateY"

    .line 534
    .line 535
    const/4 v13, 0x7

    .line 536
    invoke-virtual {v5, v0, v10, v13, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 537
    .line 538
    .line 539
    move-result v34

    .line 540
    const/4 v10, 0x0

    .line 541
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v11

    .line 545
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 546
    .line 547
    .line 548
    move-result v10

    .line 549
    invoke-virtual {v5, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 550
    .line 551
    .line 552
    if-nez v11, :cond_15

    .line 553
    .line 554
    move-object/from16 v27, v15

    .line 555
    .line 556
    goto :goto_d

    .line 557
    :cond_15
    move-object/from16 v27, v11

    .line 558
    .line 559
    :goto_d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 560
    .line 561
    .line 562
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 563
    .line 564
    invoke-virtual/range {v26 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->a(Ljava/lang/String;FFFFFFFLjava/util/List;)V

    .line 565
    .line 566
    .line 567
    iget-object v0, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c:[I

    .line 568
    .line 569
    if-nez v0, :cond_16

    .line 570
    .line 571
    new-array v0, v6, [I

    .line 572
    .line 573
    iput-object v0, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c:[I

    .line 574
    .line 575
    goto :goto_e

    .line 576
    :cond_16
    iget v6, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->d:I

    .line 577
    .line 578
    array-length v10, v0

    .line 579
    if-lt v6, v10, :cond_17

    .line 580
    .line 581
    array-length v6, v0

    .line 582
    mul-int/2addr v6, v8

    .line 583
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([II)[I

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    iput-object v0, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c:[I

    .line 588
    .line 589
    :cond_17
    :goto_e
    iget v6, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->d:I

    .line 590
    .line 591
    add-int/lit8 v10, v6, 0x1

    .line 592
    .line 593
    iput v10, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->d:I

    .line 594
    .line 595
    aput v9, v0, v6

    .line 596
    .line 597
    move/from16 v42, v12

    .line 598
    .line 599
    move v14, v13

    .line 600
    const/4 v9, 0x0

    .line 601
    :goto_f
    const/4 v10, 0x0

    .line 602
    const/16 v25, -0x1

    .line 603
    .line 604
    goto/16 :goto_21

    .line 605
    .line 606
    :cond_18
    const/4 v12, 0x0

    .line 607
    const/4 v13, 0x7

    .line 608
    const-string v14, "path"

    .line 609
    .line 610
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v11

    .line 614
    if-nez v11, :cond_19

    .line 615
    .line 616
    move/from16 v42, v12

    .line 617
    .line 618
    move v14, v13

    .line 619
    goto :goto_f

    .line 620
    :cond_19
    sget-object v11, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->c:[I

    .line 621
    .line 622
    if-nez v1, :cond_1a

    .line 623
    .line 624
    invoke-virtual {v2, v4, v11}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 625
    .line 626
    .line 627
    move-result-object v11

    .line 628
    const/4 v14, 0x0

    .line 629
    goto :goto_10

    .line 630
    :cond_1a
    const/4 v14, 0x0

    .line 631
    invoke-virtual {v1, v4, v11, v14, v14}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 632
    .line 633
    .line 634
    move-result-object v11

    .line 635
    :goto_10
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 636
    .line 637
    .line 638
    move-result v12

    .line 639
    invoke-virtual {v5, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 640
    .line 641
    .line 642
    const-string v12, "pathData"

    .line 643
    .line 644
    move-object/from16 v13, v41

    .line 645
    .line 646
    invoke-interface {v10, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v12

    .line 650
    if-eqz v12, :cond_2d

    .line 651
    .line 652
    invoke-virtual {v11, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v12

    .line 656
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 657
    .line 658
    .line 659
    move-result v14

    .line 660
    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 661
    .line 662
    .line 663
    if-nez v12, :cond_1b

    .line 664
    .line 665
    move-object/from16 v39, v15

    .line 666
    .line 667
    goto :goto_11

    .line 668
    :cond_1b
    move-object/from16 v39, v12

    .line 669
    .line 670
    :goto_11
    invoke-virtual {v11, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v12

    .line 674
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 675
    .line 676
    .line 677
    move-result v14

    .line 678
    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 679
    .line 680
    .line 681
    if-nez v12, :cond_1c

    .line 682
    .line 683
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 684
    .line 685
    :goto_12
    move-object/from16 v40, v35

    .line 686
    .line 687
    goto :goto_13

    .line 688
    :cond_1c
    invoke-static {v0, v12}, Landroidx/compose/ui/graphics/vector/PathParser;->a(Landroidx/compose/ui/graphics/vector/PathParser;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 689
    .line 690
    .line 691
    move-result-object v35

    .line 692
    goto :goto_12

    .line 693
    :goto_13
    const-string v0, "fillColor"

    .line 694
    .line 695
    invoke-virtual {v5, v11, v1, v0, v7}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/core/content/res/ComplexColorCompat;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    const-string v12, "fillAlpha"

    .line 700
    .line 701
    const/16 v14, 0xc

    .line 702
    .line 703
    const/high16 v15, 0x3f800000    # 1.0f

    .line 704
    .line 705
    invoke-virtual {v5, v11, v12, v14, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 706
    .line 707
    .line 708
    move-result v27

    .line 709
    const-string v12, "strokeLineCap"

    .line 710
    .line 711
    invoke-static {v10, v12}, Landroidx/core/content/res/TypedArrayUtils;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 712
    .line 713
    .line 714
    move-result v12

    .line 715
    if-nez v12, :cond_1d

    .line 716
    .line 717
    const/4 v15, -0x1

    .line 718
    goto :goto_14

    .line 719
    :cond_1d
    const/16 v12, 0x8

    .line 720
    .line 721
    const/4 v15, -0x1

    .line 722
    invoke-virtual {v11, v12, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 723
    .line 724
    .line 725
    move-result v18

    .line 726
    move/from16 v15, v18

    .line 727
    .line 728
    :goto_14
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 729
    .line 730
    .line 731
    move-result v12

    .line 732
    invoke-virtual {v5, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 733
    .line 734
    .line 735
    if-eqz v15, :cond_1e

    .line 736
    .line 737
    if-eq v15, v7, :cond_20

    .line 738
    .line 739
    if-eq v15, v8, :cond_1f

    .line 740
    .line 741
    :cond_1e
    const/16 v35, 0x0

    .line 742
    .line 743
    goto :goto_15

    .line 744
    :cond_1f
    move/from16 v35, v8

    .line 745
    .line 746
    goto :goto_15

    .line 747
    :cond_20
    move/from16 v35, v7

    .line 748
    .line 749
    :goto_15
    const-string v12, "strokeLineJoin"

    .line 750
    .line 751
    invoke-static {v10, v12}, Landroidx/core/content/res/TypedArrayUtils;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 752
    .line 753
    .line 754
    move-result v12

    .line 755
    if-nez v12, :cond_21

    .line 756
    .line 757
    const/4 v12, -0x1

    .line 758
    const/4 v15, -0x1

    .line 759
    goto :goto_16

    .line 760
    :cond_21
    const/16 v12, 0x9

    .line 761
    .line 762
    const/4 v15, -0x1

    .line 763
    invoke-virtual {v11, v12, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 764
    .line 765
    .line 766
    move-result v16

    .line 767
    move/from16 v12, v16

    .line 768
    .line 769
    :goto_16
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 770
    .line 771
    .line 772
    move-result v14

    .line 773
    invoke-virtual {v5, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 774
    .line 775
    .line 776
    if-eqz v12, :cond_22

    .line 777
    .line 778
    if-eq v12, v7, :cond_24

    .line 779
    .line 780
    if-eq v12, v8, :cond_23

    .line 781
    .line 782
    :cond_22
    const/16 v36, 0x0

    .line 783
    .line 784
    goto :goto_17

    .line 785
    :cond_23
    move/from16 v36, v8

    .line 786
    .line 787
    goto :goto_17

    .line 788
    :cond_24
    move/from16 v36, v7

    .line 789
    .line 790
    :goto_17
    const/16 v12, 0xa

    .line 791
    .line 792
    const/high16 v14, 0x40800000    # 4.0f

    .line 793
    .line 794
    const-string v8, "strokeMiterLimit"

    .line 795
    .line 796
    invoke-virtual {v5, v11, v8, v12, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 797
    .line 798
    .line 799
    move-result v30

    .line 800
    const-string v8, "strokeColor"

    .line 801
    .line 802
    const/4 v12, 0x3

    .line 803
    invoke-virtual {v5, v11, v1, v8, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/core/content/res/ComplexColorCompat;

    .line 804
    .line 805
    .line 806
    move-result-object v8

    .line 807
    const-string v14, "strokeAlpha"

    .line 808
    .line 809
    const/16 v12, 0xb

    .line 810
    .line 811
    const/high16 v15, 0x3f800000    # 1.0f

    .line 812
    .line 813
    invoke-virtual {v5, v11, v14, v12, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 814
    .line 815
    .line 816
    move-result v28

    .line 817
    const-string v12, "strokeWidth"

    .line 818
    .line 819
    invoke-virtual {v5, v11, v12, v6, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 820
    .line 821
    .line 822
    move-result v29

    .line 823
    const-string v6, "trimPathEnd"

    .line 824
    .line 825
    const/4 v12, 0x6

    .line 826
    invoke-virtual {v5, v11, v6, v12, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 827
    .line 828
    .line 829
    move-result v32

    .line 830
    const-string v6, "trimPathOffset"

    .line 831
    .line 832
    const/4 v14, 0x7

    .line 833
    const/4 v15, 0x0

    .line 834
    invoke-virtual {v5, v11, v6, v14, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 835
    .line 836
    .line 837
    move-result v33

    .line 838
    const-string v6, "trimPathStart"

    .line 839
    .line 840
    const/4 v12, 0x5

    .line 841
    invoke-virtual {v5, v11, v6, v12, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    .line 842
    .line 843
    .line 844
    move-result v31

    .line 845
    const-string v6, "fillType"

    .line 846
    .line 847
    invoke-static {v10, v6}, Landroidx/core/content/res/TypedArrayUtils;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 848
    .line 849
    .line 850
    move-result v6

    .line 851
    if-nez v6, :cond_25

    .line 852
    .line 853
    const/4 v10, 0x0

    .line 854
    goto :goto_18

    .line 855
    :cond_25
    const/16 v6, 0xd

    .line 856
    .line 857
    const/4 v10, 0x0

    .line 858
    invoke-virtual {v11, v6, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 859
    .line 860
    .line 861
    move-result v17

    .line 862
    move/from16 v10, v17

    .line 863
    .line 864
    :goto_18
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 865
    .line 866
    .line 867
    move-result v6

    .line 868
    invoke-virtual {v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 869
    .line 870
    .line 871
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 872
    .line 873
    .line 874
    iget-object v6, v0, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    .line 875
    .line 876
    iget v0, v0, Landroidx/core/content/res/ComplexColorCompat;->b:I

    .line 877
    .line 878
    if-eqz v6, :cond_26

    .line 879
    .line 880
    goto :goto_19

    .line 881
    :cond_26
    if-eqz v0, :cond_28

    .line 882
    .line 883
    :goto_19
    if-eqz v6, :cond_27

    .line 884
    .line 885
    new-instance v0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    .line 886
    .line 887
    invoke-direct {v0, v6}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    .line 888
    .line 889
    .line 890
    move-object/from16 v37, v0

    .line 891
    .line 892
    move-object/from16 v41, v13

    .line 893
    .line 894
    goto :goto_1a

    .line 895
    :cond_27
    new-instance v6, Landroidx/compose/ui/graphics/SolidColor;

    .line 896
    .line 897
    move-object/from16 v41, v13

    .line 898
    .line 899
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 900
    .line 901
    .line 902
    move-result-wide v12

    .line 903
    invoke-direct {v6, v12, v13}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 904
    .line 905
    .line 906
    move-object/from16 v37, v6

    .line 907
    .line 908
    goto :goto_1a

    .line 909
    :cond_28
    move-object/from16 v41, v13

    .line 910
    .line 911
    move-object/from16 v37, v20

    .line 912
    .line 913
    :goto_1a
    iget-object v0, v8, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    .line 914
    .line 915
    iget v6, v8, Landroidx/core/content/res/ComplexColorCompat;->b:I

    .line 916
    .line 917
    if-eqz v0, :cond_29

    .line 918
    .line 919
    goto :goto_1b

    .line 920
    :cond_29
    if-eqz v6, :cond_2b

    .line 921
    .line 922
    :goto_1b
    if-eqz v0, :cond_2a

    .line 923
    .line 924
    new-instance v6, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    .line 925
    .line 926
    invoke-direct {v6, v0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    .line 927
    .line 928
    .line 929
    move-object/from16 v38, v6

    .line 930
    .line 931
    goto :goto_1c

    .line 932
    :cond_2a
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 933
    .line 934
    invoke-static {v6}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    .line 935
    .line 936
    .line 937
    move-result-wide v11

    .line 938
    invoke-direct {v0, v11, v12}, Landroidx/compose/ui/graphics/SolidColor;-><init>(J)V

    .line 939
    .line 940
    .line 941
    move-object/from16 v38, v0

    .line 942
    .line 943
    goto :goto_1c

    .line 944
    :cond_2b
    move-object/from16 v38, v20

    .line 945
    .line 946
    :goto_1c
    if-nez v10, :cond_2c

    .line 947
    .line 948
    const/16 v34, 0x0

    .line 949
    .line 950
    goto :goto_1d

    .line 951
    :cond_2c
    move/from16 v34, v7

    .line 952
    .line 953
    :goto_1d
    invoke-virtual/range {v26 .. v40}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->b(FFFFFFFIIILandroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Brush;Ljava/lang/String;Ljava/util/List;)V

    .line 954
    .line 955
    .line 956
    move/from16 v42, v15

    .line 957
    .line 958
    goto/16 :goto_f

    .line 959
    .line 960
    :cond_2d
    const-string v0, "No path data available"

    .line 961
    .line 962
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    return-object v20

    .line 966
    :cond_2e
    const/4 v14, 0x7

    .line 967
    const/16 v25, -0x1

    .line 968
    .line 969
    const/16 v42, 0x0

    .line 970
    .line 971
    const-string v6, "clip-path"

    .line 972
    .line 973
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 974
    .line 975
    .line 976
    move-result v6

    .line 977
    if-nez v6, :cond_2f

    .line 978
    .line 979
    const/4 v10, 0x0

    .line 980
    goto :goto_21

    .line 981
    :cond_2f
    sget-object v6, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->d:[I

    .line 982
    .line 983
    if-nez v1, :cond_30

    .line 984
    .line 985
    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 986
    .line 987
    .line 988
    move-result-object v6

    .line 989
    const/4 v10, 0x0

    .line 990
    goto :goto_1e

    .line 991
    :cond_30
    const/4 v10, 0x0

    .line 992
    invoke-virtual {v1, v4, v6, v10, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 993
    .line 994
    .line 995
    move-result-object v6

    .line 996
    :goto_1e
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 997
    .line 998
    .line 999
    move-result v8

    .line 1000
    invoke-virtual {v5, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v6, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v8

    .line 1007
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1008
    .line 1009
    .line 1010
    move-result v11

    .line 1011
    invoke-virtual {v5, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 1012
    .line 1013
    .line 1014
    if-nez v8, :cond_31

    .line 1015
    .line 1016
    move-object/from16 v27, v15

    .line 1017
    .line 1018
    goto :goto_1f

    .line 1019
    :cond_31
    move-object/from16 v27, v8

    .line 1020
    .line 1021
    :goto_1f
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v8

    .line 1025
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    .line 1026
    .line 1027
    .line 1028
    move-result v11

    .line 1029
    invoke-virtual {v5, v11}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c(I)V

    .line 1030
    .line 1031
    .line 1032
    if-nez v8, :cond_32

    .line 1033
    .line 1034
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->a:I

    .line 1035
    .line 1036
    goto :goto_20

    .line 1037
    :cond_32
    invoke-static {v0, v8}, Landroidx/compose/ui/graphics/vector/PathParser;->a(Landroidx/compose/ui/graphics/vector/PathParser;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v35

    .line 1041
    :goto_20
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 1042
    .line 1043
    .line 1044
    const/16 v33, 0x0

    .line 1045
    .line 1046
    const/16 v34, 0x0

    .line 1047
    .line 1048
    const/16 v28, 0x0

    .line 1049
    .line 1050
    const/16 v29, 0x0

    .line 1051
    .line 1052
    const/16 v30, 0x0

    .line 1053
    .line 1054
    const/high16 v31, 0x3f800000    # 1.0f

    .line 1055
    .line 1056
    const/high16 v32, 0x3f800000    # 1.0f

    .line 1057
    .line 1058
    invoke-virtual/range {v26 .. v35}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->a(Ljava/lang/String;FFFFFFFLjava/util/List;)V

    .line 1059
    .line 1060
    .line 1061
    add-int/lit8 v9, v9, 0x1

    .line 1062
    .line 1063
    :goto_21
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1064
    .line 1065
    .line 1066
    const/16 v0, 0x9

    .line 1067
    .line 1068
    const/4 v6, 0x3

    .line 1069
    const/4 v8, 0x2

    .line 1070
    goto/16 :goto_7

    .line 1071
    .line 1072
    :cond_33
    :goto_22
    iget v0, v5, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b:I

    .line 1073
    .line 1074
    or-int v0, p3, v0

    .line 1075
    .line 1076
    new-instance v1, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 1077
    .line 1078
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v2

    .line 1082
    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V

    .line 1083
    .line 1084
    .line 1085
    return-object v1

    .line 1086
    :cond_34
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1087
    .line 1088
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v1

    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    .line 1099
    .line 1100
    const-string v1, "<VectorGraphic> tag requires viewportHeight > 0"

    .line 1101
    .line 1102
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    throw v0

    .line 1113
    :cond_35
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 1114
    .line 1115
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v1

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1120
    .line 1121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1122
    .line 1123
    .line 1124
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1125
    .line 1126
    .line 1127
    const-string v1, "<VectorGraphic> tag requires viewportWidth > 0"

    .line 1128
    .line 1129
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v1

    .line 1136
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 1137
    .line 1138
    .line 1139
    throw v0

    .line 1140
    nop

    .line 1141
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(ILandroidx/compose/runtime/GapComposer;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 6

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->c:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/content/res/Resources;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p1, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    or-int/2addr v3, v4

    .line 34
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    or-int/2addr v3, v4

    .line 39
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    or-int/2addr v2, v3

    .line 44
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 51
    .line 52
    if-ne v3, v2, :cond_2

    .line 53
    .line 54
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    .line 55
    .line 56
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x1

    .line 60
    invoke-virtual {v1, p0, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    :goto_0
    const/4 v5, 0x2

    .line 72
    if-eq v4, v5, :cond_1

    .line 73
    .line 74
    if-eq v4, v3, :cond_1

    .line 75
    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    if-ne v4, v5, :cond_3

    .line 82
    .line 83
    iget v2, v2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 84
    .line 85
    invoke-static {v0, v1, p0, v2}, Landroidx/compose/ui/res/VectorResources_androidKt;->a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    iget-object v3, p0, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;->a:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 90
    .line 91
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 95
    .line 96
    return-object v3

    .line 97
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 98
    .line 99
    const-string p1, "No start tag found"

    .line 100
    .line 101
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method
