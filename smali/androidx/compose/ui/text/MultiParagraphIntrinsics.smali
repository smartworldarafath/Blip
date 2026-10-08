.class public final Landroidx/compose/ui/text/MultiParagraphIntrinsics;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;


# instance fields
.field public final a:Landroidx/compose/ui/text/AnnotatedString;

.field public final b:Ljava/util/List;

.field public final c:Lkotlin/Lazy;

.field public final d:Lkotlin/Lazy;

.field public final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Z)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 11
    .line 12
    move-object/from16 v3, p3

    .line 13
    .line 14
    iput-object v3, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b:Ljava/util/List;

    .line 15
    .line 16
    sget-object v3, Lkotlin/LazyThreadSafetyMode;->k:Lkotlin/LazyThreadSafetyMode;

    .line 17
    .line 18
    new-instance v4, Lnb;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-direct {v4, v0, v5}, Lnb;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v3, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iput-object v4, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->c:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v4, Lnb;

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    invoke-direct {v4, v0, v6}, Lnb;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->d:Lkotlin/Lazy;

    .line 41
    .line 42
    iget-object v3, v2, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    .line 43
    .line 44
    sget-object v4, Landroidx/compose/ui/text/AnnotatedStringKt;->a:Landroidx/compose/ui/text/AnnotatedString;

    .line 45
    .line 46
    iget-object v4, v1, Landroidx/compose/ui/text/AnnotatedString;->m:Ljava/util/ArrayList;

    .line 47
    .line 48
    iget-object v6, v1, Landroidx/compose/ui/text/AnnotatedString;->k:Ljava/lang/String;

    .line 49
    .line 50
    sget-object v7, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    new-instance v8, Landroidx/compose/ui/text/AnnotatedStringKt$normalizedParagraphStyles$$inlined$sortedBy$1;

    .line 55
    .line 56
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->R(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move-object v4, v7

    .line 65
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v9, Lkotlin/collections/ArrayDeque;

    .line 71
    .line 72
    invoke-direct {v9}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    move v11, v5

    .line 80
    move v12, v11

    .line 81
    :goto_1
    const/16 v13, 0xe

    .line 82
    .line 83
    if-ge v11, v10, :cond_9

    .line 84
    .line 85
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    check-cast v14, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 90
    .line 91
    iget-object v15, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v15, Landroidx/compose/ui/text/ParagraphStyle;

    .line 94
    .line 95
    invoke-virtual {v3, v15}, Landroidx/compose/ui/text/ParagraphStyle;->a(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    invoke-static {v14, v15, v5, v13}, Landroidx/compose/ui/text/AnnotatedString$Range;->a(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/ParagraphStyle;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    iget-object v14, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 104
    .line 105
    iget v15, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 106
    .line 107
    iget v13, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 108
    .line 109
    :goto_2
    if-ge v12, v13, :cond_3

    .line 110
    .line 111
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v16

    .line 115
    if-nez v16, :cond_3

    .line 116
    .line 117
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v16

    .line 121
    move-object/from16 v5, v16

    .line 122
    .line 123
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 124
    .line 125
    move-object/from16 v16, v4

    .line 126
    .line 127
    iget v4, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 128
    .line 129
    move-object/from16 v17, v7

    .line 130
    .line 131
    iget-object v7, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 132
    .line 133
    if-ge v13, v4, :cond_1

    .line 134
    .line 135
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 136
    .line 137
    invoke-direct {v4, v12, v13, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move v12, v13

    .line 144
    move-object/from16 v4, v16

    .line 145
    .line 146
    move-object/from16 v7, v17

    .line 147
    .line 148
    :goto_3
    const/4 v5, 0x0

    .line 149
    goto :goto_2

    .line 150
    :cond_1
    move/from16 v18, v10

    .line 151
    .line 152
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 153
    .line 154
    invoke-direct {v10, v12, v4, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    iget v12, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 161
    .line 162
    :goto_4
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-nez v4, :cond_2

    .line 167
    .line 168
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 173
    .line 174
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 175
    .line 176
    if-ne v12, v4, :cond_2

    .line 177
    .line 178
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_2
    move-object/from16 v4, v16

    .line 183
    .line 184
    move-object/from16 v7, v17

    .line 185
    .line 186
    move/from16 v10, v18

    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_3
    move-object/from16 v16, v4

    .line 190
    .line 191
    move-object/from16 v17, v7

    .line 192
    .line 193
    move/from16 v18, v10

    .line 194
    .line 195
    if-ge v12, v13, :cond_4

    .line 196
    .line 197
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 198
    .line 199
    invoke-direct {v4, v12, v13, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move v12, v13

    .line 206
    :cond_4
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->i()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 211
    .line 212
    if-eqz v4, :cond_8

    .line 213
    .line 214
    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 215
    .line 216
    iget-object v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 217
    .line 218
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 219
    .line 220
    if-ne v4, v13, :cond_5

    .line 221
    .line 222
    if-ne v5, v15, :cond_5

    .line 223
    .line 224
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 228
    .line 229
    check-cast v7, Landroidx/compose/ui/text/ParagraphStyle;

    .line 230
    .line 231
    check-cast v14, Landroidx/compose/ui/text/ParagraphStyle;

    .line 232
    .line 233
    invoke-virtual {v7, v14}, Landroidx/compose/ui/text/ParagraphStyle;->a(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-direct {v4, v13, v15, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    goto :goto_5

    .line 244
    :cond_5
    if-ne v4, v5, :cond_6

    .line 245
    .line 246
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 247
    .line 248
    invoke-direct {v10, v4, v5, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 258
    .line 259
    invoke-direct {v4, v13, v15, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_6
    if-lt v5, v15, :cond_7

    .line 267
    .line 268
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 269
    .line 270
    check-cast v7, Landroidx/compose/ui/text/ParagraphStyle;

    .line 271
    .line 272
    check-cast v14, Landroidx/compose/ui/text/ParagraphStyle;

    .line 273
    .line 274
    invoke-virtual {v7, v14}, Landroidx/compose/ui/text/ParagraphStyle;->a(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-direct {v4, v13, v15, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_7
    invoke-static {}, Lfe;->h()V

    .line 286
    .line 287
    .line 288
    const/4 v0, 0x0

    .line 289
    throw v0

    .line 290
    :cond_8
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 291
    .line 292
    invoke-direct {v4, v13, v15, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 299
    .line 300
    move-object/from16 v4, v16

    .line 301
    .line 302
    move-object/from16 v7, v17

    .line 303
    .line 304
    move/from16 v10, v18

    .line 305
    .line 306
    const/4 v5, 0x0

    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_9
    move-object/from16 v17, v7

    .line 310
    .line 311
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-gt v12, v4, :cond_b

    .line 316
    .line 317
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    if-nez v4, :cond_b

    .line 322
    .line 323
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 328
    .line 329
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 330
    .line 331
    iget-object v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 332
    .line 333
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 334
    .line 335
    invoke-direct {v5, v12, v4, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    :goto_7
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    if-nez v5, :cond_a

    .line 346
    .line 347
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v5

    .line 351
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 352
    .line 353
    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 354
    .line 355
    if-ne v4, v5, :cond_a

    .line 356
    .line 357
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_a
    move v12, v4

    .line 362
    goto :goto_6

    .line 363
    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 364
    .line 365
    .line 366
    move-result v4

    .line 367
    if-ge v12, v4, :cond_c

    .line 368
    .line 369
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 370
    .line 371
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 372
    .line 373
    .line 374
    move-result v5

    .line 375
    invoke-direct {v4, v12, v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    if-eqz v4, :cond_d

    .line 386
    .line 387
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 388
    .line 389
    const/4 v5, 0x0

    .line 390
    invoke-direct {v4, v5, v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    goto :goto_8

    .line 397
    :cond_d
    const/4 v5, 0x0

    .line 398
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    .line 399
    .line 400
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 408
    .line 409
    .line 410
    move-result v7

    .line 411
    move v9, v5

    .line 412
    :goto_9
    if-ge v9, v7, :cond_15

    .line 413
    .line 414
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v10

    .line 418
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 419
    .line 420
    iget v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 421
    .line 422
    iget v12, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 423
    .line 424
    new-instance v14, Landroidx/compose/ui/text/AnnotatedString;

    .line 425
    .line 426
    if-eq v11, v12, :cond_e

    .line 427
    .line 428
    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v15

    .line 432
    goto :goto_a

    .line 433
    :cond_e
    const-string v15, ""

    .line 434
    .line 435
    :goto_a
    new-instance v5, Lh;

    .line 436
    .line 437
    invoke-direct {v5, v13}, Lh;-><init>(I)V

    .line 438
    .line 439
    .line 440
    invoke-static {v1, v11, v12, v5}, Landroidx/compose/ui/text/AnnotatedStringKt;->a(Landroidx/compose/ui/text/AnnotatedString;IILh;)Ljava/util/List;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    if-nez v5, :cond_f

    .line 445
    .line 446
    move-object/from16 v5, v17

    .line 447
    .line 448
    :cond_f
    invoke-direct {v14, v15, v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 449
    .line 450
    .line 451
    iget-object v5, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 452
    .line 453
    check-cast v5, Landroidx/compose/ui/text/ParagraphStyle;

    .line 454
    .line 455
    iget v10, v5, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 456
    .line 457
    if-nez v10, :cond_10

    .line 458
    .line 459
    iget v10, v3, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    .line 460
    .line 461
    iget v13, v5, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    .line 462
    .line 463
    move-object/from16 v29, v6

    .line 464
    .line 465
    move/from16 v30, v7

    .line 466
    .line 467
    iget-wide v6, v5, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    .line 468
    .line 469
    iget-object v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    .line 470
    .line 471
    move-object/from16 v23, v1

    .line 472
    .line 473
    iget-object v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 474
    .line 475
    move-object/from16 v24, v1

    .line 476
    .line 477
    iget-object v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 478
    .line 479
    move-object/from16 v25, v1

    .line 480
    .line 481
    iget v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    .line 482
    .line 483
    move/from16 v26, v1

    .line 484
    .line 485
    iget v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    .line 486
    .line 487
    iget-object v5, v5, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    .line 488
    .line 489
    new-instance v18, Landroidx/compose/ui/text/ParagraphStyle;

    .line 490
    .line 491
    move/from16 v27, v1

    .line 492
    .line 493
    move-object/from16 v28, v5

    .line 494
    .line 495
    move-wide/from16 v21, v6

    .line 496
    .line 497
    move/from16 v20, v10

    .line 498
    .line 499
    move/from16 v19, v13

    .line 500
    .line 501
    invoke-direct/range {v18 .. v28}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 502
    .line 503
    .line 504
    move-object/from16 v5, v18

    .line 505
    .line 506
    goto :goto_b

    .line 507
    :cond_10
    move-object/from16 v29, v6

    .line 508
    .line 509
    move/from16 v30, v7

    .line 510
    .line 511
    :goto_b
    new-instance v1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 512
    .line 513
    new-instance v6, Landroidx/compose/ui/text/TextStyle;

    .line 514
    .line 515
    iget-object v7, v2, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    .line 516
    .line 517
    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/ParagraphStyle;->a(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    invoke-direct {v6, v7, v5}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    .line 522
    .line 523
    .line 524
    iget-object v5, v14, Landroidx/compose/ui/text/AnnotatedString;->j:Ljava/util/List;

    .line 525
    .line 526
    if-nez v5, :cond_11

    .line 527
    .line 528
    move-object/from16 v21, v17

    .line 529
    .line 530
    goto :goto_c

    .line 531
    :cond_11
    move-object/from16 v21, v5

    .line 532
    .line 533
    :goto_c
    iget-object v5, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->b:Ljava/util/List;

    .line 534
    .line 535
    new-instance v7, Ljava/util/ArrayList;

    .line 536
    .line 537
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 538
    .line 539
    .line 540
    move-result v10

    .line 541
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    .line 543
    .line 544
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 545
    .line 546
    .line 547
    move-result v10

    .line 548
    const/4 v13, 0x0

    .line 549
    :goto_d
    if-ge v13, v10, :cond_14

    .line 550
    .line 551
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 552
    .line 553
    .line 554
    move-result-object v14

    .line 555
    check-cast v14, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 556
    .line 557
    iget v2, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    .line 558
    .line 559
    move-object/from16 v26, v3

    .line 560
    .line 561
    iget v3, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    .line 562
    .line 563
    invoke-static {v11, v12, v2, v3}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    .line 564
    .line 565
    .line 566
    move-result v18

    .line 567
    if-eqz v18, :cond_13

    .line 568
    .line 569
    if-gt v11, v2, :cond_12

    .line 570
    .line 571
    if-gt v3, v12, :cond_12

    .line 572
    .line 573
    :goto_e
    move/from16 v18, v2

    .line 574
    .line 575
    goto :goto_f

    .line 576
    :cond_12
    const-string v18, "placeholder can not overlap with paragraph."

    .line 577
    .line 578
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    goto :goto_e

    .line 582
    :goto_f
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 583
    .line 584
    iget-object v14, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    .line 585
    .line 586
    move/from16 v19, v3

    .line 587
    .line 588
    sub-int v3, v18, v11

    .line 589
    .line 590
    move-object/from16 v18, v5

    .line 591
    .line 592
    sub-int v5, v19, v11

    .line 593
    .line 594
    invoke-direct {v2, v3, v5, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    goto :goto_10

    .line 601
    :cond_13
    move-object/from16 v18, v5

    .line 602
    .line 603
    :goto_10
    add-int/lit8 v13, v13, 0x1

    .line 604
    .line 605
    move-object/from16 v2, p2

    .line 606
    .line 607
    move-object/from16 v5, v18

    .line 608
    .line 609
    move-object/from16 v3, v26

    .line 610
    .line 611
    goto :goto_d

    .line 612
    :cond_14
    move-object/from16 v26, v3

    .line 613
    .line 614
    new-instance v18, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 615
    .line 616
    move-object/from16 v24, p4

    .line 617
    .line 618
    move-object/from16 v23, p5

    .line 619
    .line 620
    move/from16 v25, p6

    .line 621
    .line 622
    move-object/from16 v20, v6

    .line 623
    .line 624
    move-object/from16 v22, v7

    .line 625
    .line 626
    move-object/from16 v19, v15

    .line 627
    .line 628
    invoke-direct/range {v18 .. v25}, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Z)V

    .line 629
    .line 630
    .line 631
    move-object/from16 v2, v18

    .line 632
    .line 633
    invoke-direct {v1, v2, v11, v12}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;-><init>(Landroidx/compose/ui/text/AndroidParagraphIntrinsics;II)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    add-int/lit8 v9, v9, 0x1

    .line 640
    .line 641
    move-object/from16 v1, p1

    .line 642
    .line 643
    move-object/from16 v2, p2

    .line 644
    .line 645
    move-object/from16 v6, v29

    .line 646
    .line 647
    move/from16 v7, v30

    .line 648
    .line 649
    const/4 v5, 0x0

    .line 650
    const/16 v13, 0xe

    .line 651
    .line 652
    goto/16 :goto_9

    .line 653
    .line 654
    :cond_15
    iput-object v4, v0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->e:Ljava/util/ArrayList;

    .line 655
    .line 656
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 16
    .line 17
    iget-object v3, v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->a:Landroidx/compose/ui/text/AndroidParagraphIntrinsics;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/text/AndroidParagraphIntrinsics;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1
.end method

.method public final b()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final c()F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method
