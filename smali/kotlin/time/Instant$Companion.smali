.class public abstract Lkotlin/time/Instant$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/Instant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static a(IJ)Lkotlin/time/Instant;
    .locals 12

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/32 v2, 0x3b9aca00

    .line 3
    .line 4
    .line 5
    div-long v4, v0, v2

    .line 6
    .line 7
    xor-long v6, v0, v2

    .line 8
    .line 9
    const-wide/16 v8, 0x0

    .line 10
    .line 11
    cmp-long p0, v6, v8

    .line 12
    .line 13
    if-gez p0, :cond_0

    .line 14
    .line 15
    mul-long v6, v4, v2

    .line 16
    .line 17
    cmp-long p0, v6, v0

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const-wide/16 v6, -0x1

    .line 22
    .line 23
    add-long/2addr v4, v6

    .line 24
    :cond_0
    add-long v6, p1, v4

    .line 25
    .line 26
    xor-long v10, p1, v6

    .line 27
    .line 28
    cmp-long p0, v10, v8

    .line 29
    .line 30
    if-gez p0, :cond_2

    .line 31
    .line 32
    xor-long/2addr v4, p1

    .line 33
    cmp-long p0, v4, v8

    .line 34
    .line 35
    if-ltz p0, :cond_2

    .line 36
    .line 37
    cmp-long p0, p1, v8

    .line 38
    .line 39
    if-lez p0, :cond_1

    .line 40
    .line 41
    sget-object p0, Lkotlin/time/Instant;->m:Lkotlin/time/Instant;

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lkotlin/time/Instant;->l:Lkotlin/time/Instant;

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_2
    const-wide p0, -0x701cefeb9bec00L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    cmp-long p0, v6, p0

    .line 53
    .line 54
    if-gez p0, :cond_3

    .line 55
    .line 56
    sget-object p0, Lkotlin/time/Instant;->l:Lkotlin/time/Instant;

    .line 57
    .line 58
    return-object p0

    .line 59
    :cond_3
    const-wide p0, 0x701cd2fa9578ffL

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    cmp-long p0, v6, p0

    .line 65
    .line 66
    if-lez p0, :cond_4

    .line 67
    .line 68
    sget-object p0, Lkotlin/time/Instant;->m:Lkotlin/time/Instant;

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_4
    rem-long/2addr v0, v2

    .line 72
    xor-long p0, v0, v2

    .line 73
    .line 74
    neg-long v4, v0

    .line 75
    or-long/2addr v4, v0

    .line 76
    and-long/2addr p0, v4

    .line 77
    const/16 p2, 0x3f

    .line 78
    .line 79
    shr-long/2addr p0, p2

    .line 80
    and-long/2addr p0, v2

    .line 81
    add-long/2addr v0, p0

    .line 82
    long-to-int p0, v0

    .line 83
    new-instance p1, Lkotlin/time/Instant;

    .line 84
    .line 85
    invoke-direct {p1, p0, v6, v7}, Lkotlin/time/Instant;-><init>(IJ)V

    .line 86
    .line 87
    .line 88
    return-object p1
.end method

.method public static b(Ljava/lang/String;)Lkotlin/time/Instant;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lkotlin/time/InstantParseResult$Failure;

    .line 13
    .line 14
    const-string v2, "An empty string is not a valid Instant"

    .line 15
    .line 16
    invoke-direct {v1, v0, v2}, Lkotlin/time/InstantParseResult$Failure;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto/16 :goto_16

    .line 20
    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x20

    .line 27
    .line 28
    const/16 v4, 0x2b

    .line 29
    .line 30
    const/16 v5, 0x2d

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    if-eq v2, v4, :cond_1

    .line 34
    .line 35
    if-eq v2, v5, :cond_1

    .line 36
    .line 37
    move v7, v1

    .line 38
    move v2, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move v7, v6

    .line 41
    :goto_0
    move v9, v1

    .line 42
    move v8, v7

    .line 43
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    const/16 v11, 0x3a

    .line 48
    .line 49
    const/16 v12, 0x30

    .line 50
    .line 51
    if-ge v8, v10, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-gt v12, v10, :cond_2

    .line 58
    .line 59
    if-ge v10, v11, :cond_2

    .line 60
    .line 61
    mul-int/lit8 v9, v9, 0xa

    .line 62
    .line 63
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    sub-int/2addr v10, v12

    .line 68
    add-int/2addr v9, v10

    .line 69
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    sub-int v10, v8, v7

    .line 73
    .line 74
    const-string v13, " digits"

    .line 75
    .line 76
    const/16 v14, 0xa

    .line 77
    .line 78
    if-le v10, v14, :cond_3

    .line 79
    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "Expected at most 10 digits for the year number, got "

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    goto/16 :goto_16

    .line 102
    .line 103
    :cond_3
    if-ne v10, v14, :cond_4

    .line 104
    .line 105
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const/16 v15, 0x32

    .line 110
    .line 111
    if-lt v7, v15, :cond_4

    .line 112
    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v2, "Expected at most 9 digits for the year number or year 1000000000, got "

    .line 116
    .line 117
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    goto/16 :goto_16

    .line 135
    .line 136
    :cond_4
    const/4 v7, 0x4

    .line 137
    if-ge v10, v7, :cond_5

    .line 138
    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v2, "The year number must be padded to 4 digits, got "

    .line 142
    .line 143
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    goto/16 :goto_16

    .line 161
    .line 162
    :cond_5
    if-ne v2, v4, :cond_6

    .line 163
    .line 164
    if-ne v10, v7, :cond_6

    .line 165
    .line 166
    const-string v1, "The \'+\' sign at the start is only valid for year numbers longer than 4 digits"

    .line 167
    .line 168
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    goto/16 :goto_16

    .line 173
    .line 174
    :cond_6
    if-ne v2, v3, :cond_7

    .line 175
    .line 176
    if-eq v10, v7, :cond_7

    .line 177
    .line 178
    const-string v1, "A \'+\' or \'-\' sign is required for year numbers longer than 4 digits"

    .line 179
    .line 180
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    goto/16 :goto_16

    .line 185
    .line 186
    :cond_7
    if-ne v2, v5, :cond_8

    .line 187
    .line 188
    neg-int v9, v9

    .line 189
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    add-int/lit8 v3, v8, 0x10

    .line 194
    .line 195
    if-ge v2, v3, :cond_9

    .line 196
    .line 197
    const-string v1, "The input string is too short"

    .line 198
    .line 199
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    goto/16 :goto_16

    .line 204
    .line 205
    :cond_9
    new-instance v2, La7;

    .line 206
    .line 207
    const/16 v10, 0x10

    .line 208
    .line 209
    invoke-direct {v2, v10}, La7;-><init>(I)V

    .line 210
    .line 211
    .line 212
    const-string v15, "\'-\'"

    .line 213
    .line 214
    invoke-static {v0, v15, v8, v2}, Lkotlin/time/InstantKt;->b(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    if-eqz v2, :cond_a

    .line 219
    .line 220
    :goto_2
    move-object v1, v2

    .line 221
    goto/16 :goto_16

    .line 222
    .line 223
    :cond_a
    add-int/lit8 v2, v8, 0x3

    .line 224
    .line 225
    new-instance v1, La7;

    .line 226
    .line 227
    const/16 v7, 0x11

    .line 228
    .line 229
    invoke-direct {v1, v7}, La7;-><init>(I)V

    .line 230
    .line 231
    .line 232
    invoke-static {v0, v15, v2, v1}, Lkotlin/time/InstantKt;->b(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    if-eqz v1, :cond_b

    .line 237
    .line 238
    goto/16 :goto_16

    .line 239
    .line 240
    :cond_b
    add-int/lit8 v1, v8, 0x6

    .line 241
    .line 242
    new-instance v2, La7;

    .line 243
    .line 244
    const/16 v15, 0x12

    .line 245
    .line 246
    invoke-direct {v2, v15}, La7;-><init>(I)V

    .line 247
    .line 248
    .line 249
    const-string v15, "\'T\' or \'t\'"

    .line 250
    .line 251
    invoke-static {v0, v15, v1, v2}, Lkotlin/time/InstantKt;->b(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    if-eqz v1, :cond_c

    .line 256
    .line 257
    goto/16 :goto_16

    .line 258
    .line 259
    :cond_c
    add-int/lit8 v1, v8, 0x9

    .line 260
    .line 261
    new-instance v2, La7;

    .line 262
    .line 263
    const/16 v15, 0x13

    .line 264
    .line 265
    invoke-direct {v2, v15}, La7;-><init>(I)V

    .line 266
    .line 267
    .line 268
    const-string v15, "\':\'"

    .line 269
    .line 270
    invoke-static {v0, v15, v1, v2}, Lkotlin/time/InstantKt;->b(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    if-eqz v1, :cond_d

    .line 275
    .line 276
    goto/16 :goto_16

    .line 277
    .line 278
    :cond_d
    add-int/lit8 v1, v8, 0xc

    .line 279
    .line 280
    new-instance v2, La7;

    .line 281
    .line 282
    const/16 v7, 0x14

    .line 283
    .line 284
    invoke-direct {v2, v7}, La7;-><init>(I)V

    .line 285
    .line 286
    .line 287
    invoke-static {v0, v15, v1, v2}, Lkotlin/time/InstantKt;->b(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    if-eqz v1, :cond_e

    .line 292
    .line 293
    goto/16 :goto_16

    .line 294
    .line 295
    :cond_e
    const/4 v1, 0x0

    .line 296
    :goto_3
    if-ge v1, v14, :cond_10

    .line 297
    .line 298
    sget-object v2, Lkotlin/time/InstantKt;->b:[I

    .line 299
    .line 300
    aget v2, v2, v1

    .line 301
    .line 302
    add-int/2addr v2, v8

    .line 303
    new-instance v7, La7;

    .line 304
    .line 305
    const/16 v15, 0x15

    .line 306
    .line 307
    invoke-direct {v7, v15}, La7;-><init>(I)V

    .line 308
    .line 309
    .line 310
    const-string v15, "an ASCII digit"

    .line 311
    .line 312
    invoke-static {v0, v15, v2, v7}, Lkotlin/time/InstantKt;->b(Ljava/lang/CharSequence;Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Lkotlin/time/InstantParseResult$Failure;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    if-eqz v2, :cond_f

    .line 317
    .line 318
    goto :goto_2

    .line 319
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :cond_10
    add-int/lit8 v1, v8, 0x1

    .line 323
    .line 324
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->d(Ljava/lang/CharSequence;I)I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    add-int/lit8 v2, v8, 0x4

    .line 329
    .line 330
    invoke-static {v0, v2}, Lkotlin/time/InstantKt;->d(Ljava/lang/CharSequence;I)I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    add-int/lit8 v7, v8, 0x7

    .line 335
    .line 336
    invoke-static {v0, v7}, Lkotlin/time/InstantKt;->d(Ljava/lang/CharSequence;I)I

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    add-int/lit8 v15, v8, 0xa

    .line 341
    .line 342
    invoke-static {v0, v15}, Lkotlin/time/InstantKt;->d(Ljava/lang/CharSequence;I)I

    .line 343
    .line 344
    .line 345
    move-result v15

    .line 346
    add-int/lit8 v10, v8, 0xd

    .line 347
    .line 348
    invoke-static {v0, v10}, Lkotlin/time/InstantKt;->d(Ljava/lang/CharSequence;I)I

    .line 349
    .line 350
    .line 351
    move-result v10

    .line 352
    add-int/lit8 v8, v8, 0xf

    .line 353
    .line 354
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    const/16 v4, 0x2e

    .line 359
    .line 360
    const/16 v14, 0x9

    .line 361
    .line 362
    if-ne v5, v4, :cond_13

    .line 363
    .line 364
    move v8, v3

    .line 365
    const/4 v4, 0x0

    .line 366
    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    if-ge v8, v5, :cond_11

    .line 371
    .line 372
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 373
    .line 374
    .line 375
    move-result v5

    .line 376
    if-gt v12, v5, :cond_11

    .line 377
    .line 378
    if-ge v5, v11, :cond_11

    .line 379
    .line 380
    mul-int/lit8 v4, v4, 0xa

    .line 381
    .line 382
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 383
    .line 384
    .line 385
    move-result v5

    .line 386
    sub-int/2addr v5, v12

    .line 387
    add-int/2addr v4, v5

    .line 388
    add-int/lit8 v8, v8, 0x1

    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_11
    sub-int v3, v8, v3

    .line 392
    .line 393
    if-gt v6, v3, :cond_12

    .line 394
    .line 395
    const/16 v5, 0xa

    .line 396
    .line 397
    if-ge v3, v5, :cond_12

    .line 398
    .line 399
    sget-object v5, Lkotlin/time/InstantKt;->a:[I

    .line 400
    .line 401
    rsub-int/lit8 v3, v3, 0x9

    .line 402
    .line 403
    aget v3, v5, v3

    .line 404
    .line 405
    mul-int/2addr v4, v3

    .line 406
    goto :goto_5

    .line 407
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    const-string v2, "1..9 digits are supported for the fraction of the second, got "

    .line 410
    .line 411
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    goto/16 :goto_16

    .line 429
    .line 430
    :cond_13
    const/4 v4, 0x0

    .line 431
    :goto_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    if-lt v8, v3, :cond_14

    .line 436
    .line 437
    const-string v1, "The UTC offset at the end of the string is missing"

    .line 438
    .line 439
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    goto/16 :goto_16

    .line 444
    .line 445
    :cond_14
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    const/4 v5, 0x2

    .line 450
    const/16 v13, 0x27

    .line 451
    .line 452
    move/from16 v23, v6

    .line 453
    .line 454
    const-string v6, ", got \'"

    .line 455
    .line 456
    const/16 v12, 0x2b

    .line 457
    .line 458
    if-eq v3, v12, :cond_17

    .line 459
    .line 460
    const/16 v12, 0x2d

    .line 461
    .line 462
    if-eq v3, v12, :cond_17

    .line 463
    .line 464
    const/16 v11, 0x5a

    .line 465
    .line 466
    if-eq v3, v11, :cond_15

    .line 467
    .line 468
    const/16 v11, 0x7a

    .line 469
    .line 470
    if-eq v3, v11, :cond_15

    .line 471
    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    const-string v2, "Expected the UTC offset at position "

    .line 475
    .line 476
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v1

    .line 495
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    goto/16 :goto_16

    .line 500
    .line 501
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    add-int/lit8 v8, v8, 0x1

    .line 506
    .line 507
    if-ne v3, v8, :cond_16

    .line 508
    .line 509
    const/4 v6, 0x0

    .line 510
    :goto_6
    move/from16 v3, v23

    .line 511
    .line 512
    goto/16 :goto_10

    .line 513
    .line 514
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 515
    .line 516
    const-string v2, "Extra text after the instant at position "

    .line 517
    .line 518
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v1

    .line 528
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    goto/16 :goto_16

    .line 533
    .line 534
    :cond_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 535
    .line 536
    .line 537
    move-result v12

    .line 538
    sub-int/2addr v12, v8

    .line 539
    if-le v12, v14, :cond_18

    .line 540
    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    const-string v2, "The UTC offset string \""

    .line 544
    .line 545
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 549
    .line 550
    .line 551
    move-result v2

    .line 552
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    const/16 v3, 0x10

    .line 561
    .line 562
    invoke-static {v2, v3}, Lkotlin/time/InstantKt;->e(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v2

    .line 566
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-string v2, "\" is too long"

    .line 570
    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 579
    .line 580
    .line 581
    move-result-object v1

    .line 582
    goto/16 :goto_16

    .line 583
    .line 584
    :cond_18
    rem-int/lit8 v20, v12, 0x3

    .line 585
    .line 586
    if-eqz v20, :cond_19

    .line 587
    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    .line 589
    .line 590
    const-string v2, "Invalid UTC offset string \""

    .line 591
    .line 592
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 600
    .line 601
    .line 602
    move-result-object v2

    .line 603
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    const/16 v2, 0x22

    .line 611
    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    goto/16 :goto_16

    .line 624
    .line 625
    :cond_19
    const/4 v14, 0x0

    .line 626
    :goto_7
    if-ge v14, v5, :cond_1c

    .line 627
    .line 628
    sget-object v22, Lkotlin/time/InstantKt;->c:[I

    .line 629
    .line 630
    aget v22, v22, v14

    .line 631
    .line 632
    add-int v5, v8, v22

    .line 633
    .line 634
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 635
    .line 636
    .line 637
    move-result v13

    .line 638
    if-lt v5, v13, :cond_1a

    .line 639
    .line 640
    goto :goto_8

    .line 641
    :cond_1a
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 642
    .line 643
    .line 644
    move-result v13

    .line 645
    if-eq v13, v11, :cond_1b

    .line 646
    .line 647
    const-string v1, "Expected \':\' at index "

    .line 648
    .line 649
    invoke-static {v1, v5, v6}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 654
    .line 655
    .line 656
    move-result v2

    .line 657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    const/16 v2, 0x27

    .line 661
    .line 662
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    goto/16 :goto_16

    .line 674
    .line 675
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    .line 676
    .line 677
    const/4 v5, 0x2

    .line 678
    const/16 v13, 0x27

    .line 679
    .line 680
    goto :goto_7

    .line 681
    :cond_1c
    :goto_8
    const/4 v5, 0x0

    .line 682
    :goto_9
    const/4 v13, 0x6

    .line 683
    if-ge v5, v13, :cond_1f

    .line 684
    .line 685
    sget-object v13, Lkotlin/time/InstantKt;->d:[I

    .line 686
    .line 687
    aget v13, v13, v5

    .line 688
    .line 689
    add-int/2addr v13, v8

    .line 690
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 691
    .line 692
    .line 693
    move-result v14

    .line 694
    if-lt v13, v14, :cond_1d

    .line 695
    .line 696
    goto :goto_a

    .line 697
    :cond_1d
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 698
    .line 699
    .line 700
    move-result v14

    .line 701
    move/from16 v24, v5

    .line 702
    .line 703
    const/16 v5, 0x30

    .line 704
    .line 705
    if-gt v5, v14, :cond_1e

    .line 706
    .line 707
    if-ge v14, v11, :cond_1e

    .line 708
    .line 709
    add-int/lit8 v13, v24, 0x1

    .line 710
    .line 711
    move v5, v13

    .line 712
    goto :goto_9

    .line 713
    :cond_1e
    const-string v1, "Expected an ASCII digit at index "

    .line 714
    .line 715
    invoke-static {v1, v13, v6}, Ljb;->j(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 720
    .line 721
    .line 722
    move-result v2

    .line 723
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    const/16 v2, 0x27

    .line 727
    .line 728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 736
    .line 737
    .line 738
    move-result-object v1

    .line 739
    goto/16 :goto_16

    .line 740
    .line 741
    :cond_1f
    :goto_a
    add-int/lit8 v5, v8, 0x1

    .line 742
    .line 743
    invoke-static {v0, v5}, Lkotlin/time/InstantKt;->d(Ljava/lang/CharSequence;I)I

    .line 744
    .line 745
    .line 746
    move-result v5

    .line 747
    const/4 v6, 0x3

    .line 748
    if-le v12, v6, :cond_20

    .line 749
    .line 750
    add-int/lit8 v6, v8, 0x4

    .line 751
    .line 752
    invoke-static {v0, v6}, Lkotlin/time/InstantKt;->d(Ljava/lang/CharSequence;I)I

    .line 753
    .line 754
    .line 755
    move-result v6

    .line 756
    :goto_b
    const/4 v13, 0x6

    .line 757
    goto :goto_c

    .line 758
    :cond_20
    const/4 v6, 0x0

    .line 759
    goto :goto_b

    .line 760
    :goto_c
    if-le v12, v13, :cond_21

    .line 761
    .line 762
    add-int/lit8 v11, v8, 0x7

    .line 763
    .line 764
    invoke-static {v0, v11}, Lkotlin/time/InstantKt;->d(Ljava/lang/CharSequence;I)I

    .line 765
    .line 766
    .line 767
    move-result v11

    .line 768
    :goto_d
    const/16 v12, 0x3b

    .line 769
    .line 770
    goto :goto_e

    .line 771
    :cond_21
    const/4 v11, 0x0

    .line 772
    goto :goto_d

    .line 773
    :goto_e
    if-le v6, v12, :cond_22

    .line 774
    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    .line 776
    .line 777
    const-string v2, "Expected offset-minute-of-hour in 0..59, got "

    .line 778
    .line 779
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 790
    .line 791
    .line 792
    move-result-object v1

    .line 793
    goto/16 :goto_16

    .line 794
    .line 795
    :cond_22
    if-le v11, v12, :cond_23

    .line 796
    .line 797
    new-instance v1, Ljava/lang/StringBuilder;

    .line 798
    .line 799
    const-string v2, "Expected offset-second-of-minute in 0..59, got "

    .line 800
    .line 801
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    goto/16 :goto_16

    .line 816
    .line 817
    :cond_23
    const/16 v12, 0x11

    .line 818
    .line 819
    if-le v5, v12, :cond_25

    .line 820
    .line 821
    const/16 v12, 0x12

    .line 822
    .line 823
    if-ne v5, v12, :cond_24

    .line 824
    .line 825
    if-nez v6, :cond_24

    .line 826
    .line 827
    if-eqz v11, :cond_25

    .line 828
    .line 829
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    const-string v2, "Expected an offset in -18:00..+18:00, got "

    .line 832
    .line 833
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 837
    .line 838
    .line 839
    move-result v2

    .line 840
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 841
    .line 842
    .line 843
    move-result-object v2

    .line 844
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v2

    .line 848
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    goto/16 :goto_16

    .line 860
    .line 861
    :cond_25
    mul-int/lit16 v5, v5, 0xe10

    .line 862
    .line 863
    mul-int/lit8 v6, v6, 0x3c

    .line 864
    .line 865
    add-int/2addr v6, v5

    .line 866
    add-int/2addr v6, v11

    .line 867
    const/16 v12, 0x2d

    .line 868
    .line 869
    if-ne v3, v12, :cond_26

    .line 870
    .line 871
    const/4 v3, -0x1

    .line 872
    goto :goto_f

    .line 873
    :cond_26
    move/from16 v3, v23

    .line 874
    .line 875
    :goto_f
    mul-int/2addr v6, v3

    .line 876
    goto/16 :goto_6

    .line 877
    .line 878
    :goto_10
    if-gt v3, v1, :cond_34

    .line 879
    .line 880
    const/16 v5, 0xd

    .line 881
    .line 882
    if-ge v1, v5, :cond_34

    .line 883
    .line 884
    if-gt v3, v2, :cond_33

    .line 885
    .line 886
    and-int/lit8 v3, v9, 0x3

    .line 887
    .line 888
    if-nez v3, :cond_28

    .line 889
    .line 890
    rem-int/lit8 v5, v9, 0x64

    .line 891
    .line 892
    if-nez v5, :cond_27

    .line 893
    .line 894
    rem-int/lit16 v5, v9, 0x190

    .line 895
    .line 896
    if-nez v5, :cond_28

    .line 897
    .line 898
    :cond_27
    const/16 v16, 0x1

    .line 899
    .line 900
    :goto_11
    const/4 v5, 0x2

    .line 901
    goto :goto_12

    .line 902
    :cond_28
    const/16 v16, 0x0

    .line 903
    .line 904
    goto :goto_11

    .line 905
    :goto_12
    if-eq v1, v5, :cond_2a

    .line 906
    .line 907
    const/4 v5, 0x4

    .line 908
    if-eq v1, v5, :cond_29

    .line 909
    .line 910
    const/4 v13, 0x6

    .line 911
    if-eq v1, v13, :cond_29

    .line 912
    .line 913
    const/16 v5, 0x9

    .line 914
    .line 915
    if-eq v1, v5, :cond_29

    .line 916
    .line 917
    const/16 v5, 0xb

    .line 918
    .line 919
    if-eq v1, v5, :cond_29

    .line 920
    .line 921
    const/16 v5, 0x1f

    .line 922
    .line 923
    goto :goto_13

    .line 924
    :cond_29
    const/16 v5, 0x1e

    .line 925
    .line 926
    goto :goto_13

    .line 927
    :cond_2a
    if-eqz v16, :cond_2b

    .line 928
    .line 929
    const/16 v5, 0x1d

    .line 930
    .line 931
    goto :goto_13

    .line 932
    :cond_2b
    const/16 v5, 0x1c

    .line 933
    .line 934
    :goto_13
    if-gt v2, v5, :cond_33

    .line 935
    .line 936
    const/16 v5, 0x17

    .line 937
    .line 938
    if-le v7, v5, :cond_2c

    .line 939
    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    .line 941
    .line 942
    const-string v2, "Expected hour in 0..23, got "

    .line 943
    .line 944
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 955
    .line 956
    .line 957
    move-result-object v1

    .line 958
    goto/16 :goto_16

    .line 959
    .line 960
    :cond_2c
    const/16 v12, 0x3b

    .line 961
    .line 962
    if-le v15, v12, :cond_2d

    .line 963
    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    .line 965
    .line 966
    const-string v2, "Expected minute-of-hour in 0..59, got "

    .line 967
    .line 968
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v1

    .line 978
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 979
    .line 980
    .line 981
    move-result-object v1

    .line 982
    goto/16 :goto_16

    .line 983
    .line 984
    :cond_2d
    if-le v10, v12, :cond_2e

    .line 985
    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    .line 987
    .line 988
    const-string v2, "Expected second-of-minute in 0..59, got "

    .line 989
    .line 990
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 994
    .line 995
    .line 996
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 997
    .line 998
    .line 999
    move-result-object v1

    .line 1000
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v1

    .line 1004
    goto/16 :goto_16

    .line 1005
    .line 1006
    :cond_2e
    int-to-long v11, v9

    .line 1007
    const-wide/16 v13, 0x16d

    .line 1008
    .line 1009
    mul-long/2addr v13, v11

    .line 1010
    const-wide/16 v16, 0x0

    .line 1011
    .line 1012
    cmp-long v0, v11, v16

    .line 1013
    .line 1014
    if-ltz v0, :cond_2f

    .line 1015
    .line 1016
    const-wide/16 v16, 0x3

    .line 1017
    .line 1018
    add-long v16, v11, v16

    .line 1019
    .line 1020
    const-wide/16 v18, 0x4

    .line 1021
    .line 1022
    div-long v16, v16, v18

    .line 1023
    .line 1024
    const-wide/16 v18, 0x63

    .line 1025
    .line 1026
    add-long v18, v11, v18

    .line 1027
    .line 1028
    const-wide/16 v20, 0x64

    .line 1029
    .line 1030
    div-long v18, v18, v20

    .line 1031
    .line 1032
    sub-long v16, v16, v18

    .line 1033
    .line 1034
    const-wide/16 v18, 0x18f

    .line 1035
    .line 1036
    add-long v11, v11, v18

    .line 1037
    .line 1038
    const-wide/16 v18, 0x190

    .line 1039
    .line 1040
    div-long v11, v11, v18

    .line 1041
    .line 1042
    add-long v11, v11, v16

    .line 1043
    .line 1044
    add-long/2addr v11, v13

    .line 1045
    goto :goto_14

    .line 1046
    :cond_2f
    const-wide/16 v16, -0x4

    .line 1047
    .line 1048
    div-long v16, v11, v16

    .line 1049
    .line 1050
    const-wide/16 v18, -0x64

    .line 1051
    .line 1052
    div-long v18, v11, v18

    .line 1053
    .line 1054
    sub-long v16, v16, v18

    .line 1055
    .line 1056
    const-wide/16 v18, -0x190

    .line 1057
    .line 1058
    div-long v11, v11, v18

    .line 1059
    .line 1060
    add-long v11, v11, v16

    .line 1061
    .line 1062
    sub-long v11, v13, v11

    .line 1063
    .line 1064
    :goto_14
    mul-int/lit16 v0, v1, 0x16f

    .line 1065
    .line 1066
    add-int/lit16 v0, v0, -0x16a

    .line 1067
    .line 1068
    div-int/lit8 v0, v0, 0xc

    .line 1069
    .line 1070
    int-to-long v13, v0

    .line 1071
    add-long/2addr v11, v13

    .line 1072
    const/16 v23, 0x1

    .line 1073
    .line 1074
    add-int/lit8 v2, v2, -0x1

    .line 1075
    .line 1076
    int-to-long v13, v2

    .line 1077
    add-long/2addr v11, v13

    .line 1078
    const/4 v5, 0x2

    .line 1079
    if-le v1, v5, :cond_32

    .line 1080
    .line 1081
    const-wide/16 v0, -0x1

    .line 1082
    .line 1083
    add-long/2addr v0, v11

    .line 1084
    if-nez v3, :cond_31

    .line 1085
    .line 1086
    rem-int/lit8 v2, v9, 0x64

    .line 1087
    .line 1088
    if-nez v2, :cond_30

    .line 1089
    .line 1090
    rem-int/lit16 v9, v9, 0x190

    .line 1091
    .line 1092
    if-nez v9, :cond_31

    .line 1093
    .line 1094
    :cond_30
    move-wide v11, v0

    .line 1095
    goto :goto_15

    .line 1096
    :cond_31
    const-wide/16 v0, -0x2

    .line 1097
    .line 1098
    add-long/2addr v11, v0

    .line 1099
    :cond_32
    :goto_15
    const-wide/32 v0, 0xafaa8

    .line 1100
    .line 1101
    .line 1102
    sub-long/2addr v11, v0

    .line 1103
    mul-int/lit16 v7, v7, 0xe10

    .line 1104
    .line 1105
    mul-int/lit8 v15, v15, 0x3c

    .line 1106
    .line 1107
    add-int/2addr v15, v7

    .line 1108
    add-int/2addr v15, v10

    .line 1109
    const-wide/32 v0, 0x15180

    .line 1110
    .line 1111
    .line 1112
    mul-long/2addr v11, v0

    .line 1113
    int-to-long v0, v15

    .line 1114
    add-long/2addr v11, v0

    .line 1115
    int-to-long v0, v6

    .line 1116
    sub-long/2addr v11, v0

    .line 1117
    new-instance v1, Lkotlin/time/InstantParseResult$Success;

    .line 1118
    .line 1119
    invoke-direct {v1, v4, v11, v12}, Lkotlin/time/InstantParseResult$Success;-><init>(IJ)V

    .line 1120
    .line 1121
    .line 1122
    goto :goto_16

    .line 1123
    :cond_33
    const-string v3, " of year "

    .line 1124
    .line 1125
    const-string v4, ", got "

    .line 1126
    .line 1127
    const-string v5, "Expected a valid day-of-month for month "

    .line 1128
    .line 1129
    invoke-static {v5, v1, v3, v9, v4}, Ljb;->k(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v1

    .line 1133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v1

    .line 1140
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v1

    .line 1144
    goto :goto_16

    .line 1145
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    const-string v3, "Expected a month number in 1..12, got "

    .line 1148
    .line 1149
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v1

    .line 1159
    invoke-static {v0, v1}, Lkotlin/time/InstantKt;->c(Ljava/lang/CharSequence;Ljava/lang/String;)Lkotlin/time/InstantParseResult$Failure;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v1

    .line 1163
    :goto_16
    invoke-interface {v1}, Lkotlin/time/InstantParseResult;->toInstant()Lkotlin/time/Instant;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    return-object v0
.end method
