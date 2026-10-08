.class public final Lio/sentry/SentryAppStartProfilingOptions$Deserializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryAppStartProfilingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Deserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/sentry/JsonDeserializer<",
        "Lio/sentry/SentryAppStartProfilingOptions;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lio/sentry/ObjectReader;Lio/sentry/ILogger;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->H0()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lio/sentry/SentryAppStartProfilingOptions;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->l:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->m:Ljava/lang/Double;

    .line 14
    .line 15
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->j:Z

    .line 16
    .line 17
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->k:Ljava/lang/Double;

    .line 18
    .line 19
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->r:Z

    .line 20
    .line 21
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->n:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->o:Z

    .line 24
    .line 25
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->p:Z

    .line 26
    .line 27
    sget-object v2, Lio/sentry/ProfileLifecycle;->MANUAL:Lio/sentry/ProfileLifecycle;

    .line 28
    .line 29
    iput-object v2, p0, Lio/sentry/SentryAppStartProfilingOptions;->u:Lio/sentry/ProfileLifecycle;

    .line 30
    .line 31
    iput v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->q:I

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    iput-boolean v2, p0, Lio/sentry/SentryAppStartProfilingOptions;->s:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lio/sentry/SentryAppStartProfilingOptions;->t:Z

    .line 37
    .line 38
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    sget-object v4, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    .line 43
    .line 44
    if-ne v3, v4, :cond_e

    .line 45
    .line 46
    invoke-interface {p1}, Lio/sentry/ObjectReader;->e0()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/4 v5, -0x1

    .line 58
    sparse-switch v4, :sswitch_data_0

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :sswitch_0
    const-string v4, "profile_sample_rate"

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_1

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_1
    const/16 v5, 0xb

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :sswitch_1
    const-string v4, "trace_sample_rate"

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-nez v4, :cond_2

    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_2
    const/16 v5, 0xa

    .line 88
    .line 89
    goto/16 :goto_1

    .line 90
    .line 91
    :sswitch_2
    const-string v4, "profiling_traces_hz"

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_3

    .line 98
    .line 99
    goto/16 :goto_1

    .line 100
    .line 101
    :cond_3
    const/16 v5, 0x9

    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :sswitch_3
    const-string v4, "continuous_profile_sampled"

    .line 106
    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_4

    .line 112
    .line 113
    goto/16 :goto_1

    .line 114
    .line 115
    :cond_4
    const/16 v5, 0x8

    .line 116
    .line 117
    goto/16 :goto_1

    .line 118
    .line 119
    :sswitch_4
    const-string v4, "profile_lifecycle"

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-nez v4, :cond_5

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_5
    const/4 v5, 0x7

    .line 129
    goto :goto_1

    .line 130
    :sswitch_5
    const-string v4, "profile_sampled"

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    if-nez v4, :cond_6

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_6
    const/4 v5, 0x6

    .line 140
    goto :goto_1

    .line 141
    :sswitch_6
    const-string v4, "is_start_profiler_on_app_start"

    .line 142
    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-nez v4, :cond_7

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_7
    const/4 v5, 0x5

    .line 151
    goto :goto_1

    .line 152
    :sswitch_7
    const-string v4, "is_profiling_enabled"

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_8

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_8
    const/4 v5, 0x4

    .line 162
    goto :goto_1

    .line 163
    :sswitch_8
    const-string v4, "is_continuous_profiling_enabled"

    .line 164
    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_9

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_9
    const/4 v5, 0x3

    .line 173
    goto :goto_1

    .line 174
    :sswitch_9
    const-string v4, "profiling_traces_dir_path"

    .line 175
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-nez v4, :cond_a

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_a
    const/4 v5, 0x2

    .line 184
    goto :goto_1

    .line 185
    :sswitch_a
    const-string v4, "trace_sampled"

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-nez v4, :cond_b

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_b
    move v5, v2

    .line 195
    goto :goto_1

    .line 196
    :sswitch_b
    const-string v4, "is_enable_app_start_profiling"

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    if-nez v4, :cond_c

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_c
    move v5, v0

    .line 206
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 207
    .line 208
    .line 209
    if-nez v1, :cond_d

    .line 210
    .line 211
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 212
    .line 213
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 214
    .line 215
    .line 216
    :cond_d
    invoke-interface {p1, p2, v1, v3}, Lio/sentry/ObjectReader;->D(Lio/sentry/ILogger;Ljava/util/AbstractMap;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :pswitch_0
    invoke-interface {p1}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    if-eqz v3, :cond_0

    .line 226
    .line 227
    iput-object v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->k:Ljava/lang/Double;

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :pswitch_1
    invoke-interface {p1}, Lio/sentry/ObjectReader;->c0()Ljava/lang/Double;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    if-eqz v3, :cond_0

    .line 236
    .line 237
    iput-object v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->m:Ljava/lang/Double;

    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :pswitch_2
    invoke-interface {p1}, Lio/sentry/ObjectReader;->y()Ljava/lang/Integer;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    if-eqz v3, :cond_0

    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    iput v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->q:I

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :pswitch_3
    invoke-interface {p1}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    if-eqz v3, :cond_0

    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    iput-boolean v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->r:Z

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :pswitch_4
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    if-eqz v3, :cond_0

    .line 274
    .line 275
    :try_start_0
    invoke-static {v3}, Lio/sentry/ProfileLifecycle;->valueOf(Ljava/lang/String;)Lio/sentry/ProfileLifecycle;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    iput-object v4, p0, Lio/sentry/SentryAppStartProfilingOptions;->u:Lio/sentry/ProfileLifecycle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :catch_0
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 284
    .line 285
    const-string v5, "Error when deserializing ProfileLifecycle: "

    .line 286
    .line 287
    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    new-array v5, v0, [Ljava/lang/Object;

    .line 292
    .line 293
    invoke-interface {p2, v4, v3, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_0

    .line 297
    .line 298
    :pswitch_5
    invoke-interface {p1}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    if-eqz v3, :cond_0

    .line 303
    .line 304
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    iput-boolean v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->j:Z

    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :pswitch_6
    invoke-interface {p1}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    if-eqz v3, :cond_0

    .line 317
    .line 318
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 319
    .line 320
    .line 321
    move-result v3

    .line 322
    iput-boolean v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->t:Z

    .line 323
    .line 324
    goto/16 :goto_0

    .line 325
    .line 326
    :pswitch_7
    invoke-interface {p1}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    if-eqz v3, :cond_0

    .line 331
    .line 332
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    iput-boolean v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->o:Z

    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :pswitch_8
    invoke-interface {p1}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    if-eqz v3, :cond_0

    .line 345
    .line 346
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    iput-boolean v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->p:Z

    .line 351
    .line 352
    goto/16 :goto_0

    .line 353
    .line 354
    :pswitch_9
    invoke-interface {p1}, Lio/sentry/ObjectReader;->L()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v3

    .line 358
    if-eqz v3, :cond_0

    .line 359
    .line 360
    iput-object v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->n:Ljava/lang/String;

    .line 361
    .line 362
    goto/16 :goto_0

    .line 363
    .line 364
    :pswitch_a
    invoke-interface {p1}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    if-eqz v3, :cond_0

    .line 369
    .line 370
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    iput-boolean v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->l:Z

    .line 375
    .line 376
    goto/16 :goto_0

    .line 377
    .line 378
    :pswitch_b
    invoke-interface {p1}, Lio/sentry/ObjectReader;->n0()Ljava/lang/Boolean;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    if-eqz v3, :cond_0

    .line 383
    .line 384
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    iput-boolean v3, p0, Lio/sentry/SentryAppStartProfilingOptions;->s:Z

    .line 389
    .line 390
    goto/16 :goto_0

    .line 391
    .line 392
    :cond_e
    iput-object v1, p0, Lio/sentry/SentryAppStartProfilingOptions;->v:Ljava/util/concurrent/ConcurrentHashMap;

    .line 393
    .line 394
    invoke-interface {p1}, Lio/sentry/ObjectReader;->i0()V

    .line 395
    .line 396
    .line 397
    return-object p0

    .line 398
    nop

    .line 399
    :sswitch_data_0
    .sparse-switch
        -0x2fc0721c -> :sswitch_b
        -0x21c03d00 -> :sswitch_a
        -0x1ad38c31 -> :sswitch_9
        -0x1a0bb613 -> :sswitch_8
        -0x6f7b3ad -> :sswitch_7
        -0x63526b8 -> :sswitch_6
        -0x426489c -> :sswitch_5
        0x17ed2c54 -> :sswitch_4
        0x5381e234 -> :sswitch_3
        0x5e67e24a -> :sswitch_2
        0x62951a5b -> :sswitch_1
        0x7f963cbf -> :sswitch_0
    .end sparse-switch

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
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
