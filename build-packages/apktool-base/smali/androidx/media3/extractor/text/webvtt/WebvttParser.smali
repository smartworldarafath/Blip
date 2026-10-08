.class public final Landroidx/media3/extractor/text/webvtt/WebvttParser;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleParser;


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableByteArray;

.field public final b:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->b:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final b([BIILandroidx/media3/common/util/Consumer;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    add-int v2, v1, p3

    .line 6
    .line 7
    iget-object v3, v0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 8
    .line 9
    move-object/from16 v4, p1

    .line 10
    .line 11
    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    :try_start_0
    invoke-static {v3}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->c(Landroidx/media3/common/util/ParsableByteArray;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    :cond_1
    :goto_1
    const/4 v4, 0x0

    .line 44
    const/4 v5, -0x1

    .line 45
    move v7, v4

    .line 46
    move v6, v5

    .line 47
    :goto_2
    const/4 v9, 0x1

    .line 48
    const/4 v10, 0x2

    .line 49
    if-ne v6, v5, :cond_5

    .line 50
    .line 51
    iget v7, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 52
    .line 53
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    if-nez v6, :cond_2

    .line 60
    .line 61
    move v6, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const-string v11, "STYLE"

    .line 64
    .line 65
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    if-eqz v11, :cond_3

    .line 70
    .line 71
    move v6, v10

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    const-string v10, "NOTE"

    .line 74
    .line 75
    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    move v6, v9

    .line 82
    goto :goto_2

    .line 83
    :cond_4
    const/4 v6, 0x3

    .line 84
    goto :goto_2

    .line 85
    :cond_5
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 86
    .line 87
    .line 88
    if-eqz v6, :cond_3b

    .line 89
    .line 90
    if-ne v6, v9, :cond_6

    .line 91
    .line 92
    :goto_3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_6
    const/4 v7, 0x0

    .line 106
    if-ne v6, v10, :cond_36

    .line 107
    .line 108
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-eqz v6, :cond_35

    .line 113
    .line 114
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 115
    .line 116
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    iget-object v6, v0, Landroidx/media3/extractor/text/webvtt/WebvttParser;->b:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    .line 120
    .line 121
    iget-object v11, v6, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->a:Landroidx/media3/common/util/ParsableByteArray;

    .line 122
    .line 123
    iget-object v6, v6, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->b:Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 126
    .line 127
    .line 128
    iget v12, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 129
    .line 130
    :goto_4
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 131
    .line 132
    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    if-eqz v13, :cond_34

    .line 141
    .line 142
    iget-object v13, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 143
    .line 144
    iget v14, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 145
    .line 146
    invoke-virtual {v11, v14, v13}, Landroidx/media3/common/util/ParsableByteArray;->K(I[B)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v11, v12}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 150
    .line 151
    .line 152
    new-instance v12, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    :goto_5
    invoke-static {v11}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->c(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    .line 161
    .line 162
    .line 163
    move-result v13

    .line 164
    const-string v14, ""

    .line 165
    .line 166
    const-string v15, "{"

    .line 167
    .line 168
    const/4 v8, 0x5

    .line 169
    if-ge v13, v8, :cond_7

    .line 170
    .line 171
    :goto_6
    move-object v8, v7

    .line 172
    goto/16 :goto_a

    .line 173
    .line 174
    :cond_7
    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 175
    .line 176
    invoke-virtual {v11, v8, v13}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v8

    .line 180
    const-string v13, "::cue"

    .line 181
    .line 182
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-nez v8, :cond_8

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_8
    iget v8, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 190
    .line 191
    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    if-nez v13, :cond_9

    .line 196
    .line 197
    goto :goto_6

    .line 198
    :cond_9
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v16

    .line 202
    if-eqz v16, :cond_a

    .line 203
    .line 204
    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 205
    .line 206
    .line 207
    move-object v8, v14

    .line 208
    goto :goto_a

    .line 209
    :cond_a
    const-string v8, "("

    .line 210
    .line 211
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-eqz v8, :cond_d

    .line 216
    .line 217
    iget v8, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 218
    .line 219
    iget v13, v11, Landroidx/media3/common/util/ParsableByteArray;->c:I

    .line 220
    .line 221
    move/from16 v16, v4

    .line 222
    .line 223
    :goto_7
    if-ge v8, v13, :cond_c

    .line 224
    .line 225
    if-nez v16, :cond_c

    .line 226
    .line 227
    iget-object v10, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    .line 228
    .line 229
    add-int/lit8 v16, v8, 0x1

    .line 230
    .line 231
    aget-byte v8, v10, v8

    .line 232
    .line 233
    int-to-char v8, v8

    .line 234
    const/16 v10, 0x29

    .line 235
    .line 236
    if-ne v8, v10, :cond_b

    .line 237
    .line 238
    move v8, v9

    .line 239
    goto :goto_8

    .line 240
    :cond_b
    move v8, v4

    .line 241
    :goto_8
    move/from16 v10, v16

    .line 242
    .line 243
    move/from16 v16, v8

    .line 244
    .line 245
    move v8, v10

    .line 246
    const/4 v10, 0x2

    .line 247
    goto :goto_7

    .line 248
    :cond_c
    add-int/lit8 v8, v8, -0x1

    .line 249
    .line 250
    iget v10, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 251
    .line 252
    sub-int/2addr v8, v10

    .line 253
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 254
    .line 255
    invoke-virtual {v11, v8, v10}, Landroidx/media3/common/util/ParsableByteArray;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    goto :goto_9

    .line 264
    :cond_d
    move-object v8, v7

    .line 265
    :goto_9
    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v10

    .line 269
    const-string v13, ")"

    .line 270
    .line 271
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v10

    .line 275
    if-nez v10, :cond_e

    .line 276
    .line 277
    goto :goto_6

    .line 278
    :cond_e
    :goto_a
    if-eqz v8, :cond_32

    .line 279
    .line 280
    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    if-nez v10, :cond_f

    .line 289
    .line 290
    goto/16 :goto_1d

    .line 291
    .line 292
    :cond_f
    new-instance v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    .line 293
    .line 294
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 295
    .line 296
    .line 297
    iput-object v14, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->a:Ljava/lang/String;

    .line 298
    .line 299
    iput-object v14, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->b:Ljava/lang/String;

    .line 300
    .line 301
    sget-object v13, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 302
    .line 303
    iput-object v13, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->c:Ljava/util/Set;

    .line 304
    .line 305
    iput-object v14, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->d:Ljava/lang/String;

    .line 306
    .line 307
    iput-object v7, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->e:Ljava/lang/String;

    .line 308
    .line 309
    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->g:Z

    .line 310
    .line 311
    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->i:Z

    .line 312
    .line 313
    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->j:I

    .line 314
    .line 315
    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->k:I

    .line 316
    .line 317
    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->l:I

    .line 318
    .line 319
    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->m:I

    .line 320
    .line 321
    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->n:I

    .line 322
    .line 323
    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->p:I

    .line 324
    .line 325
    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->q:Z

    .line 326
    .line 327
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v13

    .line 331
    if-eqz v13, :cond_10

    .line 332
    .line 333
    goto :goto_d

    .line 334
    :cond_10
    const/16 v13, 0x5b

    .line 335
    .line 336
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    .line 337
    .line 338
    .line 339
    move-result v13

    .line 340
    if-eq v13, v5, :cond_12

    .line 341
    .line 342
    sget-object v14, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->c:Ljava/util/regex/Pattern;

    .line 343
    .line 344
    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v15

    .line 348
    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 349
    .line 350
    .line 351
    move-result-object v14

    .line 352
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    .line 353
    .line 354
    .line 355
    move-result v15

    .line 356
    if-eqz v15, :cond_11

    .line 357
    .line 358
    invoke-virtual {v14, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v14

    .line 362
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    iput-object v14, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->d:Ljava/lang/String;

    .line 366
    .line 367
    :cond_11
    invoke-virtual {v8, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v8

    .line 371
    :cond_12
    sget-object v13, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 372
    .line 373
    const-string v13, "\\."

    .line 374
    .line 375
    invoke-virtual {v8, v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    aget-object v13, v8, v4

    .line 380
    .line 381
    const/16 v14, 0x23

    .line 382
    .line 383
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    .line 384
    .line 385
    .line 386
    move-result v14

    .line 387
    if-eq v14, v5, :cond_13

    .line 388
    .line 389
    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v15

    .line 393
    iput-object v15, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->b:Ljava/lang/String;

    .line 394
    .line 395
    add-int/lit8 v14, v14, 0x1

    .line 396
    .line 397
    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v13

    .line 401
    iput-object v13, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->a:Ljava/lang/String;

    .line 402
    .line 403
    goto :goto_b

    .line 404
    :cond_13
    iput-object v13, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->b:Ljava/lang/String;

    .line 405
    .line 406
    :goto_b
    array-length v13, v8

    .line 407
    if-le v13, v9, :cond_15

    .line 408
    .line 409
    array-length v13, v8

    .line 410
    array-length v14, v8

    .line 411
    if-gt v13, v14, :cond_14

    .line 412
    .line 413
    move v14, v9

    .line 414
    goto :goto_c

    .line 415
    :cond_14
    move v14, v4

    .line 416
    :goto_c
    invoke-static {v14}, Lcom/google/common/base/Preconditions;->e(Z)V

    .line 417
    .line 418
    .line 419
    invoke-static {v8, v9, v13}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v8

    .line 423
    check-cast v8, [Ljava/lang/String;

    .line 424
    .line 425
    new-instance v13, Ljava/util/HashSet;

    .line 426
    .line 427
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 428
    .line 429
    .line 430
    move-result-object v8

    .line 431
    invoke-direct {v13, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 432
    .line 433
    .line 434
    iput-object v13, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->c:Ljava/util/Set;

    .line 435
    .line 436
    :cond_15
    :goto_d
    move v8, v4

    .line 437
    move-object v13, v7

    .line 438
    :goto_e
    const-string v14, "}"

    .line 439
    .line 440
    if-nez v8, :cond_30

    .line 441
    .line 442
    iget v8, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 443
    .line 444
    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v13

    .line 448
    if-eqz v13, :cond_17

    .line 449
    .line 450
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v15

    .line 454
    if-eqz v15, :cond_16

    .line 455
    .line 456
    goto :goto_f

    .line 457
    :cond_16
    move v15, v4

    .line 458
    goto :goto_10

    .line 459
    :cond_17
    :goto_f
    move v15, v9

    .line 460
    :goto_10
    if-nez v15, :cond_2f

    .line 461
    .line 462
    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 463
    .line 464
    .line 465
    invoke-static {v11}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->c(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 466
    .line 467
    .line 468
    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->a(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 473
    .line 474
    .line 475
    move-result v16

    .line 476
    if-eqz v16, :cond_18

    .line 477
    .line 478
    goto/16 :goto_1b

    .line 479
    .line 480
    :cond_18
    const-string v4, ":"

    .line 481
    .line 482
    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 487
    .line 488
    .line 489
    move-result v4

    .line 490
    if-nez v4, :cond_19

    .line 491
    .line 492
    goto/16 :goto_1b

    .line 493
    .line 494
    :cond_19
    invoke-static {v11}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->c(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 495
    .line 496
    .line 497
    new-instance v4, Ljava/lang/StringBuilder;

    .line 498
    .line 499
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .line 501
    .line 502
    const/4 v5, 0x0

    .line 503
    :goto_11
    const-string v7, ";"

    .line 504
    .line 505
    if-nez v5, :cond_1d

    .line 506
    .line 507
    iget v9, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 508
    .line 509
    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    if-nez v0, :cond_1a

    .line 514
    .line 515
    const/4 v0, 0x0

    .line 516
    goto :goto_14

    .line 517
    :cond_1a
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v18

    .line 521
    if-nez v18, :cond_1c

    .line 522
    .line 523
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v7

    .line 527
    if-eqz v7, :cond_1b

    .line 528
    .line 529
    goto :goto_13

    .line 530
    :cond_1b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    :goto_12
    move-object/from16 v0, p0

    .line 534
    .line 535
    const/4 v9, 0x1

    .line 536
    goto :goto_11

    .line 537
    :cond_1c
    :goto_13
    invoke-virtual {v11, v9}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 538
    .line 539
    .line 540
    const/4 v5, 0x1

    .line 541
    goto :goto_12

    .line 542
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    :goto_14
    if-eqz v0, :cond_2f

    .line 547
    .line 548
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 549
    .line 550
    .line 551
    move-result v4

    .line 552
    if-eqz v4, :cond_1e

    .line 553
    .line 554
    goto/16 :goto_1b

    .line 555
    .line 556
    :cond_1e
    iget v4, v11, Landroidx/media3/common/util/ParsableByteArray;->b:I

    .line 557
    .line 558
    invoke-static {v11, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v5

    .line 562
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 563
    .line 564
    .line 565
    move-result v7

    .line 566
    if-eqz v7, :cond_1f

    .line 567
    .line 568
    goto :goto_15

    .line 569
    :cond_1f
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    move-result v5

    .line 573
    if-eqz v5, :cond_2f

    .line 574
    .line 575
    invoke-virtual {v11, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    .line 576
    .line 577
    .line 578
    :goto_15
    const-string v4, "color"

    .line 579
    .line 580
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v4

    .line 584
    if-eqz v4, :cond_20

    .line 585
    .line 586
    const/4 v4, 0x1

    .line 587
    invoke-static {v0, v4}, Landroidx/media3/common/util/ColorParser;->a(Ljava/lang/String;Z)I

    .line 588
    .line 589
    .line 590
    move-result v0

    .line 591
    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->f:I

    .line 592
    .line 593
    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->g:Z

    .line 594
    .line 595
    goto/16 :goto_1b

    .line 596
    .line 597
    :cond_20
    const/4 v4, 0x1

    .line 598
    const-string v5, "background-color"

    .line 599
    .line 600
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v5

    .line 604
    if-eqz v5, :cond_21

    .line 605
    .line 606
    invoke-static {v0, v4}, Landroidx/media3/common/util/ColorParser;->a(Ljava/lang/String;Z)I

    .line 607
    .line 608
    .line 609
    move-result v0

    .line 610
    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->h:I

    .line 611
    .line 612
    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->i:Z

    .line 613
    .line 614
    goto/16 :goto_1b

    .line 615
    .line 616
    :cond_21
    const-string v5, "ruby-position"

    .line 617
    .line 618
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    move-result v5

    .line 622
    if-eqz v5, :cond_23

    .line 623
    .line 624
    const-string v5, "over"

    .line 625
    .line 626
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 627
    .line 628
    .line 629
    move-result v5

    .line 630
    if-eqz v5, :cond_22

    .line 631
    .line 632
    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->p:I

    .line 633
    .line 634
    goto/16 :goto_1b

    .line 635
    .line 636
    :cond_22
    const-string v4, "under"

    .line 637
    .line 638
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    if-eqz v0, :cond_2f

    .line 643
    .line 644
    const/4 v0, 0x2

    .line 645
    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->p:I

    .line 646
    .line 647
    move v5, v0

    .line 648
    goto/16 :goto_1c

    .line 649
    .line 650
    :cond_23
    const-string v4, "text-combine-upright"

    .line 651
    .line 652
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v4

    .line 656
    if-eqz v4, :cond_26

    .line 657
    .line 658
    const-string v4, "all"

    .line 659
    .line 660
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    if-nez v4, :cond_25

    .line 665
    .line 666
    const-string v4, "digits"

    .line 667
    .line 668
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 669
    .line 670
    .line 671
    move-result v0

    .line 672
    if-eqz v0, :cond_24

    .line 673
    .line 674
    goto :goto_16

    .line 675
    :cond_24
    const/4 v0, 0x0

    .line 676
    goto :goto_17

    .line 677
    :cond_25
    :goto_16
    const/4 v0, 0x1

    .line 678
    :goto_17
    iput-boolean v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->q:Z

    .line 679
    .line 680
    goto/16 :goto_1b

    .line 681
    .line 682
    :cond_26
    const-string v4, "text-decoration"

    .line 683
    .line 684
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    if-eqz v4, :cond_27

    .line 689
    .line 690
    const-string v4, "underline"

    .line 691
    .line 692
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 693
    .line 694
    .line 695
    move-result v0

    .line 696
    if-eqz v0, :cond_2f

    .line 697
    .line 698
    const/4 v4, 0x1

    .line 699
    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->k:I

    .line 700
    .line 701
    goto/16 :goto_1b

    .line 702
    .line 703
    :cond_27
    const-string v4, "font-family"

    .line 704
    .line 705
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 706
    .line 707
    .line 708
    move-result v4

    .line 709
    if-eqz v4, :cond_28

    .line 710
    .line 711
    invoke-static {v0}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    iput-object v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->e:Ljava/lang/String;

    .line 716
    .line 717
    goto/16 :goto_1b

    .line 718
    .line 719
    :cond_28
    const-string v4, "font-weight"

    .line 720
    .line 721
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result v4

    .line 725
    if-eqz v4, :cond_29

    .line 726
    .line 727
    const-string v4, "bold"

    .line 728
    .line 729
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 730
    .line 731
    .line 732
    move-result v0

    .line 733
    if-eqz v0, :cond_2f

    .line 734
    .line 735
    const/4 v4, 0x1

    .line 736
    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->l:I

    .line 737
    .line 738
    goto/16 :goto_1b

    .line 739
    .line 740
    :cond_29
    const/4 v4, 0x1

    .line 741
    const-string v5, "font-style"

    .line 742
    .line 743
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v5

    .line 747
    if-eqz v5, :cond_2a

    .line 748
    .line 749
    const-string v5, "italic"

    .line 750
    .line 751
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 752
    .line 753
    .line 754
    move-result v0

    .line 755
    if-eqz v0, :cond_2f

    .line 756
    .line 757
    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->m:I

    .line 758
    .line 759
    goto/16 :goto_1b

    .line 760
    .line 761
    :cond_2a
    const-string v4, "font-size"

    .line 762
    .line 763
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    if-eqz v4, :cond_2f

    .line 768
    .line 769
    sget-object v4, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->d:Ljava/util/regex/Pattern;

    .line 770
    .line 771
    invoke-static {v0}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v5

    .line 775
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 776
    .line 777
    .line 778
    move-result-object v4

    .line 779
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    .line 780
    .line 781
    .line 782
    move-result v5

    .line 783
    if-nez v5, :cond_2b

    .line 784
    .line 785
    new-instance v4, Ljava/lang/StringBuilder;

    .line 786
    .line 787
    const-string v5, "Invalid font-size: \'"

    .line 788
    .line 789
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    const-string v0, "\'."

    .line 796
    .line 797
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    const-string v4, "WebvttCssParser"

    .line 805
    .line 806
    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    goto :goto_1b

    .line 810
    :cond_2b
    const/4 v0, 0x2

    .line 811
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v5

    .line 815
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    .line 817
    .line 818
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 819
    .line 820
    .line 821
    move-result v0

    .line 822
    sparse-switch v0, :sswitch_data_0

    .line 823
    .line 824
    .line 825
    :goto_18
    const/4 v0, -0x1

    .line 826
    goto :goto_19

    .line 827
    :sswitch_0
    const-string v0, "px"

    .line 828
    .line 829
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 830
    .line 831
    .line 832
    move-result v0

    .line 833
    if-nez v0, :cond_2c

    .line 834
    .line 835
    goto :goto_18

    .line 836
    :cond_2c
    const/4 v0, 0x2

    .line 837
    goto :goto_19

    .line 838
    :sswitch_1
    const-string v0, "em"

    .line 839
    .line 840
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    .line 842
    .line 843
    move-result v0

    .line 844
    if-nez v0, :cond_2d

    .line 845
    .line 846
    goto :goto_18

    .line 847
    :cond_2d
    const/4 v0, 0x1

    .line 848
    goto :goto_19

    .line 849
    :sswitch_2
    const-string v0, "%"

    .line 850
    .line 851
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 852
    .line 853
    .line 854
    move-result v0

    .line 855
    if-nez v0, :cond_2e

    .line 856
    .line 857
    goto :goto_18

    .line 858
    :cond_2e
    const/4 v0, 0x0

    .line 859
    :goto_19
    packed-switch v0, :pswitch_data_0

    .line 860
    .line 861
    .line 862
    invoke-static {}, Lio/sentry/d;->d()V

    .line 863
    .line 864
    .line 865
    return-void

    .line 866
    :pswitch_0
    const/4 v0, 0x1

    .line 867
    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->n:I

    .line 868
    .line 869
    const/4 v5, 0x2

    .line 870
    goto :goto_1a

    .line 871
    :pswitch_1
    const/4 v0, 0x1

    .line 872
    const/4 v5, 0x2

    .line 873
    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->n:I

    .line 874
    .line 875
    goto :goto_1a

    .line 876
    :pswitch_2
    const/4 v0, 0x1

    .line 877
    const/4 v5, 0x2

    .line 878
    const/4 v7, 0x3

    .line 879
    iput v7, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->n:I

    .line 880
    .line 881
    :goto_1a
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v4

    .line 885
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 886
    .line 887
    .line 888
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 889
    .line 890
    .line 891
    move-result v0

    .line 892
    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->o:F

    .line 893
    .line 894
    goto :goto_1c

    .line 895
    :cond_2f
    :goto_1b
    const/4 v5, 0x2

    .line 896
    :goto_1c
    move-object/from16 v0, p0

    .line 897
    .line 898
    move v8, v15

    .line 899
    const/4 v4, 0x0

    .line 900
    const/4 v5, -0x1

    .line 901
    const/4 v7, 0x0

    .line 902
    const/4 v9, 0x1

    .line 903
    goto/16 :goto_e

    .line 904
    .line 905
    :cond_30
    const/4 v5, 0x2

    .line 906
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 907
    .line 908
    .line 909
    move-result v0

    .line 910
    if-eqz v0, :cond_31

    .line 911
    .line 912
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    .line 914
    .line 915
    :cond_31
    move-object/from16 v0, p0

    .line 916
    .line 917
    move v10, v5

    .line 918
    const/4 v4, 0x0

    .line 919
    const/4 v5, -0x1

    .line 920
    const/4 v7, 0x0

    .line 921
    const/4 v9, 0x1

    .line 922
    goto/16 :goto_5

    .line 923
    .line 924
    :cond_32
    :goto_1d
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 925
    .line 926
    .line 927
    :cond_33
    :goto_1e
    move-object/from16 v0, p0

    .line 928
    .line 929
    goto/16 :goto_1

    .line 930
    .line 931
    :cond_34
    move-object/from16 v0, p0

    .line 932
    .line 933
    goto/16 :goto_4

    .line 934
    .line 935
    :cond_35
    const-string v0, "A style block was found after the first cue."

    .line 936
    .line 937
    invoke-static {v0}, Lu2;->g(Ljava/lang/String;)V

    .line 938
    .line 939
    .line 940
    return-void

    .line 941
    :cond_36
    const/4 v7, 0x3

    .line 942
    if-ne v6, v7, :cond_33

    .line 943
    .line 944
    sget-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->a:Ljava/util/regex/Pattern;

    .line 945
    .line 946
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 947
    .line 948
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v4

    .line 952
    if-nez v4, :cond_37

    .line 953
    .line 954
    const/4 v7, 0x0

    .line 955
    goto :goto_1f

    .line 956
    :cond_37
    sget-object v5, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->a:Ljava/util/regex/Pattern;

    .line 957
    .line 958
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 959
    .line 960
    .line 961
    move-result-object v6

    .line 962
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 963
    .line 964
    .line 965
    move-result v7

    .line 966
    if-eqz v7, :cond_38

    .line 967
    .line 968
    const/4 v7, 0x0

    .line 969
    invoke-static {v7, v6, v3, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/ArrayList;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 970
    .line 971
    .line 972
    move-result-object v7

    .line 973
    goto :goto_1f

    .line 974
    :cond_38
    const/4 v7, 0x0

    .line 975
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->n(Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 976
    .line 977
    .line 978
    move-result-object v0

    .line 979
    if-nez v0, :cond_39

    .line 980
    .line 981
    goto :goto_1f

    .line 982
    :cond_39
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 987
    .line 988
    .line 989
    move-result v5

    .line 990
    if-eqz v5, :cond_3a

    .line 991
    .line 992
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v4

    .line 996
    invoke-static {v4, v0, v3, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->d(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/ArrayList;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    .line 997
    .line 998
    .line 999
    move-result-object v7

    .line 1000
    :cond_3a
    :goto_1f
    if-eqz v7, :cond_33

    .line 1001
    .line 1002
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1003
    .line 1004
    .line 1005
    goto :goto_1e

    .line 1006
    :cond_3b
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;

    .line 1007
    .line 1008
    invoke-direct {v0, v2}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/ArrayList;)V

    .line 1009
    .line 1010
    .line 1011
    const/4 v4, 0x0

    .line 1012
    :goto_20
    invoke-virtual {v0}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->d()I

    .line 1013
    .line 1014
    .line 1015
    move-result v1

    .line 1016
    if-ge v4, v1, :cond_3f

    .line 1017
    .line 1018
    invoke-virtual {v0, v4}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->b(I)J

    .line 1019
    .line 1020
    .line 1021
    move-result-wide v6

    .line 1022
    invoke-virtual {v0, v6, v7}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->c(J)Ljava/util/List;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v10

    .line 1026
    move-object v1, v10

    .line 1027
    check-cast v1, Ljava/util/ArrayList;

    .line 1028
    .line 1029
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1030
    .line 1031
    .line 1032
    move-result v1

    .line 1033
    if-eqz v1, :cond_3d

    .line 1034
    .line 1035
    const/16 v17, 0x1

    .line 1036
    .line 1037
    :cond_3c
    move-object/from16 v1, p4

    .line 1038
    .line 1039
    goto :goto_21

    .line 1040
    :cond_3d
    invoke-virtual {v0}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->d()I

    .line 1041
    .line 1042
    .line 1043
    move-result v1

    .line 1044
    const/16 v17, 0x1

    .line 1045
    .line 1046
    add-int/lit8 v1, v1, -0x1

    .line 1047
    .line 1048
    if-eq v4, v1, :cond_3e

    .line 1049
    .line 1050
    add-int/lit8 v1, v4, 0x1

    .line 1051
    .line 1052
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->b(I)J

    .line 1053
    .line 1054
    .line 1055
    move-result-wide v1

    .line 1056
    invoke-virtual {v0, v4}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;->b(I)J

    .line 1057
    .line 1058
    .line 1059
    move-result-wide v8

    .line 1060
    sub-long v8, v1, v8

    .line 1061
    .line 1062
    const-wide/16 v1, 0x0

    .line 1063
    .line 1064
    cmp-long v1, v8, v1

    .line 1065
    .line 1066
    if-lez v1, :cond_3c

    .line 1067
    .line 1068
    new-instance v5, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 1069
    .line 1070
    invoke-direct/range {v5 .. v10}, Landroidx/media3/extractor/text/CuesWithTiming;-><init>(JJLjava/util/List;)V

    .line 1071
    .line 1072
    .line 1073
    move-object/from16 v1, p4

    .line 1074
    .line 1075
    invoke-interface {v1, v5}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 1076
    .line 1077
    .line 1078
    :goto_21
    add-int/lit8 v4, v4, 0x1

    .line 1079
    .line 1080
    goto :goto_20

    .line 1081
    :cond_3e
    invoke-static {}, Lio/sentry/d;->d()V

    .line 1082
    .line 1083
    .line 1084
    :cond_3f
    return-void

    .line 1085
    :catch_0
    move-exception v0

    .line 1086
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1087
    .line 1088
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 1089
    .line 1090
    .line 1091
    throw v1

    .line 1092
    nop

    .line 1093
    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
