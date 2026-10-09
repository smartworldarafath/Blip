.class public final Landroidx/core/content/res/ComplexColorCompat;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/graphics/Shader;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    .line 5
    .line 6
    iput p2, p0, Landroidx/core/content/res/ComplexColorCompat;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroidx/core/content/res/ComplexColorCompat;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    :goto_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x2

    .line 19
    if-eq v4, v6, :cond_0

    .line 20
    .line 21
    if-eq v4, v5, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v4, v6, :cond_24

    .line 25
    .line 26
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    const-string v7, "gradient"

    .line 34
    .line 35
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/4 v9, 0x0

    .line 40
    if-nez v8, :cond_2

    .line 41
    .line 42
    const-string v5, "selector"

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-static {v0, v2, v3, v1}, Landroidx/core/content/res/ColorStateListInflaterCompat;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Landroidx/core/content/res/ComplexColorCompat;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-direct {v1, v9, v0}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;I)V

    .line 61
    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 65
    .line 66
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ": unsupported complex color tag "

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_23

    .line 103
    .line 104
    const/4 v4, 0x0

    .line 105
    sget-object v7, Landroidx/core/R$styleable;->e:[I

    .line 106
    .line 107
    if-nez v1, :cond_3

    .line 108
    .line 109
    invoke-virtual {v0, v3, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    goto :goto_1

    .line 114
    :cond_3
    invoke-virtual {v1, v3, v7, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    :goto_1
    const-string v8, "http://schemas.android.com/apk/res/android"

    .line 119
    .line 120
    const-string v10, "startX"

    .line 121
    .line 122
    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    const/4 v11, 0x0

    .line 127
    if-eqz v10, :cond_4

    .line 128
    .line 129
    const/16 v10, 0x8

    .line 130
    .line 131
    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    move v13, v10

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    move v13, v11

    .line 138
    :goto_2
    const-string v10, "startY"

    .line 139
    .line 140
    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    if-eqz v10, :cond_5

    .line 145
    .line 146
    const/16 v10, 0x9

    .line 147
    .line 148
    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    move v14, v10

    .line 153
    goto :goto_3

    .line 154
    :cond_5
    move v14, v11

    .line 155
    :goto_3
    const-string v10, "endX"

    .line 156
    .line 157
    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    if-eqz v10, :cond_6

    .line 162
    .line 163
    const/16 v10, 0xa

    .line 164
    .line 165
    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 166
    .line 167
    .line 168
    move-result v10

    .line 169
    move v15, v10

    .line 170
    goto :goto_4

    .line 171
    :cond_6
    move v15, v11

    .line 172
    :goto_4
    const-string v10, "endY"

    .line 173
    .line 174
    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    if-eqz v10, :cond_7

    .line 179
    .line 180
    const/16 v10, 0xb

    .line 181
    .line 182
    invoke-virtual {v7, v10, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 183
    .line 184
    .line 185
    move-result v10

    .line 186
    move/from16 v16, v10

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_7
    move/from16 v16, v11

    .line 190
    .line 191
    :goto_5
    const-string v10, "centerX"

    .line 192
    .line 193
    invoke-interface {v2, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    const/4 v12, 0x3

    .line 198
    if-eqz v10, :cond_8

    .line 199
    .line 200
    invoke-virtual {v7, v12, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    goto :goto_6

    .line 205
    :cond_8
    move v10, v11

    .line 206
    :goto_6
    const-string v9, "centerY"

    .line 207
    .line 208
    invoke-interface {v2, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    if-eqz v9, :cond_9

    .line 213
    .line 214
    const/4 v9, 0x4

    .line 215
    invoke-virtual {v7, v9, v11}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    goto :goto_7

    .line 220
    :cond_9
    move v9, v11

    .line 221
    :goto_7
    const-string v12, "type"

    .line 222
    .line 223
    invoke-interface {v2, v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v12

    .line 227
    if-eqz v12, :cond_a

    .line 228
    .line 229
    invoke-virtual {v7, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 230
    .line 231
    .line 232
    move-result v12

    .line 233
    goto :goto_8

    .line 234
    :cond_a
    move v12, v4

    .line 235
    :goto_8
    const-string v6, "startColor"

    .line 236
    .line 237
    invoke-interface {v2, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    if-eqz v6, :cond_b

    .line 242
    .line 243
    invoke-virtual {v7, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    goto :goto_9

    .line 248
    :cond_b
    move v6, v4

    .line 249
    :goto_9
    const-string v11, "centerColor"

    .line 250
    .line 251
    invoke-interface {v2, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v20

    .line 255
    if-eqz v20, :cond_c

    .line 256
    .line 257
    move/from16 v20, v5

    .line 258
    .line 259
    goto :goto_a

    .line 260
    :cond_c
    move/from16 v20, v4

    .line 261
    .line 262
    :goto_a
    invoke-interface {v2, v8, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v11

    .line 266
    if-eqz v11, :cond_d

    .line 267
    .line 268
    const/4 v11, 0x7

    .line 269
    invoke-virtual {v7, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 270
    .line 271
    .line 272
    move-result v11

    .line 273
    goto :goto_b

    .line 274
    :cond_d
    move v11, v4

    .line 275
    :goto_b
    const-string v4, "endColor"

    .line 276
    .line 277
    invoke-interface {v2, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    if-eqz v4, :cond_e

    .line 282
    .line 283
    const/4 v4, 0x0

    .line 284
    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 285
    .line 286
    .line 287
    move-result v24

    .line 288
    move/from16 v25, v24

    .line 289
    .line 290
    :goto_c
    move/from16 v21, v5

    .line 291
    .line 292
    goto :goto_d

    .line 293
    :cond_e
    const/4 v4, 0x0

    .line 294
    move/from16 v25, v4

    .line 295
    .line 296
    goto :goto_c

    .line 297
    :goto_d
    const-string v5, "tileMode"

    .line 298
    .line 299
    invoke-interface {v2, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v5

    .line 303
    if-eqz v5, :cond_f

    .line 304
    .line 305
    const/4 v5, 0x6

    .line 306
    invoke-virtual {v7, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    move v4, v5

    .line 311
    goto :goto_e

    .line 312
    :cond_f
    const/4 v4, 0x0

    .line 313
    :goto_e
    const-string v5, "gradientRadius"

    .line 314
    .line 315
    invoke-interface {v2, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v5

    .line 319
    if-eqz v5, :cond_10

    .line 320
    .line 321
    const/4 v5, 0x5

    .line 322
    const/4 v8, 0x0

    .line 323
    invoke-virtual {v7, v5, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    move v8, v5

    .line 328
    goto :goto_f

    .line 329
    :cond_10
    const/4 v8, 0x0

    .line 330
    :goto_f
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 331
    .line 332
    .line 333
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    add-int/lit8 v5, v5, 0x1

    .line 338
    .line 339
    new-instance v7, Ljava/util/ArrayList;

    .line 340
    .line 341
    move-object/from16 v22, v2

    .line 342
    .line 343
    const/16 v2, 0x14

    .line 344
    .line 345
    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 346
    .line 347
    .line 348
    move/from16 v23, v8

    .line 349
    .line 350
    new-instance v8, Ljava/util/ArrayList;

    .line 351
    .line 352
    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 353
    .line 354
    .line 355
    :goto_10
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    move/from16 v26, v13

    .line 360
    .line 361
    move/from16 v13, v21

    .line 362
    .line 363
    if-eq v2, v13, :cond_17

    .line 364
    .line 365
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 366
    .line 367
    .line 368
    move-result v13

    .line 369
    move/from16 v27, v14

    .line 370
    .line 371
    if-ge v13, v5, :cond_11

    .line 372
    .line 373
    const/4 v14, 0x3

    .line 374
    if-eq v2, v14, :cond_18

    .line 375
    .line 376
    :cond_11
    const/4 v14, 0x2

    .line 377
    if-eq v2, v14, :cond_13

    .line 378
    .line 379
    :cond_12
    :goto_11
    move/from16 v13, v26

    .line 380
    .line 381
    move/from16 v14, v27

    .line 382
    .line 383
    const/16 v21, 0x1

    .line 384
    .line 385
    goto :goto_10

    .line 386
    :cond_13
    if-gt v13, v5, :cond_12

    .line 387
    .line 388
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const-string v13, "item"

    .line 393
    .line 394
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-nez v2, :cond_14

    .line 399
    .line 400
    goto :goto_11

    .line 401
    :cond_14
    sget-object v2, Landroidx/core/R$styleable;->f:[I

    .line 402
    .line 403
    if-nez v1, :cond_15

    .line 404
    .line 405
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    const/4 v13, 0x0

    .line 410
    goto :goto_12

    .line 411
    :cond_15
    const/4 v13, 0x0

    .line 412
    invoke-virtual {v1, v3, v2, v13, v13}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    :goto_12
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 417
    .line 418
    .line 419
    move-result v14

    .line 420
    const/4 v13, 0x1

    .line 421
    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 422
    .line 423
    .line 424
    move-result v21

    .line 425
    if-eqz v14, :cond_16

    .line 426
    .line 427
    if-eqz v21, :cond_16

    .line 428
    .line 429
    const/4 v14, 0x0

    .line 430
    invoke-virtual {v2, v14, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 431
    .line 432
    .line 433
    move-result v28

    .line 434
    const/4 v14, 0x0

    .line 435
    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 436
    .line 437
    .line 438
    move-result v29

    .line 439
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 440
    .line 441
    .line 442
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 450
    .line 451
    .line 452
    move-result-object v2

    .line 453
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    goto :goto_11

    .line 457
    :cond_16
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 458
    .line 459
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    new-instance v2, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v1, ": <item> tag requires a \'color\' attribute and a \'offset\' attribute!"

    .line 472
    .line 473
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    throw v0

    .line 484
    :cond_17
    move/from16 v27, v14

    .line 485
    .line 486
    :cond_18
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    if-lez v0, :cond_19

    .line 491
    .line 492
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 493
    .line 494
    invoke-direct {v0, v8, v7}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 495
    .line 496
    .line 497
    goto :goto_13

    .line 498
    :cond_19
    const/4 v0, 0x0

    .line 499
    :goto_13
    if-eqz v0, :cond_1a

    .line 500
    .line 501
    :goto_14
    const/4 v13, 0x1

    .line 502
    goto :goto_15

    .line 503
    :cond_1a
    if-eqz v20, :cond_1b

    .line 504
    .line 505
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 506
    .line 507
    move/from16 v1, v25

    .line 508
    .line 509
    invoke-direct {v0, v6, v11, v1}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(III)V

    .line 510
    .line 511
    .line 512
    goto :goto_14

    .line 513
    :cond_1b
    move/from16 v1, v25

    .line 514
    .line 515
    new-instance v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;

    .line 516
    .line 517
    invoke-direct {v0, v6, v1}, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;-><init>(II)V

    .line 518
    .line 519
    .line 520
    goto :goto_14

    .line 521
    :goto_15
    if-eq v12, v13, :cond_1f

    .line 522
    .line 523
    const/4 v14, 0x2

    .line 524
    if-eq v12, v14, :cond_1e

    .line 525
    .line 526
    new-instance v12, Landroid/graphics/LinearGradient;

    .line 527
    .line 528
    iget-object v1, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->a:[I

    .line 529
    .line 530
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->b:[F

    .line 531
    .line 532
    if-eq v4, v13, :cond_1d

    .line 533
    .line 534
    if-eq v4, v14, :cond_1c

    .line 535
    .line 536
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 537
    .line 538
    :goto_16
    move-object/from16 v18, v0

    .line 539
    .line 540
    move-object/from16 v17, v1

    .line 541
    .line 542
    move-object/from16 v19, v2

    .line 543
    .line 544
    move/from16 v13, v26

    .line 545
    .line 546
    move/from16 v14, v27

    .line 547
    .line 548
    goto :goto_17

    .line 549
    :cond_1c
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 550
    .line 551
    goto :goto_16

    .line 552
    :cond_1d
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 553
    .line 554
    goto :goto_16

    .line 555
    :goto_17
    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 556
    .line 557
    .line 558
    goto :goto_1a

    .line 559
    :cond_1e
    new-instance v12, Landroid/graphics/SweepGradient;

    .line 560
    .line 561
    iget-object v1, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->a:[I

    .line 562
    .line 563
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->b:[F

    .line 564
    .line 565
    invoke-direct {v12, v10, v9, v1, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 566
    .line 567
    .line 568
    goto :goto_1a

    .line 569
    :cond_1f
    const/16 v19, 0x0

    .line 570
    .line 571
    cmpg-float v1, v23, v19

    .line 572
    .line 573
    if-lez v1, :cond_22

    .line 574
    .line 575
    new-instance v17, Landroid/graphics/RadialGradient;

    .line 576
    .line 577
    iget-object v1, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->a:[I

    .line 578
    .line 579
    iget-object v0, v0, Landroidx/core/content/res/GradientColorInflaterCompat$ColorStops;->b:[F

    .line 580
    .line 581
    const/4 v13, 0x1

    .line 582
    if-eq v4, v13, :cond_21

    .line 583
    .line 584
    const/4 v14, 0x2

    .line 585
    if-eq v4, v14, :cond_20

    .line 586
    .line 587
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 588
    .line 589
    :goto_18
    move-object/from16 v22, v0

    .line 590
    .line 591
    move-object/from16 v21, v1

    .line 592
    .line 593
    move/from16 v19, v9

    .line 594
    .line 595
    move/from16 v18, v10

    .line 596
    .line 597
    move/from16 v20, v23

    .line 598
    .line 599
    move-object/from16 v23, v2

    .line 600
    .line 601
    goto :goto_19

    .line 602
    :cond_20
    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    .line 603
    .line 604
    goto :goto_18

    .line 605
    :cond_21
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 606
    .line 607
    goto :goto_18

    .line 608
    :goto_19
    invoke-direct/range {v17 .. v23}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 609
    .line 610
    .line 611
    move-object/from16 v12, v17

    .line 612
    .line 613
    :goto_1a
    new-instance v0, Landroidx/core/content/res/ComplexColorCompat;

    .line 614
    .line 615
    const/4 v13, 0x0

    .line 616
    invoke-direct {v0, v12, v13}, Landroidx/core/content/res/ComplexColorCompat;-><init>(Landroid/graphics/Shader;I)V

    .line 617
    .line 618
    .line 619
    return-object v0

    .line 620
    :cond_22
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 621
    .line 622
    const-string v1, "<gradient> tag requires \'gradientRadius\' attribute with radial type"

    .line 623
    .line 624
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    throw v0

    .line 628
    :cond_23
    move-object/from16 v22, v2

    .line 629
    .line 630
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 631
    .line 632
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .line 643
    .line 644
    const-string v1, ": invalid gradient color tag "

    .line 645
    .line 646
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    throw v0

    .line 660
    :cond_24
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 661
    .line 662
    const-string v1, "No start tag found"

    .line 663
    .line 664
    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    throw v0
.end method
