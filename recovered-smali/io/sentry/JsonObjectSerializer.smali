.class public final Lio/sentry/JsonObjectSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Lio/sentry/JsonReflectionObjectSerializer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/JsonReflectionObjectSerializer;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/sentry/JsonReflectionObjectSerializer;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/JsonObjectSerializer;->a:Lio/sentry/JsonReflectionObjectSerializer;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->q()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    instance-of v1, p3, Ljava/lang/Character;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast p3, Ljava/lang/Character;

    .line 14
    .line 15
    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    instance-of v1, p3, Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    check-cast p3, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    instance-of v1, p3, Ljava/lang/Boolean;

    .line 38
    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    check-cast p3, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->k(Z)Lio/sentry/JsonObjectWriter;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    instance-of v1, p3, Ljava/lang/Number;

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    check-cast p3, Ljava/lang/Number;

    .line 56
    .line 57
    invoke-virtual {p1, p3}, Lio/sentry/JsonObjectWriter;->i(Ljava/lang/Number;)Lio/sentry/JsonObjectWriter;

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    instance-of v1, p3, Ljava/util/Date;

    .line 62
    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    check-cast p3, Ljava/util/Date;

    .line 66
    .line 67
    :try_start_0
    invoke-static {p3}, Lio/sentry/DateUtils;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto/16 :goto_9

    .line 75
    .line 76
    :catch_0
    move-exception p0

    .line 77
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 78
    .line 79
    const-string p3, "Error when serializing Date"

    .line 80
    .line 81
    invoke-interface {p2, p1, p3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->q()V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_9

    .line 88
    .line 89
    :cond_5
    instance-of v1, p3, Ljava/util/TimeZone;

    .line 90
    .line 91
    if-eqz v1, :cond_6

    .line 92
    .line 93
    check-cast p3, Ljava/util/TimeZone;

    .line 94
    .line 95
    :try_start_1
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .line 101
    .line 102
    goto/16 :goto_9

    .line 103
    .line 104
    :catch_1
    move-exception p0

    .line 105
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 106
    .line 107
    const-string p3, "Error when serializing TimeZone"

    .line 108
    .line 109
    invoke-interface {p2, p1, p3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->q()V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_9

    .line 116
    .line 117
    :cond_6
    instance-of v0, p3, Lio/sentry/JsonSerializable;

    .line 118
    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    check-cast p3, Lio/sentry/JsonSerializable;

    .line 122
    .line 123
    invoke-interface {p3, p1, p2}, Lio/sentry/JsonSerializable;->serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_7
    instance-of v0, p3, Ljava/util/Collection;

    .line 128
    .line 129
    if-eqz v0, :cond_8

    .line 130
    .line 131
    check-cast p3, Ljava/util/Collection;

    .line 132
    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_8
    instance-of v0, p3, [Z

    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    if-eqz v0, :cond_a

    .line 141
    .line 142
    new-instance v0, Ljava/util/ArrayList;

    .line 143
    .line 144
    check-cast p3, [Z

    .line 145
    .line 146
    array-length v2, p3

    .line 147
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    .line 149
    .line 150
    array-length v2, p3

    .line 151
    :goto_0
    if-ge v1, v2, :cond_9

    .line 152
    .line 153
    aget-boolean v3, p3, v1

    .line 154
    .line 155
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    add-int/lit8 v1, v1, 0x1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_9
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_a
    instance-of v0, p3, [B

    .line 170
    .line 171
    if-eqz v0, :cond_c

    .line 172
    .line 173
    new-instance v0, Ljava/util/ArrayList;

    .line 174
    .line 175
    check-cast p3, [B

    .line 176
    .line 177
    array-length v2, p3

    .line 178
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 179
    .line 180
    .line 181
    array-length v2, p3

    .line 182
    :goto_1
    if-ge v1, v2, :cond_b

    .line 183
    .line 184
    aget-byte v3, p3, v1

    .line 185
    .line 186
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_b
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :cond_c
    instance-of v0, p3, [S

    .line 201
    .line 202
    if-eqz v0, :cond_e

    .line 203
    .line 204
    new-instance v0, Ljava/util/ArrayList;

    .line 205
    .line 206
    check-cast p3, [S

    .line 207
    .line 208
    array-length v2, p3

    .line 209
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 210
    .line 211
    .line 212
    array-length v2, p3

    .line 213
    :goto_2
    if-ge v1, v2, :cond_d

    .line 214
    .line 215
    aget-short v3, p3, v1

    .line 216
    .line 217
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 225
    .line 226
    goto :goto_2

    .line 227
    :cond_d
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 228
    .line 229
    .line 230
    return-void

    .line 231
    :cond_e
    instance-of v0, p3, [C

    .line 232
    .line 233
    if-eqz v0, :cond_10

    .line 234
    .line 235
    new-instance v0, Ljava/util/ArrayList;

    .line 236
    .line 237
    check-cast p3, [C

    .line 238
    .line 239
    array-length v2, p3

    .line 240
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    .line 242
    .line 243
    array-length v2, p3

    .line 244
    :goto_3
    if-ge v1, v2, :cond_f

    .line 245
    .line 246
    aget-char v3, p3, v1

    .line 247
    .line 248
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    add-int/lit8 v1, v1, 0x1

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_f
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_10
    instance-of v0, p3, [I

    .line 263
    .line 264
    if-eqz v0, :cond_12

    .line 265
    .line 266
    new-instance v0, Ljava/util/ArrayList;

    .line 267
    .line 268
    check-cast p3, [I

    .line 269
    .line 270
    array-length v2, p3

    .line 271
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 272
    .line 273
    .line 274
    array-length v2, p3

    .line 275
    :goto_4
    if-ge v1, v2, :cond_11

    .line 276
    .line 277
    aget v3, p3, v1

    .line 278
    .line 279
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    add-int/lit8 v1, v1, 0x1

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_11
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 290
    .line 291
    .line 292
    return-void

    .line 293
    :cond_12
    instance-of v0, p3, [J

    .line 294
    .line 295
    if-eqz v0, :cond_14

    .line 296
    .line 297
    new-instance v0, Ljava/util/ArrayList;

    .line 298
    .line 299
    check-cast p3, [J

    .line 300
    .line 301
    array-length v2, p3

    .line 302
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .line 304
    .line 305
    array-length v2, p3

    .line 306
    :goto_5
    if-ge v1, v2, :cond_13

    .line 307
    .line 308
    aget-wide v3, p3, v1

    .line 309
    .line 310
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    add-int/lit8 v1, v1, 0x1

    .line 318
    .line 319
    goto :goto_5

    .line 320
    :cond_13
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_14
    instance-of v0, p3, [F

    .line 325
    .line 326
    if-eqz v0, :cond_16

    .line 327
    .line 328
    new-instance v0, Ljava/util/ArrayList;

    .line 329
    .line 330
    check-cast p3, [F

    .line 331
    .line 332
    array-length v2, p3

    .line 333
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 334
    .line 335
    .line 336
    array-length v2, p3

    .line 337
    :goto_6
    if-ge v1, v2, :cond_15

    .line 338
    .line 339
    aget v3, p3, v1

    .line 340
    .line 341
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    add-int/lit8 v1, v1, 0x1

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_15
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :cond_16
    instance-of v0, p3, [D

    .line 356
    .line 357
    if-eqz v0, :cond_18

    .line 358
    .line 359
    new-instance v0, Ljava/util/ArrayList;

    .line 360
    .line 361
    check-cast p3, [D

    .line 362
    .line 363
    array-length v2, p3

    .line 364
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 365
    .line 366
    .line 367
    array-length v2, p3

    .line 368
    :goto_7
    if-ge v1, v2, :cond_17

    .line 369
    .line 370
    aget-wide v3, p3, v1

    .line 371
    .line 372
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    add-int/lit8 v1, v1, 0x1

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_17
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :cond_18
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_19

    .line 395
    .line 396
    check-cast p3, [Ljava/lang/Object;

    .line 397
    .line 398
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object p3

    .line 402
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 403
    .line 404
    .line 405
    return-void

    .line 406
    :cond_19
    instance-of v0, p3, Ljava/util/Map;

    .line 407
    .line 408
    if-eqz v0, :cond_1a

    .line 409
    .line 410
    check-cast p3, Ljava/util/Map;

    .line 411
    .line 412
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->c(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Map;)V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :cond_1a
    instance-of v0, p3, Ljava/util/Locale;

    .line 417
    .line 418
    if-eqz v0, :cond_1b

    .line 419
    .line 420
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p0

    .line 424
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :cond_1b
    instance-of v0, p3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 429
    .line 430
    if-eqz v0, :cond_1d

    .line 431
    .line 432
    check-cast p3, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 433
    .line 434
    sget-object v0, Lio/sentry/util/JsonSerializationUtils;->a:Ljava/nio/charset/Charset;

    .line 435
    .line 436
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->length()I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    new-instance v2, Ljava/util/ArrayList;

    .line 441
    .line 442
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 443
    .line 444
    .line 445
    :goto_8
    if-ge v1, v0, :cond_1c

    .line 446
    .line 447
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;->get(I)I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 452
    .line 453
    .line 454
    move-result-object v3

    .line 455
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .line 457
    .line 458
    add-int/lit8 v1, v1, 0x1

    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_1c
    invoke-virtual {p0, p1, p2, v2}, Lio/sentry/JsonObjectSerializer;->b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V

    .line 462
    .line 463
    .line 464
    return-void

    .line 465
    :cond_1d
    instance-of v0, p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 466
    .line 467
    if-eqz v0, :cond_1e

    .line 468
    .line 469
    check-cast p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 470
    .line 471
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 472
    .line 473
    .line 474
    move-result p0

    .line 475
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->k(Z)Lio/sentry/JsonObjectWriter;

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :cond_1e
    instance-of v0, p3, Ljava/net/URI;

    .line 480
    .line 481
    if-eqz v0, :cond_1f

    .line 482
    .line 483
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object p0

    .line 487
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :cond_1f
    instance-of v0, p3, Ljava/net/InetAddress;

    .line 492
    .line 493
    if-eqz v0, :cond_20

    .line 494
    .line 495
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object p0

    .line 499
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 500
    .line 501
    .line 502
    return-void

    .line 503
    :cond_20
    instance-of v0, p3, Ljava/util/UUID;

    .line 504
    .line 505
    if-eqz v0, :cond_21

    .line 506
    .line 507
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object p0

    .line 511
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 512
    .line 513
    .line 514
    return-void

    .line 515
    :cond_21
    instance-of v0, p3, Ljava/util/Currency;

    .line 516
    .line 517
    if-eqz v0, :cond_22

    .line 518
    .line 519
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object p0

    .line 523
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 524
    .line 525
    .line 526
    return-void

    .line 527
    :cond_22
    instance-of v0, p3, Ljava/util/Calendar;

    .line 528
    .line 529
    if-eqz v0, :cond_23

    .line 530
    .line 531
    check-cast p3, Ljava/util/Calendar;

    .line 532
    .line 533
    invoke-static {p3}, Lio/sentry/util/JsonSerializationUtils;->a(Ljava/util/Calendar;)Ljava/util/HashMap;

    .line 534
    .line 535
    .line 536
    move-result-object p3

    .line 537
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->c(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Map;)V

    .line 538
    .line 539
    .line 540
    return-void

    .line 541
    :cond_23
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    .line 546
    .line 547
    .line 548
    move-result v0

    .line 549
    if-eqz v0, :cond_24

    .line 550
    .line 551
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object p0

    .line 555
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 556
    .line 557
    .line 558
    return-void

    .line 559
    :cond_24
    :try_start_2
    iget-object v0, p0, Lio/sentry/JsonObjectSerializer;->a:Lio/sentry/JsonReflectionObjectSerializer;

    .line 560
    .line 561
    invoke-virtual {v0, p2, p3}, Lio/sentry/JsonReflectionObjectSerializer;->b(Lio/sentry/ILogger;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object p3

    .line 565
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/JsonObjectSerializer;->a(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 566
    .line 567
    .line 568
    return-void

    .line 569
    :catch_2
    move-exception p0

    .line 570
    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 571
    .line 572
    const-string v0, "Failed serializing unknown object."

    .line 573
    .line 574
    invoke-interface {p2, p3, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 575
    .line 576
    .line 577
    const-string p0, "[OBJECT]"

    .line 578
    .line 579
    invoke-virtual {p1, p0}, Lio/sentry/JsonObjectWriter;->j(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 580
    .line 581
    .line 582
    :goto_9
    return-void
.end method

.method public final b(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Collection;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lio/sentry/JsonObjectWriter;->a:Lio/sentry/vendor/gson/stream/JsonWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->A()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/JsonWriter;->a()V

    .line 7
    .line 8
    .line 9
    iget v1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->l:I

    .line 10
    .line 11
    iget-object v2, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->k:[I

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, 0x2

    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    mul-int/2addr v1, v4

    .line 18
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->k:[I

    .line 23
    .line 24
    :cond_0
    iget-object v1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->k:[I

    .line 25
    .line 26
    iget v2, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->l:I

    .line 27
    .line 28
    add-int/lit8 v3, v2, 0x1

    .line 29
    .line 30
    iput v3, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->l:I

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    aput v3, v1, v2

    .line 34
    .line 35
    iget-object v1, v0, Lio/sentry/vendor/gson/stream/JsonWriter;->j:Ljava/io/Writer;

    .line 36
    .line 37
    const/16 v2, 0x5b

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0, p1, p2, v1}, Lio/sentry/JsonObjectSerializer;->a(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/16 p0, 0x5d

    .line 61
    .line 62
    invoke-virtual {v0, v3, v4, p0}, Lio/sentry/vendor/gson/stream/JsonWriter;->h(IIC)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final c(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/util/Map;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->a()Lio/sentry/JsonObjectWriter;

    .line 2
    .line 3
    .line 4
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    instance-of v2, v1, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    move-object v2, v1

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Lio/sentry/JsonObjectWriter;->c(Ljava/lang/String;)Lio/sentry/JsonObjectWriter;

    .line 30
    .line 31
    .line 32
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, p1, p2, v1}, Lio/sentry/JsonObjectSerializer;->a(Lio/sentry/JsonObjectWriter;Lio/sentry/ILogger;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lio/sentry/JsonObjectWriter;->b()Lio/sentry/JsonObjectWriter;

    .line 41
    .line 42
    .line 43
    return-void
.end method
