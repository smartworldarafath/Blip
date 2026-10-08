.class public abstract Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/platform/URLSpanCache;)Landroid/text/SpannableString;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    new-instance v2, Landroid/text/SpannableString;

    .line 6
    .line 7
    iget-object v8, v0, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v9, v0, Landroidx/compose/ui/text/AnnotatedString;->j:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v2, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object v10, v0, Landroidx/compose/ui/text/AnnotatedString;->l:Ljava/util/ArrayList;

    .line 15
    .line 16
    if-eqz v10, :cond_e

    .line 17
    .line 18
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    .line 19
    .line 20
    .line 21
    move-result v13

    .line 22
    const/4 v14, 0x0

    .line 23
    :goto_0
    if-ge v14, v13, :cond_e

    .line 24
    .line 25
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 30
    .line 31
    iget-object v4, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v4, Landroidx/compose/ui/text/SpanStyle;

    .line 34
    .line 35
    iget v6, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 36
    .line 37
    iget v7, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 38
    .line 39
    iget-object v3, v4, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 40
    .line 41
    move/from16 v16, v13

    .line 42
    .line 43
    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    .line 44
    .line 45
    .line 46
    move-result-wide v12

    .line 47
    move-wide/from16 v17, v12

    .line 48
    .line 49
    iget-wide v11, v4, Landroidx/compose/ui/text/SpanStyle;->b:J

    .line 50
    .line 51
    iget-object v13, v4, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    .line 52
    .line 53
    iget-object v3, v4, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    .line 54
    .line 55
    iget-object v5, v4, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 56
    .line 57
    iget-object v15, v4, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    .line 58
    .line 59
    move-object/from16 v19, v10

    .line 60
    .line 61
    move-wide/from16 v20, v11

    .line 62
    .line 63
    iget-wide v10, v4, Landroidx/compose/ui/text/SpanStyle;->l:J

    .line 64
    .line 65
    iget-object v12, v4, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    .line 66
    .line 67
    iget-object v4, v4, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 68
    .line 69
    move-object/from16 v22, v3

    .line 70
    .line 71
    move-object/from16 v23, v4

    .line 72
    .line 73
    invoke-interface/range {v23 .. v23}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    move-wide/from16 v24, v10

    .line 78
    .line 79
    move-wide/from16 v10, v17

    .line 80
    .line 81
    invoke-static {v10, v11, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    move-object/from16 v4, v23

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    invoke-static {v10, v11}, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->b(J)Landroidx/compose/ui/text/style/TextForegroundStyle;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    :goto_1
    invoke-interface {v4}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    invoke-static {v2, v3, v4, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->b(Landroid/text/Spannable;JII)V

    .line 99
    .line 100
    .line 101
    move-object v11, v5

    .line 102
    move-wide/from16 v3, v20

    .line 103
    .line 104
    move-object/from16 v10, v22

    .line 105
    .line 106
    move-object/from16 v5, p1

    .line 107
    .line 108
    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->c(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    .line 109
    .line 110
    .line 111
    if-nez v13, :cond_2

    .line 112
    .line 113
    if-eqz v10, :cond_1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_1
    const/16 v3, 0x21

    .line 117
    .line 118
    goto :goto_7

    .line 119
    :cond_2
    :goto_2
    if-nez v13, :cond_3

    .line 120
    .line 121
    sget-object v13, Landroidx/compose/ui/text/font/FontWeight;->q:Landroidx/compose/ui/text/font/FontWeight;

    .line 122
    .line 123
    :cond_3
    if-eqz v10, :cond_4

    .line 124
    .line 125
    iget v3, v10, Landroidx/compose/ui/text/font/FontStyle;->a:I

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_4
    const/4 v3, 0x0

    .line 129
    :goto_3
    new-instance v4, Landroid/text/style/StyleSpan;

    .line 130
    .line 131
    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->m:Landroidx/compose/ui/text/font/FontWeight;

    .line 132
    .line 133
    invoke-virtual {v13, v5}, Landroidx/compose/ui/text/font/FontWeight;->a(Landroidx/compose/ui/text/font/FontWeight;)I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    const/4 v10, 0x1

    .line 138
    if-ltz v5, :cond_5

    .line 139
    .line 140
    move v5, v10

    .line 141
    goto :goto_4

    .line 142
    :cond_5
    const/4 v5, 0x0

    .line 143
    :goto_4
    if-ne v3, v10, :cond_6

    .line 144
    .line 145
    move v3, v10

    .line 146
    goto :goto_5

    .line 147
    :cond_6
    const/4 v3, 0x0

    .line 148
    :goto_5
    if-eqz v3, :cond_7

    .line 149
    .line 150
    if-eqz v5, :cond_7

    .line 151
    .line 152
    const/4 v3, 0x3

    .line 153
    goto :goto_6

    .line 154
    :cond_7
    if-eqz v5, :cond_8

    .line 155
    .line 156
    move v3, v10

    .line 157
    goto :goto_6

    .line 158
    :cond_8
    if-eqz v3, :cond_9

    .line 159
    .line 160
    const/4 v3, 0x2

    .line 161
    goto :goto_6

    .line 162
    :cond_9
    const/4 v3, 0x0

    .line 163
    :goto_6
    invoke-direct {v4, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 164
    .line 165
    .line 166
    const/16 v3, 0x21

    .line 167
    .line 168
    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 169
    .line 170
    .line 171
    :goto_7
    if-eqz v12, :cond_b

    .line 172
    .line 173
    sget-object v4, Landroidx/compose/ui/text/style/TextDecoration;->c:Landroidx/compose/ui/text/style/TextDecoration;

    .line 174
    .line 175
    invoke-virtual {v12, v4}, Landroidx/compose/ui/text/style/TextDecoration;->a(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-eqz v4, :cond_a

    .line 180
    .line 181
    new-instance v4, Landroid/text/style/UnderlineSpan;

    .line 182
    .line 183
    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 187
    .line 188
    .line 189
    :cond_a
    sget-object v4, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    .line 190
    .line 191
    invoke-virtual {v12, v4}, Landroidx/compose/ui/text/style/TextDecoration;->a(Landroidx/compose/ui/text/style/TextDecoration;)Z

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    if-eqz v4, :cond_b

    .line 196
    .line 197
    new-instance v4, Landroid/text/style/StrikethroughSpan;

    .line 198
    .line 199
    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 203
    .line 204
    .line 205
    :cond_b
    if-eqz v11, :cond_c

    .line 206
    .line 207
    new-instance v4, Landroid/text/style/ScaleXSpan;

    .line 208
    .line 209
    iget v5, v11, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    .line 210
    .line 211
    invoke-direct {v4, v5}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 215
    .line 216
    .line 217
    :cond_c
    invoke-static {v2, v15, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->d(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    .line 218
    .line 219
    .line 220
    const-wide/16 v4, 0x10

    .line 221
    .line 222
    cmp-long v4, v24, v4

    .line 223
    .line 224
    if-eqz v4, :cond_d

    .line 225
    .line 226
    new-instance v4, Landroid/text/style/BackgroundColorSpan;

    .line 227
    .line 228
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/graphics/ColorKt;->f(J)I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    invoke-direct {v4, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 236
    .line 237
    .line 238
    :cond_d
    add-int/lit8 v14, v14, 0x1

    .line 239
    .line 240
    move/from16 v13, v16

    .line 241
    .line 242
    move-object/from16 v10, v19

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_e
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    sget-object v4, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 251
    .line 252
    if-eqz v9, :cond_10

    .line 253
    .line 254
    new-instance v5, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .line 262
    .line 263
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    const/4 v7, 0x0

    .line 268
    :goto_8
    if-ge v7, v6, :cond_11

    .line 269
    .line 270
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    move-object v11, v10

    .line 275
    check-cast v11, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 276
    .line 277
    iget-object v12, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 278
    .line 279
    instance-of v12, v12, Landroidx/compose/ui/text/TtsAnnotation;

    .line 280
    .line 281
    if-eqz v12, :cond_f

    .line 282
    .line 283
    iget v12, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 284
    .line 285
    iget v11, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 286
    .line 287
    const/4 v15, 0x0

    .line 288
    invoke-static {v15, v3, v12, v11}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    .line 289
    .line 290
    .line 291
    move-result v11

    .line 292
    if-eqz v11, :cond_f

    .line 293
    .line 294
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    :cond_f
    add-int/lit8 v7, v7, 0x1

    .line 298
    .line 299
    goto :goto_8

    .line 300
    :cond_10
    move-object v5, v4

    .line 301
    :cond_11
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    const/4 v6, 0x0

    .line 306
    :goto_9
    if-ge v6, v3, :cond_13

    .line 307
    .line 308
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 313
    .line 314
    iget-object v10, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v10, Landroidx/compose/ui/text/TtsAnnotation;

    .line 317
    .line 318
    iget v11, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 319
    .line 320
    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 321
    .line 322
    instance-of v12, v10, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 323
    .line 324
    if-eqz v12, :cond_12

    .line 325
    .line 326
    check-cast v10, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    .line 327
    .line 328
    new-instance v12, Landroid/text/style/TtsSpan$VerbatimBuilder;

    .line 329
    .line 330
    iget-object v10, v10, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->a:Ljava/lang/String;

    .line 331
    .line 332
    invoke-direct {v12, v10}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v12}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    .line 336
    .line 337
    .line 338
    move-result-object v10

    .line 339
    const/16 v12, 0x21

    .line 340
    .line 341
    invoke-virtual {v2, v10, v11, v7, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 342
    .line 343
    .line 344
    add-int/lit8 v6, v6, 0x1

    .line 345
    .line 346
    goto :goto_9

    .line 347
    :cond_12
    invoke-static {}, Lk8;->e()V

    .line 348
    .line 349
    .line 350
    const/4 v0, 0x0

    .line 351
    return-object v0

    .line 352
    :cond_13
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 353
    .line 354
    .line 355
    move-result v3

    .line 356
    if-eqz v9, :cond_16

    .line 357
    .line 358
    new-instance v4, Ljava/util/ArrayList;

    .line 359
    .line 360
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 361
    .line 362
    .line 363
    move-result v5

    .line 364
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .line 366
    .line 367
    invoke-interface {v9}, Ljava/util/Collection;->size()I

    .line 368
    .line 369
    .line 370
    move-result v5

    .line 371
    const/4 v6, 0x0

    .line 372
    :goto_a
    if-ge v6, v5, :cond_16

    .line 373
    .line 374
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    move-object v10, v7

    .line 379
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 380
    .line 381
    iget-object v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 382
    .line 383
    instance-of v11, v11, Landroidx/compose/ui/text/UrlAnnotation;

    .line 384
    .line 385
    if-eqz v11, :cond_14

    .line 386
    .line 387
    iget v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 388
    .line 389
    iget v10, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 390
    .line 391
    const/4 v15, 0x0

    .line 392
    invoke-static {v15, v3, v11, v10}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    .line 393
    .line 394
    .line 395
    move-result v10

    .line 396
    if-eqz v10, :cond_15

    .line 397
    .line 398
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .line 400
    .line 401
    goto :goto_b

    .line 402
    :cond_14
    const/4 v15, 0x0

    .line 403
    :cond_15
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 404
    .line 405
    goto :goto_a

    .line 406
    :cond_16
    const/4 v15, 0x0

    .line 407
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    move v5, v15

    .line 412
    :goto_c
    if-ge v5, v3, :cond_18

    .line 413
    .line 414
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 419
    .line 420
    iget-object v7, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 421
    .line 422
    check-cast v7, Landroidx/compose/ui/text/UrlAnnotation;

    .line 423
    .line 424
    iget v9, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 425
    .line 426
    iget v6, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 427
    .line 428
    iget-object v10, v1, Landroidx/compose/ui/text/platform/URLSpanCache;->a:Ljava/util/WeakHashMap;

    .line 429
    .line 430
    invoke-virtual {v10, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v11

    .line 434
    if-nez v11, :cond_17

    .line 435
    .line 436
    new-instance v11, Landroid/text/style/URLSpan;

    .line 437
    .line 438
    iget-object v12, v7, Landroidx/compose/ui/text/UrlAnnotation;->a:Ljava/lang/String;

    .line 439
    .line 440
    invoke-direct {v11, v12}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v10, v7, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    :cond_17
    check-cast v11, Landroid/text/style/URLSpan;

    .line 447
    .line 448
    const/16 v12, 0x21

    .line 449
    .line 450
    invoke-virtual {v2, v11, v9, v6, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 451
    .line 452
    .line 453
    add-int/lit8 v5, v5, 0x1

    .line 454
    .line 455
    goto :goto_c

    .line 456
    :cond_18
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 457
    .line 458
    .line 459
    move-result v3

    .line 460
    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/AnnotatedString;->b(I)Ljava/util/List;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 465
    .line 466
    .line 467
    move-result v3

    .line 468
    move v12, v15

    .line 469
    :goto_d
    if-ge v12, v3, :cond_1d

    .line 470
    .line 471
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 476
    .line 477
    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 478
    .line 479
    iget-object v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 480
    .line 481
    iget v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 482
    .line 483
    if-eq v5, v7, :cond_1c

    .line 484
    .line 485
    move-object v8, v6

    .line 486
    check-cast v8, Landroidx/compose/ui/text/LinkAnnotation;

    .line 487
    .line 488
    instance-of v9, v8, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 489
    .line 490
    if-eqz v9, :cond_1a

    .line 491
    .line 492
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 493
    .line 494
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    .line 496
    .line 497
    check-cast v6, Landroidx/compose/ui/text/LinkAnnotation$Url;

    .line 498
    .line 499
    invoke-direct {v4, v5, v7, v6}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    iget-object v8, v1, Landroidx/compose/ui/text/platform/URLSpanCache;->b:Ljava/util/WeakHashMap;

    .line 503
    .line 504
    invoke-virtual {v8, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v9

    .line 508
    if-nez v9, :cond_19

    .line 509
    .line 510
    new-instance v9, Landroid/text/style/URLSpan;

    .line 511
    .line 512
    iget-object v6, v6, Landroidx/compose/ui/text/LinkAnnotation$Url;->a:Ljava/lang/String;

    .line 513
    .line 514
    invoke-direct {v9, v6}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v8, v4, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    :cond_19
    check-cast v9, Landroid/text/style/URLSpan;

    .line 521
    .line 522
    const/16 v6, 0x21

    .line 523
    .line 524
    invoke-virtual {v2, v9, v5, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 525
    .line 526
    .line 527
    goto :goto_e

    .line 528
    :cond_1a
    const/16 v6, 0x21

    .line 529
    .line 530
    iget-object v9, v1, Landroidx/compose/ui/text/platform/URLSpanCache;->c:Ljava/util/WeakHashMap;

    .line 531
    .line 532
    invoke-virtual {v9, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v10

    .line 536
    if-nez v10, :cond_1b

    .line 537
    .line 538
    new-instance v10, Landroidx/compose/ui/text/platform/ComposeClickableSpan;

    .line 539
    .line 540
    invoke-direct {v10, v8}, Landroidx/compose/ui/text/platform/ComposeClickableSpan;-><init>(Landroidx/compose/ui/text/LinkAnnotation;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v9, v4, v10}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .line 545
    .line 546
    :cond_1b
    check-cast v10, Landroid/text/style/ClickableSpan;

    .line 547
    .line 548
    invoke-virtual {v2, v10, v5, v7, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 549
    .line 550
    .line 551
    goto :goto_e

    .line 552
    :cond_1c
    const/16 v6, 0x21

    .line 553
    .line 554
    :goto_e
    add-int/lit8 v12, v12, 0x1

    .line 555
    .line 556
    goto :goto_d

    .line 557
    :cond_1d
    return-object v2
.end method
