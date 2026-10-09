.class public abstract Lio/ktor/http/URLUtilsKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Ljava/lang/String;)Lio/ktor/http/Url;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/http/URLBuilder;

    .line 7
    .line 8
    sget-object v2, Lio/ktor/http/Parameters;->a:Lio/ktor/http/Parameters$Companion;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lio/ktor/http/Parameters$Companion;->b:Lio/ktor/http/EmptyParameters;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    iput-object v2, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-boolean v2, v0, Lio/ktor/http/URLBuilder;->b:Z

    .line 27
    .line 28
    iput v2, v0, Lio/ktor/http/URLBuilder;->c:I

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    iput-object v3, v0, Lio/ktor/http/URLBuilder;->d:Lio/ktor/http/URLProtocol;

    .line 32
    .line 33
    iput-object v3, v0, Lio/ktor/http/URLBuilder;->e:Ljava/lang/String;

    .line 34
    .line 35
    iput-object v3, v0, Lio/ktor/http/URLBuilder;->f:Ljava/lang/String;

    .line 36
    .line 37
    sget-object v4, Lio/ktor/http/CodecsKt;->a:Ljava/util/Set;

    .line 38
    .line 39
    sget-object v4, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v4, Lkotlinx/io/Buffer;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-wide v6, v4, Lkotlinx/io/Buffer;->l:J

    .line 62
    .line 63
    const-wide/16 v8, 0x0

    .line 64
    .line 65
    cmp-long v6, v6, v8

    .line 66
    .line 67
    if-nez v6, :cond_7

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    iput-object v4, v0, Lio/ktor/http/URLBuilder;->g:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v4, Ljava/util/ArrayList;

    .line 76
    .line 77
    sget-object v5, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 78
    .line 79
    const/16 v6, 0xa

    .line 80
    .line 81
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .line 87
    .line 88
    iput-object v4, v0, Lio/ktor/http/URLBuilder;->h:Ljava/util/List;

    .line 89
    .line 90
    new-instance v4, Lio/ktor/http/ParametersBuilderImpl;

    .line 91
    .line 92
    invoke-direct {v4}, Lio/ktor/util/StringValuesBuilderImpl;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v4, v0, Lio/ktor/http/URLBuilder;->i:Lio/ktor/http/ParametersBuilderImpl;

    .line 96
    .line 97
    new-instance v7, Lio/ktor/http/UrlDecodedParametersBuilder;

    .line 98
    .line 99
    invoke-direct {v7, v4}, Lio/ktor/http/UrlDecodedParametersBuilder;-><init>(Lio/ktor/http/ParametersBuilderImpl;)V

    .line 100
    .line 101
    .line 102
    iput-object v7, v0, Lio/ktor/http/URLBuilder;->j:Lio/ktor/http/UrlDecodedParametersBuilder;

    .line 103
    .line 104
    sget-object v4, Lio/ktor/http/URLParserKt;->a:Ljava/util/List;

    .line 105
    .line 106
    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_0

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Lio/ktor/http/URLParserKt;->b(Lio/ktor/http/URLBuilder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->a()V

    .line 117
    .line 118
    .line 119
    new-instance v7, Lio/ktor/http/Url;

    .line 120
    .line 121
    iget-object v8, v0, Lio/ktor/http/URLBuilder;->d:Lio/ktor/http/URLProtocol;

    .line 122
    .line 123
    iget-object v9, v0, Lio/ktor/http/URLBuilder;->a:Ljava/lang/String;

    .line 124
    .line 125
    iget v10, v0, Lio/ktor/http/URLBuilder;->c:I

    .line 126
    .line 127
    iget-object v1, v0, Lio/ktor/http/URLBuilder;->h:Ljava/util/List;

    .line 128
    .line 129
    new-instance v11, Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    if-eqz v4, :cond_1

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v4}, Lio/ktor/http/CodecsKt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_1
    iget-object v1, v0, Lio/ktor/http/URLBuilder;->j:Lio/ktor/http/UrlDecodedParametersBuilder;

    .line 163
    .line 164
    iget-object v1, v1, Lio/ktor/http/UrlDecodedParametersBuilder;->a:Lio/ktor/http/ParametersBuilderImpl;

    .line 165
    .line 166
    new-instance v4, Lio/ktor/http/ParametersBuilderImpl;

    .line 167
    .line 168
    invoke-direct {v4}, Lio/ktor/util/StringValuesBuilderImpl;-><init>()V

    .line 169
    .line 170
    .line 171
    iget-object v12, v1, Lio/ktor/util/StringValuesBuilderImpl;->a:Ljava/util/Map;

    .line 172
    .line 173
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 174
    .line 175
    .line 176
    move-result-object v12

    .line 177
    check-cast v12, Ljava/lang/Iterable;

    .line 178
    .line 179
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v12

    .line 183
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v13

    .line 187
    const/16 v14, 0xf

    .line 188
    .line 189
    if-eqz v13, :cond_4

    .line 190
    .line 191
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    check-cast v13, Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    iget-object v15, v1, Lio/ktor/util/StringValuesBuilderImpl;->a:Ljava/util/Map;

    .line 201
    .line 202
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v15

    .line 206
    check-cast v15, Ljava/util/List;

    .line 207
    .line 208
    if-nez v15, :cond_2

    .line 209
    .line 210
    move-object v15, v5

    .line 211
    :cond_2
    invoke-static {v13, v2, v2, v14}, Lio/ktor/http/CodecsKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v13

    .line 215
    new-instance v14, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-static {v15, v6}, Lkotlin/collections/CollectionsKt;->m(Ljava/lang/Iterable;I)I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .line 223
    .line 224
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    if-eqz v15, :cond_3

    .line 233
    .line 234
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    check-cast v15, Ljava/lang/String;

    .line 239
    .line 240
    const/16 v6, 0xb

    .line 241
    .line 242
    invoke-static {v15, v2, v2, v6}, Lio/ktor/http/CodecsKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    const/16 v6, 0xa

    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_3
    invoke-virtual {v4, v14, v13}, Lio/ktor/util/StringValuesBuilderImpl;->a(Ljava/lang/Iterable;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const/4 v3, 0x0

    .line 256
    const/16 v6, 0xa

    .line 257
    .line 258
    goto :goto_3

    .line 259
    :cond_4
    new-instance v12, Lio/ktor/http/ParametersImpl;

    .line 260
    .line 261
    iget-object v1, v4, Lio/ktor/util/StringValuesBuilderImpl;->a:Ljava/util/Map;

    .line 262
    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    .line 265
    .line 266
    const/4 v3, 0x1

    .line 267
    invoke-direct {v12, v3, v1}, Lio/ktor/util/StringValuesImpl;-><init>(ZLjava/util/Map;)V

    .line 268
    .line 269
    .line 270
    iget-object v1, v0, Lio/ktor/http/URLBuilder;->g:Ljava/lang/String;

    .line 271
    .line 272
    invoke-static {v1, v2, v2, v14}, Lio/ktor/http/CodecsKt;->d(Ljava/lang/String;III)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    iget-object v1, v0, Lio/ktor/http/URLBuilder;->e:Ljava/lang/String;

    .line 277
    .line 278
    if-eqz v1, :cond_5

    .line 279
    .line 280
    invoke-static {v1}, Lio/ktor/http/CodecsKt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    move-object v14, v1

    .line 285
    goto :goto_5

    .line 286
    :cond_5
    const/4 v14, 0x0

    .line 287
    :goto_5
    iget-object v1, v0, Lio/ktor/http/URLBuilder;->f:Ljava/lang/String;

    .line 288
    .line 289
    if-eqz v1, :cond_6

    .line 290
    .line 291
    invoke-static {v1}, Lio/ktor/http/CodecsKt;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    move-object v15, v3

    .line 296
    goto :goto_6

    .line 297
    :cond_6
    const/4 v15, 0x0

    .line 298
    :goto_6
    invoke-virtual {v0}, Lio/ktor/http/URLBuilder;->a()V

    .line 299
    .line 300
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const/16 v2, 0x100

    .line 304
    .line 305
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 306
    .line 307
    .line 308
    invoke-static {v0, v1}, Lio/ktor/http/URLBuilderKt;->a(Lio/ktor/http/URLBuilder;Ljava/lang/StringBuilder;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v16

    .line 315
    invoke-direct/range {v7 .. v16}, Lio/ktor/http/Url;-><init>(Lio/ktor/http/URLProtocol;Ljava/lang/String;ILjava/util/ArrayList;Lio/ktor/http/Parameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    return-object v7

    .line 319
    :catchall_0
    move-exception v0

    .line 320
    new-instance v2, Lio/ktor/http/URLParserException;

    .line 321
    .line 322
    const-string v3, "Fail to parse url: "

    .line 323
    .line 324
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .line 330
    .line 331
    throw v2

    .line 332
    :cond_7
    :goto_7
    iget-wide v6, v4, Lkotlinx/io/Buffer;->l:J

    .line 333
    .line 334
    cmp-long v3, v6, v8

    .line 335
    .line 336
    if-nez v3, :cond_8

    .line 337
    .line 338
    const/4 v3, 0x0

    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_8
    invoke-virtual {v4}, Lkotlinx/io/Buffer;->readByte()B

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    const/16 v7, 0x20

    .line 350
    .line 351
    if-ne v3, v7, :cond_9

    .line 352
    .line 353
    sget-object v3, Lio/ktor/http/CodecsKt;->a:Ljava/util/Set;

    .line 354
    .line 355
    const-string v3, "%20"

    .line 356
    .line 357
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    goto :goto_7

    .line 361
    :cond_9
    sget-object v7, Lio/ktor/http/CodecsKt;->a:Ljava/util/Set;

    .line 362
    .line 363
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    if-nez v7, :cond_b

    .line 368
    .line 369
    sget-object v7, Lio/ktor/http/CodecsKt;->c:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-eqz v6, :cond_a

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_a
    invoke-static {v3}, Lio/ktor/http/CodecsKt;->e(B)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_b
    :goto_8
    int-to-char v3, v3

    .line 387
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    goto :goto_7
.end method
