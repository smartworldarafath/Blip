.class public abstract Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lokio/ByteString;->m:Lokio/ByteString;

    .line 2
    .line 3
    const-string v0, "\"\\"

    .line 4
    .line 5
    invoke-static {v0}, Lokio/ByteString$Companion;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    const-string v0, "\t ,="

    .line 9
    .line 10
    invoke-static {v0}, Lokio/ByteString$Companion;->b(Ljava/lang/String;)Lokio/ByteString;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final a(Lokhttp3/Response;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/Response;->j:Lokhttp3/Request;

    .line 2
    .line 3
    iget-object v0, v0, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "HEAD"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Lokhttp3/Response;->m:I

    .line 15
    .line 16
    const/16 v1, 0x64

    .line 17
    .line 18
    if-lt v0, v1, :cond_1

    .line 19
    .line 20
    const/16 v1, 0xc8

    .line 21
    .line 22
    if-lt v0, v1, :cond_2

    .line 23
    .line 24
    :cond_1
    const/16 v1, 0xcc

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    const/16 v1, 0x130

    .line 29
    .line 30
    if-eq v0, v1, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-static {p0}, Lokhttp3/internal/Util;->h(Lokhttp3/Response;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    const-wide/16 v2, -0x1

    .line 38
    .line 39
    cmp-long v0, v0, v2

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    const-string v0, "Transfer-Encoding"

    .line 44
    .line 45
    invoke-static {v0, p0}, Lokhttp3/Response;->a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "chunked"

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 59
    return p0

    .line 60
    :cond_4
    :goto_1
    const/4 p0, 0x1

    .line 61
    return p0
.end method

.method public static final b(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 35

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v1, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    .line 13
    .line 14
    move-object/from16 v2, p0

    .line 15
    .line 16
    if-ne v2, v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v1, Lokhttp3/Cookie;->j:Ljava/util/regex/Pattern;

    .line 20
    .line 21
    invoke-virtual {v0}, Lokhttp3/Headers;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v4, v2

    .line 27
    const/4 v5, 0x0

    .line 28
    :goto_0
    if-ge v4, v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->c(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    const-string v7, "Set-Cookie"

    .line 35
    .line 36
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_2

    .line 41
    .line 42
    if-nez v5, :cond_1

    .line 43
    .line 44
    new-instance v5, Ljava/util/ArrayList;

    .line 45
    .line 46
    const/4 v6, 0x2

    .line 47
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->e(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    sget-object v1, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 61
    .line 62
    if-eqz v5, :cond_4

    .line 63
    .line 64
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    move-object v4, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    move-object v4, v1

    .line 74
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    move v6, v2

    .line 79
    const/4 v7, 0x0

    .line 80
    :goto_2
    if-ge v6, v5, :cond_24

    .line 81
    .line 82
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    move-object v8, v0

    .line 87
    check-cast v8, Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    .line 94
    .line 95
    move-result-wide v9

    .line 96
    sget-object v0, Lokhttp3/internal/Util;->a:[B

    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/16 v11, 0x3b

    .line 103
    .line 104
    invoke-static {v8, v11, v2, v0}, Lokhttp3/internal/Util;->e(Ljava/lang/String;CII)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    const/16 v12, 0x3d

    .line 109
    .line 110
    invoke-static {v8, v12, v2, v0}, Lokhttp3/internal/Util;->e(Ljava/lang/String;CII)I

    .line 111
    .line 112
    .line 113
    move-result v13

    .line 114
    if-ne v13, v0, :cond_5

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-static {v8, v2, v13}, Lokhttp3/internal/Util;->k(Ljava/lang/String;II)I

    .line 118
    .line 119
    .line 120
    move-result v14

    .line 121
    invoke-static {v8, v14, v13}, Lokhttp3/internal/Util;->l(Ljava/lang/String;II)I

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    invoke-virtual {v8, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v17

    .line 129
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    if-nez v14, :cond_6

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_6
    invoke-static/range {v17 .. v17}, Lokhttp3/internal/Util;->j(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v14

    .line 140
    const/4 v15, -0x1

    .line 141
    if-eq v14, v15, :cond_7

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 145
    .line 146
    invoke-static {v8, v13, v0}, Lokhttp3/internal/Util;->k(Ljava/lang/String;II)I

    .line 147
    .line 148
    .line 149
    move-result v13

    .line 150
    invoke-static {v8, v13, v0}, Lokhttp3/internal/Util;->l(Ljava/lang/String;II)I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v18

    .line 158
    invoke-static/range {v18 .. v18}, Lokhttp3/internal/Util;->j(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    if-eq v13, v15, :cond_8

    .line 163
    .line 164
    :goto_3
    move v8, v2

    .line 165
    const/4 v3, 0x0

    .line 166
    move-object/from16 v2, p1

    .line 167
    .line 168
    goto/16 :goto_f

    .line 169
    .line 170
    :cond_8
    add-int/lit8 v0, v0, 0x1

    .line 171
    .line 172
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v13

    .line 176
    const-wide v19, 0xe677d21fdbffL

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    move/from16 v23, v2

    .line 182
    .line 183
    move/from16 v24, v23

    .line 184
    .line 185
    move/from16 v25, v24

    .line 186
    .line 187
    move-wide/from16 v27, v19

    .line 188
    .line 189
    const/16 p2, 0x1

    .line 190
    .line 191
    const/4 v3, 0x0

    .line 192
    const/4 v14, 0x0

    .line 193
    const-wide/16 v21, -0x1

    .line 194
    .line 195
    const/16 v26, 0x1

    .line 196
    .line 197
    :goto_4
    const-wide v29, 0x7fffffffffffffffL

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    const-wide/high16 v31, -0x8000000000000000L

    .line 203
    .line 204
    if-ge v0, v13, :cond_15

    .line 205
    .line 206
    const-wide/16 v33, -0x1

    .line 207
    .line 208
    invoke-static {v8, v11, v0, v13}, Lokhttp3/internal/Util;->e(Ljava/lang/String;CII)I

    .line 209
    .line 210
    .line 211
    move-result v15

    .line 212
    invoke-static {v8, v12, v0, v15}, Lokhttp3/internal/Util;->e(Ljava/lang/String;CII)I

    .line 213
    .line 214
    .line 215
    move-result v11

    .line 216
    invoke-static {v8, v0, v11}, Lokhttp3/internal/Util;->k(Ljava/lang/String;II)I

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    invoke-static {v8, v0, v11}, Lokhttp3/internal/Util;->l(Ljava/lang/String;II)I

    .line 221
    .line 222
    .line 223
    move-result v12

    .line 224
    invoke-virtual {v8, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    if-ge v11, v15, :cond_9

    .line 229
    .line 230
    add-int/lit8 v11, v11, 0x1

    .line 231
    .line 232
    invoke-static {v8, v11, v15}, Lokhttp3/internal/Util;->k(Ljava/lang/String;II)I

    .line 233
    .line 234
    .line 235
    move-result v11

    .line 236
    invoke-static {v8, v11, v15}, Lokhttp3/internal/Util;->l(Ljava/lang/String;II)I

    .line 237
    .line 238
    .line 239
    move-result v12

    .line 240
    invoke-virtual {v8, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    goto :goto_5

    .line 245
    :cond_9
    const-string v11, ""

    .line 246
    .line 247
    :goto_5
    const-string v12, "expires"

    .line 248
    .line 249
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v12

    .line 253
    if-eqz v12, :cond_a

    .line 254
    .line 255
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    invoke-static {v0, v11}, Lokhttp3/Cookie$Companion;->b(ILjava/lang/String;)J

    .line 260
    .line 261
    .line 262
    move-result-wide v27
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :goto_6
    move/from16 v25, p2

    .line 264
    .line 265
    goto/16 :goto_7

    .line 266
    .line 267
    :cond_a
    const-string v12, "max-age"

    .line 268
    .line 269
    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 270
    .line 271
    .line 272
    move-result v12

    .line 273
    if-eqz v12, :cond_e

    .line 274
    .line 275
    :try_start_1
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 276
    .line 277
    .line 278
    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    const-wide/16 v21, 0x0

    .line 280
    .line 281
    cmp-long v0, v11, v21

    .line 282
    .line 283
    if-gtz v0, :cond_b

    .line 284
    .line 285
    move-wide/from16 v21, v31

    .line 286
    .line 287
    goto :goto_6

    .line 288
    :cond_b
    move-wide/from16 v21, v11

    .line 289
    .line 290
    goto :goto_6

    .line 291
    :catch_0
    move-exception v0

    .line 292
    :try_start_2
    new-instance v12, Lkotlin/text/Regex;

    .line 293
    .line 294
    const-string v2, "-?\\d+"

    .line 295
    .line 296
    invoke-direct {v12, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v12, v11}, Lkotlin/text/Regex;->d(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-eqz v2, :cond_d

    .line 304
    .line 305
    const-string v0, "-"

    .line 306
    .line 307
    const/4 v2, 0x0

    .line 308
    invoke-static {v11, v0, v2}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-eqz v0, :cond_c

    .line 313
    .line 314
    move-wide/from16 v29, v31

    .line 315
    .line 316
    :cond_c
    move-wide/from16 v21, v29

    .line 317
    .line 318
    goto :goto_6

    .line 319
    :cond_d
    throw v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 320
    :cond_e
    const-string v2, "domain"

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_11

    .line 327
    .line 328
    :try_start_3
    const-string v0, "."

    .line 329
    .line 330
    const/4 v2, 0x0

    .line 331
    invoke-static {v11, v0, v2}, Lkotlin/text/StringsKt;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 332
    .line 333
    .line 334
    move-result v12

    .line 335
    if-nez v12, :cond_10

    .line 336
    .line 337
    invoke-static {v11, v0}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Lokhttp3/internal/HostnamesKt;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    if-eqz v0, :cond_f

    .line 346
    .line 347
    move-object v3, v0

    .line 348
    const/16 v26, 0x0

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 352
    .line 353
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 354
    .line 355
    .line 356
    throw v0

    .line 357
    :cond_10
    const-string v0, "Failed requirement."

    .line 358
    .line 359
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 360
    .line 361
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v2
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 365
    :cond_11
    const-string v2, "path"

    .line 366
    .line 367
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v2

    .line 371
    if-eqz v2, :cond_12

    .line 372
    .line 373
    move-object v14, v11

    .line 374
    goto :goto_7

    .line 375
    :cond_12
    const-string v2, "secure"

    .line 376
    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_13

    .line 382
    .line 383
    move/from16 v23, p2

    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_13
    const-string v2, "httponly"

    .line 387
    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_14

    .line 393
    .line 394
    move/from16 v24, p2

    .line 395
    .line 396
    :catch_1
    :cond_14
    :goto_7
    add-int/lit8 v0, v15, 0x1

    .line 397
    .line 398
    const/4 v2, 0x0

    .line 399
    const/16 v11, 0x3b

    .line 400
    .line 401
    const/16 v12, 0x3d

    .line 402
    .line 403
    goto/16 :goto_4

    .line 404
    .line 405
    :cond_15
    const-wide/16 v33, -0x1

    .line 406
    .line 407
    cmp-long v0, v21, v31

    .line 408
    .line 409
    if-nez v0, :cond_16

    .line 410
    .line 411
    move-object/from16 v2, p1

    .line 412
    .line 413
    move-wide/from16 v19, v31

    .line 414
    .line 415
    goto :goto_9

    .line 416
    :cond_16
    cmp-long v0, v21, v33

    .line 417
    .line 418
    if-eqz v0, :cond_1a

    .line 419
    .line 420
    const-wide v11, 0x20c49ba5e353f7L

    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    cmp-long v0, v21, v11

    .line 426
    .line 427
    if-gtz v0, :cond_17

    .line 428
    .line 429
    const-wide/16 v11, 0x3e8

    .line 430
    .line 431
    mul-long v29, v21, v11

    .line 432
    .line 433
    :cond_17
    add-long v29, v9, v29

    .line 434
    .line 435
    cmp-long v0, v29, v9

    .line 436
    .line 437
    if-ltz v0, :cond_19

    .line 438
    .line 439
    cmp-long v0, v29, v19

    .line 440
    .line 441
    if-lez v0, :cond_18

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_18
    move-object/from16 v2, p1

    .line 445
    .line 446
    move-wide/from16 v19, v29

    .line 447
    .line 448
    goto :goto_9

    .line 449
    :cond_19
    :goto_8
    move-object/from16 v2, p1

    .line 450
    .line 451
    goto :goto_9

    .line 452
    :cond_1a
    move-object/from16 v2, p1

    .line 453
    .line 454
    move-wide/from16 v19, v27

    .line 455
    .line 456
    :goto_9
    iget-object v0, v2, Lokhttp3/HttpUrl;->d:Ljava/lang/String;

    .line 457
    .line 458
    if-nez v3, :cond_1b

    .line 459
    .line 460
    move-object v3, v0

    .line 461
    goto :goto_a

    .line 462
    :cond_1b
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v8

    .line 466
    if-eqz v8, :cond_1c

    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_1c
    const/4 v8, 0x0

    .line 470
    invoke-static {v0, v3, v8}, Lkotlin/text/StringsKt;->l(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 471
    .line 472
    .line 473
    move-result v9

    .line 474
    if-eqz v9, :cond_1d

    .line 475
    .line 476
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 477
    .line 478
    .line 479
    move-result v8

    .line 480
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    sub-int/2addr v8, v9

    .line 485
    add-int/lit8 v8, v8, -0x1

    .line 486
    .line 487
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 488
    .line 489
    .line 490
    move-result v8

    .line 491
    const/16 v9, 0x2e

    .line 492
    .line 493
    if-ne v8, v9, :cond_1d

    .line 494
    .line 495
    sget-object v8, Lokhttp3/internal/Util;->e:Lkotlin/text/Regex;

    .line 496
    .line 497
    invoke-virtual {v8, v0}, Lkotlin/text/Regex;->d(Ljava/lang/CharSequence;)Z

    .line 498
    .line 499
    .line 500
    move-result v8

    .line 501
    if-nez v8, :cond_1d

    .line 502
    .line 503
    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 508
    .line 509
    .line 510
    move-result v8

    .line 511
    if-eq v0, v8, :cond_1e

    .line 512
    .line 513
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->g:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    .line 514
    .line 515
    invoke-virtual {v0, v3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    if-nez v0, :cond_1e

    .line 520
    .line 521
    :cond_1d
    const/4 v8, 0x0

    .line 522
    const/16 v16, 0x0

    .line 523
    .line 524
    goto :goto_e

    .line 525
    :cond_1e
    const-string v0, "/"

    .line 526
    .line 527
    const/4 v8, 0x0

    .line 528
    if-eqz v14, :cond_20

    .line 529
    .line 530
    invoke-static {v14, v0, v8}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 531
    .line 532
    .line 533
    move-result v9

    .line 534
    if-nez v9, :cond_1f

    .line 535
    .line 536
    goto :goto_c

    .line 537
    :cond_1f
    :goto_b
    move-object/from16 v22, v14

    .line 538
    .line 539
    goto :goto_d

    .line 540
    :cond_20
    :goto_c
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->b()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    const/16 v10, 0x2f

    .line 545
    .line 546
    const/4 v11, 0x6

    .line 547
    invoke-static {v9, v10, v8, v11}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;CII)I

    .line 548
    .line 549
    .line 550
    move-result v10

    .line 551
    if-eqz v10, :cond_21

    .line 552
    .line 553
    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    :cond_21
    move-object v14, v0

    .line 558
    goto :goto_b

    .line 559
    :goto_d
    new-instance v16, Lokhttp3/Cookie;

    .line 560
    .line 561
    move-object/from16 v21, v3

    .line 562
    .line 563
    invoke-direct/range {v16 .. v26}, Lokhttp3/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 564
    .line 565
    .line 566
    :goto_e
    move-object/from16 v3, v16

    .line 567
    .line 568
    :goto_f
    if-nez v3, :cond_22

    .line 569
    .line 570
    goto :goto_10

    .line 571
    :cond_22
    if-nez v7, :cond_23

    .line 572
    .line 573
    new-instance v0, Ljava/util/ArrayList;

    .line 574
    .line 575
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .line 577
    .line 578
    move-object v7, v0

    .line 579
    :cond_23
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    .line 581
    .line 582
    :goto_10
    add-int/lit8 v6, v6, 0x1

    .line 583
    .line 584
    move v2, v8

    .line 585
    goto/16 :goto_2

    .line 586
    .line 587
    :cond_24
    if-eqz v7, :cond_25

    .line 588
    .line 589
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 594
    .line 595
    .line 596
    :cond_25
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 597
    .line 598
    .line 599
    return-void
.end method
