.class public abstract Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static a(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 12

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v2, :cond_5

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    new-instance v6, Lkotlin/Pair;

    .line 21
    .line 22
    invoke-direct {v6, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    move-object v2, p0

    .line 27
    :goto_0
    instance-of v6, v2, Landroid/view/View;

    .line 28
    .line 29
    if-eqz v6, :cond_4

    .line 30
    .line 31
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v7, 0x1d

    .line 34
    .line 35
    if-lt v6, v7, :cond_1

    .line 36
    .line 37
    move-object v6, v2

    .line 38
    check-cast v6, Landroid/view/View;

    .line 39
    .line 40
    invoke-static {v6}, Lio/sentry/android/replay/screenshot/f;->a(Landroid/view/View;)F

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    .line 46
    .line 47
    :goto_1
    check-cast v2, Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    cmpg-float v7, v7, v3

    .line 54
    .line 55
    if-lez v7, :cond_3

    .line 56
    .line 57
    cmpg-float v6, v6, v3

    .line 58
    .line 59
    if-lez v6, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    :goto_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    new-instance v6, Lkotlin/Pair;

    .line 76
    .line 77
    invoke-direct {v6, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_4
    new-instance v2, Landroid/graphics/Rect;

    .line 82
    .line 83
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v6, Landroid/graphics/Point;

    .line 87
    .line 88
    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v2, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    new-instance v7, Lkotlin/Pair;

    .line 100
    .line 101
    invoke-direct {v7, v6, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object v6, v7

    .line 105
    goto :goto_3

    .line 106
    :cond_5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 107
    .line 108
    new-instance v6, Lkotlin/Pair;

    .line 109
    .line 110
    invoke-direct {v6, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :goto_3
    iget-object v2, v6, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    iget-object v2, v6, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 122
    .line 123
    move-object v8, v2

    .line 124
    check-cast v8, Landroid/graphics/Rect;

    .line 125
    .line 126
    const/4 v2, 0x0

    .line 127
    const/4 v6, 0x1

    .line 128
    if-eqz v7, :cond_10

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v9

    .line 134
    instance-of v10, v9, Ljava/lang/String;

    .line 135
    .line 136
    if-eqz v10, :cond_6

    .line 137
    .line 138
    check-cast v9, Ljava/lang/String;

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_6
    move-object v9, v5

    .line 142
    :goto_4
    if-eqz v9, :cond_7

    .line 143
    .line 144
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 145
    .line 146
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    const-string v10, "sentry-unmask"

    .line 154
    .line 155
    invoke-static {v9, v10, v2}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-ne v9, v6, :cond_7

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_7
    const v9, 0x7f0a01a4

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    const-string v11, "unmask"

    .line 170
    .line 171
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    if-eqz v10, :cond_8

    .line 176
    .line 177
    :goto_5
    invoke-virtual {p2}, Lio/sentry/SentryMaskingOptions;->d()V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_b

    .line 181
    .line 182
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v10

    .line 186
    instance-of v11, v10, Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v11, :cond_9

    .line 189
    .line 190
    check-cast v10, Ljava/lang/String;

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_9
    move-object v10, v5

    .line 194
    :goto_6
    if-eqz v10, :cond_a

    .line 195
    .line 196
    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 197
    .line 198
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    .line 204
    .line 205
    const-string v11, "sentry-mask"

    .line 206
    .line 207
    invoke-static {v10, v11, v2}, Lkotlin/text/StringsKt;->i(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    .line 208
    .line 209
    .line 210
    move-result v10

    .line 211
    if-ne v10, v6, :cond_a

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_a
    invoke-virtual {p0, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    const-string v10, "mask"

    .line 219
    .line 220
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v9

    .line 224
    if-eqz v9, :cond_b

    .line 225
    .line 226
    :goto_7
    invoke-virtual {p2}, Lio/sentry/SentryMaskingOptions;->d()V

    .line 227
    .line 228
    .line 229
    goto :goto_a

    .line 230
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 231
    .line 232
    .line 233
    move-result-object v9

    .line 234
    if-eqz v9, :cond_c

    .line 235
    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 237
    .line 238
    .line 239
    move-result-object v9

    .line 240
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    move-result-object v9

    .line 247
    iget-object v10, p2, Lio/sentry/SentryMaskingOptions;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 248
    .line 249
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    :goto_8
    if-eqz v9, :cond_e

    .line 253
    .line 254
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v11

    .line 258
    invoke-virtual {v10, v11}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    if-eqz v11, :cond_d

    .line 263
    .line 264
    goto :goto_b

    .line 265
    :cond_d
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    move-result-object v9

    .line 269
    goto :goto_8

    .line 270
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    iget-object v1, p2, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 275
    .line 276
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    :goto_9
    if-eqz v9, :cond_10

    .line 280
    .line 281
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    invoke-virtual {v1, v10}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    if-eqz v10, :cond_f

    .line 290
    .line 291
    :goto_a
    move v9, v6

    .line 292
    goto :goto_c

    .line 293
    :cond_f
    invoke-virtual {v9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    goto :goto_9

    .line 298
    :cond_10
    :goto_b
    move v9, v2

    .line 299
    :goto_c
    instance-of v1, p0, Landroid/widget/TextView;

    .line 300
    .line 301
    if-eqz v1, :cond_13

    .line 302
    .line 303
    move-object v0, p0

    .line 304
    check-cast v0, Landroid/widget/TextView;

    .line 305
    .line 306
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    if-eqz v1, :cond_11

    .line 311
    .line 312
    new-instance v5, Lio/sentry/android/replay/util/AndroidTextLayout;

    .line 313
    .line 314
    invoke-direct {v5, v1}, Lio/sentry/android/replay/util/AndroidTextLayout;-><init>(Landroid/text/Layout;)V

    .line 315
    .line 316
    .line 317
    :cond_11
    move-object v1, v5

    .line 318
    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    const/high16 v5, -0x1000000

    .line 323
    .line 324
    or-int/2addr v2, v5

    .line 325
    move v5, v3

    .line 326
    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    .line 327
    .line 328
    .line 329
    move-result v3

    .line 330
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    .line 331
    .line 332
    .line 333
    move-result v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    goto :goto_d

    .line 335
    :catch_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    :goto_d
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 343
    .line 344
    .line 345
    move v10, v5

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 347
    .line 348
    .line 349
    move-result v5

    .line 350
    move v11, v6

    .line 351
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    if-eqz p1, :cond_12

    .line 356
    .line 357
    iget v10, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->c:F

    .line 358
    .line 359
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    add-float/2addr v0, v10

    .line 364
    move v10, v7

    .line 365
    move v7, v0

    .line 366
    new-instance v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;

    .line 367
    .line 368
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    move v4, v11

    .line 373
    move-object v11, v8

    .line 374
    move-object v8, p1

    .line 375
    invoke-direct/range {v0 .. v11}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;-><init>(Lio/sentry/android/replay/util/TextLayout;Ljava/lang/Integer;IIIIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V

    .line 376
    .line 377
    .line 378
    return-object v0

    .line 379
    :cond_13
    move v10, v3

    .line 380
    move v5, v9

    .line 381
    instance-of v1, p0, Landroid/widget/ImageView;

    .line 382
    .line 383
    if-eqz v1, :cond_1e

    .line 384
    .line 385
    move-object v0, p0

    .line 386
    check-cast v0, Landroid/widget/ImageView;

    .line 387
    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    move v3, v2

    .line 399
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    if-eqz p1, :cond_14

    .line 404
    .line 405
    iget v9, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->c:F

    .line 406
    .line 407
    goto :goto_e

    .line 408
    :cond_14
    move v9, v10

    .line 409
    :goto_e
    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    add-float/2addr v10, v9

    .line 414
    if-eqz v5, :cond_1d

    .line 415
    .line 416
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    if-eqz v0, :cond_1c

    .line 421
    .line 422
    instance-of v5, v0, Landroid/graphics/drawable/InsetDrawable;

    .line 423
    .line 424
    if-eqz v5, :cond_15

    .line 425
    .line 426
    move v5, v6

    .line 427
    goto :goto_f

    .line 428
    :cond_15
    instance-of v5, v0, Landroid/graphics/drawable/ColorDrawable;

    .line 429
    .line 430
    :goto_f
    if-eqz v5, :cond_16

    .line 431
    .line 432
    move v5, v6

    .line 433
    goto :goto_10

    .line 434
    :cond_16
    instance-of v5, v0, Landroid/graphics/drawable/VectorDrawable;

    .line 435
    .line 436
    :goto_10
    if-eqz v5, :cond_17

    .line 437
    .line 438
    move v5, v6

    .line 439
    goto :goto_11

    .line 440
    :cond_17
    instance-of v5, v0, Landroid/graphics/drawable/GradientDrawable;

    .line 441
    .line 442
    :goto_11
    if-eqz v5, :cond_19

    .line 443
    .line 444
    :cond_18
    :goto_12
    move v0, v3

    .line 445
    goto :goto_13

    .line 446
    :cond_19
    instance-of v5, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 447
    .line 448
    if-eqz v5, :cond_1b

    .line 449
    .line 450
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 451
    .line 452
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    if-nez v0, :cond_1a

    .line 457
    .line 458
    goto :goto_12

    .line 459
    :cond_1a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 460
    .line 461
    .line 462
    move-result v5

    .line 463
    if-nez v5, :cond_18

    .line 464
    .line 465
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 466
    .line 467
    .line 468
    move-result v5

    .line 469
    const/16 v9, 0xa

    .line 470
    .line 471
    if-le v5, v9, :cond_18

    .line 472
    .line 473
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-le v0, v9, :cond_18

    .line 478
    .line 479
    :cond_1b
    move v0, v6

    .line 480
    :goto_13
    if-ne v0, v6, :cond_1c

    .line 481
    .line 482
    move v0, v6

    .line 483
    goto :goto_14

    .line 484
    :cond_1c
    move v0, v3

    .line 485
    :goto_14
    if-eqz v0, :cond_1d

    .line 486
    .line 487
    move v5, v6

    .line 488
    goto :goto_15

    .line 489
    :cond_1d
    move v5, v3

    .line 490
    :goto_15
    new-instance v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;

    .line 491
    .line 492
    move-object v4, p1

    .line 493
    move v6, v7

    .line 494
    move-object v7, v8

    .line 495
    move v3, v10

    .line 496
    invoke-direct/range {v0 .. v7}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;-><init>(IIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V

    .line 497
    .line 498
    .line 499
    return-object v0

    .line 500
    :cond_1e
    move v6, v7

    .line 501
    move-object v7, v8

    .line 502
    instance-of v1, p0, Landroid/view/SurfaceView;

    .line 503
    .line 504
    if-eqz v1, :cond_20

    .line 505
    .line 506
    new-instance v1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;

    .line 507
    .line 508
    move-object v2, v1

    .line 509
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 510
    .line 511
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 512
    .line 513
    .line 514
    move-object v0, p0

    .line 515
    check-cast v0, Landroid/view/SurfaceView;

    .line 516
    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 521
    .line 522
    .line 523
    move-object v3, v0

    .line 524
    move-object v0, v2

    .line 525
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 526
    .line 527
    .line 528
    move-result v2

    .line 529
    move-object v8, v3

    .line 530
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 531
    .line 532
    .line 533
    move-result v3

    .line 534
    if-eqz p1, :cond_1f

    .line 535
    .line 536
    iget v9, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->c:F

    .line 537
    .line 538
    goto :goto_16

    .line 539
    :cond_1f
    move v9, v10

    .line 540
    :goto_16
    invoke-virtual {v8}, Landroid/view/View;->getElevation()F

    .line 541
    .line 542
    .line 543
    move-result v8

    .line 544
    add-float/2addr v8, v9

    .line 545
    move v4, v8

    .line 546
    move-object v8, v7

    .line 547
    move v7, v6

    .line 548
    move v6, v5

    .line 549
    move-object v5, p1

    .line 550
    invoke-direct/range {v0 .. v8}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;-><init>(Ljava/lang/ref/WeakReference;IIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V

    .line 551
    .line 552
    .line 553
    return-object v0

    .line 554
    :cond_20
    new-instance v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$GenericViewHierarchyNode;

    .line 555
    .line 556
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 557
    .line 558
    .line 559
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 560
    .line 561
    .line 562
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 563
    .line 564
    .line 565
    move-result v1

    .line 566
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 567
    .line 568
    .line 569
    move-result v2

    .line 570
    if-eqz p1, :cond_21

    .line 571
    .line 572
    iget v3, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->c:F

    .line 573
    .line 574
    goto :goto_17

    .line 575
    :cond_21
    move v3, v10

    .line 576
    :goto_17
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 577
    .line 578
    .line 579
    move-result v8

    .line 580
    add-float/2addr v3, v8

    .line 581
    move-object v4, p1

    .line 582
    invoke-direct/range {v0 .. v7}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;-><init>(IIFLio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZLandroid/graphics/Rect;)V

    .line 583
    .line 584
    .line 585
    return-object v0
.end method
