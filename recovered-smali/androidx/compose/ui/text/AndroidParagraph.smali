.class public final Landroidx/compose/ui/text/AndroidParagraph;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

.field public final b:I

.field public final c:J

.field public final d:Landroidx/compose/ui/text/android/TextLayout;

.field public final e:Ljava/lang/CharSequence;

.field public final f:F

.field public final g:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AndroidParagraphIntrinsics;IIJ)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move/from16 v4, p2

    .line 6
    .line 7
    move/from16 v11, p3

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v10, v0, Landroidx/compose/ui/text/AndroidParagraph;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 13
    .line 14
    iput v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->b:I

    .line 15
    .line 16
    move-wide/from16 v12, p4

    .line 17
    .line 18
    iput-wide v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->c:J

    .line 19
    .line 20
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string v1, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    .line 34
    .line 35
    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    const/4 v14, 0x1

    .line 39
    if-lt v4, v14, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string v1, "maxLines should be greater than 0"

    .line 43
    .line 44
    invoke-static {v1}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v1, v10, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/TextStyle;

    .line 48
    .line 49
    iget-object v2, v10, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->h:Ljava/lang/CharSequence;

    .line 50
    .line 51
    const/4 v3, 0x5

    .line 52
    const/4 v5, 0x4

    .line 53
    const/4 v6, 0x2

    .line 54
    if-ne v11, v6, :cond_a

    .line 55
    .line 56
    iget-object v8, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 57
    .line 58
    iget-wide v8, v8, Landroidx/compose/ui/text/SpanStyle;->h:J

    .line 59
    .line 60
    const/16 v17, 0x0

    .line 61
    .line 62
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/unit/TextUnitKt;->d(I)J

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    invoke-static {v8, v9, v6, v7}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-nez v6, :cond_9

    .line 71
    .line 72
    iget-object v6, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 73
    .line 74
    iget-wide v6, v6, Landroidx/compose/ui/text/SpanStyle;->h:J

    .line 75
    .line 76
    sget-wide v8, Landroidx/compose/ui/unit/TextUnit;->c:J

    .line 77
    .line 78
    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-nez v6, :cond_9

    .line 83
    .line 84
    iget-object v6, v1, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 85
    .line 86
    iget v6, v6, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 87
    .line 88
    if-nez v6, :cond_2

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_2
    if-ne v6, v3, :cond_3

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    if-ne v6, v5, :cond_4

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-nez v6, :cond_5

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_5
    instance-of v6, v2, Landroid/text/Spannable;

    .line 105
    .line 106
    if-eqz v6, :cond_6

    .line 107
    .line 108
    move-object v6, v2

    .line 109
    check-cast v6, Landroid/text/Spannable;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    const/4 v6, 0x0

    .line 113
    :goto_2
    if-nez v6, :cond_7

    .line 114
    .line 115
    new-instance v6, Landroid/text/SpannableString;

    .line 116
    .line 117
    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    const-class v2, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    .line 121
    .line 122
    invoke-static {v6, v2}, Landroidx/compose/ui/text/android/SpannedExtensions_androidKt;->a(Landroid/text/Spanned;Ljava/lang/Class;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_8

    .line 127
    .line 128
    new-instance v2, Landroidx/compose/ui/text/android/style/IndentationFixSpan;

    .line 129
    .line 130
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    sub-int/2addr v7, v14

    .line 138
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    sub-int/2addr v8, v14

    .line 143
    const/16 v9, 0x21

    .line 144
    .line 145
    invoke-interface {v6, v2, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 146
    .line 147
    .line 148
    :cond_8
    move-object v2, v6

    .line 149
    :cond_9
    :goto_3
    move-object v9, v2

    .line 150
    goto :goto_4

    .line 151
    :cond_a
    const/16 v17, 0x0

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :goto_4
    iput-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    .line 155
    .line 156
    iget-object v2, v1, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 157
    .line 158
    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 159
    .line 160
    iget v6, v2, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 161
    .line 162
    const/4 v7, 0x3

    .line 163
    if-ne v6, v14, :cond_b

    .line 164
    .line 165
    move v8, v7

    .line 166
    goto :goto_6

    .line 167
    :cond_b
    const/4 v8, 0x2

    .line 168
    if-ne v6, v8, :cond_c

    .line 169
    .line 170
    move v8, v5

    .line 171
    goto :goto_6

    .line 172
    :cond_c
    if-ne v6, v7, :cond_d

    .line 173
    .line 174
    const/4 v8, 0x2

    .line 175
    goto :goto_6

    .line 176
    :cond_d
    if-ne v6, v3, :cond_e

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_e
    const/4 v8, 0x6

    .line 180
    if-ne v6, v8, :cond_f

    .line 181
    .line 182
    move v8, v14

    .line 183
    goto :goto_6

    .line 184
    :cond_f
    :goto_5
    move/from16 v8, v17

    .line 185
    .line 186
    :goto_6
    if-ne v6, v5, :cond_10

    .line 187
    .line 188
    move v6, v14

    .line 189
    :goto_7
    const/16 v18, 0x0

    .line 190
    .line 191
    goto :goto_8

    .line 192
    :cond_10
    move/from16 v6, v17

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :goto_8
    iget v15, v2, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 196
    .line 197
    const/16 v3, 0x20

    .line 198
    .line 199
    const/4 v5, 0x2

    .line 200
    if-ne v15, v5, :cond_12

    .line 201
    .line 202
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    .line 204
    if-gt v15, v3, :cond_11

    .line 205
    .line 206
    move v15, v5

    .line 207
    goto :goto_9

    .line 208
    :cond_11
    const/4 v15, 0x4

    .line 209
    goto :goto_9

    .line 210
    :cond_12
    move/from16 v15, v17

    .line 211
    .line 212
    :goto_9
    iget v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 213
    .line 214
    and-int/lit16 v3, v2, 0xff

    .line 215
    .line 216
    if-ne v3, v14, :cond_13

    .line 217
    .line 218
    goto :goto_a

    .line 219
    :cond_13
    if-ne v3, v5, :cond_14

    .line 220
    .line 221
    move v3, v2

    .line 222
    move v2, v6

    .line 223
    move v6, v14

    .line 224
    goto :goto_b

    .line 225
    :cond_14
    if-ne v3, v7, :cond_15

    .line 226
    .line 227
    move v3, v2

    .line 228
    move v2, v6

    .line 229
    const/4 v6, 0x2

    .line 230
    goto :goto_b

    .line 231
    :cond_15
    :goto_a
    move v3, v2

    .line 232
    move v2, v6

    .line 233
    move/from16 v6, v17

    .line 234
    .line 235
    :goto_b
    shr-int/lit8 v5, v3, 0x8

    .line 236
    .line 237
    and-int/lit16 v5, v5, 0xff

    .line 238
    .line 239
    if-ne v5, v14, :cond_16

    .line 240
    .line 241
    goto :goto_c

    .line 242
    :cond_16
    const/4 v14, 0x2

    .line 243
    if-ne v5, v14, :cond_17

    .line 244
    .line 245
    move v5, v7

    .line 246
    const/4 v7, 0x1

    .line 247
    goto :goto_d

    .line 248
    :cond_17
    if-ne v5, v7, :cond_18

    .line 249
    .line 250
    move v5, v7

    .line 251
    const/4 v7, 0x2

    .line 252
    goto :goto_d

    .line 253
    :cond_18
    const/4 v14, 0x4

    .line 254
    if-ne v5, v14, :cond_19

    .line 255
    .line 256
    move v5, v7

    .line 257
    goto :goto_d

    .line 258
    :cond_19
    :goto_c
    move v5, v7

    .line 259
    move/from16 v7, v17

    .line 260
    .line 261
    :goto_d
    shr-int/lit8 v3, v3, 0x10

    .line 262
    .line 263
    and-int/lit16 v3, v3, 0xff

    .line 264
    .line 265
    const/4 v14, 0x1

    .line 266
    if-ne v3, v14, :cond_1a

    .line 267
    .line 268
    const/4 v14, 0x2

    .line 269
    goto :goto_e

    .line 270
    :cond_1a
    const/4 v14, 0x2

    .line 271
    if-ne v3, v14, :cond_1b

    .line 272
    .line 273
    move-object v3, v1

    .line 274
    move v1, v8

    .line 275
    const/4 v8, 0x1

    .line 276
    goto :goto_f

    .line 277
    :cond_1b
    :goto_e
    move-object v3, v1

    .line 278
    move v1, v8

    .line 279
    move/from16 v8, v17

    .line 280
    .line 281
    :goto_f
    if-ne v11, v14, :cond_1c

    .line 282
    .line 283
    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 284
    .line 285
    :goto_10
    move v5, v15

    .line 286
    const/16 v19, 0x20

    .line 287
    .line 288
    move-object v15, v3

    .line 289
    move-object/from16 v3, v16

    .line 290
    .line 291
    goto :goto_11

    .line 292
    :cond_1c
    const/4 v5, 0x5

    .line 293
    if-ne v11, v5, :cond_1d

    .line 294
    .line 295
    sget-object v16, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    .line 296
    .line 297
    goto :goto_10

    .line 298
    :cond_1d
    const/4 v5, 0x4

    .line 299
    if-ne v11, v5, :cond_1e

    .line 300
    .line 301
    sget-object v16, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    .line 302
    .line 303
    goto :goto_10

    .line 304
    :cond_1e
    move v5, v15

    .line 305
    const/16 v19, 0x20

    .line 306
    .line 307
    move-object v15, v3

    .line 308
    move-object/from16 v3, v18

    .line 309
    .line 310
    :goto_11
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->b(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    .line 311
    .line 312
    .line 313
    move-result-object v14

    .line 314
    iget-object v0, v14, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 315
    .line 316
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 317
    .line 318
    move/from16 v16, v1

    .line 319
    .line 320
    const/16 v1, 0x23

    .line 321
    .line 322
    if-ge v4, v1, :cond_1f

    .line 323
    .line 324
    iget-object v1, v10, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 325
    .line 326
    invoke-virtual {v1}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    const/4 v4, 0x0

    .line 331
    cmpg-float v1, v1, v4

    .line 332
    .line 333
    if-nez v1, :cond_20

    .line 334
    .line 335
    :cond_1f
    const/4 v10, 0x2

    .line 336
    move-object/from16 v0, p0

    .line 337
    .line 338
    move/from16 v4, p2

    .line 339
    .line 340
    move/from16 v1, v16

    .line 341
    .line 342
    goto :goto_14

    .line 343
    :cond_20
    const/4 v1, 0x4

    .line 344
    if-ne v11, v1, :cond_21

    .line 345
    .line 346
    :goto_12
    const/4 v1, 0x0

    .line 347
    goto :goto_13

    .line 348
    :cond_21
    const/4 v1, 0x5

    .line 349
    if-ne v11, v1, :cond_1f

    .line 350
    .line 351
    goto :goto_12

    .line 352
    :goto_13
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 353
    .line 354
    .line 355
    move-result v4

    .line 356
    if-lez v4, :cond_1f

    .line 357
    .line 358
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 359
    .line 360
    .line 361
    move-result v4

    .line 362
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    add-int/2addr v0, v4

    .line 367
    invoke-interface {v9, v1, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    invoke-interface {v9, v0, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    const/4 v9, 0x3

    .line 380
    new-array v9, v9, [Ljava/lang/CharSequence;

    .line 381
    .line 382
    aput-object v4, v9, v1

    .line 383
    .line 384
    const-string v1, "\u2026"

    .line 385
    .line 386
    const/16 v20, 0x1

    .line 387
    .line 388
    aput-object v1, v9, v20

    .line 389
    .line 390
    const/4 v10, 0x2

    .line 391
    aput-object v0, v9, v10

    .line 392
    .line 393
    invoke-static {v9}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 394
    .line 395
    .line 396
    move-result-object v9

    .line 397
    move-object/from16 v0, p0

    .line 398
    .line 399
    move/from16 v4, p2

    .line 400
    .line 401
    move/from16 v1, v16

    .line 402
    .line 403
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->b(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    .line 404
    .line 405
    .line 406
    move-result-object v14

    .line 407
    :goto_14
    iget v9, v14, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 408
    .line 409
    if-ne v11, v10, :cond_26

    .line 410
    .line 411
    invoke-virtual {v14}, Landroidx/compose/ui/text/android/TextLayout;->b()I

    .line 412
    .line 413
    .line 414
    move-result v11

    .line 415
    move/from16 v16, v10

    .line 416
    .line 417
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 418
    .line 419
    .line 420
    move-result v10

    .line 421
    if-le v11, v10, :cond_27

    .line 422
    .line 423
    const/4 v10, 0x1

    .line 424
    if-le v4, v10, :cond_27

    .line 425
    .line 426
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 427
    .line 428
    .line 429
    move-result v4

    .line 430
    const/4 v10, 0x0

    .line 431
    :goto_15
    if-ge v10, v9, :cond_23

    .line 432
    .line 433
    invoke-virtual {v14, v10}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    .line 434
    .line 435
    .line 436
    move-result v11

    .line 437
    int-to-float v12, v4

    .line 438
    cmpl-float v11, v11, v12

    .line 439
    .line 440
    if-lez v11, :cond_22

    .line 441
    .line 442
    goto :goto_16

    .line 443
    :cond_22
    add-int/lit8 v10, v10, 0x1

    .line 444
    .line 445
    goto :goto_15

    .line 446
    :cond_23
    move v10, v9

    .line 447
    :goto_16
    if-ltz v10, :cond_25

    .line 448
    .line 449
    iget v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->b:I

    .line 450
    .line 451
    if-eq v10, v4, :cond_25

    .line 452
    .line 453
    const/4 v4, 0x1

    .line 454
    if-ge v10, v4, :cond_24

    .line 455
    .line 456
    const/4 v4, 0x1

    .line 457
    goto :goto_17

    .line 458
    :cond_24
    move v4, v10

    .line 459
    :goto_17
    iget-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    .line 460
    .line 461
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/text/AndroidParagraph;->b(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;

    .line 462
    .line 463
    .line 464
    move-result-object v14

    .line 465
    :cond_25
    iput-object v14, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 466
    .line 467
    goto :goto_18

    .line 468
    :cond_26
    move/from16 v16, v10

    .line 469
    .line 470
    :cond_27
    iput-object v14, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 471
    .line 472
    :goto_18
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 473
    .line 474
    invoke-virtual {v1}, Landroidx/compose/ui/text/android/TextLayout;->b()I

    .line 475
    .line 476
    .line 477
    move-result v1

    .line 478
    int-to-float v1, v1

    .line 479
    iput v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->f:F

    .line 480
    .line 481
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 482
    .line 483
    iget-object v1, v1, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 484
    .line 485
    iget-object v2, v15, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 486
    .line 487
    invoke-interface {v2}, Landroidx/compose/ui/text/style/TextForegroundStyle;->d()Landroidx/compose/ui/graphics/Brush;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->d()F

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    iget v4, v0, Landroidx/compose/ui/text/AndroidParagraph;->f:F

    .line 496
    .line 497
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 498
    .line 499
    .line 500
    move-result v3

    .line 501
    int-to-long v5, v3

    .line 502
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    int-to-long v3, v3

    .line 507
    shl-long v5, v5, v19

    .line 508
    .line 509
    const-wide v7, 0xffffffffL

    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    and-long/2addr v3, v7

    .line 515
    or-long/2addr v3, v5

    .line 516
    iget-object v5, v15, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 517
    .line 518
    invoke-interface {v5}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 523
    .line 524
    .line 525
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 526
    .line 527
    iget-object v1, v1, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 528
    .line 529
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    instance-of v2, v2, Landroid/text/Spanned;

    .line 534
    .line 535
    if-nez v2, :cond_29

    .line 536
    .line 537
    :cond_28
    move-object/from16 v1, v18

    .line 538
    .line 539
    goto :goto_19

    .line 540
    :cond_29
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    check-cast v2, Landroid/text/Spanned;

    .line 548
    .line 549
    const/4 v3, -0x1

    .line 550
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    const-class v5, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 555
    .line 556
    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 561
    .line 562
    .line 563
    move-result v2

    .line 564
    if-eq v3, v2, :cond_28

    .line 565
    .line 566
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    check-cast v2, Landroid/text/Spanned;

    .line 574
    .line 575
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    const/4 v3, 0x0

    .line 584
    invoke-interface {v2, v3, v1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    check-cast v1, [Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    .line 589
    .line 590
    :goto_19
    if-eqz v1, :cond_2a

    .line 591
    .line 592
    array-length v2, v1

    .line 593
    const/4 v3, 0x0

    .line 594
    :goto_1a
    if-ge v3, v2, :cond_2a

    .line 595
    .line 596
    aget-object v4, v1, v3

    .line 597
    .line 598
    invoke-virtual {v0}, Landroidx/compose/ui/text/AndroidParagraph;->d()F

    .line 599
    .line 600
    .line 601
    move-result v5

    .line 602
    iget v6, v0, Landroidx/compose/ui/text/AndroidParagraph;->f:F

    .line 603
    .line 604
    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 605
    .line 606
    .line 607
    move-result v5

    .line 608
    int-to-long v9, v5

    .line 609
    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 610
    .line 611
    .line 612
    move-result v5

    .line 613
    int-to-long v5, v5

    .line 614
    shl-long v9, v9, v19

    .line 615
    .line 616
    and-long/2addr v5, v7

    .line 617
    or-long/2addr v5, v9

    .line 618
    iget-object v4, v4, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->l:Landroidx/compose/runtime/MutableState;

    .line 619
    .line 620
    new-instance v9, Landroidx/compose/ui/geometry/Size;

    .line 621
    .line 622
    invoke-direct {v9, v5, v6}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    .line 623
    .line 624
    .line 625
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 626
    .line 627
    invoke-virtual {v4, v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 628
    .line 629
    .line 630
    add-int/lit8 v3, v3, 0x1

    .line 631
    .line 632
    goto :goto_1a

    .line 633
    :cond_2a
    iget-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->e:Ljava/lang/CharSequence;

    .line 634
    .line 635
    instance-of v2, v1, Landroid/text/Spanned;

    .line 636
    .line 637
    if-nez v2, :cond_2b

    .line 638
    .line 639
    sget-object v1, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 640
    .line 641
    goto/16 :goto_28

    .line 642
    .line 643
    :cond_2b
    move-object v2, v1

    .line 644
    check-cast v2, Landroid/text/Spanned;

    .line 645
    .line 646
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    const-class v3, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 651
    .line 652
    const/4 v4, 0x0

    .line 653
    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v1

    .line 657
    new-instance v3, Ljava/util/ArrayList;

    .line 658
    .line 659
    array-length v4, v1

    .line 660
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 661
    .line 662
    .line 663
    array-length v4, v1

    .line 664
    const/4 v7, 0x0

    .line 665
    :goto_1b
    if-ge v7, v4, :cond_35

    .line 666
    .line 667
    aget-object v5, v1, v7

    .line 668
    .line 669
    check-cast v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    .line 670
    .line 671
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 672
    .line 673
    .line 674
    move-result v6

    .line 675
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 676
    .line 677
    .line 678
    move-result v8

    .line 679
    iget-object v9, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 680
    .line 681
    invoke-virtual {v9, v6}, Landroidx/compose/ui/text/android/TextLayout;->h(I)I

    .line 682
    .line 683
    .line 684
    move-result v9

    .line 685
    iget v10, v0, Landroidx/compose/ui/text/AndroidParagraph;->b:I

    .line 686
    .line 687
    if-lt v9, v10, :cond_2c

    .line 688
    .line 689
    const/4 v10, 0x1

    .line 690
    goto :goto_1c

    .line 691
    :cond_2c
    const/4 v10, 0x0

    .line 692
    :goto_1c
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 693
    .line 694
    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 695
    .line 696
    invoke-virtual {v11, v9}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 697
    .line 698
    .line 699
    move-result v11

    .line 700
    if-lez v11, :cond_2d

    .line 701
    .line 702
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 703
    .line 704
    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 705
    .line 706
    invoke-virtual {v11, v9}, Landroid/text/Layout;->getLineStart(I)I

    .line 707
    .line 708
    .line 709
    move-result v11

    .line 710
    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 711
    .line 712
    iget-object v12, v12, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 713
    .line 714
    invoke-virtual {v12, v9}, Landroid/text/Layout;->getEllipsisStart(I)I

    .line 715
    .line 716
    .line 717
    move-result v12

    .line 718
    add-int/2addr v12, v11

    .line 719
    if-le v8, v12, :cond_2d

    .line 720
    .line 721
    const/4 v11, 0x1

    .line 722
    goto :goto_1d

    .line 723
    :cond_2d
    const/4 v11, 0x0

    .line 724
    :goto_1d
    iget-object v12, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 725
    .line 726
    invoke-virtual {v12, v9}, Landroidx/compose/ui/text/android/TextLayout;->g(I)I

    .line 727
    .line 728
    .line 729
    move-result v12

    .line 730
    if-le v8, v12, :cond_2e

    .line 731
    .line 732
    const/4 v8, 0x1

    .line 733
    goto :goto_1e

    .line 734
    :cond_2e
    const/4 v8, 0x0

    .line 735
    :goto_1e
    if-nez v11, :cond_2f

    .line 736
    .line 737
    if-nez v8, :cond_2f

    .line 738
    .line 739
    if-eqz v10, :cond_30

    .line 740
    .line 741
    :cond_2f
    const/4 v10, 0x1

    .line 742
    const/4 v12, 0x0

    .line 743
    goto/16 :goto_26

    .line 744
    .line 745
    :cond_30
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 746
    .line 747
    iget-object v8, v8, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 748
    .line 749
    invoke-virtual {v8, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 750
    .line 751
    .line 752
    move-result v8

    .line 753
    const/4 v10, 0x1

    .line 754
    if-ne v8, v10, :cond_31

    .line 755
    .line 756
    move v8, v10

    .line 757
    goto :goto_1f

    .line 758
    :cond_31
    const/4 v8, 0x0

    .line 759
    :goto_1f
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 760
    .line 761
    iget-object v11, v11, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 762
    .line 763
    invoke-virtual {v11, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 764
    .line 765
    .line 766
    move-result v11

    .line 767
    if-eqz v8, :cond_32

    .line 768
    .line 769
    if-nez v11, :cond_32

    .line 770
    .line 771
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 772
    .line 773
    const/4 v12, 0x0

    .line 774
    invoke-virtual {v8, v6, v12}, Landroidx/compose/ui/text/android/TextLayout;->k(IZ)F

    .line 775
    .line 776
    .line 777
    move-result v6

    .line 778
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->c()I

    .line 779
    .line 780
    .line 781
    move-result v8

    .line 782
    :goto_20
    int-to-float v8, v8

    .line 783
    add-float/2addr v8, v6

    .line 784
    goto :goto_22

    .line 785
    :cond_32
    const/4 v12, 0x0

    .line 786
    if-eqz v8, :cond_33

    .line 787
    .line 788
    if-eqz v11, :cond_33

    .line 789
    .line 790
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 791
    .line 792
    invoke-virtual {v8, v6, v12}, Landroidx/compose/ui/text/android/TextLayout;->l(IZ)F

    .line 793
    .line 794
    .line 795
    move-result v8

    .line 796
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->c()I

    .line 797
    .line 798
    .line 799
    move-result v6

    .line 800
    :goto_21
    int-to-float v6, v6

    .line 801
    sub-float v6, v8, v6

    .line 802
    .line 803
    goto :goto_22

    .line 804
    :cond_33
    iget-object v8, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 805
    .line 806
    if-eqz v11, :cond_34

    .line 807
    .line 808
    invoke-virtual {v8, v6, v12}, Landroidx/compose/ui/text/android/TextLayout;->k(IZ)F

    .line 809
    .line 810
    .line 811
    move-result v8

    .line 812
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->c()I

    .line 813
    .line 814
    .line 815
    move-result v6

    .line 816
    goto :goto_21

    .line 817
    :cond_34
    invoke-virtual {v8, v6, v12}, Landroidx/compose/ui/text/android/TextLayout;->l(IZ)F

    .line 818
    .line 819
    .line 820
    move-result v6

    .line 821
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->c()I

    .line 822
    .line 823
    .line 824
    move-result v8

    .line 825
    goto :goto_20

    .line 826
    :goto_22
    iget-object v11, v0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 827
    .line 828
    iget v13, v5, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->p:I

    .line 829
    .line 830
    packed-switch v13, :pswitch_data_0

    .line 831
    .line 832
    .line 833
    const-string v0, "unexpected verticalAlignment"

    .line 834
    .line 835
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    throw v18

    .line 839
    :pswitch_0
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 840
    .line 841
    .line 842
    move-result-object v13

    .line 843
    iget v14, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 844
    .line 845
    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 846
    .line 847
    add-int/2addr v14, v13

    .line 848
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 849
    .line 850
    .line 851
    move-result v13

    .line 852
    sub-int/2addr v14, v13

    .line 853
    div-int/lit8 v14, v14, 0x2

    .line 854
    .line 855
    int-to-float v13, v14

    .line 856
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    .line 857
    .line 858
    .line 859
    move-result v9

    .line 860
    :goto_23
    add-float/2addr v9, v13

    .line 861
    goto :goto_25

    .line 862
    :pswitch_1
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 863
    .line 864
    .line 865
    move-result-object v13

    .line 866
    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 867
    .line 868
    int-to-float v13, v13

    .line 869
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    .line 870
    .line 871
    .line 872
    move-result v9

    .line 873
    add-float/2addr v9, v13

    .line 874
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 875
    .line 876
    .line 877
    move-result v11

    .line 878
    :goto_24
    int-to-float v11, v11

    .line 879
    sub-float/2addr v9, v11

    .line 880
    goto :goto_25

    .line 881
    :pswitch_2
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->a()Landroid/graphics/Paint$FontMetricsInt;

    .line 882
    .line 883
    .line 884
    move-result-object v13

    .line 885
    iget v13, v13, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 886
    .line 887
    int-to-float v13, v13

    .line 888
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    .line 889
    .line 890
    .line 891
    move-result v9

    .line 892
    goto :goto_23

    .line 893
    :pswitch_3
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->j(I)F

    .line 894
    .line 895
    .line 896
    move-result v13

    .line 897
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    .line 898
    .line 899
    .line 900
    move-result v9

    .line 901
    add-float/2addr v9, v13

    .line 902
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 903
    .line 904
    .line 905
    move-result v11

    .line 906
    int-to-float v11, v11

    .line 907
    sub-float/2addr v9, v11

    .line 908
    const/high16 v11, 0x40000000    # 2.0f

    .line 909
    .line 910
    div-float/2addr v9, v11

    .line 911
    goto :goto_25

    .line 912
    :pswitch_4
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    .line 913
    .line 914
    .line 915
    move-result v9

    .line 916
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 917
    .line 918
    .line 919
    move-result v11

    .line 920
    goto :goto_24

    .line 921
    :pswitch_5
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->j(I)F

    .line 922
    .line 923
    .line 924
    move-result v9

    .line 925
    goto :goto_25

    .line 926
    :pswitch_6
    invoke-virtual {v11, v9}, Landroidx/compose/ui/text/android/TextLayout;->e(I)F

    .line 927
    .line 928
    .line 929
    move-result v9

    .line 930
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 931
    .line 932
    .line 933
    move-result v11

    .line 934
    goto :goto_24

    .line 935
    :goto_25
    invoke-virtual {v5}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;->b()I

    .line 936
    .line 937
    .line 938
    move-result v5

    .line 939
    int-to-float v5, v5

    .line 940
    add-float/2addr v5, v9

    .line 941
    new-instance v11, Landroidx/compose/ui/geometry/Rect;

    .line 942
    .line 943
    invoke-direct {v11, v6, v9, v8, v5}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 944
    .line 945
    .line 946
    goto :goto_27

    .line 947
    :goto_26
    move-object/from16 v11, v18

    .line 948
    .line 949
    :goto_27
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    .line 951
    .line 952
    add-int/lit8 v7, v7, 0x1

    .line 953
    .line 954
    goto/16 :goto_1b

    .line 955
    .line 956
    :cond_35
    move-object v1, v3

    .line 957
    :goto_28
    iput-object v1, v0, Landroidx/compose/ui/text/AndroidParagraph;->g:Ljava/util/List;

    .line 958
    .line 959
    return-void

    .line 960
    nop

    .line 961
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Landroidx/compose/ui/text/AndroidParagraph;Landroidx/compose/ui/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->a(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 9
    .line 10
    iget-boolean v1, v0, Landroidx/compose/ui/text/android/TextLayout;->d:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->d()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->f:F

    .line 23
    .line 24
    invoke-virtual {p1, v2, v2, v1, p0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    iget p0, v0, Landroidx/compose/ui/text/android/TextLayout;->h:I

    .line 28
    .line 29
    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->p:Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-eqz p0, :cond_2

    .line 39
    .line 40
    int-to-float v1, p0

    .line 41
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    .line 43
    .line 44
    :cond_2
    sget-object v1, Landroidx/compose/ui/text/android/TextLayout_androidKt;->a:Ljava/lang/ThreadLocal;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_3

    .line 51
    .line 52
    new-instance v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;

    .line 53
    .line 54
    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    check-cast v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;

    .line 61
    .line 62
    iput-object p1, v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    :try_start_0
    iget-object v4, v0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    iput-object v1, v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 71
    .line 72
    if-eqz p0, :cond_4

    .line 73
    .line 74
    const/high16 v1, -0x40800000    # -1.0f

    .line 75
    .line 76
    int-to-float p0, p0

    .line 77
    mul-float/2addr v1, p0

    .line 78
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    .line 80
    .line 81
    :cond_4
    :goto_0
    iget-boolean p0, v0, Landroidx/compose/ui/text/android/TextLayout;->d:Z

    .line 82
    .line 83
    if-eqz p0, :cond_5

    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 86
    .line 87
    .line 88
    :cond_5
    return-void

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    iput-object v1, v3, Landroidx/compose/ui/text/android/TextAndroidCanvas;->a:Landroid/graphics/Canvas;

    .line 91
    .line 92
    throw p0
.end method


# virtual methods
.method public final b(IILandroid/text/TextUtils$TruncateAt;IIIIILjava/lang/CharSequence;)Landroidx/compose/ui/text/android/TextLayout;
    .locals 15

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->d()F

    .line 2
    .line 3
    .line 4
    move-result v2

    .line 5
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraph;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 8
    .line 9
    iget v6, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->l:I

    .line 10
    .line 11
    iget-object v14, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/TextStyle;

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->a:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Landroidx/compose/ui/text/PlatformTextStyle;->a:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    iget-boolean p0, p0, Landroidx/compose/ui/text/PlatformParagraphStyle;->a:Z

    .line 26
    .line 27
    :goto_0
    move v7, p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    new-instance v0, Landroidx/compose/ui/text/android/TextLayout;

    .line 32
    .line 33
    move/from16 v4, p1

    .line 34
    .line 35
    move/from16 v13, p2

    .line 36
    .line 37
    move-object/from16 v5, p3

    .line 38
    .line 39
    move/from16 v8, p4

    .line 40
    .line 41
    move/from16 v12, p5

    .line 42
    .line 43
    move/from16 v9, p6

    .line 44
    .line 45
    move/from16 v10, p7

    .line 46
    .line 47
    move/from16 v11, p8

    .line 48
    .line 49
    move-object/from16 v1, p9

    .line 50
    .line 51
    invoke-direct/range {v0 .. v14}, Landroidx/compose/ui/text/android/TextLayout;-><init>(Ljava/lang/CharSequence;FLandroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;IZIIIIIILandroidx/compose/ui/text/android/LayoutIntrinsics;)V

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public final c(Landroidx/compose/ui/geometry/Rect;ILandroidx/compose/ui/text/TextInclusionStrategy;)J
    .locals 10

    .line 1
    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->b(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 v8, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-ne p2, p1, :cond_1

    .line 11
    .line 12
    move p2, p1

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    move p2, v8

    .line 15
    :goto_1
    new-instance v6, Ld;

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    invoke-direct {v6, v0, p3}, Ld;-><init>(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->d:Landroidx/compose/ui/text/android/TextLayout;

    .line 22
    .line 23
    iget-object p0, v0, Landroidx/compose/ui/text/android/TextLayout;->a:Landroid/text/TextPaint;

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/compose/ui/text/android/TextLayout;->f:Landroid/text/Layout;

    .line 26
    .line 27
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x22

    .line 30
    .line 31
    if-lt p3, v2, :cond_3

    .line 32
    .line 33
    if-ne p2, p1, :cond_2

    .line 34
    .line 35
    new-instance p0, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->m()Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/text/android/selection/WordIterator;)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;

    .line 49
    .line 50
    invoke-direct {p2, p0}, Landroidx/compose/ui/text/android/selection/Api34SegmentFinder$toAndroidSegmentFinder$1;-><init>(Landroidx/compose/ui/text/android/selection/WordSegmentFinder;)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-static {}, Ld1;->m()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {p2, p0}, Ld1;->j(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/GraphemeClusterSegmentFinder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ld1;->k(Ljava/lang/Object;)Landroid/text/SegmentFinder;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    :goto_2
    new-instance p0, Le1;

    .line 70
    .line 71
    invoke-direct {p0, v6}, Le1;-><init>(Ld;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v1, v4, p2, p0}, Ld1;->u(Landroid/text/Layout;Landroid/graphics/RectF;Landroid/text/SegmentFinder;Le1;)[I

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    goto/16 :goto_8

    .line 79
    .line 80
    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->d()Landroidx/compose/ui/text/android/LayoutHelper;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-ne p2, p1, :cond_4

    .line 85
    .line 86
    new-instance p0, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;

    .line 87
    .line 88
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {v0}, Landroidx/compose/ui/text/android/TextLayout;->m()Landroidx/compose/ui/text/android/selection/WordIterator;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-direct {p0, p2, p3}, Landroidx/compose/ui/text/android/selection/WordSegmentFinder;-><init>(Ljava/lang/CharSequence;Landroidx/compose/ui/text/android/selection/WordIterator;)V

    .line 97
    .line 98
    .line 99
    :goto_3
    move-object v5, p0

    .line 100
    goto :goto_4

    .line 101
    :cond_4
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    const/16 v3, 0x1d

    .line 106
    .line 107
    if-lt p3, v3, :cond_5

    .line 108
    .line 109
    new-instance p3, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;

    .line 110
    .line 111
    invoke-direct {p3, p2, p0}, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderApi29;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;)V

    .line 112
    .line 113
    .line 114
    move-object p0, p3

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    new-instance p0, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;

    .line 117
    .line 118
    invoke-direct {p0, p2}, Landroidx/compose/ui/text/android/selection/GraphemeClusterSegmentFinderUnderApi29;-><init>(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :goto_4
    iget p0, v4, Landroid/graphics/RectF;->top:F

    .line 123
    .line 124
    float-to-int p0, p0

    .line 125
    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    iget p2, v4, Landroid/graphics/RectF;->top:F

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Landroidx/compose/ui/text/android/TextLayout;->f(I)F

    .line 132
    .line 133
    .line 134
    move-result p3

    .line 135
    cmpl-float p2, p2, p3

    .line 136
    .line 137
    if-lez p2, :cond_6

    .line 138
    .line 139
    add-int/lit8 p0, p0, 0x1

    .line 140
    .line 141
    iget p2, v0, Landroidx/compose/ui/text/android/TextLayout;->g:I

    .line 142
    .line 143
    if-lt p0, p2, :cond_6

    .line 144
    .line 145
    goto :goto_7

    .line 146
    :cond_6
    move v3, p0

    .line 147
    iget p0, v4, Landroid/graphics/RectF;->bottom:F

    .line 148
    .line 149
    float-to-int p0, p0

    .line 150
    invoke-virtual {v1, p0}, Landroid/text/Layout;->getLineForVertical(I)I

    .line 151
    .line 152
    .line 153
    move-result p0

    .line 154
    if-nez p0, :cond_7

    .line 155
    .line 156
    iget p2, v4, Landroid/graphics/RectF;->bottom:F

    .line 157
    .line 158
    invoke-virtual {v0, v8}, Landroidx/compose/ui/text/android/TextLayout;->j(I)F

    .line 159
    .line 160
    .line 161
    move-result p3

    .line 162
    cmpg-float p2, p2, p3

    .line 163
    .line 164
    if-gez p2, :cond_7

    .line 165
    .line 166
    goto :goto_7

    .line 167
    :cond_7
    const/4 v7, 0x1

    .line 168
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->b(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Landroidx/compose/ui/text/android/LayoutHelper;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Ld;Z)I

    .line 169
    .line 170
    .line 171
    move-result p2

    .line 172
    :goto_5
    move p3, v3

    .line 173
    const/4 v9, -0x1

    .line 174
    if-ne p2, v9, :cond_8

    .line 175
    .line 176
    if-ge p3, p0, :cond_8

    .line 177
    .line 178
    add-int/lit8 v3, p3, 0x1

    .line 179
    .line 180
    const/4 v7, 0x1

    .line 181
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->b(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Landroidx/compose/ui/text/android/LayoutHelper;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Ld;Z)I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    goto :goto_5

    .line 186
    :cond_8
    if-ne p2, v9, :cond_9

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_9
    const/4 v7, 0x0

    .line 190
    move v3, p0

    .line 191
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->b(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Landroidx/compose/ui/text/android/LayoutHelper;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Ld;Z)I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    :goto_6
    if-ne p0, v9, :cond_a

    .line 196
    .line 197
    if-ge p3, v3, :cond_a

    .line 198
    .line 199
    add-int/lit8 v3, v3, -0x1

    .line 200
    .line 201
    const/4 v7, 0x0

    .line 202
    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/text/android/TextLayoutGetRangeForRectExtensions_androidKt;->b(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/Layout;Landroidx/compose/ui/text/android/LayoutHelper;ILandroid/graphics/RectF;Landroidx/compose/ui/text/android/selection/SegmentFinder;Ld;Z)I

    .line 203
    .line 204
    .line 205
    move-result p0

    .line 206
    goto :goto_6

    .line 207
    :cond_a
    if-ne p0, v9, :cond_b

    .line 208
    .line 209
    :goto_7
    const/4 p0, 0x0

    .line 210
    goto :goto_8

    .line 211
    :cond_b
    add-int/2addr p2, p1

    .line 212
    invoke-interface {v5, p2}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->c(I)I

    .line 213
    .line 214
    .line 215
    move-result p2

    .line 216
    sub-int/2addr p0, p1

    .line 217
    invoke-interface {v5, p0}, Landroidx/compose/ui/text/android/selection/SegmentFinder;->d(I)I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    filled-new-array {p2, p0}, [I

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    :goto_8
    if-nez p0, :cond_c

    .line 226
    .line 227
    sget-wide p0, Landroidx/compose/ui/text/TextRange;->b:J

    .line 228
    .line 229
    return-wide p0

    .line 230
    :cond_c
    aget p2, p0, v8

    .line 231
    .line 232
    aget p0, p0, p1

    .line 233
    .line 234
    invoke-static {p2, p0}, Landroidx/compose/ui/text/TextRangeKt;->a(II)J

    .line 235
    .line 236
    .line 237
    move-result-wide p0

    .line 238
    return-wide p0
.end method

.method public final d()F
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->c:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    int-to-float p0, p0

    .line 8
    return p0
.end method

.method public final e(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 4
    .line 5
    iget v1, v0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, p2, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f(Landroidx/compose/ui/graphics/Shadow;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x3

    .line 20
    invoke-virtual {v0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b(I)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroidx/compose/ui/text/AndroidParagraph$paint$4;

    .line 24
    .line 25
    const-string v7, "paint(Landroidx/compose/ui/graphics/Canvas;)V"

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v3, 0x1

    .line 29
    const-class v5, Landroidx/compose/ui/text/AndroidParagraph;

    .line 30
    .line 31
    const-string v6, "paint"

    .line 32
    .line 33
    move-object v4, p0

    .line 34
    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/AndroidParagraph$paint$4;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final f(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/AndroidParagraph;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    .line 4
    .line 5
    iget v1, v0, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/text/AndroidParagraph;->d()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    int-to-long v2, v2

    .line 16
    iget v4, p0, Landroidx/compose/ui/text/AndroidParagraph;->f:F

    .line 17
    .line 18
    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    int-to-long v4, v4

    .line 23
    const/16 v6, 0x20

    .line 24
    .line 25
    shl-long/2addr v2, v6

    .line 26
    const-wide v6, 0xffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    and-long/2addr v4, v6

    .line 32
    or-long/2addr v2, v4

    .line 33
    invoke-virtual {v0, p2, v2, v3, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p4}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f(Landroidx/compose/ui/graphics/Shadow;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 43
    .line 44
    .line 45
    const/4 p2, 0x3

    .line 46
    invoke-virtual {v0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b(I)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Landroidx/compose/ui/text/AndroidParagraph$paint$6;

    .line 50
    .line 51
    const-string v7, "paint(Landroidx/compose/ui/graphics/Canvas;)V"

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    const/4 v3, 0x1

    .line 55
    const-class v5, Landroidx/compose/ui/text/AndroidParagraph;

    .line 56
    .line 57
    const-string v6, "paint"

    .line 58
    .line 59
    move-object v4, p0

    .line 60
    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, p1}, Landroidx/compose/ui/text/AndroidParagraph$paint$6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->b(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
