.class public final Lio/sentry/protocol/Contexts$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/protocol/Contexts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/protocol/Contexts;",
        ">;"
    }
.end annotation


# direct methods
.method public static b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Contexts;
    .locals 12

    .line 1
    new-instance v0, Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 7
    .line 8
    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 14
    .line 15
    if-ne v1, v2, :cond_1d

    .line 16
    .line 17
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x4

    .line 29
    const-string v4, "feedback"

    .line 30
    .line 31
    const/4 v5, 0x3

    .line 32
    const-string v6, "profile"

    .line 33
    .line 34
    const/4 v7, 0x2

    .line 35
    const/4 v8, 0x1

    .line 36
    const/4 v9, 0x0

    .line 37
    const/4 v10, -0x1

    .line 38
    sparse-switch v2, :sswitch_data_0

    .line 39
    .line 40
    .line 41
    :goto_1
    move v2, v10

    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :sswitch_0
    const-string v2, "runtime"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/16 v2, 0xb

    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :sswitch_1
    const-string v2, "browser"

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/16 v2, 0xa

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :sswitch_2
    const-string v2, "trace"

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    const/16 v2, 0x9

    .line 80
    .line 81
    goto/16 :goto_2

    .line 82
    .line 83
    :sswitch_3
    const-string v2, "flags"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/16 v2, 0x8

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :sswitch_4
    const-string v2, "gpu"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    const/4 v2, 0x7

    .line 106
    goto :goto_2

    .line 107
    :sswitch_5
    const-string v2, "app"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_6

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    const/4 v2, 0x6

    .line 117
    goto :goto_2

    .line 118
    :sswitch_6
    const-string v2, "os"

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_7

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_7
    const/4 v2, 0x5

    .line 128
    goto :goto_2

    .line 129
    :sswitch_7
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_8

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    move v2, v3

    .line 137
    goto :goto_2

    .line 138
    :sswitch_8
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_9

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_9
    move v2, v5

    .line 146
    goto :goto_2

    .line 147
    :sswitch_9
    const-string v2, "response"

    .line 148
    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    if-nez v2, :cond_a

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_a
    move v2, v7

    .line 157
    goto :goto_2

    .line 158
    :sswitch_a
    const-string v2, "spring"

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-nez v2, :cond_b

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_b
    move v2, v8

    .line 168
    goto :goto_2

    .line 169
    :sswitch_b
    const-string v2, "device"

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-nez v2, :cond_c

    .line 176
    .line 177
    goto/16 :goto_1

    .line 178
    .line 179
    :cond_c
    move v2, v9

    .line 180
    :goto_2
    const/4 v11, 0x0

    .line 181
    packed-switch v2, :pswitch_data_0

    .line 182
    .line 183
    .line 184
    invoke-interface {p0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    if-eqz v2, :cond_0

    .line 189
    .line 190
    invoke-virtual {v0, v2, v1}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :pswitch_0
    invoke-static {p0, p1}, Lio/sentry/protocol/SentryRuntime$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/SentryRuntime;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->t(Lio/sentry/protocol/SentryRuntime;)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_0

    .line 203
    .line 204
    :pswitch_1
    invoke-static {p0, p1}, Lio/sentry/protocol/Browser$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Browser;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->n(Lio/sentry/protocol/Browser;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_0

    .line 212
    .line 213
    :pswitch_2
    invoke-static {p0, p1}, Lio/sentry/SpanContext$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/SpanContext;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->v(Lio/sentry/SpanContext;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :pswitch_3
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 223
    .line 224
    .line 225
    move-object v1, v11

    .line 226
    :goto_3
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 231
    .line 232
    if-ne v2, v3, :cond_f

    .line 233
    .line 234
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    const-string v3, "values"

    .line 242
    .line 243
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    if-nez v3, :cond_e

    .line 248
    .line 249
    if-nez v1, :cond_d

    .line 250
    .line 251
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 252
    .line 253
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 254
    .line 255
    .line 256
    :cond_d
    invoke-interface {p0, p1, v1, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    goto :goto_3

    .line 260
    :cond_e
    new-instance v2, Lio/sentry/protocol/FeatureFlag$Deserializer;

    .line 261
    .line 262
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 263
    .line 264
    .line 265
    invoke-interface {p0, p1, v2}, Lio/sentry/ObjectReader;->R0(Lio/sentry/ILogger;Lio/sentry/JsonDeserializer;)Ljava/util/ArrayList;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    move-object v11, v2

    .line 270
    goto :goto_3

    .line 271
    :cond_f
    if-nez v11, :cond_10

    .line 272
    .line 273
    new-instance v11, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .line 277
    .line 278
    :cond_10
    new-instance v2, Lio/sentry/protocol/FeatureFlags;

    .line 279
    .line 280
    invoke-direct {v2, v11}, Lio/sentry/protocol/FeatureFlags;-><init>(Ljava/util/List;)V

    .line 281
    .line 282
    .line 283
    iput-object v1, v2, Lio/sentry/protocol/FeatureFlags;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 284
    .line 285
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v2}, Lio/sentry/protocol/Contexts;->p(Lio/sentry/protocol/FeatureFlags;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :pswitch_4
    invoke-static {p0, p1}, Lio/sentry/protocol/Gpu$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Gpu;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->q(Lio/sentry/protocol/Gpu;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :pswitch_5
    invoke-static {p0, p1}, Lio/sentry/protocol/App$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/App;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->m(Lio/sentry/protocol/App;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_0

    .line 310
    .line 311
    :pswitch_6
    invoke-static {p0, p1}, Lio/sentry/protocol/OperatingSystem$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/OperatingSystem;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->r(Lio/sentry/protocol/OperatingSystem;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_0

    .line 319
    .line 320
    :pswitch_7
    invoke-static {p0, p1}, Lio/sentry/protocol/Feedback$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Feedback;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v0, v1, v4}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :pswitch_8
    invoke-static {p0, p1}, Lio/sentry/ProfileContext$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/ProfileContext;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-virtual {v0, v1, v6}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    goto/16 :goto_0

    .line 337
    .line 338
    :pswitch_9
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 339
    .line 340
    .line 341
    new-instance v1, Lio/sentry/protocol/Response;

    .line 342
    .line 343
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 344
    .line 345
    .line 346
    :cond_11
    :goto_4
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 351
    .line 352
    if-ne v2, v4, :cond_18

    .line 353
    .line 354
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    sparse-switch v4, :sswitch_data_1

    .line 366
    .line 367
    .line 368
    :goto_5
    move v4, v10

    .line 369
    goto :goto_6

    .line 370
    :sswitch_c
    const-string v4, "body_size"

    .line 371
    .line 372
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    if-nez v4, :cond_12

    .line 377
    .line 378
    goto :goto_5

    .line 379
    :cond_12
    move v4, v3

    .line 380
    goto :goto_6

    .line 381
    :sswitch_d
    const-string v4, "cookies"

    .line 382
    .line 383
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    if-nez v4, :cond_13

    .line 388
    .line 389
    goto :goto_5

    .line 390
    :cond_13
    move v4, v5

    .line 391
    goto :goto_6

    .line 392
    :sswitch_e
    const-string v4, "headers"

    .line 393
    .line 394
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v4

    .line 398
    if-nez v4, :cond_14

    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_14
    move v4, v7

    .line 402
    goto :goto_6

    .line 403
    :sswitch_f
    const-string v4, "data"

    .line 404
    .line 405
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v4

    .line 409
    if-nez v4, :cond_15

    .line 410
    .line 411
    goto :goto_5

    .line 412
    :cond_15
    move v4, v8

    .line 413
    goto :goto_6

    .line 414
    :sswitch_10
    const-string v4, "status_code"

    .line 415
    .line 416
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    move-result v4

    .line 420
    if-nez v4, :cond_16

    .line 421
    .line 422
    goto :goto_5

    .line 423
    :cond_16
    move v4, v9

    .line 424
    :goto_6
    packed-switch v4, :pswitch_data_1

    .line 425
    .line 426
    .line 427
    if-nez v11, :cond_17

    .line 428
    .line 429
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap;

    .line 430
    .line 431
    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 432
    .line 433
    .line 434
    :cond_17
    invoke-interface {p0, p1, v11, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    goto :goto_4

    .line 438
    :pswitch_a
    invoke-interface {p0}, Lio/sentry/ObjectReader;->F()Ljava/lang/Long;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    iput-object v2, v1, Lio/sentry/protocol/Response;->m:Ljava/lang/Long;

    .line 443
    .line 444
    goto :goto_4

    .line 445
    :pswitch_b
    invoke-interface {p0}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v2

    .line 449
    iput-object v2, v1, Lio/sentry/protocol/Response;->j:Ljava/lang/String;

    .line 450
    .line 451
    goto :goto_4

    .line 452
    :pswitch_c
    invoke-interface {p0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    check-cast v2, Ljava/util/Map;

    .line 457
    .line 458
    if-eqz v2, :cond_11

    .line 459
    .line 460
    invoke-static {v2}, Lio/sentry/util/CollectionUtils;->a(Ljava/util/Map;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    iput-object v2, v1, Lio/sentry/protocol/Response;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 465
    .line 466
    goto :goto_4

    .line 467
    :pswitch_d
    invoke-interface {p0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    iput-object v2, v1, Lio/sentry/protocol/Response;->n:Ljava/lang/Object;

    .line 472
    .line 473
    goto :goto_4

    .line 474
    :pswitch_e
    invoke-interface {p0}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    iput-object v2, v1, Lio/sentry/protocol/Response;->l:Ljava/lang/Integer;

    .line 479
    .line 480
    goto/16 :goto_4

    .line 481
    .line 482
    :cond_18
    iput-object v11, v1, Lio/sentry/protocol/Response;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 483
    .line 484
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->s(Lio/sentry/protocol/Response;)V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_0

    .line 491
    .line 492
    :pswitch_f
    invoke-interface {p0}, Lio/sentry/ObjectReader;->H0()V

    .line 493
    .line 494
    .line 495
    new-instance v1, Lio/sentry/protocol/Spring;

    .line 496
    .line 497
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 498
    .line 499
    .line 500
    :cond_19
    :goto_7
    invoke-interface {p0}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    sget-object v3, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 505
    .line 506
    if-ne v2, v3, :cond_1c

    .line 507
    .line 508
    invoke-interface {p0}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 513
    .line 514
    .line 515
    const-string v3, "active_profiles"

    .line 516
    .line 517
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v3

    .line 521
    if-nez v3, :cond_1b

    .line 522
    .line 523
    if-nez v11, :cond_1a

    .line 524
    .line 525
    new-instance v11, Ljava/util/concurrent/ConcurrentHashMap;

    .line 526
    .line 527
    invoke-direct {v11}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 528
    .line 529
    .line 530
    :cond_1a
    invoke-interface {p0, p1, v11, v2}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 531
    .line 532
    .line 533
    goto :goto_7

    .line 534
    :cond_1b
    invoke-interface {p0}, Lio/sentry/ObjectReader;->G0()Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    check-cast v2, Ljava/util/List;

    .line 539
    .line 540
    if-eqz v2, :cond_19

    .line 541
    .line 542
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    new-array v3, v3, [Ljava/lang/String;

    .line 547
    .line 548
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    iput-object v3, v1, Lio/sentry/protocol/Spring;->j:[Ljava/lang/String;

    .line 552
    .line 553
    goto :goto_7

    .line 554
    :cond_1c
    iput-object v11, v1, Lio/sentry/protocol/Spring;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 555
    .line 556
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->u(Lio/sentry/protocol/Spring;)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_0

    .line 563
    .line 564
    :pswitch_10
    invoke-static {p0, p1}, Lio/sentry/protocol/Device$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Device;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->o(Lio/sentry/protocol/Device;)V

    .line 569
    .line 570
    .line 571
    goto/16 :goto_0

    .line 572
    .line 573
    :cond_1d
    invoke-interface {p0}, Lio/sentry/ObjectReader;->i0()V

    .line 574
    .line 575
    .line 576
    return-object v0

    .line 577
    :sswitch_data_0
    .sparse-switch
        -0x4f94e1aa -> :sswitch_b
        -0x3562fdf3 -> :sswitch_a
        -0x1448ebbf -> :sswitch_9
        -0x12717657 -> :sswitch_8
        -0xb6a147b -> :sswitch_7
        0xde4 -> :sswitch_6
        0x17a21 -> :sswitch_5
        0x190ac -> :sswitch_4
        0x5cfee87 -> :sswitch_3
        0x697f145 -> :sswitch_2
        0x8ff2b28 -> :sswitch_1
        0x5c71cfd8 -> :sswitch_0
    .end sparse-switch

    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
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

    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    :sswitch_data_1
    .sparse-switch
        -0x352641e6 -> :sswitch_10
        0x2eefaa -> :sswitch_f
        0x2f676f86 -> :sswitch_e
        0x38c1428f -> :sswitch_d
        0x4aaf147e -> :sswitch_c
    .end sparse-switch

    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/protocol/Contexts$Deserializer;->b(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
