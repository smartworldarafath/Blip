.class public abstract Lnet/blip/shared/LinkableTextKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "\\[([^\\]]+)\\]\\(([^\\)]+)\\)"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/blip/shared/LinkableTextKt;->a:Lkotlin/text/Regex;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Lnet/blip/shared/SimpleLinkTextButton;Landroidx/compose/runtime/Composer;II)V
    .locals 38

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object/from16 v11, p4

    .line 7
    .line 8
    check-cast v11, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    const v0, 0x74c84c20

    .line 11
    .line 12
    .line 13
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 14
    .line 15
    .line 16
    and-int/lit8 v0, p6, 0x1

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    or-int/lit8 v3, p5, 0x6

    .line 22
    .line 23
    move v4, v3

    .line 24
    move-object/from16 v3, p0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    and-int/lit8 v3, p5, 0x6

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    move-object/from16 v3, p0

    .line 32
    .line 33
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v4, v1

    .line 42
    :goto_0
    or-int v4, p5, v4

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move-object/from16 v3, p0

    .line 46
    .line 47
    move/from16 v4, p5

    .line 48
    .line 49
    :goto_1
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const/16 v6, 0x20

    .line 54
    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    move v5, v6

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    const/16 v5, 0x10

    .line 60
    .line 61
    :goto_2
    or-int/2addr v4, v5

    .line 62
    move-object/from16 v5, p2

    .line 63
    .line 64
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_4

    .line 69
    .line 70
    const/16 v7, 0x100

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    const/16 v7, 0x80

    .line 74
    .line 75
    :goto_3
    or-int/2addr v4, v7

    .line 76
    move-object/from16 v13, p3

    .line 77
    .line 78
    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    if-eqz v7, :cond_5

    .line 83
    .line 84
    const/16 v7, 0x800

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    const/16 v7, 0x400

    .line 88
    .line 89
    :goto_4
    or-int/2addr v4, v7

    .line 90
    and-int/lit16 v7, v4, 0x493

    .line 91
    .line 92
    const/16 v8, 0x492

    .line 93
    .line 94
    const/4 v10, 0x1

    .line 95
    if-eq v7, v8, :cond_6

    .line 96
    .line 97
    move v7, v10

    .line 98
    goto :goto_5

    .line 99
    :cond_6
    const/4 v7, 0x0

    .line 100
    :goto_5
    and-int/lit8 v8, v4, 0x1

    .line 101
    .line 102
    invoke-virtual {v11, v8, v7}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_1b

    .line 107
    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_7
    move-object v0, v3

    .line 114
    :goto_6
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 117
    .line 118
    .line 119
    sget-object v7, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 120
    .line 121
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    check-cast v7, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 126
    .line 127
    sget-object v8, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 128
    .line 129
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 134
    .line 135
    sget-object v12, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 136
    .line 137
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    check-cast v12, Landroidx/compose/ui/unit/LayoutDirection;

    .line 142
    .line 143
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v14

    .line 147
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v15

    .line 151
    or-int/2addr v14, v15

    .line 152
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 153
    .line 154
    .line 155
    move-result v15

    .line 156
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 157
    .line 158
    .line 159
    move-result v15

    .line 160
    or-int/2addr v14, v15

    .line 161
    const/16 v15, 0x8

    .line 162
    .line 163
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    or-int/2addr v14, v15

    .line 168
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 173
    .line 174
    if-nez v14, :cond_8

    .line 175
    .line 176
    if-ne v15, v9, :cond_9

    .line 177
    .line 178
    :cond_8
    new-instance v15, Landroidx/compose/ui/text/TextMeasurer;

    .line 179
    .line 180
    invoke-direct {v15, v7, v8, v12}, Landroidx/compose/ui/text/TextMeasurer;-><init>(Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    :cond_9
    move-object v7, v15

    .line 187
    check-cast v7, Landroidx/compose/ui/text/TextMeasurer;

    .line 188
    .line 189
    and-int/lit8 v8, v4, 0x70

    .line 190
    .line 191
    if-ne v8, v6, :cond_a

    .line 192
    .line 193
    move v8, v10

    .line 194
    goto :goto_7

    .line 195
    :cond_a
    const/4 v8, 0x0

    .line 196
    :goto_7
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v12

    .line 200
    if-nez v8, :cond_c

    .line 201
    .line 202
    if-ne v12, v9, :cond_b

    .line 203
    .line 204
    goto :goto_8

    .line 205
    :cond_b
    move/from16 v18, v6

    .line 206
    .line 207
    move/from16 v19, v10

    .line 208
    .line 209
    goto/16 :goto_a

    .line 210
    .line 211
    :cond_c
    :goto_8
    new-instance v12, Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .line 215
    .line 216
    sget-object v8, Lnet/blip/shared/LinkableTextKt;->a:Lkotlin/text/Regex;

    .line 217
    .line 218
    invoke-static {v8, v2}, Lkotlin/text/Regex;->b(Lkotlin/text/Regex;Ljava/lang/String;)Lkotlin/sequences/Sequence;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    invoke-interface {v8}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 223
    .line 224
    .line 225
    move-result-object v8

    .line 226
    const/4 v9, 0x0

    .line 227
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v14

    .line 231
    if-eqz v14, :cond_e

    .line 232
    .line 233
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    check-cast v14, Lkotlin/text/MatchResult;

    .line 238
    .line 239
    invoke-interface {v14}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    .line 240
    .line 241
    .line 242
    move-result-object v15

    .line 243
    invoke-virtual {v15}, Lkotlin/collections/AbstractCollection;->b()I

    .line 244
    .line 245
    .line 246
    move-result v15

    .line 247
    move/from16 v18, v6

    .line 248
    .line 249
    const/4 v6, 0x3

    .line 250
    if-ne v15, v6, :cond_d

    .line 251
    .line 252
    invoke-interface {v14}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    .line 253
    .line 254
    .line 255
    move-result-object v6

    .line 256
    invoke-virtual {v6, v10}, Lkotlin/text/MatcherMatchResult$groups$1;->c(I)Lkotlin/text/MatchGroup;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    invoke-interface {v14}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    .line 264
    .line 265
    .line 266
    move-result-object v15

    .line 267
    invoke-virtual {v15, v1}, Lkotlin/text/MatcherMatchResult$groups$1;->c(I)Lkotlin/text/MatchGroup;

    .line 268
    .line 269
    .line 270
    move-result-object v15

    .line 271
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 272
    .line 273
    .line 274
    new-instance v1, Lnet/blip/shared/LinkableSpan$Plain;

    .line 275
    .line 276
    move/from16 v19, v10

    .line 277
    .line 278
    invoke-interface {v14}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    iget v10, v10, Lkotlin/ranges/IntProgression;->j:I

    .line 283
    .line 284
    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 285
    .line 286
    .line 287
    move-result-object v9

    .line 288
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    invoke-direct {v1, v9}, Lnet/blip/shared/LinkableSpan$Plain;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    new-instance v1, Lnet/blip/shared/LinkableSpan$Link;

    .line 299
    .line 300
    iget-object v6, v6, Lkotlin/text/MatchGroup;->b:Lkotlin/ranges/IntRange;

    .line 301
    .line 302
    iget v9, v6, Lkotlin/ranges/IntProgression;->j:I

    .line 303
    .line 304
    iget v6, v6, Lkotlin/ranges/IntProgression;->k:I

    .line 305
    .line 306
    add-int/lit8 v6, v6, 0x1

    .line 307
    .line 308
    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    iget-object v9, v15, Lkotlin/text/MatchGroup;->b:Lkotlin/ranges/IntRange;

    .line 313
    .line 314
    iget v10, v9, Lkotlin/ranges/IntProgression;->j:I

    .line 315
    .line 316
    iget v9, v9, Lkotlin/ranges/IntProgression;->k:I

    .line 317
    .line 318
    add-int/lit8 v9, v9, 0x1

    .line 319
    .line 320
    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v9

    .line 324
    invoke-direct {v1, v6, v9}, Lnet/blip/shared/LinkableSpan$Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    invoke-interface {v14}, Lkotlin/text/MatchResult;->b()Lkotlin/ranges/IntRange;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    iget v1, v1, Lkotlin/ranges/IntProgression;->k:I

    .line 335
    .line 336
    add-int/lit8 v9, v1, 0x1

    .line 337
    .line 338
    move/from16 v6, v18

    .line 339
    .line 340
    move/from16 v10, v19

    .line 341
    .line 342
    const/4 v1, 0x2

    .line 343
    goto :goto_9

    .line 344
    :cond_d
    new-instance v0, Ljava/lang/Exception;

    .line 345
    .line 346
    invoke-interface {v14}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v1}, Lkotlin/collections/AbstractCollection;->b()I

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    invoke-interface {v14}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatcherMatchResult$groups$1;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    .line 359
    .line 360
    const-string v4, "regex match unexpectedly has "

    .line 361
    .line 362
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    const-string v1, " groups: "

    .line 369
    .line 370
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    :cond_e
    move/from16 v18, v6

    .line 385
    .line 386
    move/from16 v19, v10

    .line 387
    .line 388
    new-instance v1, Lnet/blip/shared/LinkableSpan$Plain;

    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 391
    .line 392
    .line 393
    move-result v6

    .line 394
    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    invoke-direct {v1, v6}, Lnet/blip/shared/LinkableSpan$Plain;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 409
    .line 410
    .line 411
    :goto_a
    check-cast v12, Ljava/util/List;

    .line 412
    .line 413
    const v1, 0x63e5fb59

    .line 414
    .line 415
    .line 416
    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 417
    .line 418
    .line 419
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Builder;

    .line 420
    .line 421
    invoke-direct {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;-><init>()V

    .line 422
    .line 423
    .line 424
    const v6, 0x63e5ffce

    .line 425
    .line 426
    .line 427
    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 428
    .line 429
    .line 430
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 435
    .line 436
    .line 437
    move-result v8

    .line 438
    if-eqz v8, :cond_1a

    .line 439
    .line 440
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v8

    .line 444
    check-cast v8, Lnet/blip/shared/LinkableSpan;

    .line 445
    .line 446
    instance-of v9, v8, Lnet/blip/shared/LinkableSpan$Link;

    .line 447
    .line 448
    if-eqz v9, :cond_19

    .line 449
    .line 450
    iget-object v9, v8, Lnet/blip/shared/LinkableSpan;->a:Ljava/lang/String;

    .line 451
    .line 452
    const v10, 0x79be7d23

    .line 453
    .line 454
    .line 455
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 456
    .line 457
    .line 458
    sget-object v10, Lkotlin/random/Random;->k:Lkotlin/random/AbstractPlatformRandom;

    .line 459
    .line 460
    invoke-virtual {v10}, Lkotlin/random/AbstractPlatformRandom;->a()I

    .line 461
    .line 462
    .line 463
    move-result v10

    .line 464
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v10

    .line 468
    invoke-static {v1, v10, v9}, Landroidx/compose/foundation/text/InlineTextContentKt;->a(Landroidx/compose/ui/text/AnnotatedString$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-static {v5}, Lnet/blip/shared/DynamicFontTrackingKt;->a(Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/text/TextStyle;

    .line 472
    .line 473
    .line 474
    move-result-object v22

    .line 475
    const/16 v12, 0xf

    .line 476
    .line 477
    const/4 v14, 0x0

    .line 478
    invoke-static {v14, v14, v14, v14, v12}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 479
    .line 480
    .line 481
    move-result-wide v30

    .line 482
    iget-object v12, v7, Landroidx/compose/ui/text/TextMeasurer;->c:Landroidx/compose/ui/unit/LayoutDirection;

    .line 483
    .line 484
    iget-object v14, v7, Landroidx/compose/ui/text/TextMeasurer;->b:Landroidx/compose/ui/unit/Density;

    .line 485
    .line 486
    iget-object v15, v7, Landroidx/compose/ui/text/TextMeasurer;->a:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 487
    .line 488
    move-object/from16 p0, v0

    .line 489
    .line 490
    new-instance v0, Landroidx/compose/ui/text/AnnotatedString;

    .line 491
    .line 492
    invoke-direct {v0, v9}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    iget-object v9, v7, Landroidx/compose/ui/text/TextMeasurer;->d:Landroidx/compose/ui/text/TextLayoutCache;

    .line 496
    .line 497
    new-instance v20, Landroidx/compose/ui/text/TextLayoutInput;

    .line 498
    .line 499
    sget-object v26, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 500
    .line 501
    const v24, 0x7fffffff

    .line 502
    .line 503
    .line 504
    const/16 v25, 0x1

    .line 505
    .line 506
    const/16 v37, 0x1

    .line 507
    .line 508
    move-object/from16 v21, v0

    .line 509
    .line 510
    move-object/from16 v28, v12

    .line 511
    .line 512
    move-object/from16 v27, v14

    .line 513
    .line 514
    move-object/from16 v29, v15

    .line 515
    .line 516
    move-object/from16 v23, v26

    .line 517
    .line 518
    move/from16 v26, v37

    .line 519
    .line 520
    invoke-direct/range {v20 .. v31}, Landroidx/compose/ui/text/TextLayoutInput;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZILandroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/font/FontFamily$Resolver;J)V

    .line 521
    .line 522
    .line 523
    move-object/from16 v2, v20

    .line 524
    .line 525
    move-object/from16 v0, v22

    .line 526
    .line 527
    move-object/from16 v28, v29

    .line 528
    .line 529
    move-wide/from16 v14, v30

    .line 530
    .line 531
    move-object/from16 v26, v23

    .line 532
    .line 533
    const/16 v16, 0x0

    .line 534
    .line 535
    if-eqz v9, :cond_13

    .line 536
    .line 537
    new-instance v5, Landroidx/compose/ui/text/CacheTextLayoutInput;

    .line 538
    .line 539
    invoke-direct {v5, v2}, Landroidx/compose/ui/text/CacheTextLayoutInput;-><init>(Landroidx/compose/ui/text/TextLayoutInput;)V

    .line 540
    .line 541
    .line 542
    move-object/from16 v20, v6

    .line 543
    .line 544
    iget-object v6, v9, Landroidx/compose/ui/text/TextLayoutCache;->a:Landroidx/collection/LruCache;

    .line 545
    .line 546
    if-eqz v6, :cond_f

    .line 547
    .line 548
    invoke-virtual {v6, v5}, Landroidx/collection/LruCache;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    check-cast v5, Landroidx/compose/ui/text/TextLayoutResult;

    .line 553
    .line 554
    goto :goto_c

    .line 555
    :cond_f
    iget-object v6, v9, Landroidx/compose/ui/text/TextLayoutCache;->b:Landroidx/compose/ui/text/CacheTextLayoutInput;

    .line 556
    .line 557
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 558
    .line 559
    .line 560
    move-result v5

    .line 561
    if-eqz v5, :cond_12

    .line 562
    .line 563
    iget-object v5, v9, Landroidx/compose/ui/text/TextLayoutCache;->c:Landroidx/compose/ui/text/TextLayoutResult;

    .line 564
    .line 565
    :goto_c
    if-nez v5, :cond_10

    .line 566
    .line 567
    goto :goto_d

    .line 568
    :cond_10
    iget-object v6, v5, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 569
    .line 570
    iget-object v6, v6, Landroidx/compose/ui/text/MultiParagraph;->a:Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 571
    .line 572
    invoke-virtual {v6}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->a()Z

    .line 573
    .line 574
    .line 575
    move-result v6

    .line 576
    if-eqz v6, :cond_11

    .line 577
    .line 578
    goto :goto_d

    .line 579
    :cond_11
    move-object/from16 v16, v5

    .line 580
    .line 581
    :cond_12
    :goto_d
    move-object/from16 v5, v16

    .line 582
    .line 583
    goto :goto_e

    .line 584
    :cond_13
    move-object/from16 v20, v6

    .line 585
    .line 586
    goto :goto_d

    .line 587
    :goto_e
    const-wide v16, 0xffffffffL

    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    if-eqz v5, :cond_14

    .line 593
    .line 594
    iget-object v0, v5, Landroidx/compose/ui/text/TextLayoutResult;->b:Landroidx/compose/ui/text/MultiParagraph;

    .line 595
    .line 596
    iget v5, v0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    .line 597
    .line 598
    float-to-double v5, v5

    .line 599
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 600
    .line 601
    .line 602
    move-result-wide v5

    .line 603
    double-to-float v5, v5

    .line 604
    float-to-int v5, v5

    .line 605
    iget v6, v0, Landroidx/compose/ui/text/MultiParagraph;->e:F

    .line 606
    .line 607
    move-object/from16 v22, v7

    .line 608
    .line 609
    float-to-double v6, v6

    .line 610
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 611
    .line 612
    .line 613
    move-result-wide v6

    .line 614
    double-to-float v6, v6

    .line 615
    float-to-int v6, v6

    .line 616
    int-to-long v12, v5

    .line 617
    shl-long v12, v12, v18

    .line 618
    .line 619
    int-to-long v5, v6

    .line 620
    and-long v5, v5, v16

    .line 621
    .line 622
    or-long/2addr v5, v12

    .line 623
    invoke-static {v14, v15, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->d(JJ)J

    .line 624
    .line 625
    .line 626
    move-result-wide v5

    .line 627
    new-instance v7, Landroidx/compose/ui/text/TextLayoutResult;

    .line 628
    .line 629
    invoke-direct {v7, v2, v0, v5, v6}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    .line 630
    .line 631
    .line 632
    goto/16 :goto_11

    .line 633
    .line 634
    :cond_14
    move-object/from16 v22, v7

    .line 635
    .line 636
    invoke-static {v0, v12}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    new-instance v33, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    .line 641
    .line 642
    move-object/from16 v24, v21

    .line 643
    .line 644
    move/from16 v29, v25

    .line 645
    .line 646
    move-object/from16 v23, v33

    .line 647
    .line 648
    move-object/from16 v25, v0

    .line 649
    .line 650
    invoke-direct/range {v23 .. v29}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Z)V

    .line 651
    .line 652
    .line 653
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->j(J)I

    .line 654
    .line 655
    .line 656
    move-result v0

    .line 657
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->d(J)Z

    .line 658
    .line 659
    .line 660
    move-result v5

    .line 661
    if-eqz v5, :cond_15

    .line 662
    .line 663
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->h(J)I

    .line 664
    .line 665
    .line 666
    move-result v5

    .line 667
    goto :goto_f

    .line 668
    :cond_15
    const v5, 0x7fffffff

    .line 669
    .line 670
    .line 671
    :goto_f
    if-ne v0, v5, :cond_16

    .line 672
    .line 673
    goto :goto_10

    .line 674
    :cond_16
    invoke-virtual/range {v33 .. v33}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->c()F

    .line 675
    .line 676
    .line 677
    move-result v6

    .line 678
    float-to-double v6, v6

    .line 679
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 680
    .line 681
    .line 682
    move-result-wide v6

    .line 683
    double-to-float v6, v6

    .line 684
    float-to-int v6, v6

    .line 685
    invoke-static {v6, v0, v5}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 686
    .line 687
    .line 688
    move-result v5

    .line 689
    :goto_10
    new-instance v32, Landroidx/compose/ui/text/MultiParagraph;

    .line 690
    .line 691
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    const/4 v6, 0x0

    .line 696
    invoke-static {v6, v5, v6, v0}, Landroidx/compose/ui/unit/Constraints$Companion;->b(IIII)J

    .line 697
    .line 698
    .line 699
    move-result-wide v34

    .line 700
    const v36, 0x7fffffff

    .line 701
    .line 702
    .line 703
    invoke-direct/range {v32 .. v37}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JII)V

    .line 704
    .line 705
    .line 706
    move-object/from16 v0, v32

    .line 707
    .line 708
    new-instance v7, Landroidx/compose/ui/text/TextLayoutResult;

    .line 709
    .line 710
    iget v5, v0, Landroidx/compose/ui/text/MultiParagraph;->d:F

    .line 711
    .line 712
    float-to-double v5, v5

    .line 713
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 714
    .line 715
    .line 716
    move-result-wide v5

    .line 717
    double-to-float v5, v5

    .line 718
    float-to-int v5, v5

    .line 719
    iget v6, v0, Landroidx/compose/ui/text/MultiParagraph;->e:F

    .line 720
    .line 721
    float-to-double v12, v6

    .line 722
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    .line 723
    .line 724
    .line 725
    move-result-wide v12

    .line 726
    double-to-float v6, v12

    .line 727
    float-to-int v6, v6

    .line 728
    int-to-long v12, v5

    .line 729
    shl-long v12, v12, v18

    .line 730
    .line 731
    int-to-long v5, v6

    .line 732
    and-long v5, v5, v16

    .line 733
    .line 734
    or-long/2addr v5, v12

    .line 735
    invoke-static {v14, v15, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->d(JJ)J

    .line 736
    .line 737
    .line 738
    move-result-wide v5

    .line 739
    invoke-direct {v7, v2, v0, v5, v6}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;J)V

    .line 740
    .line 741
    .line 742
    if-eqz v9, :cond_18

    .line 743
    .line 744
    iget-object v0, v9, Landroidx/compose/ui/text/TextLayoutCache;->a:Landroidx/collection/LruCache;

    .line 745
    .line 746
    if-eqz v0, :cond_17

    .line 747
    .line 748
    new-instance v5, Landroidx/compose/ui/text/CacheTextLayoutInput;

    .line 749
    .line 750
    invoke-direct {v5, v2}, Landroidx/compose/ui/text/CacheTextLayoutInput;-><init>(Landroidx/compose/ui/text/TextLayoutInput;)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0, v5, v7}, Landroidx/collection/LruCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    goto :goto_11

    .line 757
    :cond_17
    new-instance v0, Landroidx/compose/ui/text/CacheTextLayoutInput;

    .line 758
    .line 759
    invoke-direct {v0, v2}, Landroidx/compose/ui/text/CacheTextLayoutInput;-><init>(Landroidx/compose/ui/text/TextLayoutInput;)V

    .line 760
    .line 761
    .line 762
    iput-object v0, v9, Landroidx/compose/ui/text/TextLayoutCache;->b:Landroidx/compose/ui/text/CacheTextLayoutInput;

    .line 763
    .line 764
    iput-object v7, v9, Landroidx/compose/ui/text/TextLayoutCache;->c:Landroidx/compose/ui/text/TextLayoutResult;

    .line 765
    .line 766
    :cond_18
    :goto_11
    iget-wide v5, v7, Landroidx/compose/ui/text/TextLayoutResult;->c:J

    .line 767
    .line 768
    and-long v12, v5, v16

    .line 769
    .line 770
    long-to-int v0, v12

    .line 771
    int-to-float v2, v0

    .line 772
    iget v7, v7, Landroidx/compose/ui/text/TextLayoutResult;->d:F

    .line 773
    .line 774
    sub-float v15, v2, v7

    .line 775
    .line 776
    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 777
    .line 778
    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    move-object v14, v2

    .line 783
    check-cast v14, Landroidx/compose/ui/unit/Density;

    .line 784
    .line 785
    new-instance v2, Landroidx/compose/foundation/text/InlineTextContent;

    .line 786
    .line 787
    new-instance v23, Landroidx/compose/ui/text/Placeholder;

    .line 788
    .line 789
    shr-long v5, v5, v18

    .line 790
    .line 791
    long-to-int v5, v5

    .line 792
    add-int/lit8 v5, v5, 0x1

    .line 793
    .line 794
    invoke-interface {v14, v5}, Landroidx/compose/ui/unit/Density;->N(I)J

    .line 795
    .line 796
    .line 797
    move-result-wide v25

    .line 798
    invoke-interface {v14, v0}, Landroidx/compose/ui/unit/Density;->N(I)J

    .line 799
    .line 800
    .line 801
    move-result-wide v27

    .line 802
    const/16 v24, 0x1

    .line 803
    .line 804
    invoke-direct/range {v23 .. v28}, Landroidx/compose/ui/text/Placeholder;-><init>(IJJ)V

    .line 805
    .line 806
    .line 807
    move-object/from16 v0, v23

    .line 808
    .line 809
    new-instance v12, Lnet/blip/shared/c;

    .line 810
    .line 811
    move-object/from16 v16, v8

    .line 812
    .line 813
    check-cast v16, Lnet/blip/shared/LinkableSpan$Link;

    .line 814
    .line 815
    move-object/from16 v17, p2

    .line 816
    .line 817
    move-object/from16 v13, p3

    .line 818
    .line 819
    invoke-direct/range {v12 .. v17}, Lnet/blip/shared/c;-><init>(Lnet/blip/shared/SimpleLinkTextButton;Landroidx/compose/ui/unit/Density;FLnet/blip/shared/LinkableSpan$Link;Landroidx/compose/ui/text/TextStyle;)V

    .line 820
    .line 821
    .line 822
    const v5, -0x70b4ebc3

    .line 823
    .line 824
    .line 825
    invoke-static {v5, v12, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 826
    .line 827
    .line 828
    move-result-object v5

    .line 829
    invoke-direct {v2, v0, v5}, Landroidx/compose/foundation/text/InlineTextContent;-><init>(Landroidx/compose/ui/text/Placeholder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    .line 830
    .line 831
    .line 832
    invoke-interface {v3, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    .line 834
    .line 835
    const/4 v14, 0x0

    .line 836
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 837
    .line 838
    .line 839
    goto :goto_12

    .line 840
    :cond_19
    move-object/from16 p0, v0

    .line 841
    .line 842
    move-object/from16 v20, v6

    .line 843
    .line 844
    move-object/from16 v22, v7

    .line 845
    .line 846
    const/4 v14, 0x0

    .line 847
    const v0, 0x79dc38ba

    .line 848
    .line 849
    .line 850
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 854
    .line 855
    .line 856
    iget-object v0, v8, Lnet/blip/shared/LinkableSpan;->a:Ljava/lang/String;

    .line 857
    .line 858
    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString$Builder;->j:Ljava/lang/StringBuilder;

    .line 859
    .line 860
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    :goto_12
    move-object/from16 v0, p0

    .line 864
    .line 865
    move-object/from16 v2, p1

    .line 866
    .line 867
    move-object/from16 v5, p2

    .line 868
    .line 869
    move-object/from16 v13, p3

    .line 870
    .line 871
    move-object/from16 v6, v20

    .line 872
    .line 873
    move-object/from16 v7, v22

    .line 874
    .line 875
    goto/16 :goto_b

    .line 876
    .line 877
    :cond_1a
    move-object/from16 p0, v0

    .line 878
    .line 879
    const/4 v14, 0x0

    .line 880
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 881
    .line 882
    .line 883
    invoke-virtual {v1}, Landroidx/compose/ui/text/AnnotatedString$Builder;->e()Landroidx/compose/ui/text/AnnotatedString;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 888
    .line 889
    .line 890
    shl-int/lit8 v1, v4, 0x3

    .line 891
    .line 892
    and-int/lit8 v1, v1, 0x70

    .line 893
    .line 894
    and-int/lit16 v2, v4, 0x380

    .line 895
    .line 896
    or-int v12, v1, v2

    .line 897
    .line 898
    const/16 v13, 0x2f8

    .line 899
    .line 900
    const/4 v6, 0x0

    .line 901
    const/4 v7, 0x0

    .line 902
    const/4 v8, 0x0

    .line 903
    const/4 v9, 0x0

    .line 904
    move-object/from16 v4, p0

    .line 905
    .line 906
    move-object/from16 v5, p2

    .line 907
    .line 908
    move-object v10, v3

    .line 909
    move-object v3, v0

    .line 910
    invoke-static/range {v3 .. v13}, Lnet/blip/shared/PlatformTextKt;->b(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V

    .line 911
    .line 912
    .line 913
    move-object v1, v4

    .line 914
    goto :goto_13

    .line 915
    :cond_1b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 916
    .line 917
    .line 918
    move-object v1, v3

    .line 919
    :goto_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 920
    .line 921
    .line 922
    move-result-object v8

    .line 923
    if-eqz v8, :cond_1c

    .line 924
    .line 925
    new-instance v0, Lu1;

    .line 926
    .line 927
    const/4 v7, 0x3

    .line 928
    move-object/from16 v2, p1

    .line 929
    .line 930
    move-object/from16 v3, p2

    .line 931
    .line 932
    move-object/from16 v4, p3

    .line 933
    .line 934
    move/from16 v5, p5

    .line 935
    .line 936
    move/from16 v6, p6

    .line 937
    .line 938
    invoke-direct/range {v0 .. v7}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 939
    .line 940
    .line 941
    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 942
    .line 943
    :cond_1c
    return-void
.end method
