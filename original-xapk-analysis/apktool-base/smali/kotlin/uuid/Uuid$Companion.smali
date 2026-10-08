.class public abstract Lkotlin/uuid/Uuid$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/uuid/Uuid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static a(Ljava/lang/String;)Lkotlin/uuid/Uuid;
    .locals 24

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
    sget-object v2, Lkotlin/uuid/Uuid;->l:Lkotlin/uuid/Uuid;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/16 v4, 0x10

    .line 14
    .line 15
    const-wide/16 v5, 0x0

    .line 16
    .line 17
    const-string v7, "a hexadecimal digit"

    .line 18
    .line 19
    const/4 v8, 0x4

    .line 20
    const/4 v9, 0x0

    .line 21
    const/16 v10, 0x20

    .line 22
    .line 23
    if-eq v1, v10, :cond_11

    .line 24
    .line 25
    const/16 v11, 0x24

    .line 26
    .line 27
    if-eq v1, v11, :cond_1

    .line 28
    .line 29
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v3, "Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \""

    .line 34
    .line 35
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const/16 v4, 0x40

    .line 43
    .line 44
    if-gt v3, v4, :cond_0

    .line 45
    .line 46
    move-object v3, v0

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "..."

    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v3, "\" of length "

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw v1

    .line 81
    :cond_1
    move-wide v12, v5

    .line 82
    :goto_1
    const/16 v1, 0x8

    .line 83
    .line 84
    if-ge v9, v1, :cond_3

    .line 85
    .line 86
    shl-long/2addr v12, v8

    .line 87
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    ushr-int/lit8 v14, v1, 0x8

    .line 92
    .line 93
    if-nez v14, :cond_2

    .line 94
    .line 95
    sget-object v14, Lkotlin/text/HexExtensionsKt;->b:[J

    .line 96
    .line 97
    aget-wide v14, v14, v1

    .line 98
    .line 99
    cmp-long v1, v14, v5

    .line 100
    .line 101
    if-ltz v1, :cond_2

    .line 102
    .line 103
    or-long/2addr v12, v14

    .line 104
    add-int/lit8 v9, v9, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    invoke-static {v0, v9, v7}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v3

    .line 111
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    const-string v14, "\'-\' (hyphen)"

    .line 116
    .line 117
    const/16 v15, 0x2d

    .line 118
    .line 119
    if-ne v9, v15, :cond_10

    .line 120
    .line 121
    const/16 v1, 0x9

    .line 122
    .line 123
    move-wide/from16 v16, v5

    .line 124
    .line 125
    :goto_2
    const/16 v9, 0xd

    .line 126
    .line 127
    if-ge v1, v9, :cond_5

    .line 128
    .line 129
    shl-long v16, v16, v8

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 132
    .line 133
    .line 134
    move-result v9

    .line 135
    ushr-int/lit8 v18, v9, 0x8

    .line 136
    .line 137
    if-nez v18, :cond_4

    .line 138
    .line 139
    sget-object v18, Lkotlin/text/HexExtensionsKt;->b:[J

    .line 140
    .line 141
    aget-wide v18, v18, v9

    .line 142
    .line 143
    cmp-long v9, v18, v5

    .line 144
    .line 145
    if-ltz v9, :cond_4

    .line 146
    .line 147
    or-long v16, v16, v18

    .line 148
    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_4
    invoke-static {v0, v1, v7}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v3

    .line 156
    :cond_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-ne v1, v15, :cond_f

    .line 161
    .line 162
    const/16 v1, 0xe

    .line 163
    .line 164
    move-wide/from16 v18, v5

    .line 165
    .line 166
    :goto_3
    const/16 v9, 0x12

    .line 167
    .line 168
    if-ge v1, v9, :cond_7

    .line 169
    .line 170
    shl-long v18, v18, v8

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    ushr-int/lit8 v20, v9, 0x8

    .line 177
    .line 178
    if-nez v20, :cond_6

    .line 179
    .line 180
    sget-object v20, Lkotlin/text/HexExtensionsKt;->b:[J

    .line 181
    .line 182
    aget-wide v20, v20, v9

    .line 183
    .line 184
    cmp-long v9, v20, v5

    .line 185
    .line 186
    if-ltz v9, :cond_6

    .line 187
    .line 188
    or-long v18, v18, v20

    .line 189
    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    invoke-static {v0, v1, v7}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw v3

    .line 197
    :cond_7
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-ne v1, v15, :cond_e

    .line 202
    .line 203
    const/16 v1, 0x13

    .line 204
    .line 205
    move-wide/from16 v20, v5

    .line 206
    .line 207
    :goto_4
    const/16 v9, 0x17

    .line 208
    .line 209
    if-ge v1, v9, :cond_9

    .line 210
    .line 211
    shl-long v20, v20, v8

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    ushr-int/lit8 v22, v9, 0x8

    .line 218
    .line 219
    if-nez v22, :cond_8

    .line 220
    .line 221
    sget-object v22, Lkotlin/text/HexExtensionsKt;->b:[J

    .line 222
    .line 223
    aget-wide v22, v22, v9

    .line 224
    .line 225
    cmp-long v9, v22, v5

    .line 226
    .line 227
    if-ltz v9, :cond_8

    .line 228
    .line 229
    or-long v20, v20, v22

    .line 230
    .line 231
    add-int/lit8 v1, v1, 0x1

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_8
    invoke-static {v0, v1, v7}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw v3

    .line 238
    :cond_9
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-ne v1, v15, :cond_d

    .line 243
    .line 244
    const/16 v1, 0x18

    .line 245
    .line 246
    move-wide v14, v5

    .line 247
    :goto_5
    if-ge v1, v11, :cond_b

    .line 248
    .line 249
    shl-long/2addr v14, v8

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 251
    .line 252
    .line 253
    move-result v9

    .line 254
    ushr-int/lit8 v22, v9, 0x8

    .line 255
    .line 256
    if-nez v22, :cond_a

    .line 257
    .line 258
    sget-object v22, Lkotlin/text/HexExtensionsKt;->b:[J

    .line 259
    .line 260
    aget-wide v22, v22, v9

    .line 261
    .line 262
    cmp-long v9, v22, v5

    .line 263
    .line 264
    if-ltz v9, :cond_a

    .line 265
    .line 266
    or-long v14, v14, v22

    .line 267
    .line 268
    add-int/lit8 v1, v1, 0x1

    .line 269
    .line 270
    goto :goto_5

    .line 271
    :cond_a
    invoke-static {v0, v1, v7}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw v3

    .line 275
    :cond_b
    shl-long v0, v12, v10

    .line 276
    .line 277
    shl-long v3, v16, v4

    .line 278
    .line 279
    or-long/2addr v0, v3

    .line 280
    or-long v0, v0, v18

    .line 281
    .line 282
    const/16 v3, 0x30

    .line 283
    .line 284
    shl-long v3, v20, v3

    .line 285
    .line 286
    or-long/2addr v3, v14

    .line 287
    cmp-long v7, v0, v5

    .line 288
    .line 289
    if-nez v7, :cond_c

    .line 290
    .line 291
    cmp-long v5, v3, v5

    .line 292
    .line 293
    if-nez v5, :cond_c

    .line 294
    .line 295
    return-object v2

    .line 296
    :cond_c
    new-instance v2, Lkotlin/uuid/Uuid;

    .line 297
    .line 298
    invoke-direct {v2, v0, v1, v3, v4}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    .line 299
    .line 300
    .line 301
    return-object v2

    .line 302
    :cond_d
    invoke-static {v0, v9, v14}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw v3

    .line 306
    :cond_e
    invoke-static {v0, v9, v14}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw v3

    .line 310
    :cond_f
    invoke-static {v0, v9, v14}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v3

    .line 314
    :cond_10
    invoke-static {v0, v1, v14}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw v3

    .line 318
    :cond_11
    move-wide v11, v5

    .line 319
    :goto_6
    if-ge v9, v4, :cond_13

    .line 320
    .line 321
    shl-long/2addr v11, v8

    .line 322
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    ushr-int/lit8 v13, v1, 0x8

    .line 327
    .line 328
    if-nez v13, :cond_12

    .line 329
    .line 330
    sget-object v13, Lkotlin/text/HexExtensionsKt;->b:[J

    .line 331
    .line 332
    aget-wide v13, v13, v1

    .line 333
    .line 334
    cmp-long v1, v13, v5

    .line 335
    .line 336
    if-ltz v1, :cond_12

    .line 337
    .line 338
    or-long/2addr v11, v13

    .line 339
    add-int/lit8 v9, v9, 0x1

    .line 340
    .line 341
    goto :goto_6

    .line 342
    :cond_12
    invoke-static {v0, v9, v7}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw v3

    .line 346
    :cond_13
    move-wide v13, v5

    .line 347
    :goto_7
    if-ge v4, v10, :cond_15

    .line 348
    .line 349
    shl-long/2addr v13, v8

    .line 350
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    ushr-int/lit8 v9, v1, 0x8

    .line 355
    .line 356
    if-nez v9, :cond_14

    .line 357
    .line 358
    sget-object v9, Lkotlin/text/HexExtensionsKt;->b:[J

    .line 359
    .line 360
    aget-wide v15, v9, v1

    .line 361
    .line 362
    cmp-long v1, v15, v5

    .line 363
    .line 364
    if-ltz v1, :cond_14

    .line 365
    .line 366
    or-long/2addr v13, v15

    .line 367
    add-int/lit8 v4, v4, 0x1

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_14
    invoke-static {v0, v4, v7}, Lkotlin/uuid/UuidKt__UuidKt;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    .line 372
    .line 373
    throw v3

    .line 374
    :cond_15
    cmp-long v0, v11, v5

    .line 375
    .line 376
    if-nez v0, :cond_16

    .line 377
    .line 378
    cmp-long v0, v13, v5

    .line 379
    .line 380
    if-nez v0, :cond_16

    .line 381
    .line 382
    return-object v2

    .line 383
    :cond_16
    new-instance v0, Lkotlin/uuid/Uuid;

    .line 384
    .line 385
    invoke-direct {v0, v11, v12, v13, v14}, Lkotlin/uuid/Uuid;-><init>(JJ)V

    .line 386
    .line 387
    .line 388
    return-object v0
.end method
