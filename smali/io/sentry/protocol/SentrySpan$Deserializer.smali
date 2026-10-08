.class public final Lio/sentry/protocol/SentrySpan$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/SentrySpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/SentrySpan;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;
    .locals 2

    .line 1
    const-string v0, "Missing required field \""

    .line 2
    .line 3
    const-string v1, "\""

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lq;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 15
    .line 16
    invoke-interface {p1, v1, p0, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-interface {v0}, Lio/sentry/ObjectReader;->H0()V

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v8, 0x0

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x0

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    const/4 v13, 0x0

    .line 19
    const/4 v14, 0x0

    .line 20
    const/4 v15, 0x0

    .line 21
    :goto_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object/from16 v16, v3

    .line 26
    .line 27
    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 28
    .line 29
    move-object/from16 v17, v4

    .line 30
    .line 31
    const-string v4, "trace_id"

    .line 32
    .line 33
    move-object/from16 v18, v5

    .line 34
    .line 35
    const-string v5, "op"

    .line 36
    .line 37
    move-object/from16 v19, v6

    .line 38
    .line 39
    const-string v6, "start_timestamp"

    .line 40
    .line 41
    move-object/from16 v20, v7

    .line 42
    .line 43
    const-string v7, "span_id"

    .line 44
    .line 45
    if-ne v2, v3, :cond_f

    .line 46
    .line 47
    invoke-interface {v0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    const/16 v21, -0x1

    .line 59
    .line 60
    sparse-switch v3, :sswitch_data_0

    .line 61
    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :sswitch_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_0

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_0
    const/16 v21, 0xb

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :sswitch_1
    const-string v3, "timestamp"

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_1

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_1
    const/16 v21, 0xa

    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :sswitch_2
    const-string v3, "tags"

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_2

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_2
    const/16 v21, 0x9

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :sswitch_3
    const-string v3, "data"

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-nez v3, :cond_3

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_3
    const/16 v21, 0x8

    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :sswitch_4
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-nez v3, :cond_4

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_4
    const/16 v21, 0x7

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :sswitch_5
    const-string v3, "measurements"

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_5

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    const/16 v21, 0x6

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :sswitch_6
    const-string v3, "status"

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_6

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    const/16 v21, 0x5

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :sswitch_7
    const-string v3, "origin"

    .line 154
    .line 155
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-nez v3, :cond_7

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_7
    const/16 v21, 0x4

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :sswitch_8
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-nez v3, :cond_8

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_8
    const/16 v21, 0x3

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :sswitch_9
    const-string v3, "description"

    .line 176
    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-nez v3, :cond_9

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_9
    const/16 v21, 0x2

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :sswitch_a
    const-string v3, "parent_span_id"

    .line 188
    .line 189
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-nez v3, :cond_a

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_a
    const/16 v21, 0x1

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :sswitch_b
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    if-nez v3, :cond_b

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_b
    const/16 v21, 0x0

    .line 207
    .line 208
    :goto_1
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    packed-switch v21, :pswitch_data_0

    .line 214
    .line 215
    .line 216
    if-nez v16, :cond_c

    .line 217
    .line 218
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 219
    .line 220
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_c
    move-object/from16 v3, v16

    .line 225
    .line 226
    :goto_2
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    :goto_3
    move-object/from16 v4, v17

    .line 230
    .line 231
    :goto_4
    move-object/from16 v5, v18

    .line 232
    .line 233
    :goto_5
    move-object/from16 v6, v19

    .line 234
    .line 235
    :goto_6
    move-object/from16 v7, v20

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :pswitch_0
    invoke-static {v0}, Lio/sentry/protocol/SentryId$Deserializer;->b(Lio/sentry/ObjectReader;)Lio/sentry/protocol/SentryId;

    .line 240
    .line 241
    .line 242
    move-result-object v6

    .line 243
    move-object/from16 v3, v16

    .line 244
    .line 245
    move-object/from16 v4, v17

    .line 246
    .line 247
    move-object/from16 v5, v18

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :pswitch_1
    :try_start_0
    invoke-interface {v0}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 251
    .line 252
    .line 253
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_7
    move-object/from16 v3, v16

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :catch_0
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    if-eqz v2, :cond_d

    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 264
    .line 265
    .line 266
    move-result-wide v5

    .line 267
    long-to-double v5, v5

    .line 268
    div-double/2addr v5, v3

    .line 269
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    move-object v10, v2

    .line 274
    goto :goto_7

    .line 275
    :cond_d
    const/4 v10, 0x0

    .line 276
    goto :goto_7

    .line 277
    :pswitch_2
    invoke-interface {v0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    move-object v5, v2

    .line 282
    check-cast v5, Ljava/util/Map;

    .line 283
    .line 284
    move-object/from16 v3, v16

    .line 285
    .line 286
    move-object/from16 v4, v17

    .line 287
    .line 288
    goto :goto_5

    .line 289
    :pswitch_3
    invoke-interface {v0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    move-object v15, v2

    .line 294
    check-cast v15, Ljava/util/Map;

    .line 295
    .line 296
    goto :goto_7

    .line 297
    :pswitch_4
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v9

    .line 301
    goto :goto_7

    .line 302
    :pswitch_5
    new-instance v2, Lio/sentry/protocol/MeasurementValue$Deserializer;

    .line 303
    .line 304
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 305
    .line 306
    .line 307
    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectReader;->Q(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/HashMap;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    goto :goto_7

    .line 312
    :pswitch_6
    new-instance v2, Lio/sentry/SpanStatus$Deserializer;

    .line 313
    .line 314
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    move-object v13, v2

    .line 322
    check-cast v13, Lio/sentry/SpanStatus;

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :pswitch_7
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v14

    .line 329
    goto :goto_7

    .line 330
    :pswitch_8
    :try_start_1
    invoke-interface {v0}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 331
    .line 332
    .line 333
    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    :goto_8
    move-object/from16 v3, v16

    .line 335
    .line 336
    goto :goto_4

    .line 337
    :catch_1
    invoke-interface/range {p1 .. p2}, Lio/sentry/ObjectReader;->k0(Lio/sentry/ILogger;)Ljava/util/Date;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    if-eqz v2, :cond_e

    .line 342
    .line 343
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 344
    .line 345
    .line 346
    move-result-wide v5

    .line 347
    long-to-double v5, v5

    .line 348
    div-double/2addr v5, v3

    .line 349
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    move-object v4, v2

    .line 354
    goto :goto_8

    .line 355
    :cond_e
    const/4 v4, 0x0

    .line 356
    goto :goto_8

    .line 357
    :pswitch_9
    invoke-interface {v0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v12

    .line 361
    goto :goto_7

    .line 362
    :pswitch_a
    new-instance v2, Lio/sentry/SpanId$Deserializer;

    .line 363
    .line 364
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-interface {v0, v1, v2}, Lio/sentry/ObjectReader;->z0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    move-object v11, v2

    .line 372
    check-cast v11, Lio/sentry/SpanId;

    .line 373
    .line 374
    goto :goto_7

    .line 375
    :pswitch_b
    new-instance v7, Lio/sentry/SpanId;

    .line 376
    .line 377
    invoke-interface {v0}, Lio/sentry/ObjectReader;->r()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    invoke-direct {v7, v2}, Lio/sentry/SpanId;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    move-object/from16 v3, v16

    .line 385
    .line 386
    move-object/from16 v4, v17

    .line 387
    .line 388
    move-object/from16 v5, v18

    .line 389
    .line 390
    move-object/from16 v6, v19

    .line 391
    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :cond_f
    if-eqz v17, :cond_15

    .line 395
    .line 396
    if-eqz v19, :cond_14

    .line 397
    .line 398
    if-eqz v20, :cond_13

    .line 399
    .line 400
    if-eqz v9, :cond_12

    .line 401
    .line 402
    if-nez v18, :cond_10

    .line 403
    .line 404
    new-instance v5, Ljava/util/HashMap;

    .line 405
    .line 406
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 407
    .line 408
    .line 409
    goto :goto_9

    .line 410
    :cond_10
    move-object/from16 v5, v18

    .line 411
    .line 412
    :goto_9
    if-nez v8, :cond_11

    .line 413
    .line 414
    new-instance v8, Ljava/util/HashMap;

    .line 415
    .line 416
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 417
    .line 418
    .line 419
    :cond_11
    new-instance v3, Lio/sentry/protocol/SentrySpan;

    .line 420
    .line 421
    move-object v2, v13

    .line 422
    move-object v13, v5

    .line 423
    move-object v5, v10

    .line 424
    move-object v10, v12

    .line 425
    move-object v12, v14

    .line 426
    move-object v14, v8

    .line 427
    move-object v8, v11

    .line 428
    move-object v11, v2

    .line 429
    move-object/from16 v2, v16

    .line 430
    .line 431
    move-object/from16 v4, v17

    .line 432
    .line 433
    move-object/from16 v6, v19

    .line 434
    .line 435
    move-object/from16 v7, v20

    .line 436
    .line 437
    invoke-direct/range {v3 .. v15}, Lio/sentry/protocol/SentrySpan;-><init>(Ljava/lang/Double;Ljava/lang/Double;Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanStatus;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 438
    .line 439
    .line 440
    iput-object v2, v3, Lio/sentry/protocol/SentrySpan;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 441
    .line 442
    invoke-interface {v0}, Lio/sentry/ObjectReader;->i0()V

    .line 443
    .line 444
    .line 445
    return-object v3

    .line 446
    :cond_12
    invoke-static {v5, v1}, Lio/sentry/protocol/SentrySpan$Deserializer;->b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    throw v0

    .line 451
    :cond_13
    invoke-static {v7, v1}, Lio/sentry/protocol/SentrySpan$Deserializer;->b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    throw v0

    .line 456
    :cond_14
    invoke-static {v4, v1}, Lio/sentry/protocol/SentrySpan$Deserializer;->b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    throw v0

    .line 461
    :cond_15
    invoke-static {v6, v1}, Lio/sentry/protocol/SentrySpan$Deserializer;->b(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/IllegalStateException;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    throw v0

    .line 466
    nop

    .line 467
    :sswitch_data_0
    .sparse-switch
        -0x77ea41d0 -> :sswitch_b
        -0x68c5dc65 -> :sswitch_a
        -0x66ca7c04 -> :sswitch_9
        -0x5b03aa87 -> :sswitch_8
        -0x3c1e50da -> :sswitch_7
        -0x3532300e -> :sswitch_6
        -0x159763c9 -> :sswitch_5
        0xde1 -> :sswitch_4
        0x2eefaa -> :sswitch_3
        0x363419 -> :sswitch_2
        0x3492916 -> :sswitch_1
        0x4bb73e55 -> :sswitch_0
    .end sparse-switch

    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
