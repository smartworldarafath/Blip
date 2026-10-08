.class public abstract Lio/ktor/http/URLParserKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/http/URLParserKt;->a:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Ljava/lang/String;II)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge p1, p2, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0x3a

    .line 10
    .line 11
    if-eq v2, v3, :cond_2

    .line 12
    .line 13
    const/16 v3, 0x5b

    .line 14
    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    .line 17
    const/16 v3, 0x5d

    .line 18
    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v1, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v1, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_2
    if-nez v1, :cond_3

    .line 27
    .line 28
    return p1

    .line 29
    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    const/4 p0, -0x1

    .line 33
    return p0
.end method

.method public static final b(Lio/ktor/http/URLBuilder;Ljava/lang/String;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_0
    const/4 v5, -0x1

    .line 14
    if-ge v4, v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-static {v6}, Lkotlin/text/CharsKt;->c(C)Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-nez v6, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v4, v5

    .line 31
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    add-int/2addr v2, v5

    .line 36
    if-ltz v2, :cond_4

    .line 37
    .line 38
    :goto_2
    add-int/lit8 v6, v2, -0x1

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    invoke-static {v7}, Lkotlin/text/CharsKt;->c(C)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-nez v7, :cond_2

    .line 49
    .line 50
    goto :goto_4

    .line 51
    :cond_2
    if-gez v6, :cond_3

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move v2, v6

    .line 55
    goto :goto_2

    .line 56
    :cond_4
    :goto_3
    move v2, v5

    .line 57
    :goto_4
    add-int/lit8 v6, v2, 0x1

    .line 58
    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/16 v8, 0x41

    .line 64
    .line 65
    const/16 v9, 0x5b

    .line 66
    .line 67
    const/16 v10, 0x7b

    .line 68
    .line 69
    const/16 v11, 0x61

    .line 70
    .line 71
    if-gt v11, v7, :cond_5

    .line 72
    .line 73
    if-ge v7, v10, :cond_5

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_5
    if-gt v8, v7, :cond_6

    .line 77
    .line 78
    if-ge v7, v9, :cond_6

    .line 79
    .line 80
    :goto_5
    move v7, v4

    .line 81
    move v12, v5

    .line 82
    goto :goto_6

    .line 83
    :cond_6
    move v7, v4

    .line 84
    move v12, v7

    .line 85
    :goto_6
    const/16 v13, 0x3f

    .line 86
    .line 87
    const/16 v14, 0x23

    .line 88
    .line 89
    const/16 v15, 0x2f

    .line 90
    .line 91
    if-ge v7, v6, :cond_d

    .line 92
    .line 93
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const/16 v9, 0x3a

    .line 98
    .line 99
    if-ne v3, v9, :cond_8

    .line 100
    .line 101
    if-ne v12, v5, :cond_7

    .line 102
    .line 103
    sub-int/2addr v7, v4

    .line 104
    goto :goto_8

    .line 105
    :cond_7
    const-string v0, "Illegal character in scheme at position "

    .line 106
    .line 107
    invoke-static {v12, v0}, Lq;->g(ILjava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_8
    if-eq v3, v14, :cond_d

    .line 116
    .line 117
    if-eq v3, v15, :cond_d

    .line 118
    .line 119
    if-eq v3, v13, :cond_d

    .line 120
    .line 121
    if-ne v12, v5, :cond_c

    .line 122
    .line 123
    if-gt v11, v3, :cond_9

    .line 124
    .line 125
    if-ge v3, v10, :cond_9

    .line 126
    .line 127
    goto :goto_7

    .line 128
    :cond_9
    if-gt v8, v3, :cond_a

    .line 129
    .line 130
    const/16 v13, 0x5b

    .line 131
    .line 132
    if-ge v3, v13, :cond_a

    .line 133
    .line 134
    goto :goto_7

    .line 135
    :cond_a
    const/16 v13, 0x30

    .line 136
    .line 137
    if-gt v13, v3, :cond_b

    .line 138
    .line 139
    if-ge v3, v9, :cond_b

    .line 140
    .line 141
    goto :goto_7

    .line 142
    :cond_b
    const/16 v9, 0x2e

    .line 143
    .line 144
    if-eq v3, v9, :cond_c

    .line 145
    .line 146
    const/16 v9, 0x2b

    .line 147
    .line 148
    if-eq v3, v9, :cond_c

    .line 149
    .line 150
    const/16 v9, 0x2d

    .line 151
    .line 152
    if-eq v3, v9, :cond_c

    .line 153
    .line 154
    move v12, v7

    .line 155
    :cond_c
    :goto_7
    add-int/lit8 v7, v7, 0x1

    .line 156
    .line 157
    const/16 v9, 0x5b

    .line 158
    .line 159
    goto :goto_6

    .line 160
    :cond_d
    move v7, v5

    .line 161
    :goto_8
    const/4 v3, 0x1

    .line 162
    if-lez v7, :cond_18

    .line 163
    .line 164
    add-int v9, v4, v7

    .line 165
    .line 166
    invoke-virtual {v1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    sget-object v10, Lio/ktor/http/URLProtocol;->l:Lio/ktor/http/URLProtocol;

    .line 171
    .line 172
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v10

    .line 176
    const/4 v11, 0x0

    .line 177
    :goto_9
    const/16 v12, 0x80

    .line 178
    .line 179
    if-ge v11, v10, :cond_11

    .line 180
    .line 181
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    .line 182
    .line 183
    .line 184
    move-result v14

    .line 185
    if-gt v8, v14, :cond_e

    .line 186
    .line 187
    const/16 v13, 0x5b

    .line 188
    .line 189
    if-ge v14, v13, :cond_e

    .line 190
    .line 191
    add-int/lit8 v13, v14, 0x20

    .line 192
    .line 193
    int-to-char v13, v13

    .line 194
    goto :goto_a

    .line 195
    :cond_e
    if-ltz v14, :cond_f

    .line 196
    .line 197
    if-ge v14, v12, :cond_f

    .line 198
    .line 199
    move v13, v14

    .line 200
    goto :goto_a

    .line 201
    :cond_f
    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    .line 202
    .line 203
    .line 204
    move-result v13

    .line 205
    :goto_a
    if-eq v13, v14, :cond_10

    .line 206
    .line 207
    goto :goto_b

    .line 208
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 209
    .line 210
    const/16 v13, 0x3f

    .line 211
    .line 212
    const/16 v14, 0x23

    .line 213
    .line 214
    goto :goto_9

    .line 215
    :cond_11
    move v11, v5

    .line 216
    :goto_b
    if-ne v11, v5, :cond_12

    .line 217
    .line 218
    goto :goto_e

    .line 219
    :cond_12
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 220
    .line 221
    .line 222
    move-result v10

    .line 223
    new-instance v13, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 226
    .line 227
    .line 228
    const/4 v10, 0x0

    .line 229
    invoke-virtual {v13, v9, v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    sub-int/2addr v10, v3

    .line 237
    if-gt v11, v10, :cond_16

    .line 238
    .line 239
    :goto_c
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    .line 240
    .line 241
    .line 242
    move-result v14

    .line 243
    if-gt v8, v14, :cond_13

    .line 244
    .line 245
    const/16 v8, 0x5b

    .line 246
    .line 247
    if-ge v14, v8, :cond_14

    .line 248
    .line 249
    add-int/lit8 v14, v14, 0x20

    .line 250
    .line 251
    int-to-char v14, v14

    .line 252
    goto :goto_d

    .line 253
    :cond_13
    const/16 v8, 0x5b

    .line 254
    .line 255
    :cond_14
    if-ltz v14, :cond_15

    .line 256
    .line 257
    if-ge v14, v12, :cond_15

    .line 258
    .line 259
    goto :goto_d

    .line 260
    :cond_15
    invoke-static {v14}, Ljava/lang/Character;->toLowerCase(C)C

    .line 261
    .line 262
    .line 263
    move-result v14

    .line 264
    :goto_d
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    if-eq v11, v10, :cond_16

    .line 268
    .line 269
    add-int/lit8 v11, v11, 0x1

    .line 270
    .line 271
    const/16 v8, 0x41

    .line 272
    .line 273
    goto :goto_c

    .line 274
    :cond_16
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    :goto_e
    sget-object v8, Lio/ktor/http/URLProtocol;->m:Ljava/util/LinkedHashMap;

    .line 279
    .line 280
    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    check-cast v8, Lio/ktor/http/URLProtocol;

    .line 285
    .line 286
    if-nez v8, :cond_17

    .line 287
    .line 288
    new-instance v8, Lio/ktor/http/URLProtocol;

    .line 289
    .line 290
    const/4 v10, 0x0

    .line 291
    invoke-direct {v8, v9, v10}, Lio/ktor/http/URLProtocol;-><init>(Ljava/lang/String;I)V

    .line 292
    .line 293
    .line 294
    :cond_17
    iput-object v8, v0, Lio/ktor/http/URLBuilder;->d:Lio/ktor/http/URLProtocol;

    .line 295
    .line 296
    add-int/2addr v7, v3

    .line 297
    add-int/2addr v4, v7

    .line 298
    :cond_18
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->b()Lio/ktor/http/URLProtocol;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    iget-object v7, v7, Lio/ktor/http/URLProtocol;->j:Ljava/lang/String;

    .line 303
    .line 304
    const-string v8, "data"

    .line 305
    .line 306
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    if-eqz v7, :cond_19

    .line 311
    .line 312
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    iput-object v1, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 317
    .line 318
    return-void

    .line 319
    :cond_19
    const/4 v10, 0x0

    .line 320
    :goto_f
    add-int v7, v4, v10

    .line 321
    .line 322
    if-ge v7, v6, :cond_1a

    .line 323
    .line 324
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 325
    .line 326
    .line 327
    move-result v8

    .line 328
    if-ne v8, v15, :cond_1a

    .line 329
    .line 330
    add-int/lit8 v10, v10, 0x1

    .line 331
    .line 332
    goto :goto_f

    .line 333
    :cond_1a
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->b()Lio/ktor/http/URLProtocol;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    iget-object v4, v4, Lio/ktor/http/URLProtocol;->j:Ljava/lang/String;

    .line 338
    .line 339
    const-string v8, "file"

    .line 340
    .line 341
    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v4

    .line 345
    const/4 v8, 0x4

    .line 346
    const-string v9, "/"

    .line 347
    .line 348
    const/4 v11, 0x2

    .line 349
    if-eqz v4, :cond_20

    .line 350
    .line 351
    const-string v2, ""

    .line 352
    .line 353
    if-eq v10, v3, :cond_1f

    .line 354
    .line 355
    if-eq v10, v11, :cond_1c

    .line 356
    .line 357
    const/4 v3, 0x3

    .line 358
    if-ne v10, v3, :cond_1b

    .line 359
    .line 360
    iput-object v2, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    invoke-static {v0, v1}, Lio/ktor/http/URLBuilderKt;->d(Lio/ktor/http/URLBuilder;Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    return-void

    .line 374
    :cond_1b
    const-string v0, "Invalid file url: "

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    return-void

    .line 384
    :cond_1c
    invoke-static {v1, v15, v7, v8}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eq v2, v5, :cond_1e

    .line 389
    .line 390
    if-ne v2, v6, :cond_1d

    .line 391
    .line 392
    goto :goto_10

    .line 393
    :cond_1d
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    iput-object v3, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 398
    .line 399
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-static {v0, v1}, Lio/ktor/http/URLBuilderKt;->d(Lio/ktor/http/URLBuilder;Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    return-void

    .line 407
    :cond_1e
    :goto_10
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    iput-object v1, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 412
    .line 413
    return-void

    .line 414
    :cond_1f
    iput-object v2, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 415
    .line 416
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    invoke-static {v0, v1}, Lio/ktor/http/URLBuilderKt;->d(Lio/ktor/http/URLBuilder;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    return-void

    .line 424
    :cond_20
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->b()Lio/ktor/http/URLProtocol;

    .line 425
    .line 426
    .line 427
    move-result-object v4

    .line 428
    iget-object v4, v4, Lio/ktor/http/URLProtocol;->j:Ljava/lang/String;

    .line 429
    .line 430
    const-string v12, "mailto"

    .line 431
    .line 432
    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    const-string v12, "Failed requirement."

    .line 437
    .line 438
    if-eqz v4, :cond_33

    .line 439
    .line 440
    if-nez v10, :cond_32

    .line 441
    .line 442
    const-string v2, "@"

    .line 443
    .line 444
    const/4 v10, 0x0

    .line 445
    invoke-static {v1, v2, v7, v10, v8}, Lkotlin/text/StringsKt;->r(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    .line 446
    .line 447
    .line 448
    move-result v2

    .line 449
    if-eq v2, v5, :cond_31

    .line 450
    .line 451
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-static {v4}, Lio/ktor/http/CodecsKt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v4

    .line 459
    if-eqz v4, :cond_30

    .line 460
    .line 461
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 462
    .line 463
    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .line 468
    .line 469
    sget-object v7, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 470
    .line 471
    invoke-virtual {v7}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 479
    .line 480
    .line 481
    move-result v8

    .line 482
    new-instance v9, Lkotlinx/io/Buffer;

    .line 483
    .line 484
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 485
    .line 486
    .line 487
    if-gtz v8, :cond_21

    .line 488
    .line 489
    move/from16 v22, v2

    .line 490
    .line 491
    move/from16 v20, v3

    .line 492
    .line 493
    const-wide/16 v17, 0x0

    .line 494
    .line 495
    goto/16 :goto_15

    .line 496
    .line 497
    :cond_21
    const/4 v12, 0x0

    .line 498
    :goto_11
    if-nez v12, :cond_22

    .line 499
    .line 500
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 501
    .line 502
    .line 503
    move-result v14

    .line 504
    if-ne v8, v14, :cond_22

    .line 505
    .line 506
    invoke-virtual {v7}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 507
    .line 508
    .line 509
    move-result-object v14

    .line 510
    invoke-virtual {v4, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 511
    .line 512
    .line 513
    move-result-object v14

    .line 514
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 515
    .line 516
    .line 517
    goto :goto_12

    .line 518
    :cond_22
    invoke-virtual {v4, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v14

    .line 522
    invoke-virtual {v7}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    .line 523
    .line 524
    .line 525
    move-result-object v15

    .line 526
    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 527
    .line 528
    .line 529
    move-result-object v14

    .line 530
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    :goto_12
    array-length v15, v14

    .line 534
    const-wide/16 v17, 0x0

    .line 535
    .line 536
    array-length v10, v14

    .line 537
    int-to-long v10, v10

    .line 538
    move/from16 v20, v3

    .line 539
    .line 540
    move-object/from16 v19, v4

    .line 541
    .line 542
    int-to-long v3, v15

    .line 543
    cmp-long v21, v3, v10

    .line 544
    .line 545
    if-gtz v21, :cond_2f

    .line 546
    .line 547
    cmp-long v10, v17, v3

    .line 548
    .line 549
    if-gtz v10, :cond_2e

    .line 550
    .line 551
    const/4 v10, 0x0

    .line 552
    :goto_13
    if-ge v10, v15, :cond_27

    .line 553
    .line 554
    iget-object v11, v9, Lkotlinx/io/Buffer;->k:Lkotlinx/io/Segment;

    .line 555
    .line 556
    if-nez v11, :cond_23

    .line 557
    .line 558
    invoke-static {}, Lkotlinx/io/SegmentPool;->a()Lkotlinx/io/Segment;

    .line 559
    .line 560
    .line 561
    move-result-object v11

    .line 562
    iput-object v11, v9, Lkotlinx/io/Buffer;->j:Lkotlinx/io/Segment;

    .line 563
    .line 564
    iput-object v11, v9, Lkotlinx/io/Buffer;->k:Lkotlinx/io/Segment;

    .line 565
    .line 566
    move/from16 v22, v2

    .line 567
    .line 568
    goto :goto_14

    .line 569
    :cond_23
    iget v13, v11, Lkotlinx/io/Segment;->c:I

    .line 570
    .line 571
    add-int/lit8 v13, v13, 0x1

    .line 572
    .line 573
    move/from16 v22, v2

    .line 574
    .line 575
    const/16 v2, 0x2000

    .line 576
    .line 577
    if-gt v13, v2, :cond_24

    .line 578
    .line 579
    iget-boolean v2, v11, Lkotlinx/io/Segment;->d:Z

    .line 580
    .line 581
    if-nez v2, :cond_26

    .line 582
    .line 583
    :cond_24
    invoke-static {}, Lkotlinx/io/SegmentPool;->a()Lkotlinx/io/Segment;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    iput-object v11, v2, Lkotlinx/io/Segment;->f:Lkotlinx/io/Segment;

    .line 588
    .line 589
    iget-object v13, v11, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 590
    .line 591
    iput-object v13, v2, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 592
    .line 593
    iget-object v13, v11, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 594
    .line 595
    if-eqz v13, :cond_25

    .line 596
    .line 597
    iput-object v2, v13, Lkotlinx/io/Segment;->f:Lkotlinx/io/Segment;

    .line 598
    .line 599
    :cond_25
    iput-object v2, v11, Lkotlinx/io/Segment;->e:Lkotlinx/io/Segment;

    .line 600
    .line 601
    iput-object v2, v9, Lkotlinx/io/Buffer;->k:Lkotlinx/io/Segment;

    .line 602
    .line 603
    move-object v11, v2

    .line 604
    :cond_26
    :goto_14
    iget-object v2, v11, Lkotlinx/io/Segment;->a:[B

    .line 605
    .line 606
    sub-int v13, v15, v10

    .line 607
    .line 608
    move-object/from16 v23, v7

    .line 609
    .line 610
    array-length v7, v2

    .line 611
    move/from16 v24, v7

    .line 612
    .line 613
    iget v7, v11, Lkotlinx/io/Segment;->c:I

    .line 614
    .line 615
    sub-int v7, v24, v7

    .line 616
    .line 617
    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    .line 618
    .line 619
    .line 620
    move-result v7

    .line 621
    add-int/2addr v7, v10

    .line 622
    iget v13, v11, Lkotlinx/io/Segment;->c:I

    .line 623
    .line 624
    invoke-static {v13, v10, v7, v14, v2}, Lkotlin/collections/ArraysKt;->e(III[B[B)V

    .line 625
    .line 626
    .line 627
    iget v2, v11, Lkotlinx/io/Segment;->c:I

    .line 628
    .line 629
    sub-int v10, v7, v10

    .line 630
    .line 631
    add-int/2addr v10, v2

    .line 632
    iput v10, v11, Lkotlinx/io/Segment;->c:I

    .line 633
    .line 634
    move v10, v7

    .line 635
    move/from16 v2, v22

    .line 636
    .line 637
    move-object/from16 v7, v23

    .line 638
    .line 639
    goto :goto_13

    .line 640
    :cond_27
    move/from16 v22, v2

    .line 641
    .line 642
    move-object/from16 v23, v7

    .line 643
    .line 644
    iget-wide v10, v9, Lkotlinx/io/Buffer;->l:J

    .line 645
    .line 646
    add-long/2addr v10, v3

    .line 647
    iput-wide v10, v9, Lkotlinx/io/Buffer;->l:J

    .line 648
    .line 649
    array-length v2, v14

    .line 650
    if-ltz v2, :cond_2d

    .line 651
    .line 652
    add-int/2addr v12, v2

    .line 653
    if-lt v12, v8, :cond_2c

    .line 654
    .line 655
    :goto_15
    iget-wide v2, v9, Lkotlinx/io/Buffer;->l:J

    .line 656
    .line 657
    cmp-long v2, v2, v17

    .line 658
    .line 659
    if-nez v2, :cond_28

    .line 660
    .line 661
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    move-object v13, v2

    .line 666
    goto/16 :goto_19

    .line 667
    .line 668
    :cond_28
    :goto_16
    iget-wide v2, v9, Lkotlinx/io/Buffer;->l:J

    .line 669
    .line 670
    cmp-long v2, v2, v17

    .line 671
    .line 672
    if-nez v2, :cond_29

    .line 673
    .line 674
    goto :goto_15

    .line 675
    :cond_29
    invoke-virtual {v9}, Lkotlinx/io/Buffer;->readByte()B

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 680
    .line 681
    .line 682
    move-result-object v3

    .line 683
    sget-object v4, Lio/ktor/http/CodecsKt;->a:Ljava/util/Set;

    .line 684
    .line 685
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v4

    .line 689
    if-nez v4, :cond_2b

    .line 690
    .line 691
    sget-object v4, Lio/ktor/http/CodecsKt;->d:Ljava/util/ArrayList;

    .line 692
    .line 693
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v3

    .line 697
    if-eqz v3, :cond_2a

    .line 698
    .line 699
    goto :goto_17

    .line 700
    :cond_2a
    invoke-static {v2}, Lio/ktor/http/CodecsKt;->e(B)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    goto :goto_16

    .line 708
    :cond_2b
    :goto_17
    int-to-char v2, v2

    .line 709
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    goto :goto_16

    .line 713
    :cond_2c
    move-object/from16 v4, v19

    .line 714
    .line 715
    move/from16 v3, v20

    .line 716
    .line 717
    move/from16 v2, v22

    .line 718
    .line 719
    move-object/from16 v7, v23

    .line 720
    .line 721
    goto/16 :goto_11

    .line 722
    .line 723
    :cond_2d
    const-string v2, "Check failed."

    .line 724
    .line 725
    invoke-static {v2}, Lu2;->l(Ljava/lang/String;)V

    .line 726
    .line 727
    .line 728
    goto :goto_18

    .line 729
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 730
    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    const-string v2, "startIndex (0) > endIndex ("

    .line 734
    .line 735
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    const/16 v2, 0x29

    .line 742
    .line 743
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    throw v0

    .line 754
    :cond_2f
    move/from16 v22, v2

    .line 755
    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    .line 757
    .line 758
    const-string v5, "startIndex (0) and endIndex ("

    .line 759
    .line 760
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    const-string v3, ") are not within the range [0..size("

    .line 767
    .line 768
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    const-string v3, "))"

    .line 772
    .line 773
    invoke-static {v2, v10, v11, v3}, Lq;->k(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 774
    .line 775
    .line 776
    move-result-object v2

    .line 777
    invoke-static {v2}, Lu2;->o(Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    goto :goto_18

    .line 781
    :cond_30
    move/from16 v22, v2

    .line 782
    .line 783
    move/from16 v20, v3

    .line 784
    .line 785
    :goto_18
    const/4 v13, 0x0

    .line 786
    :goto_19
    iput-object v13, v0, Lio/ktor/http/URLBuilder;->e:Ljava/lang/String;

    .line 787
    .line 788
    add-int/lit8 v2, v22, 0x1

    .line 789
    .line 790
    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    iput-object v1, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 795
    .line 796
    return-void

    .line 797
    :cond_31
    const-string v0, "Invalid mailto url: "

    .line 798
    .line 799
    const-string v2, ", it should contain \'@\'."

    .line 800
    .line 801
    invoke-static {v0, v1, v2}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v0

    .line 805
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 806
    .line 807
    .line 808
    return-void

    .line 809
    :cond_32
    invoke-static {v12}, Lu2;->g(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    return-void

    .line 813
    :cond_33
    move/from16 v20, v3

    .line 814
    .line 815
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->b()Lio/ktor/http/URLProtocol;

    .line 816
    .line 817
    .line 818
    move-result-object v3

    .line 819
    iget-object v3, v3, Lio/ktor/http/URLProtocol;->j:Ljava/lang/String;

    .line 820
    .line 821
    const-string v4, "about"

    .line 822
    .line 823
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v3

    .line 827
    if-eqz v3, :cond_35

    .line 828
    .line 829
    if-nez v10, :cond_34

    .line 830
    .line 831
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v1

    .line 835
    iput-object v1, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 836
    .line 837
    return-void

    .line 838
    :cond_34
    invoke-static {v12}, Lu2;->g(Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    return-void

    .line 842
    :cond_35
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->b()Lio/ktor/http/URLProtocol;

    .line 843
    .line 844
    .line 845
    move-result-object v3

    .line 846
    iget-object v3, v3, Lio/ktor/http/URLProtocol;->j:Ljava/lang/String;

    .line 847
    .line 848
    const-string v4, "tel"

    .line 849
    .line 850
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    if-eqz v3, :cond_37

    .line 855
    .line 856
    if-nez v10, :cond_36

    .line 857
    .line 858
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    iput-object v1, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 863
    .line 864
    return-void

    .line 865
    :cond_36
    invoke-static {v12}, Lu2;->g(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    return-void

    .line 869
    :cond_37
    if-lt v10, v11, :cond_42

    .line 870
    .line 871
    :goto_1a
    const/4 v3, 0x5

    .line 872
    new-array v4, v3, [C

    .line 873
    .line 874
    const/4 v12, 0x0

    .line 875
    :goto_1b
    if-ge v12, v3, :cond_38

    .line 876
    .line 877
    const-string v13, "@/\\?#"

    .line 878
    .line 879
    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    .line 880
    .line 881
    .line 882
    move-result v13

    .line 883
    aput-char v13, v4, v12

    .line 884
    .line 885
    add-int/lit8 v12, v12, 0x1

    .line 886
    .line 887
    goto :goto_1b

    .line 888
    :cond_38
    invoke-static {v1, v4, v7}, Lkotlin/text/StringsKt;->s(Ljava/lang/CharSequence;[CI)I

    .line 889
    .line 890
    .line 891
    move-result v3

    .line 892
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 893
    .line 894
    .line 895
    move-result-object v4

    .line 896
    if-lez v3, :cond_39

    .line 897
    .line 898
    goto :goto_1c

    .line 899
    :cond_39
    const/4 v4, 0x0

    .line 900
    :goto_1c
    if-eqz v4, :cond_3a

    .line 901
    .line 902
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    goto :goto_1d

    .line 907
    :cond_3a
    move v3, v6

    .line 908
    :goto_1d
    if-ge v3, v6, :cond_3c

    .line 909
    .line 910
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 911
    .line 912
    .line 913
    move-result v4

    .line 914
    const/16 v12, 0x40

    .line 915
    .line 916
    if-ne v4, v12, :cond_3c

    .line 917
    .line 918
    invoke-static {v1, v7, v3}, Lio/ktor/http/URLParserKt;->a(Ljava/lang/String;II)I

    .line 919
    .line 920
    .line 921
    move-result v4

    .line 922
    if-eq v4, v5, :cond_3b

    .line 923
    .line 924
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v7

    .line 928
    iput-object v7, v0, Lio/ktor/http/URLBuilder;->e:Ljava/lang/String;

    .line 929
    .line 930
    add-int/lit8 v4, v4, 0x1

    .line 931
    .line 932
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v4

    .line 936
    iput-object v4, v0, Lio/ktor/http/URLBuilder;->f:Ljava/lang/String;

    .line 937
    .line 938
    goto :goto_1e

    .line 939
    :cond_3b
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v4

    .line 943
    iput-object v4, v0, Lio/ktor/http/URLBuilder;->e:Ljava/lang/String;

    .line 944
    .line 945
    :goto_1e
    add-int/lit8 v7, v3, 0x1

    .line 946
    .line 947
    goto :goto_1a

    .line 948
    :cond_3c
    invoke-static {v1, v7, v3}, Lio/ktor/http/URLParserKt;->a(Ljava/lang/String;II)I

    .line 949
    .line 950
    .line 951
    move-result v4

    .line 952
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 953
    .line 954
    .line 955
    move-result-object v12

    .line 956
    if-lez v4, :cond_3d

    .line 957
    .line 958
    goto :goto_1f

    .line 959
    :cond_3d
    const/4 v12, 0x0

    .line 960
    :goto_1f
    if-eqz v12, :cond_3e

    .line 961
    .line 962
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 963
    .line 964
    .line 965
    move-result v4

    .line 966
    goto :goto_20

    .line 967
    :cond_3e
    move v4, v3

    .line 968
    :goto_20
    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v7

    .line 972
    const/4 v12, 0x0

    .line 973
    :goto_21
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 974
    .line 975
    .line 976
    move-result v13

    .line 977
    if-ge v12, v13, :cond_40

    .line 978
    .line 979
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    .line 980
    .line 981
    .line 982
    move-result v13

    .line 983
    invoke-static {v13}, Lkotlin/text/CharsKt;->c(C)Z

    .line 984
    .line 985
    .line 986
    move-result v13

    .line 987
    if-nez v13, :cond_3f

    .line 988
    .line 989
    add-int/lit8 v12, v12, 0x1

    .line 990
    .line 991
    goto :goto_21

    .line 992
    :cond_3f
    const-string v0, "Host cannot contain whitespace characters: \""

    .line 993
    .line 994
    invoke-static {v7, v0}, Lk8;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    return-void

    .line 998
    :cond_40
    iput-object v7, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 999
    .line 1000
    add-int/lit8 v4, v4, 0x1

    .line 1001
    .line 1002
    if-ge v4, v3, :cond_41

    .line 1003
    .line 1004
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1005
    .line 1006
    .line 1007
    move-result-object v4

    .line 1008
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1009
    .line 1010
    .line 1011
    move-result v4

    .line 1012
    goto :goto_22

    .line 1013
    :cond_41
    const/4 v4, 0x0

    .line 1014
    :goto_22
    invoke-virtual {v0, v4}, Lio/ktor/http/URLBuilder;->c(I)V

    .line 1015
    .line 1016
    .line 1017
    move v7, v3

    .line 1018
    :cond_42
    sget-object v3, Lio/ktor/http/URLParserKt;->a:Ljava/util/List;

    .line 1019
    .line 1020
    sget-object v4, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 1021
    .line 1022
    if-lt v7, v6, :cond_44

    .line 1023
    .line 1024
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    .line 1025
    .line 1026
    .line 1027
    move-result v1

    .line 1028
    if-ne v1, v15, :cond_43

    .line 1029
    .line 1030
    goto :goto_23

    .line 1031
    :cond_43
    move-object v3, v4

    .line 1032
    :goto_23
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1033
    .line 1034
    .line 1035
    iput-object v3, v0, Lio/ktor/http/URLBuilder;->h:Ljava/util/List;

    .line 1036
    .line 1037
    return-void

    .line 1038
    :cond_44
    if-nez v10, :cond_45

    .line 1039
    .line 1040
    iget-object v2, v0, Lio/ktor/http/URLBuilder;->h:Ljava/util/List;

    .line 1041
    .line 1042
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q(Ljava/util/List;)Ljava/util/List;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v2

    .line 1046
    goto :goto_24

    .line 1047
    :cond_45
    move-object v2, v4

    .line 1048
    :goto_24
    iput-object v2, v0, Lio/ktor/http/URLBuilder;->h:Ljava/util/List;

    .line 1049
    .line 1050
    new-array v2, v11, [C

    .line 1051
    .line 1052
    const/4 v12, 0x0

    .line 1053
    :goto_25
    if-ge v12, v11, :cond_46

    .line 1054
    .line 1055
    const-string v13, "?#"

    .line 1056
    .line 1057
    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    .line 1058
    .line 1059
    .line 1060
    move-result v13

    .line 1061
    aput-char v13, v2, v12

    .line 1062
    .line 1063
    add-int/lit8 v12, v12, 0x1

    .line 1064
    .line 1065
    goto :goto_25

    .line 1066
    :cond_46
    invoke-static {v1, v2, v7}, Lkotlin/text/StringsKt;->s(Ljava/lang/CharSequence;[CI)I

    .line 1067
    .line 1068
    .line 1069
    move-result v2

    .line 1070
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v11

    .line 1074
    if-lez v2, :cond_47

    .line 1075
    .line 1076
    goto :goto_26

    .line 1077
    :cond_47
    const/4 v11, 0x0

    .line 1078
    :goto_26
    if-eqz v11, :cond_48

    .line 1079
    .line 1080
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 1081
    .line 1082
    .line 1083
    move-result v2

    .line 1084
    goto :goto_27

    .line 1085
    :cond_48
    move v2, v6

    .line 1086
    :goto_27
    if-le v2, v7, :cond_4c

    .line 1087
    .line 1088
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v7

    .line 1092
    iget-object v11, v0, Lio/ktor/http/URLBuilder;->h:Ljava/util/List;

    .line 1093
    .line 1094
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 1095
    .line 1096
    .line 1097
    move-result v11

    .line 1098
    move/from16 v12, v20

    .line 1099
    .line 1100
    if-ne v11, v12, :cond_49

    .line 1101
    .line 1102
    iget-object v11, v0, Lio/ktor/http/URLBuilder;->h:Ljava/util/List;

    .line 1103
    .line 1104
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v11

    .line 1108
    check-cast v11, Ljava/lang/CharSequence;

    .line 1109
    .line 1110
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 1111
    .line 1112
    .line 1113
    move-result v11

    .line 1114
    if-nez v11, :cond_49

    .line 1115
    .line 1116
    move-object v11, v4

    .line 1117
    goto :goto_28

    .line 1118
    :cond_49
    iget-object v11, v0, Lio/ktor/http/URLBuilder;->h:Ljava/util/List;

    .line 1119
    .line 1120
    :goto_28
    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 1121
    .line 1122
    .line 1123
    move-result v9

    .line 1124
    if-eqz v9, :cond_4a

    .line 1125
    .line 1126
    move-object v7, v3

    .line 1127
    const/4 v12, 0x1

    .line 1128
    const/16 v16, 0x0

    .line 1129
    .line 1130
    goto :goto_29

    .line 1131
    :cond_4a
    const/4 v12, 0x1

    .line 1132
    new-array v9, v12, [C

    .line 1133
    .line 1134
    const/16 v16, 0x0

    .line 1135
    .line 1136
    aput-char v15, v9, v16

    .line 1137
    .line 1138
    invoke-static {v7, v9}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;[C)Ljava/util/List;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v7

    .line 1142
    :goto_29
    if-ne v10, v12, :cond_4b

    .line 1143
    .line 1144
    goto :goto_2a

    .line 1145
    :cond_4b
    move-object v3, v4

    .line 1146
    :goto_2a
    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v3

    .line 1150
    invoke-static {v11, v3}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v3

    .line 1154
    iput-object v3, v0, Lio/ktor/http/URLBuilder;->h:Ljava/util/List;

    .line 1155
    .line 1156
    move v7, v2

    .line 1157
    goto :goto_2b

    .line 1158
    :cond_4c
    const/16 v16, 0x0

    .line 1159
    .line 1160
    :goto_2b
    if-ge v7, v6, :cond_58

    .line 1161
    .line 1162
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 1163
    .line 1164
    .line 1165
    move-result v2

    .line 1166
    const/16 v3, 0x3f

    .line 1167
    .line 1168
    if-ne v2, v3, :cond_58

    .line 1169
    .line 1170
    add-int/lit8 v7, v7, 0x1

    .line 1171
    .line 1172
    if-ne v7, v6, :cond_4d

    .line 1173
    .line 1174
    const/4 v12, 0x1

    .line 1175
    iput-boolean v12, v0, Lio/ktor/http/URLBuilder;->b:Z

    .line 1176
    .line 1177
    move v7, v6

    .line 1178
    goto/16 :goto_33

    .line 1179
    .line 1180
    :cond_4d
    const/16 v2, 0x23

    .line 1181
    .line 1182
    invoke-static {v1, v2, v7, v8}, Lkotlin/text/StringsKt;->q(Ljava/lang/CharSequence;CII)I

    .line 1183
    .line 1184
    .line 1185
    move-result v3

    .line 1186
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v2

    .line 1190
    if-lez v3, :cond_4e

    .line 1191
    .line 1192
    move-object v13, v2

    .line 1193
    goto :goto_2c

    .line 1194
    :cond_4e
    const/4 v13, 0x0

    .line 1195
    :goto_2c
    if-eqz v13, :cond_4f

    .line 1196
    .line 1197
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 1198
    .line 1199
    .line 1200
    move-result v2

    .line 1201
    goto :goto_2d

    .line 1202
    :cond_4f
    move v2, v6

    .line 1203
    :goto_2d
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v3

    .line 1207
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1208
    .line 1209
    .line 1210
    move-result v4

    .line 1211
    const/16 v20, 0x1

    .line 1212
    .line 1213
    add-int/lit8 v4, v4, -0x1

    .line 1214
    .line 1215
    if-gez v4, :cond_50

    .line 1216
    .line 1217
    sget-object v3, Lio/ktor/http/Parameters;->a:Lio/ktor/http/Parameters$Companion;

    .line 1218
    .line 1219
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1220
    .line 1221
    .line 1222
    sget-object v3, Lio/ktor/http/Parameters$Companion;->b:Lio/ktor/http/EmptyParameters;

    .line 1223
    .line 1224
    goto :goto_32

    .line 1225
    :cond_50
    sget-object v4, Lio/ktor/http/Parameters;->a:Lio/ktor/http/Parameters$Companion;

    .line 1226
    .line 1227
    new-instance v4, Lio/ktor/http/ParametersBuilderImpl;

    .line 1228
    .line 1229
    invoke-direct {v4}, Lio/ktor/util/StringValuesBuilderImpl;-><init>()V

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1233
    .line 1234
    .line 1235
    move-result v7

    .line 1236
    add-int/lit8 v7, v7, -0x1

    .line 1237
    .line 1238
    const/16 v8, 0x3e8

    .line 1239
    .line 1240
    if-ltz v7, :cond_56

    .line 1241
    .line 1242
    move v12, v5

    .line 1243
    move/from16 v9, v16

    .line 1244
    .line 1245
    move v10, v9

    .line 1246
    move v11, v10

    .line 1247
    :goto_2e
    if-ne v9, v8, :cond_51

    .line 1248
    .line 1249
    goto :goto_31

    .line 1250
    :cond_51
    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    .line 1251
    .line 1252
    .line 1253
    move-result v13

    .line 1254
    const/16 v14, 0x26

    .line 1255
    .line 1256
    if-eq v13, v14, :cond_53

    .line 1257
    .line 1258
    const/16 v14, 0x3d

    .line 1259
    .line 1260
    if-eq v13, v14, :cond_52

    .line 1261
    .line 1262
    goto :goto_2f

    .line 1263
    :cond_52
    if-ne v12, v5, :cond_54

    .line 1264
    .line 1265
    move v12, v10

    .line 1266
    goto :goto_2f

    .line 1267
    :cond_53
    invoke-static {v4, v3, v11, v12, v10}, Lio/ktor/http/QueryKt;->a(Lio/ktor/http/ParametersBuilderImpl;Ljava/lang/String;III)V

    .line 1268
    .line 1269
    .line 1270
    add-int/lit8 v11, v10, 0x1

    .line 1271
    .line 1272
    add-int/lit8 v9, v9, 0x1

    .line 1273
    .line 1274
    move v12, v5

    .line 1275
    :cond_54
    :goto_2f
    if-eq v10, v7, :cond_55

    .line 1276
    .line 1277
    add-int/lit8 v10, v10, 0x1

    .line 1278
    .line 1279
    goto :goto_2e

    .line 1280
    :cond_55
    move v5, v12

    .line 1281
    goto :goto_30

    .line 1282
    :cond_56
    move/from16 v9, v16

    .line 1283
    .line 1284
    move v11, v9

    .line 1285
    :goto_30
    if-ne v9, v8, :cond_57

    .line 1286
    .line 1287
    goto :goto_31

    .line 1288
    :cond_57
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 1289
    .line 1290
    .line 1291
    move-result v7

    .line 1292
    invoke-static {v4, v3, v11, v5, v7}, Lio/ktor/http/QueryKt;->a(Lio/ktor/http/ParametersBuilderImpl;Ljava/lang/String;III)V

    .line 1293
    .line 1294
    .line 1295
    :goto_31
    new-instance v3, Lio/ktor/http/ParametersImpl;

    .line 1296
    .line 1297
    iget-object v4, v4, Lio/ktor/util/StringValuesBuilderImpl;->a:Ljava/util/Map;

    .line 1298
    .line 1299
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1300
    .line 1301
    .line 1302
    const/4 v12, 0x1

    .line 1303
    invoke-direct {v3, v12, v4}, Lio/ktor/util/StringValuesImpl;-><init>(ZLjava/util/Map;)V

    .line 1304
    .line 1305
    .line 1306
    :goto_32
    new-instance v4, Ld;

    .line 1307
    .line 1308
    const/16 v5, 0x1a

    .line 1309
    .line 1310
    invoke-direct {v4, v5, v0}, Ld;-><init>(ILjava/lang/Object;)V

    .line 1311
    .line 1312
    .line 1313
    invoke-interface {v3, v4}, Lio/ktor/util/StringValues;->c(Ld;)V

    .line 1314
    .line 1315
    .line 1316
    move v7, v2

    .line 1317
    :cond_58
    :goto_33
    if-ge v7, v6, :cond_59

    .line 1318
    .line 1319
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    .line 1320
    .line 1321
    .line 1322
    move-result v2

    .line 1323
    const/16 v3, 0x23

    .line 1324
    .line 1325
    if-ne v2, v3, :cond_59

    .line 1326
    .line 1327
    const/16 v20, 0x1

    .line 1328
    .line 1329
    add-int/lit8 v7, v7, 0x1

    .line 1330
    .line 1331
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v1

    .line 1335
    iput-object v1, v0, Lio/ktor/http/URLBuilder;->g:Ljava/lang/String;

    .line 1336
    .line 1337
    :cond_59
    return-void
.end method
