.class public final synthetic Lio/sentry/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/SentryOptions;I)V
    .locals 0

    .line 1
    iput p2, p0, Lio/sentry/f;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lio/sentry/f;->k:Lio/sentry/SentryOptions;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lio/sentry/f;->j:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/sentry/ScopesAdapter;->a:Lio/sentry/ScopesAdapter;

    .line 7
    .line 8
    iget-object p0, p0, Lio/sentry/f;->k:Lio/sentry/SentryOptions;

    .line 9
    .line 10
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, v1, v2}, Lio/sentry/ScopesAdapter;->c(J)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object p0, p0, Lio/sentry/f;->k:Lio/sentry/SentryOptions;

    .line 19
    .line 20
    sget-object v0, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 21
    .line 22
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOptionsObservers()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const-string v2, "tags.json"

    .line 35
    .line 36
    if-eqz v1, :cond_6

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lio/sentry/IOptionsObserver;

    .line 43
    .line 44
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    move-object v4, v1

    .line 49
    check-cast v4, Lio/sentry/cache/PersistingOptionsObserver;

    .line 50
    .line 51
    const-string v5, "release.json"

    .line 52
    .line 53
    if-nez v3, :cond_0

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Lio/sentry/cache/PersistingOptionsObserver;->a(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v4, v3, v5}, Lio/sentry/cache/PersistingOptionsObserver;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v1, Lio/sentry/cache/PersistingOptionsObserver;

    .line 67
    .line 68
    const-string v4, "proguard-uuid.json"

    .line 69
    .line 70
    if-nez v3, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1, v4}, Lio/sentry/cache/PersistingOptionsObserver;->a(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    invoke-virtual {v1, v3, v4}, Lio/sentry/cache/PersistingOptionsObserver;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "sdk-version.json"

    .line 84
    .line 85
    if-nez v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {v1, v4}, Lio/sentry/cache/PersistingOptionsObserver;->a(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_2
    invoke-virtual {v1, v3, v4}, Lio/sentry/cache/PersistingOptionsObserver;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_3
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDist()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v4, "dist.json"

    .line 99
    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    invoke-virtual {v1, v4}, Lio/sentry/cache/PersistingOptionsObserver;->a(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_3
    invoke-virtual {v1, v3, v4}, Lio/sentry/cache/PersistingOptionsObserver;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_4
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const-string v4, "environment.json"

    .line 114
    .line 115
    if-nez v3, :cond_4

    .line 116
    .line 117
    invoke-virtual {v1, v4}, Lio/sentry/cache/PersistingOptionsObserver;->a(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_5

    .line 121
    :cond_4
    invoke-virtual {v1, v3, v4}, Lio/sentry/cache/PersistingOptionsObserver;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :goto_5
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v1, v3, v2}, Lio/sentry/cache/PersistingOptionsObserver;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object v2, v2, Lio/sentry/SentryReplayOptions;->e:Ljava/lang/Double;

    .line 136
    .line 137
    const-string v3, "replay-error-sample-rate.json"

    .line 138
    .line 139
    if-nez v2, :cond_5

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Lio/sentry/cache/PersistingOptionsObserver;->a(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v1, v2, v3}, Lio/sentry/cache/PersistingOptionsObserver;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_6
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->findPersistingScopeObserver()Lio/sentry/cache/PersistingScopeObserver;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-eqz p0, :cond_7

    .line 158
    .line 159
    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->b:Lio/sentry/util/LazyEvaluator;

    .line 160
    .line 161
    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lio/sentry/cache/tape/ObjectQueue;

    .line 166
    .line 167
    invoke-virtual {v0}, Lio/sentry/cache/tape/ObjectQueue;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_6

    .line 171
    :catch_0
    move-exception v0

    .line 172
    iget-object v1, p0, Lio/sentry/cache/PersistingScopeObserver;->a:Lio/sentry/SentryOptions;

    .line 173
    .line 174
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 179
    .line 180
    const-string v4, "Failed to clear breadcrumbs from file queue"

    .line 181
    .line 182
    invoke-interface {v1, v3, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :goto_6
    const-string v0, "user.json"

    .line 186
    .line 187
    invoke-virtual {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v0, "level.json"

    .line 191
    .line 192
    invoke-virtual {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v0, "request.json"

    .line 196
    .line 197
    invoke-virtual {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string v0, "fingerprint.json"

    .line 201
    .line 202
    invoke-virtual {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    const-string v0, "contexts.json"

    .line 206
    .line 207
    invoke-virtual {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const-string v0, "extras.json"

    .line 211
    .line 212
    invoke-virtual {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v2}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    const-string v0, "trace.json"

    .line 219
    .line 220
    invoke-virtual {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v0, "transaction.json"

    .line 224
    .line 225
    invoke-virtual {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_7
    return-void

    .line 229
    :pswitch_1
    iget-object p0, p0, Lio/sentry/f;->k:Lio/sentry/SentryOptions;

    .line 230
    .line 231
    sget-object v0, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 232
    .line 233
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPathWithoutDsn()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_b

    .line 238
    .line 239
    new-instance v1, Ljava/io/File;

    .line 240
    .line 241
    const-string v2, "app_start_profiling_config"

    .line 242
    .line 243
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :try_start_1
    invoke-static {v1}, Lio/sentry/util/FileUtils;->a(Ljava/io/File;)Z

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableAppStartProfiling()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v0, :cond_8

    .line 254
    .line 255
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isStartProfilerOnAppStart()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_8

    .line 260
    .line 261
    goto/16 :goto_c

    .line 262
    .line 263
    :catchall_0
    move-exception v0

    .line 264
    goto/16 :goto_b

    .line 265
    .line 266
    :cond_8
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isStartProfilerOnAppStart()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_9

    .line 271
    .line 272
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-nez v0, :cond_9

    .line 277
    .line 278
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 283
    .line 284
    const-string v2, "Tracing is disabled and app start profiling will not start."

    .line 285
    .line 286
    const/4 v3, 0x0

    .line 287
    new-array v3, v3, [Ljava/lang/Object;

    .line 288
    .line 289
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_c

    .line 293
    .line 294
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_b

    .line 299
    .line 300
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableAppStartProfiling()Z

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    const/4 v2, 0x0

    .line 305
    if-eqz v0, :cond_a

    .line 306
    .line 307
    new-instance v0, Lio/sentry/TransactionContext;

    .line 308
    .line 309
    const-string v3, "app.launch"

    .line 310
    .line 311
    const-string v4, "profile"

    .line 312
    .line 313
    sget-object v5, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    .line 314
    .line 315
    invoke-direct {v0, v3, v5, v4, v2}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;)V

    .line 316
    .line 317
    .line 318
    new-instance v2, Lio/sentry/SamplingContext;

    .line 319
    .line 320
    invoke-static {}, Lio/sentry/util/SentryRandom;->a()Lio/sentry/util/Random;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-virtual {v3}, Lio/sentry/util/Random;->c()D

    .line 325
    .line 326
    .line 327
    move-result-wide v3

    .line 328
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-direct {v2, v0, v3}, Lio/sentry/SamplingContext;-><init>(Lio/sentry/TransactionContext;Ljava/lang/Double;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getInternalTracesSampler()Lio/sentry/TracesSampler;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0, v2}, Lio/sentry/TracesSampler;->a(Lio/sentry/SamplingContext;)Lio/sentry/TracesSamplingDecision;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    goto :goto_7

    .line 344
    :cond_a
    new-instance v0, Lio/sentry/TracesSamplingDecision;

    .line 345
    .line 346
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 347
    .line 348
    invoke-direct {v0, v3, v2}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 349
    .line 350
    .line 351
    :goto_7
    new-instance v2, Lio/sentry/SentryAppStartProfilingOptions;

    .line 352
    .line 353
    invoke-direct {v2, p0, v0}, Lio/sentry/SentryAppStartProfilingOptions;-><init>(Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;)V

    .line 354
    .line 355
    .line 356
    new-instance v0, Ljava/io/FileOutputStream;

    .line 357
    .line 358
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    .line 360
    .line 361
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    .line 362
    .line 363
    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 364
    .line 365
    sget-object v4, Lio/sentry/Sentry;->e:Ljava/nio/charset/Charset;

    .line 366
    .line 367
    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 368
    .line 369
    .line 370
    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 371
    .line 372
    .line 373
    :try_start_3
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-interface {v3, v2, v1}, Lio/sentry/ISerializer;->a(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 378
    .line 379
    .line 380
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 381
    .line 382
    .line 383
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 384
    .line 385
    .line 386
    goto :goto_c

    .line 387
    :catchall_1
    move-exception v1

    .line 388
    goto :goto_9

    .line 389
    :catchall_2
    move-exception v2

    .line 390
    :try_start_6
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 391
    .line 392
    .line 393
    goto :goto_8

    .line 394
    :catchall_3
    move-exception v1

    .line 395
    :try_start_7
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 396
    .line 397
    .line 398
    :goto_8
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 399
    :goto_9
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 400
    .line 401
    .line 402
    goto :goto_a

    .line 403
    :catchall_4
    move-exception v0

    .line 404
    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 405
    .line 406
    .line 407
    :goto_a
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 408
    :goto_b
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 409
    .line 410
    .line 411
    move-result-object p0

    .line 412
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 413
    .line 414
    const-string v2, "Unable to create app start profiling config file. "

    .line 415
    .line 416
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 417
    .line 418
    .line 419
    :cond_b
    :goto_c
    return-void

    .line 420
    :pswitch_2
    iget-object p0, p0, Lio/sentry/f;->k:Lio/sentry/SentryOptions;

    .line 421
    .line 422
    sget-object v0, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 423
    .line 424
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->loadLazyFields()V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    nop

    .line 429
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
