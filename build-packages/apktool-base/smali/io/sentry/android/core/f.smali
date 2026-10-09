.class public final synthetic Lio/sentry/android/core/f;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/Scope$IWithTransaction;


# instance fields
.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/f;->j:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/core/f;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lio/sentry/android/core/f;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/SentryOptions;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/f;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/android/core/AndroidLogger;

    .line 4
    .line 5
    iget-object v1, p0, Lio/sentry/android/core/f;->k:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Landroid/content/Context;

    .line 9
    .line 10
    iget-object p0, p0, Lio/sentry/android/core/f;->l:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lp;

    .line 13
    .line 14
    move-object v3, p1

    .line 15
    check-cast v3, Lio/sentry/android/core/SentryAndroidOptions;

    .line 16
    .line 17
    sget-object p1, Lio/sentry/android/core/SentryAndroid;->b:Lio/sentry/util/AutoClosableReentrantLock;

    .line 18
    .line 19
    const-string p1, "timber.log.Timber"

    .line 20
    .line 21
    invoke-static {v3, p1}, Lio/sentry/util/LoadClass;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const-string v1, "androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks"

    .line 26
    .line 27
    invoke-static {v3, v1}, Lio/sentry/util/LoadClass;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, 0x1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v1, "io.sentry.android.fragment.FragmentLifecycleIntegration"

    .line 36
    .line 37
    invoke-static {v3, v1}, Lio/sentry/util/LoadClass;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    move v7, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v7, v4

    .line 46
    :goto_0
    if-eqz p1, :cond_1

    .line 47
    .line 48
    const-string p1, "io.sentry.android.timber.SentryTimberIntegration"

    .line 49
    .line 50
    invoke-static {v3, p1}, Lio/sentry/util/LoadClass;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    move v8, v5

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move v8, v4

    .line 59
    :goto_1
    const-string p1, "io.sentry.android.replay.ReplayIntegration"

    .line 60
    .line 61
    invoke-static {v3, p1}, Lio/sentry/util/LoadClass;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    const-string p1, "io.sentry.android.distribution.DistributionIntegration"

    .line 66
    .line 67
    invoke-static {v3, p1}, Lio/sentry/util/LoadClass;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v10

    .line 71
    new-instance v4, Lio/sentry/android/core/BuildInfoProvider;

    .line 72
    .line 73
    invoke-direct {v4, v0}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 74
    .line 75
    .line 76
    move p1, v5

    .line 77
    new-instance v5, Lio/sentry/util/LoadClass;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v6, Lio/sentry/android/core/ActivityFramesTracker;

    .line 83
    .line 84
    invoke-direct {v6, v5, v3}, Lio/sentry/android/core/ActivityFramesTracker;-><init>(Lio/sentry/util/LoadClass;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move-object v1, v2

    .line 95
    :goto_2
    invoke-virtual {v3, v0}, Lio/sentry/SentryOptions;->setLogger(Lio/sentry/ILogger;)V

    .line 96
    .line 97
    .line 98
    new-instance v11, Lio/sentry/android/core/AndroidFatalLogger;

    .line 99
    .line 100
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v11}, Lio/sentry/SentryOptions;->setFatalLogger(Lio/sentry/ILogger;)V

    .line 104
    .line 105
    .line 106
    sget-object v11, Lio/sentry/ScopeType;->CURRENT:Lio/sentry/ScopeType;

    .line 107
    .line 108
    invoke-virtual {v3, v11}, Lio/sentry/SentryOptions;->setDefaultScopeType(Lio/sentry/ScopeType;)V

    .line 109
    .line 110
    .line 111
    sget-object v11, Lio/sentry/SentryOpenTelemetryMode;->OFF:Lio/sentry/SentryOpenTelemetryMode;

    .line 112
    .line 113
    invoke-virtual {v3, v11}, Lio/sentry/SentryOptions;->setOpenTelemetryMode(Lio/sentry/SentryOpenTelemetryMode;)V

    .line 114
    .line 115
    .line 116
    new-instance v11, Lio/sentry/android/core/SentryAndroidDateProvider;

    .line 117
    .line 118
    invoke-direct {v11}, Lio/sentry/android/core/SentryAndroidDateProvider;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v11}, Lio/sentry/SentryOptions;->setDateProvider(Lio/sentry/SentryDateProvider;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    new-instance v12, Lio/sentry/android/core/AndroidLoggerBatchProcessorFactory;

    .line 129
    .line 130
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    iput-object v12, v11, Lio/sentry/SentryOptions$Logs;->b:Lio/sentry/logger/ILoggerBatchProcessorFactory;

    .line 134
    .line 135
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    .line 136
    .line 137
    .line 138
    move-result-object v11

    .line 139
    new-instance v12, Lio/sentry/android/core/AndroidMetricsBatchProcessorFactory;

    .line 140
    .line 141
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v12, v11, Lio/sentry/SentryOptions$Metrics;->b:Lio/sentry/metrics/IMetricsBatchProcessorFactory;

    .line 145
    .line 146
    const-wide/16 v11, 0xfa0

    .line 147
    .line 148
    invoke-virtual {v3, v11, v12}, Lio/sentry/SentryOptions;->setFlushTimeoutMillis(J)V

    .line 149
    .line 150
    .line 151
    new-instance v11, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 152
    .line 153
    invoke-direct {v11, v1, v0, v4}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/android/core/AndroidLogger;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v11}, Lio/sentry/android/core/SentryAndroidOptions;->setFrameMetricsCollector(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    .line 157
    .line 158
    .line 159
    invoke-static {v1, v4, v3}, Lio/sentry/android/core/ManifestMetadataReader;->a(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 160
    .line 161
    .line 162
    new-instance v0, Ljava/io/File;

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    const-string v12, "sentry"

    .line 169
    .line 170
    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v3, v0}, Lio/sentry/SentryOptions;->setCacheDirPath(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 183
    .line 184
    .line 185
    invoke-static {v1, v4}, Lio/sentry/android/core/ContextUtils;->c(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    if-eqz p1, :cond_4

    .line 190
    .line 191
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-nez v0, :cond_3

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 198
    .line 199
    .line 200
    move-result-wide v11

    .line 201
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    new-instance v11, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    iget-object v12, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v12, "@"

    .line 216
    .line 217
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget-object v12, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v12, "+"

    .line 226
    .line 227
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {v3, v0}, Lio/sentry/SentryOptions;->setRelease(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_3
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 241
    .line 242
    if-eqz p1, :cond_4

    .line 243
    .line 244
    const-string v0, "android."

    .line 245
    .line 246
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-nez v0, :cond_4

    .line 251
    .line 252
    invoke-virtual {v3, p1}, Lio/sentry/SentryOptions;->addInAppInclude(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_4
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getDistinctId()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    if-nez p1, :cond_5

    .line 260
    .line 261
    :try_start_0
    invoke-static {v1}, Lio/sentry/android/core/Installation;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v3, p1}, Lio/sentry/SentryOptions;->setDistinctId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 267
    .line 268
    goto :goto_3

    .line 269
    :catch_0
    move-exception v0

    .line 270
    move-object p1, v0

    .line 271
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 276
    .line 277
    const-string v11, "Could not generate distinct Id."

    .line 278
    .line 279
    invoke-interface {v0, v1, v11, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    .line 281
    .line 282
    :cond_5
    :goto_3
    sget-object p1, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 283
    .line 284
    iget-object v0, p1, Lio/sentry/android/core/AppState;->k:Lio/sentry/android/core/AppState$LifecycleObserver;

    .line 285
    .line 286
    if-eqz v0, :cond_6

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_6
    iget-object v0, p1, Lio/sentry/android/core/AppState;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 290
    .line 291
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    :try_start_1
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {p1, v0}, Lio/sentry/android/core/AppState;->n(Lio/sentry/ILogger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    .line 301
    .line 302
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 303
    .line 304
    .line 305
    :goto_4
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->activate()V

    .line 306
    .line 307
    .line 308
    invoke-static/range {v2 .. v10}, Lio/sentry/android/core/AndroidOptionsInitializer;->b(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/util/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;ZZZZ)V

    .line 309
    .line 310
    .line 311
    move p1, v7

    .line 312
    move v7, v9

    .line 313
    :try_start_2
    iget-object p0, p0, Lp;->k:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast p0, Llh;

    .line 316
    .line 317
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 318
    .line 319
    .line 320
    invoke-virtual {p0, v3}, Llh;->b(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :catchall_0
    move-exception v0

    .line 325
    move-object p0, v0

    .line 326
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 331
    .line 332
    const-string v9, "Error in the \'OptionsConfiguration.configure\' callback."

    .line 333
    .line 334
    invoke-interface {v0, v1, v9, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 335
    .line 336
    .line 337
    :goto_5
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    const-wide/16 v9, 0x0

    .line 346
    .line 347
    if-eqz v0, :cond_7

    .line 348
    .line 349
    iget-object v0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->m:Lio/sentry/android/core/performance/TimeSpan;

    .line 350
    .line 351
    iget-wide v11, v0, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 352
    .line 353
    cmp-long v1, v11, v9

    .line 354
    .line 355
    if-nez v1, :cond_7

    .line 356
    .line 357
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    .line 358
    .line 359
    .line 360
    move-result-wide v11

    .line 361
    invoke-virtual {v0, v11, v12}, Lio/sentry/android/core/performance/TimeSpan;->c(J)V

    .line 362
    .line 363
    .line 364
    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    instance-of v0, v0, Landroid/app/Application;

    .line 369
    .line 370
    if-eqz v0, :cond_8

    .line 371
    .line 372
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Landroid/app/Application;

    .line 377
    .line 378
    invoke-virtual {p0, v0}, Lio/sentry/android/core/performance/AppStartMetrics;->e(Landroid/app/Application;)V

    .line 379
    .line 380
    .line 381
    :cond_8
    iget-object p0, p0, Lio/sentry/android/core/performance/AppStartMetrics;->n:Lio/sentry/android/core/performance/TimeSpan;

    .line 382
    .line 383
    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->l:J

    .line 384
    .line 385
    cmp-long v0, v0, v9

    .line 386
    .line 387
    if-nez v0, :cond_9

    .line 388
    .line 389
    sget-wide v0, Lio/sentry/android/core/SentryAndroid;->a:J

    .line 390
    .line 391
    invoke-virtual {p0, v0, v1}, Lio/sentry/android/core/performance/TimeSpan;->c(J)V

    .line 392
    .line 393
    .line 394
    :cond_9
    move-object v13, v3

    .line 395
    move-object v3, v2

    .line 396
    move-object v2, v13

    .line 397
    invoke-static/range {v2 .. v7}, Lio/sentry/android/core/AndroidOptionsInitializer;->a(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/util/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;Z)V

    .line 398
    .line 399
    .line 400
    move-object v3, v2

    .line 401
    invoke-static {v3, p1, v8}, Lio/sentry/android/core/SentryAndroid;->a(Lio/sentry/SentryOptions;ZZ)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :catchall_1
    move-exception v0

    .line 406
    move-object p0, v0

    .line 407
    :try_start_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 408
    .line 409
    .line 410
    goto :goto_6

    .line 411
    :catchall_2
    move-exception v0

    .line 412
    move-object p1, v0

    .line 413
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 414
    .line 415
    .line 416
    :goto_6
    throw p0
.end method

.method public b(Lio/sentry/ITransaction;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/f;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/android/core/ActivityLifecycleIntegration;

    .line 4
    .line 5
    iget-object v1, p0, Lio/sentry/android/core/f;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    iget-object p0, p0, Lio/sentry/android/core/f;->l:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/app/Activity;

    .line 18
    .line 19
    if-eqz v1, :cond_5

    .line 20
    .line 21
    iget-object p0, v0, Lio/sentry/android/core/ActivityLifecycleIntegration;->z:Lio/sentry/android/core/ActivityFramesTracker;

    .line 22
    .line 23
    invoke-interface {p1}, Lio/sentry/ITransaction;->n()Lio/sentry/protocol/SentryId;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "none"

    .line 28
    .line 29
    iget-object v2, p0, Lio/sentry/android/core/ActivityFramesTracker;->f:Lio/sentry/util/AutoClosableReentrantLock;

    .line 30
    .line 31
    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->c()Z

    .line 36
    .line 37
    .line 38
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-nez v3, :cond_0

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    :try_start_1
    new-instance v3, Lio/sentry/android/core/c;

    .line 46
    .line 47
    const/4 v4, 0x1

    .line 48
    invoke-direct {v3, p0, v1, v4}, Lio/sentry/android/core/c;-><init>(Lio/sentry/android/core/ActivityFramesTracker;Landroid/app/Activity;I)V

    .line 49
    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p0, v3, v4}, Lio/sentry/android/core/ActivityFramesTracker;->d(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lio/sentry/android/core/ActivityFramesTracker;->d:Ljava/util/WeakHashMap;

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    .line 62
    .line 63
    if-nez v1, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lio/sentry/android/core/ActivityFramesTracker;->b()Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget v4, v3, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->a:I

    .line 74
    .line 75
    iget v5, v1, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->a:I

    .line 76
    .line 77
    sub-int/2addr v4, v5

    .line 78
    iget v5, v3, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->b:I

    .line 79
    .line 80
    iget v6, v1, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->b:I

    .line 81
    .line 82
    sub-int/2addr v5, v6

    .line 83
    iget v3, v3, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->c:I

    .line 84
    .line 85
    iget v1, v1, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->c:I

    .line 86
    .line 87
    sub-int/2addr v3, v1

    .line 88
    new-instance v1, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;

    .line 89
    .line 90
    invoke-direct {v1, v4, v5, v3}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;-><init>(III)V

    .line 91
    .line 92
    .line 93
    move-object v4, v1

    .line 94
    :goto_0
    if-eqz v4, :cond_4

    .line 95
    .line 96
    iget v1, v4, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->c:I

    .line 97
    .line 98
    iget v3, v4, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->b:I

    .line 99
    .line 100
    iget v4, v4, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->a:I

    .line 101
    .line 102
    if-nez v4, :cond_3

    .line 103
    .line 104
    if-nez v3, :cond_3

    .line 105
    .line 106
    if-nez v1, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    new-instance v5, Lio/sentry/protocol/MeasurementValue;

    .line 110
    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-direct {v5, v4, v0}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v4, Lio/sentry/protocol/MeasurementValue;

    .line 119
    .line 120
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-direct {v4, v3, v0}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v3, Lio/sentry/protocol/MeasurementValue;

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-direct {v3, v1, v0}, Lio/sentry/protocol/MeasurementValue;-><init>(Ljava/lang/Number;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Ljava/util/HashMap;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v1, "frames_total"

    .line 142
    .line 143
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    const-string v1, "frames_slow"

    .line 147
    .line 148
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const-string v1, "frames_frozen"

    .line 152
    .line 153
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Lio/sentry/android/core/ActivityFramesTracker;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 157
    .line 158
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .line 160
    .line 161
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :catchall_0
    move-exception p0

    .line 166
    goto :goto_2

    .line 167
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :goto_2
    :try_start_2
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    .line 173
    .line 174
    goto :goto_3

    .line 175
    :catchall_1
    move-exception p1

    .line 176
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :goto_3
    throw p0

    .line 180
    :cond_5
    iget-object p1, v0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 181
    .line 182
    if-eqz p1, :cond_6

    .line 183
    .line 184
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 189
    .line 190
    const-string v1, "Unable to track activity frames as the Activity %s has been destroyed."

    .line 191
    .line 192
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    :cond_6
    return-void
.end method

.method public c(Lio/sentry/ITransaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/f;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/sentry/android/core/ActivityLifecycleIntegration;

    .line 4
    .line 5
    iget-object v1, p0, Lio/sentry/android/core/f;->k:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lio/sentry/IScope;

    .line 8
    .line 9
    iget-object p0, p0, Lio/sentry/android/core/f;->l:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lio/sentry/ITransaction;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v1, p0}, Lio/sentry/IScope;->G(Lio/sentry/ITransaction;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p1, v0, Lio/sentry/android/core/ActivityLifecycleIntegration;->m:Lio/sentry/android/core/SentryAndroidOptions;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 28
    .line 29
    invoke-interface {p0}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v1, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    .line 38
    .line 39
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
