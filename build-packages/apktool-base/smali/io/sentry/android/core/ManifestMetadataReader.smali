.class abstract Lio/sentry/android/core/ManifestMetadataReader;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "io.sentry.traces.trace-propagation-targets"

    .line 4
    .line 5
    const-string v2, "The options object is required."

    .line 6
    .line 7
    invoke-static {p2, v2}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {p0, v2, p1}, Lio/sentry/android/core/ManifestMetadataReader;->b(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/os/Bundle;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz p0, :cond_25

    .line 24
    .line 25
    const-string v3, "io.sentry.debug"

    .line 26
    .line 27
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isDebug()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {p0, p1, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setDebug(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isDebug()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    const-string v3, "io.sentry.debug.level"

    .line 45
    .line 46
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDiagnosticLevel()Lio/sentry/SentryLevel;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-static {p0, p1, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Lio/sentry/SentryLevel;->valueOf(Ljava/lang/String;)Lio/sentry/SentryLevel;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setDiagnosticLevel(Lio/sentry/SentryLevel;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto/16 :goto_c

    .line 80
    .line 81
    :cond_0
    :goto_0
    const-string v3, "io.sentry.anr.enable"

    .line 82
    .line 83
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrEnabled()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-static {p0, p1, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    .line 92
    .line 93
    .line 94
    const-string v3, "io.sentry.tombstone.enable"

    .line 95
    .line 96
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isTombstoneEnabled()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-static {p0, p1, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setTombstoneEnabled(Z)V

    .line 105
    .line 106
    .line 107
    const-string v3, "io.sentry.auto-session-tracking.enable"

    .line 108
    .line 109
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-static {p0, p1, v3, v4}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setEnableAutoSessionTracking(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSampleRate()Ljava/lang/Double;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 125
    .line 126
    if-nez v3, :cond_1

    .line 127
    .line 128
    const-string v3, "io.sentry.sample-rate"

    .line 129
    .line 130
    invoke-static {p0, p1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->d(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)D

    .line 131
    .line 132
    .line 133
    move-result-wide v6

    .line 134
    cmpl-double v3, v6, v4

    .line 135
    .line 136
    if-eqz v3, :cond_1

    .line 137
    .line 138
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setSampleRate(Ljava/lang/Double;)V

    .line 143
    .line 144
    .line 145
    :cond_1
    const-string v3, "io.sentry.anr.report-debug"

    .line 146
    .line 147
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrReportInDebug()Z

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrReportInDebug(Z)V

    .line 156
    .line 157
    .line 158
    const-string v3, "io.sentry.anr.timeout-interval-millis"

    .line 159
    .line 160
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrTimeoutIntervalMillis()J

    .line 161
    .line 162
    .line 163
    move-result-wide v6

    .line 164
    invoke-static {p0, p1, v3, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->f(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v6

    .line 168
    invoke-virtual {p2, v6, v7}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrTimeoutIntervalMillis(J)V

    .line 169
    .line 170
    .line 171
    const-string v3, "io.sentry.anr.attach-thread-dumps"

    .line 172
    .line 173
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachAnrThreadDump()Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachAnrThreadDump(Z)V

    .line 182
    .line 183
    .line 184
    const-string v3, "io.sentry.dsn"

    .line 185
    .line 186
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    const-string v6, "io.sentry.enabled"

    .line 195
    .line 196
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnabled()Z

    .line 197
    .line 198
    .line 199
    move-result v7

    .line 200
    invoke-static {p0, p1, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_3

    .line 205
    .line 206
    if-eqz v3, :cond_2

    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 209
    .line 210
    .line 211
    move-result v7

    .line 212
    if-eqz v7, :cond_2

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_2
    if-nez v3, :cond_4

    .line 216
    .line 217
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 218
    .line 219
    .line 220
    move-result-object v7

    .line 221
    sget-object v8, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 222
    .line 223
    const-string v9, "DSN is required. Use empty string to disable SDK."

    .line 224
    .line 225
    new-array v10, v2, [Ljava/lang/Object;

    .line 226
    .line 227
    invoke-interface {v7, v8, v9, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 236
    .line 237
    const-string v9, "Sentry enabled flag set to false or DSN is empty: disabling sentry-android"

    .line 238
    .line 239
    new-array v10, v2, [Ljava/lang/Object;

    .line 240
    .line 241
    invoke-interface {v7, v8, v9, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    :cond_4
    :goto_2
    invoke-virtual {p2, v6}, Lio/sentry/SentryOptions;->setEnabled(Z)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setDsn(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string v3, "io.sentry.ndk.enable"

    .line 251
    .line 252
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdk(Z)V

    .line 261
    .line 262
    .line 263
    const-string v3, "io.sentry.ndk.scope-sync.enable"

    .line 264
    .line 265
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableScopeSync()Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopeSync(Z)V

    .line 274
    .line 275
    .line 276
    const-string v3, "io.sentry.ndk.sdk-name"

    .line 277
    .line 278
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getNativeSdkName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    if-eqz v3, :cond_5

    .line 287
    .line 288
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setNativeSdkName(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    :cond_5
    const-string v3, "io.sentry.release"

    .line 292
    .line 293
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setRelease(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    const-string v3, "io.sentry.dist"

    .line 305
    .line 306
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDist()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setDist(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v3, "io.sentry.environment"

    .line 318
    .line 319
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v6

    .line 323
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setEnvironment(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const-string v3, "io.sentry.session-tracking.timeout-interval-millis"

    .line 331
    .line 332
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionTrackingIntervalMillis()J

    .line 333
    .line 334
    .line 335
    move-result-wide v6

    .line 336
    invoke-static {p0, p1, v3, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->f(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    .line 337
    .line 338
    .line 339
    move-result-wide v6

    .line 340
    invoke-virtual {p2, v6, v7}, Lio/sentry/SentryOptions;->setSessionTrackingIntervalMillis(J)V

    .line 341
    .line 342
    .line 343
    const-string v3, "io.sentry.max-breadcrumbs"

    .line 344
    .line 345
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    .line 346
    .line 347
    .line 348
    move-result v6

    .line 349
    int-to-long v6, v6

    .line 350
    invoke-static {p0, p1, v3, v6, v7}, Lio/sentry/android/core/ManifestMetadataReader;->f(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    .line 351
    .line 352
    .line 353
    move-result-wide v6

    .line 354
    long-to-int v3, v6

    .line 355
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setMaxBreadcrumbs(I)V

    .line 356
    .line 357
    .line 358
    const-string v3, "io.sentry.breadcrumbs.activity-lifecycle"

    .line 359
    .line 360
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleBreadcrumbs()Z

    .line 361
    .line 362
    .line 363
    move-result v6

    .line 364
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleBreadcrumbs(Z)V

    .line 369
    .line 370
    .line 371
    const-string v3, "io.sentry.breadcrumbs.app-lifecycle"

    .line 372
    .line 373
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppLifecycleBreadcrumbs()Z

    .line 374
    .line 375
    .line 376
    move-result v6

    .line 377
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppLifecycleBreadcrumbs(Z)V

    .line 382
    .line 383
    .line 384
    const-string v3, "io.sentry.breadcrumbs.system-events"

    .line 385
    .line 386
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableSystemEventBreadcrumbs()Z

    .line 387
    .line 388
    .line 389
    move-result v6

    .line 390
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 391
    .line 392
    .line 393
    move-result v3

    .line 394
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableSystemEventBreadcrumbs(Z)V

    .line 395
    .line 396
    .line 397
    const-string v3, "io.sentry.breadcrumbs.app-components"

    .line 398
    .line 399
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAppComponentBreadcrumbs()Z

    .line 400
    .line 401
    .line 402
    move-result v6

    .line 403
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 404
    .line 405
    .line 406
    move-result v3

    .line 407
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAppComponentBreadcrumbs(Z)V

    .line 408
    .line 409
    .line 410
    const-string v3, "io.sentry.breadcrumbs.user-interaction"

    .line 411
    .line 412
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableUserInteractionBreadcrumbs()Z

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setEnableUserInteractionBreadcrumbs(Z)V

    .line 421
    .line 422
    .line 423
    const-string v3, "io.sentry.breadcrumbs.network-events"

    .line 424
    .line 425
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNetworkEventBreadcrumbs()Z

    .line 426
    .line 427
    .line 428
    move-result v6

    .line 429
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNetworkEventBreadcrumbs(Z)V

    .line 434
    .line 435
    .line 436
    const-string v3, "io.sentry.uncaught-exception-handler.enable"

    .line 437
    .line 438
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableUncaughtExceptionHandler()Z

    .line 439
    .line 440
    .line 441
    move-result v6

    .line 442
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setEnableUncaughtExceptionHandler(Z)V

    .line 447
    .line 448
    .line 449
    const-string v3, "io.sentry.attach-threads"

    .line 450
    .line 451
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isAttachThreads()Z

    .line 452
    .line 453
    .line 454
    move-result v6

    .line 455
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setAttachThreads(Z)V

    .line 460
    .line 461
    .line 462
    const-string v3, "io.sentry.attach-screenshot"

    .line 463
    .line 464
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    .line 465
    .line 466
    .line 467
    move-result v6

    .line 468
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 469
    .line 470
    .line 471
    move-result v3

    .line 472
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachScreenshot(Z)V

    .line 473
    .line 474
    .line 475
    const-string v3, "io.sentry.attach-view-hierarchy"

    .line 476
    .line 477
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    .line 478
    .line 479
    .line 480
    move-result v6

    .line 481
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachViewHierarchy(Z)V

    .line 486
    .line 487
    .line 488
    const-string v3, "io.sentry.send-client-reports"

    .line 489
    .line 490
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isSendClientReports()Z

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setSendClientReports(Z)V

    .line 499
    .line 500
    .line 501
    const-string v3, "io.sentry.auto-init"

    .line 502
    .line 503
    const/4 v6, 0x1

    .line 504
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-eqz v3, :cond_6

    .line 509
    .line 510
    sget-object v3, Lio/sentry/InitPriority;->LOW:Lio/sentry/InitPriority;

    .line 511
    .line 512
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setInitPriority(Lio/sentry/InitPriority;)V

    .line 513
    .line 514
    .line 515
    :cond_6
    const-string v3, "io.sentry.force-init"

    .line 516
    .line 517
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isForceInit()Z

    .line 518
    .line 519
    .line 520
    move-result v7

    .line 521
    invoke-static {p0, p1, v3, v7}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 522
    .line 523
    .line 524
    move-result v3

    .line 525
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setForceInit(Z)V

    .line 526
    .line 527
    .line 528
    const-string v3, "io.sentry.additional-context"

    .line 529
    .line 530
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    .line 531
    .line 532
    .line 533
    move-result v7

    .line 534
    invoke-static {p0, p1, v3, v7}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 535
    .line 536
    .line 537
    move-result v3

    .line 538
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setCollectAdditionalContext(Z)V

    .line 539
    .line 540
    .line 541
    const-string v3, "io.sentry.external-storage-context"

    .line 542
    .line 543
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectExternalStorageContext()Z

    .line 544
    .line 545
    .line 546
    move-result v7

    .line 547
    invoke-static {p0, p1, v3, v7}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setCollectExternalStorageContext(Z)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getTracesSampleRate()Ljava/lang/Double;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    if-nez v3, :cond_7

    .line 559
    .line 560
    const-string v3, "io.sentry.traces.sample-rate"

    .line 561
    .line 562
    invoke-static {p0, p1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->d(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)D

    .line 563
    .line 564
    .line 565
    move-result-wide v7

    .line 566
    cmpl-double v3, v7, v4

    .line 567
    .line 568
    if-eqz v3, :cond_7

    .line 569
    .line 570
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 575
    .line 576
    .line 577
    :cond_7
    const-string v3, "io.sentry.traces.trace-sampling"

    .line 578
    .line 579
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    .line 580
    .line 581
    .line 582
    move-result v7

    .line 583
    invoke-static {p0, p1, v3, v7}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setTraceSampling(Z)V

    .line 588
    .line 589
    .line 590
    const-string v3, "io.sentry.traces.activity.enable"

    .line 591
    .line 592
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoActivityLifecycleTracing()Z

    .line 593
    .line 594
    .line 595
    move-result v7

    .line 596
    invoke-static {p0, p1, v3, v7}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoActivityLifecycleTracing(Z)V

    .line 601
    .line 602
    .line 603
    const-string v3, "io.sentry.traces.activity.auto-finish.enable"

    .line 604
    .line 605
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableActivityLifecycleTracingAutoFinish()Z

    .line 606
    .line 607
    .line 608
    move-result v7

    .line 609
    invoke-static {p0, p1, v3, v7}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 610
    .line 611
    .line 612
    move-result v3

    .line 613
    invoke-virtual {p2, v3}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableActivityLifecycleTracingAutoFinish(Z)V

    .line 614
    .line 615
    .line 616
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    if-nez v3, :cond_8

    .line 621
    .line 622
    const-string v3, "io.sentry.traces.profiling.sample-rate"

    .line 623
    .line 624
    invoke-static {p0, p1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->d(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)D

    .line 625
    .line 626
    .line 627
    move-result-wide v7

    .line 628
    cmpl-double v3, v7, v4

    .line 629
    .line 630
    if-eqz v3, :cond_8

    .line 631
    .line 632
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setProfilesSampleRate(Ljava/lang/Double;)V

    .line 637
    .line 638
    .line 639
    :cond_8
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getProfileSessionSampleRate()Ljava/lang/Double;

    .line 640
    .line 641
    .line 642
    move-result-object v3

    .line 643
    if-nez v3, :cond_9

    .line 644
    .line 645
    const-string v3, "io.sentry.traces.profiling.session-sample-rate"

    .line 646
    .line 647
    invoke-static {p0, p1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->d(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)D

    .line 648
    .line 649
    .line 650
    move-result-wide v7

    .line 651
    cmpl-double v3, v7, v4

    .line 652
    .line 653
    if-eqz v3, :cond_9

    .line 654
    .line 655
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setProfileSessionSampleRate(Ljava/lang/Double;)V

    .line 660
    .line 661
    .line 662
    :cond_9
    const-string v3, "io.sentry.traces.profiling.lifecycle"

    .line 663
    .line 664
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    .line 665
    .line 666
    .line 667
    move-result-object v7

    .line 668
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v7

    .line 672
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 673
    .line 674
    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v7

    .line 678
    invoke-static {p0, p1, v3, v7}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v3

    .line 682
    if-eqz v3, :cond_a

    .line 683
    .line 684
    invoke-virtual {v3, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    invoke-static {v3}, Lio/sentry/ProfileLifecycle;->valueOf(Ljava/lang/String;)Lio/sentry/ProfileLifecycle;

    .line 689
    .line 690
    .line 691
    move-result-object v3

    .line 692
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setProfileLifecycle(Lio/sentry/ProfileLifecycle;)V

    .line 693
    .line 694
    .line 695
    :cond_a
    const-string v3, "io.sentry.traces.profiling.start-on-app-start"

    .line 696
    .line 697
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isStartProfilerOnAppStart()Z

    .line 698
    .line 699
    .line 700
    move-result v7

    .line 701
    invoke-static {p0, p1, v3, v7}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 702
    .line 703
    .line 704
    move-result v3

    .line 705
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setStartProfilerOnAppStart(Z)V

    .line 706
    .line 707
    .line 708
    const-string v3, "io.sentry.traces.user-interaction.enable"

    .line 709
    .line 710
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableUserInteractionTracing()Z

    .line 711
    .line 712
    .line 713
    move-result v7

    .line 714
    invoke-static {p0, p1, v3, v7}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setEnableUserInteractionTracing(Z)V

    .line 719
    .line 720
    .line 721
    const-string v3, "io.sentry.traces.time-to-full-display.enable"

    .line 722
    .line 723
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableTimeToFullDisplayTracing()Z

    .line 724
    .line 725
    .line 726
    move-result v7

    .line 727
    invoke-static {p0, p1, v3, v7}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 728
    .line 729
    .line 730
    move-result v3

    .line 731
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setEnableTimeToFullDisplayTracing(Z)V

    .line 732
    .line 733
    .line 734
    const-string v3, "io.sentry.traces.idle-timeout"

    .line 735
    .line 736
    const-wide/16 v7, -0x1

    .line 737
    .line 738
    invoke-static {p0, p1, v3, v7, v8}, Lio/sentry/android/core/ManifestMetadataReader;->f(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    .line 739
    .line 740
    .line 741
    move-result-wide v9

    .line 742
    cmp-long v3, v9, v7

    .line 743
    .line 744
    if-eqz v3, :cond_b

    .line 745
    .line 746
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 747
    .line 748
    .line 749
    move-result-object v3

    .line 750
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 751
    .line 752
    .line 753
    :cond_b
    invoke-static {p0, p1, v1}, Lio/sentry/android/core/ManifestMetadataReader;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 754
    .line 755
    .line 756
    move-result-object v3

    .line 757
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 758
    .line 759
    .line 760
    move-result v1

    .line 761
    if-eqz v1, :cond_c

    .line 762
    .line 763
    if-nez v3, :cond_c

    .line 764
    .line 765
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 766
    .line 767
    invoke-virtual {p2, v1}, Lio/sentry/SentryOptions;->setTracePropagationTargets(Ljava/util/List;)V

    .line 768
    .line 769
    .line 770
    goto :goto_3

    .line 771
    :cond_c
    if-eqz v3, :cond_d

    .line 772
    .line 773
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->setTracePropagationTargets(Ljava/util/List;)V

    .line 774
    .line 775
    .line 776
    :cond_d
    :goto_3
    const-string v1, "io.sentry.traces.frames-tracking"

    .line 777
    .line 778
    invoke-static {p0, p1, v1, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 779
    .line 780
    .line 781
    move-result v1

    .line 782
    invoke-virtual {p2, v1}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableFramesTracking(Z)V

    .line 783
    .line 784
    .line 785
    const-string v1, "io.sentry.proguard-uuid"

    .line 786
    .line 787
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v3

    .line 791
    invoke-static {p0, p1, v1, v3}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    invoke-virtual {p2, v1}, Lio/sentry/SentryOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    if-nez v1, :cond_e

    .line 803
    .line 804
    new-instance v1, Lio/sentry/protocol/SdkVersion;

    .line 805
    .line 806
    invoke-direct {v1, v0, v0}, Lio/sentry/protocol/SdkVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    :cond_e
    const-string v0, "io.sentry.sdk.name"

    .line 810
    .line 811
    invoke-virtual {v1}, Lio/sentry/protocol/SdkVersion;->a()Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v3

    .line 815
    invoke-static {p0, p1, v0, v3}, Lio/sentry/android/core/ManifestMetadataReader;->h(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    const-string v3, "name is required."

    .line 820
    .line 821
    invoke-static {v0, v3}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    iput-object v0, v1, Lio/sentry/protocol/SdkVersion;->j:Ljava/lang/String;

    .line 825
    .line 826
    const-string v0, "io.sentry.sdk.version"

    .line 827
    .line 828
    invoke-virtual {v1}, Lio/sentry/protocol/SdkVersion;->b()Ljava/lang/String;

    .line 829
    .line 830
    .line 831
    move-result-object v3

    .line 832
    invoke-static {p0, p1, v0, v3}, Lio/sentry/android/core/ManifestMetadataReader;->h(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    const-string v3, "version is required."

    .line 837
    .line 838
    invoke-static {v0, v3}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    iput-object v0, v1, Lio/sentry/protocol/SdkVersion;->k:Ljava/lang/String;

    .line 842
    .line 843
    invoke-virtual {p2, v1}, Lio/sentry/SentryOptions;->setSdkVersion(Lio/sentry/protocol/SdkVersion;)V

    .line 844
    .line 845
    .line 846
    const-string v0, "io.sentry.send-default-pii"

    .line 847
    .line 848
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    .line 849
    .line 850
    .line 851
    move-result v1

    .line 852
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 853
    .line 854
    .line 855
    move-result v0

    .line 856
    invoke-virtual {p2, v0}, Lio/sentry/SentryOptions;->setSendDefaultPii(Z)V

    .line 857
    .line 858
    .line 859
    const-string v0, "io.sentry.gradle-plugin-integrations"

    .line 860
    .line 861
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    if-eqz v0, :cond_f

    .line 866
    .line 867
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 872
    .line 873
    .line 874
    move-result v1

    .line 875
    if-eqz v1, :cond_f

    .line 876
    .line 877
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    check-cast v1, Ljava/lang/String;

    .line 882
    .line 883
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 884
    .line 885
    .line 886
    move-result-object v3

    .line 887
    invoke-virtual {v3, v1}, Lio/sentry/SentryIntegrationPackageStorage;->a(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    goto :goto_4

    .line 891
    :cond_f
    const-string v0, "io.sentry.enable-root-check"

    .line 892
    .line 893
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableRootCheck()Z

    .line 894
    .line 895
    .line 896
    move-result v1

    .line 897
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 898
    .line 899
    .line 900
    move-result v0

    .line 901
    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableRootCheck(Z)V

    .line 902
    .line 903
    .line 904
    const-string v0, "io.sentry.send-modules"

    .line 905
    .line 906
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isSendModules()Z

    .line 907
    .line 908
    .line 909
    move-result v1

    .line 910
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 911
    .line 912
    .line 913
    move-result v0

    .line 914
    invoke-virtual {p2, v0}, Lio/sentry/SentryOptions;->setSendModules(Z)V

    .line 915
    .line 916
    .line 917
    const-string v0, "io.sentry.performance-v2.enable"

    .line 918
    .line 919
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    .line 920
    .line 921
    .line 922
    move-result v1

    .line 923
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 924
    .line 925
    .line 926
    move-result v0

    .line 927
    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnablePerformanceV2(Z)V

    .line 928
    .line 929
    .line 930
    const-string v0, "io.sentry.profiling.enable-app-start"

    .line 931
    .line 932
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableAppStartProfiling()Z

    .line 933
    .line 934
    .line 935
    move-result v1

    .line 936
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 937
    .line 938
    .line 939
    move-result v0

    .line 940
    invoke-virtual {p2, v0}, Lio/sentry/SentryOptions;->setEnableAppStartProfiling(Z)V

    .line 941
    .line 942
    .line 943
    const-string v0, "io.sentry.enable-scope-persistence"

    .line 944
    .line 945
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableScopePersistence()Z

    .line 946
    .line 947
    .line 948
    move-result v1

    .line 949
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 950
    .line 951
    .line 952
    move-result v0

    .line 953
    invoke-virtual {p2, v0}, Lio/sentry/SentryOptions;->setEnableScopePersistence(Z)V

    .line 954
    .line 955
    .line 956
    const-string v0, "io.sentry.traces.enable-auto-id-generation"

    .line 957
    .line 958
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAutoTraceIdGeneration()Z

    .line 959
    .line 960
    .line 961
    move-result v1

    .line 962
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 963
    .line 964
    .line 965
    move-result v0

    .line 966
    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAutoTraceIdGeneration(Z)V

    .line 967
    .line 968
    .line 969
    const-string v0, "io.sentry.traces.deadline-timeout"

    .line 970
    .line 971
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDeadlineTimeout()J

    .line 972
    .line 973
    .line 974
    move-result-wide v7

    .line 975
    invoke-static {p0, p1, v0, v7, v8}, Lio/sentry/android/core/ManifestMetadataReader;->f(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J

    .line 976
    .line 977
    .line 978
    move-result-wide v0

    .line 979
    invoke-virtual {p2, v0, v1}, Lio/sentry/SentryOptions;->setDeadlineTimeout(J)V

    .line 980
    .line 981
    .line 982
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 983
    .line 984
    .line 985
    move-result-object v0

    .line 986
    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->j()Ljava/lang/Double;

    .line 987
    .line 988
    .line 989
    move-result-object v0

    .line 990
    if-nez v0, :cond_10

    .line 991
    .line 992
    const-string v0, "io.sentry.session-replay.session-sample-rate"

    .line 993
    .line 994
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->d(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)D

    .line 995
    .line 996
    .line 997
    move-result-wide v0

    .line 998
    cmpl-double v3, v0, v4

    .line 999
    .line 1000
    if-eqz v3, :cond_10

    .line 1001
    .line 1002
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v3

    .line 1006
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    invoke-virtual {v3, v0}, Lio/sentry/SentryReplayOptions;->u(Ljava/lang/Double;)V

    .line 1011
    .line 1012
    .line 1013
    :cond_10
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->i()Ljava/lang/Double;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v0

    .line 1021
    if-nez v0, :cond_11

    .line 1022
    .line 1023
    const-string v0, "io.sentry.session-replay.on-error-sample-rate"

    .line 1024
    .line 1025
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->d(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)D

    .line 1026
    .line 1027
    .line 1028
    move-result-wide v0

    .line 1029
    cmpl-double v3, v0, v4

    .line 1030
    .line 1031
    if-eqz v3, :cond_11

    .line 1032
    .line 1033
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v3

    .line 1037
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    invoke-virtual {v3, v0}, Lio/sentry/SentryReplayOptions;->t(Ljava/lang/Double;)V

    .line 1042
    .line 1043
    .line 1044
    :cond_11
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v0

    .line 1048
    const-string v1, "io.sentry.session-replay.mask-all-text"

    .line 1049
    .line 1050
    invoke-static {p0, p1, v1, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v1

    .line 1054
    invoke-virtual {v0, v1}, Lio/sentry/SentryReplayOptions;->c(Z)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v0

    .line 1061
    const-string v1, "io.sentry.session-replay.mask-all-images"

    .line 1062
    .line 1063
    invoke-static {p0, p1, v1, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v1

    .line 1067
    invoke-virtual {v0, v1}, Lio/sentry/SentryReplayOptions;->b(Z)V

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    const-string v1, "io.sentry.session-replay.debug"

    .line 1075
    .line 1076
    invoke-static {p0, p1, v1, v2}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1077
    .line 1078
    .line 1079
    move-result v1

    .line 1080
    invoke-virtual {v0, v1}, Lio/sentry/SentryReplayOptions;->n(Z)V

    .line 1081
    .line 1082
    .line 1083
    const-string v0, "io.sentry.session-replay.screenshot-strategy"

    .line 1084
    .line 1085
    const/4 v1, 0x0

    .line 1086
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    if-eqz v0, :cond_13

    .line 1091
    .line 1092
    const-string v3, "canvas"

    .line 1093
    .line 1094
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1095
    .line 1096
    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v0

    .line 1100
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1101
    .line 1102
    .line 1103
    move-result v0

    .line 1104
    if-eqz v0, :cond_12

    .line 1105
    .line 1106
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v0

    .line 1110
    sget-object v3, Lio/sentry/ScreenshotStrategyType;->CANVAS:Lio/sentry/ScreenshotStrategyType;

    .line 1111
    .line 1112
    iput-object v3, v0, Lio/sentry/SentryReplayOptions;->n:Lio/sentry/ScreenshotStrategyType;

    .line 1113
    .line 1114
    goto :goto_5

    .line 1115
    :cond_12
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v0

    .line 1119
    sget-object v3, Lio/sentry/ScreenshotStrategyType;->PIXEL_COPY:Lio/sentry/ScreenshotStrategyType;

    .line 1120
    .line 1121
    iput-object v3, v0, Lio/sentry/SentryReplayOptions;->n:Lio/sentry/ScreenshotStrategyType;

    .line 1122
    .line 1123
    :cond_13
    :goto_5
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v0

    .line 1127
    const-string v3, "io.sentry.session-replay.capture-surface-views"

    .line 1128
    .line 1129
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v6

    .line 1133
    invoke-virtual {v6}, Lio/sentry/SentryReplayOptions;->k()Z

    .line 1134
    .line 1135
    .line 1136
    move-result v6

    .line 1137
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1138
    .line 1139
    .line 1140
    move-result v3

    .line 1141
    invoke-virtual {v0, v3}, Lio/sentry/SentryReplayOptions;->m(Z)V

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->e()Ljava/util/List;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v0

    .line 1152
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1153
    .line 1154
    .line 1155
    move-result v0

    .line 1156
    if-eqz v0, :cond_16

    .line 1157
    .line 1158
    const-string v0, "io.sentry.session-replay.network-detail-allow-urls"

    .line 1159
    .line 1160
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v0

    .line 1164
    if-eqz v0, :cond_16

    .line 1165
    .line 1166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1167
    .line 1168
    .line 1169
    move-result v3

    .line 1170
    if-nez v3, :cond_16

    .line 1171
    .line 1172
    new-instance v3, Ljava/util/ArrayList;

    .line 1173
    .line 1174
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    .line 1176
    .line 1177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1178
    .line 1179
    .line 1180
    move-result-object v0

    .line 1181
    :cond_14
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1182
    .line 1183
    .line 1184
    move-result v6

    .line 1185
    if-eqz v6, :cond_15

    .line 1186
    .line 1187
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v6

    .line 1191
    check-cast v6, Ljava/lang/String;

    .line 1192
    .line 1193
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1194
    .line 1195
    .line 1196
    move-result-object v6

    .line 1197
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1198
    .line 1199
    .line 1200
    move-result v7

    .line 1201
    if-nez v7, :cond_14

    .line 1202
    .line 1203
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    goto :goto_6

    .line 1207
    :cond_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1208
    .line 1209
    .line 1210
    move-result v0

    .line 1211
    if-nez v0, :cond_16

    .line 1212
    .line 1213
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v0

    .line 1217
    invoke-virtual {v0, v3}, Lio/sentry/SentryReplayOptions;->p(Ljava/util/ArrayList;)V

    .line 1218
    .line 1219
    .line 1220
    :cond_16
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v0

    .line 1224
    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->f()Ljava/util/List;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v0

    .line 1228
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1229
    .line 1230
    .line 1231
    move-result v0

    .line 1232
    if-eqz v0, :cond_19

    .line 1233
    .line 1234
    const-string v0, "io.sentry.session-replay.network-detail-deny-urls"

    .line 1235
    .line 1236
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 1237
    .line 1238
    .line 1239
    move-result-object v0

    .line 1240
    if-eqz v0, :cond_19

    .line 1241
    .line 1242
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1243
    .line 1244
    .line 1245
    move-result v3

    .line 1246
    if-nez v3, :cond_19

    .line 1247
    .line 1248
    new-instance v3, Ljava/util/ArrayList;

    .line 1249
    .line 1250
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1251
    .line 1252
    .line 1253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    :cond_17
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1258
    .line 1259
    .line 1260
    move-result v6

    .line 1261
    if-eqz v6, :cond_18

    .line 1262
    .line 1263
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v6

    .line 1267
    check-cast v6, Ljava/lang/String;

    .line 1268
    .line 1269
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v6

    .line 1273
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1274
    .line 1275
    .line 1276
    move-result v7

    .line 1277
    if-nez v7, :cond_17

    .line 1278
    .line 1279
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    .line 1281
    .line 1282
    goto :goto_7

    .line 1283
    :cond_18
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1284
    .line 1285
    .line 1286
    move-result v0

    .line 1287
    if-nez v0, :cond_19

    .line 1288
    .line 1289
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v0

    .line 1293
    invoke-virtual {v0, v3}, Lio/sentry/SentryReplayOptions;->q(Ljava/util/ArrayList;)V

    .line 1294
    .line 1295
    .line 1296
    :cond_19
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v0

    .line 1300
    const-string v3, "io.sentry.session-replay.network-capture-bodies"

    .line 1301
    .line 1302
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1303
    .line 1304
    .line 1305
    move-result-object v6

    .line 1306
    invoke-virtual {v6}, Lio/sentry/SentryReplayOptions;->l()Z

    .line 1307
    .line 1308
    .line 1309
    move-result v6

    .line 1310
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1311
    .line 1312
    .line 1313
    move-result v3

    .line 1314
    invoke-virtual {v0, v3}, Lio/sentry/SentryReplayOptions;->o(Z)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1318
    .line 1319
    .line 1320
    move-result-object v0

    .line 1321
    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->g()Ljava/util/List;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v0

    .line 1325
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1326
    .line 1327
    .line 1328
    move-result v0

    .line 1329
    sget-object v3, Lio/sentry/SentryReplayOptions;->u:Ljava/util/List;

    .line 1330
    .line 1331
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1332
    .line 1333
    .line 1334
    move-result v3

    .line 1335
    if-ne v0, v3, :cond_1c

    .line 1336
    .line 1337
    const-string v0, "io.sentry.session-replay.network-request-headers"

    .line 1338
    .line 1339
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v0

    .line 1343
    if-eqz v0, :cond_1c

    .line 1344
    .line 1345
    new-instance v3, Ljava/util/ArrayList;

    .line 1346
    .line 1347
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    .line 1349
    .line 1350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v0

    .line 1354
    :cond_1a
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1355
    .line 1356
    .line 1357
    move-result v6

    .line 1358
    if-eqz v6, :cond_1b

    .line 1359
    .line 1360
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1361
    .line 1362
    .line 1363
    move-result-object v6

    .line 1364
    check-cast v6, Ljava/lang/String;

    .line 1365
    .line 1366
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v6

    .line 1370
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1371
    .line 1372
    .line 1373
    move-result v7

    .line 1374
    if-nez v7, :cond_1a

    .line 1375
    .line 1376
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    .line 1378
    .line 1379
    goto :goto_8

    .line 1380
    :cond_1b
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1381
    .line 1382
    .line 1383
    move-result v0

    .line 1384
    if-nez v0, :cond_1c

    .line 1385
    .line 1386
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v0

    .line 1390
    invoke-virtual {v0, v3}, Lio/sentry/SentryReplayOptions;->r(Ljava/util/ArrayList;)V

    .line 1391
    .line 1392
    .line 1393
    :cond_1c
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v0

    .line 1397
    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->h()Ljava/util/List;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v0

    .line 1401
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 1402
    .line 1403
    .line 1404
    move-result v0

    .line 1405
    sget-object v3, Lio/sentry/SentryReplayOptions;->u:Ljava/util/List;

    .line 1406
    .line 1407
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 1408
    .line 1409
    .line 1410
    move-result v3

    .line 1411
    if-ne v0, v3, :cond_1f

    .line 1412
    .line 1413
    const-string v0, "io.sentry.session-replay.network-response-headers"

    .line 1414
    .line 1415
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v0

    .line 1419
    if-eqz v0, :cond_1f

    .line 1420
    .line 1421
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1422
    .line 1423
    .line 1424
    move-result v3

    .line 1425
    if-nez v3, :cond_1f

    .line 1426
    .line 1427
    new-instance v3, Ljava/util/ArrayList;

    .line 1428
    .line 1429
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1430
    .line 1431
    .line 1432
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v0

    .line 1436
    :cond_1d
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1437
    .line 1438
    .line 1439
    move-result v6

    .line 1440
    if-eqz v6, :cond_1e

    .line 1441
    .line 1442
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v6

    .line 1446
    check-cast v6, Ljava/lang/String;

    .line 1447
    .line 1448
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v6

    .line 1452
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 1453
    .line 1454
    .line 1455
    move-result v7

    .line 1456
    if-nez v7, :cond_1d

    .line 1457
    .line 1458
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1459
    .line 1460
    .line 1461
    goto :goto_9

    .line 1462
    :cond_1e
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1463
    .line 1464
    .line 1465
    move-result v0

    .line 1466
    if-nez v0, :cond_1f

    .line 1467
    .line 1468
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v0

    .line 1472
    invoke-virtual {v0, v3}, Lio/sentry/SentryReplayOptions;->s(Ljava/util/ArrayList;)V

    .line 1473
    .line 1474
    .line 1475
    :cond_1f
    const-string v0, "io.sentry.ignored-errors"

    .line 1476
    .line 1477
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 1478
    .line 1479
    .line 1480
    move-result-object v0

    .line 1481
    invoke-virtual {p2, v0}, Lio/sentry/SentryOptions;->setIgnoredErrors(Ljava/util/List;)V

    .line 1482
    .line 1483
    .line 1484
    const-string v0, "io.sentry.in-app-includes"

    .line 1485
    .line 1486
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 1487
    .line 1488
    .line 1489
    move-result-object v0

    .line 1490
    if-eqz v0, :cond_20

    .line 1491
    .line 1492
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1493
    .line 1494
    .line 1495
    move-result v3

    .line 1496
    if-nez v3, :cond_20

    .line 1497
    .line 1498
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v0

    .line 1502
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1503
    .line 1504
    .line 1505
    move-result v3

    .line 1506
    if-eqz v3, :cond_20

    .line 1507
    .line 1508
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v3

    .line 1512
    check-cast v3, Ljava/lang/String;

    .line 1513
    .line 1514
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->addInAppInclude(Ljava/lang/String;)V

    .line 1515
    .line 1516
    .line 1517
    goto :goto_a

    .line 1518
    :cond_20
    const-string v0, "io.sentry.in-app-excludes"

    .line 1519
    .line 1520
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v0

    .line 1524
    if-eqz v0, :cond_21

    .line 1525
    .line 1526
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 1527
    .line 1528
    .line 1529
    move-result v3

    .line 1530
    if-nez v3, :cond_21

    .line 1531
    .line 1532
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v0

    .line 1536
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1537
    .line 1538
    .line 1539
    move-result v3

    .line 1540
    if-eqz v3, :cond_21

    .line 1541
    .line 1542
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1543
    .line 1544
    .line 1545
    move-result-object v3

    .line 1546
    check-cast v3, Ljava/lang/String;

    .line 1547
    .line 1548
    invoke-virtual {p2, v3}, Lio/sentry/SentryOptions;->addInAppExclude(Ljava/lang/String;)V

    .line 1549
    .line 1550
    .line 1551
    goto :goto_b

    .line 1552
    :cond_21
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    const-string v3, "io.sentry.logs.enabled"

    .line 1557
    .line 1558
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    .line 1559
    .line 1560
    .line 1561
    move-result-object v6

    .line 1562
    invoke-virtual {v6}, Lio/sentry/SentryOptions$Logs;->a()Z

    .line 1563
    .line 1564
    .line 1565
    move-result v6

    .line 1566
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1567
    .line 1568
    .line 1569
    move-result v3

    .line 1570
    invoke-virtual {v0, v3}, Lio/sentry/SentryOptions$Logs;->b(Z)V

    .line 1571
    .line 1572
    .line 1573
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v0

    .line 1577
    const-string v3, "io.sentry.metrics.enabled"

    .line 1578
    .line 1579
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getMetrics()Lio/sentry/SentryOptions$Metrics;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v6

    .line 1583
    invoke-virtual {v6}, Lio/sentry/SentryOptions$Metrics;->a()Z

    .line 1584
    .line 1585
    .line 1586
    move-result v6

    .line 1587
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1588
    .line 1589
    .line 1590
    move-result v3

    .line 1591
    invoke-virtual {v0, v3}, Lio/sentry/SentryOptions$Metrics;->b(Z)V

    .line 1592
    .line 1593
    .line 1594
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 1595
    .line 1596
    .line 1597
    move-result-object v0

    .line 1598
    const-string v3, "io.sentry.feedback.is-name-required"

    .line 1599
    .line 1600
    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->b()Z

    .line 1601
    .line 1602
    .line 1603
    move-result v6

    .line 1604
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1605
    .line 1606
    .line 1607
    move-result v3

    .line 1608
    invoke-virtual {v0, v3}, Lio/sentry/SentryFeedbackOptions;->i(Z)V

    .line 1609
    .line 1610
    .line 1611
    const-string v3, "io.sentry.feedback.show-name"

    .line 1612
    .line 1613
    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->e()Z

    .line 1614
    .line 1615
    .line 1616
    move-result v6

    .line 1617
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1618
    .line 1619
    .line 1620
    move-result v3

    .line 1621
    invoke-virtual {v0, v3}, Lio/sentry/SentryFeedbackOptions;->l(Z)V

    .line 1622
    .line 1623
    .line 1624
    const-string v3, "io.sentry.feedback.is-email-required"

    .line 1625
    .line 1626
    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->a()Z

    .line 1627
    .line 1628
    .line 1629
    move-result v6

    .line 1630
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1631
    .line 1632
    .line 1633
    move-result v3

    .line 1634
    invoke-virtual {v0, v3}, Lio/sentry/SentryFeedbackOptions;->h(Z)V

    .line 1635
    .line 1636
    .line 1637
    const-string v3, "io.sentry.feedback.show-email"

    .line 1638
    .line 1639
    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->d()Z

    .line 1640
    .line 1641
    .line 1642
    move-result v6

    .line 1643
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1644
    .line 1645
    .line 1646
    move-result v3

    .line 1647
    invoke-virtual {v0, v3}, Lio/sentry/SentryFeedbackOptions;->k(Z)V

    .line 1648
    .line 1649
    .line 1650
    const-string v3, "io.sentry.feedback.use-sentry-user"

    .line 1651
    .line 1652
    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->f()Z

    .line 1653
    .line 1654
    .line 1655
    move-result v6

    .line 1656
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1657
    .line 1658
    .line 1659
    move-result v3

    .line 1660
    invoke-virtual {v0, v3}, Lio/sentry/SentryFeedbackOptions;->m(Z)V

    .line 1661
    .line 1662
    .line 1663
    const-string v3, "io.sentry.feedback.show-branding"

    .line 1664
    .line 1665
    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->c()Z

    .line 1666
    .line 1667
    .line 1668
    move-result v6

    .line 1669
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1670
    .line 1671
    .line 1672
    move-result v3

    .line 1673
    invoke-virtual {v0, v3}, Lio/sentry/SentryFeedbackOptions;->j(Z)V

    .line 1674
    .line 1675
    .line 1676
    const-string v3, "io.sentry.feedback.use-shake-gesture"

    .line 1677
    .line 1678
    invoke-virtual {v0}, Lio/sentry/SentryFeedbackOptions;->g()Z

    .line 1679
    .line 1680
    .line 1681
    move-result v6

    .line 1682
    invoke-static {p0, p1, v3, v6}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1683
    .line 1684
    .line 1685
    move-result v3

    .line 1686
    invoke-virtual {v0, v3}, Lio/sentry/SentryFeedbackOptions;->n(Z)V

    .line 1687
    .line 1688
    .line 1689
    const-string v0, "io.sentry.strict-trace-continuation.enabled"

    .line 1690
    .line 1691
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isStrictTraceContinuation()Z

    .line 1692
    .line 1693
    .line 1694
    move-result v3

    .line 1695
    invoke-static {p0, p1, v0, v3}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1696
    .line 1697
    .line 1698
    move-result v0

    .line 1699
    invoke-virtual {p2, v0}, Lio/sentry/SentryOptions;->setStrictTraceContinuation(Z)V

    .line 1700
    .line 1701
    .line 1702
    const-string v0, "io.sentry.org-id"

    .line 1703
    .line 1704
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v0

    .line 1708
    if-eqz v0, :cond_22

    .line 1709
    .line 1710
    invoke-virtual {p2, v0}, Lio/sentry/SentryOptions;->setOrgId(Ljava/lang/String;)V

    .line 1711
    .line 1712
    .line 1713
    :cond_22
    const-string v0, "io.sentry.spotlight.enable"

    .line 1714
    .line 1715
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->isEnableSpotlight()Z

    .line 1716
    .line 1717
    .line 1718
    move-result v3

    .line 1719
    invoke-static {p0, p1, v0, v3}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1720
    .line 1721
    .line 1722
    move-result v0

    .line 1723
    invoke-virtual {p2, v0}, Lio/sentry/SentryOptions;->setEnableSpotlight(Z)V

    .line 1724
    .line 1725
    .line 1726
    const-string v0, "io.sentry.spotlight.url"

    .line 1727
    .line 1728
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v0

    .line 1732
    if-eqz v0, :cond_23

    .line 1733
    .line 1734
    invoke-virtual {p2, v0}, Lio/sentry/SentryOptions;->setSpotlightConnectionUrl(Ljava/lang/String;)V

    .line 1735
    .line 1736
    .line 1737
    :cond_23
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v0

    .line 1741
    const-string v1, "io.sentry.screenshot.mask-all-text"

    .line 1742
    .line 1743
    invoke-static {p0, p1, v1, v2}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1744
    .line 1745
    .line 1746
    move-result v1

    .line 1747
    invoke-virtual {v0, v1}, Lio/sentry/SentryMaskingOptions;->c(Z)V

    .line 1748
    .line 1749
    .line 1750
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    .line 1751
    .line 1752
    .line 1753
    move-result-object v0

    .line 1754
    const-string v1, "io.sentry.screenshot.mask-all-images"

    .line 1755
    .line 1756
    invoke-static {p0, p1, v1, v2}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1757
    .line 1758
    .line 1759
    move-result v1

    .line 1760
    invoke-virtual {v0, v1}, Lio/sentry/android/core/SentryScreenshotOptions;->b(Z)V

    .line 1761
    .line 1762
    .line 1763
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getAnrProfilingSampleRate()Ljava/lang/Double;

    .line 1764
    .line 1765
    .line 1766
    move-result-object v0

    .line 1767
    if-nez v0, :cond_24

    .line 1768
    .line 1769
    const-string v0, "io.sentry.anr.profiling.sample-rate"

    .line 1770
    .line 1771
    invoke-static {p0, p1, v0}, Lio/sentry/android/core/ManifestMetadataReader;->d(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)D

    .line 1772
    .line 1773
    .line 1774
    move-result-wide v0

    .line 1775
    cmpl-double v3, v0, v4

    .line 1776
    .line 1777
    if-eqz v3, :cond_24

    .line 1778
    .line 1779
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v0

    .line 1783
    invoke-virtual {p2, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrProfilingSampleRate(Ljava/lang/Double;)V

    .line 1784
    .line 1785
    .line 1786
    :cond_24
    const-string v0, "io.sentry.anr.enable-fingerprinting"

    .line 1787
    .line 1788
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAnrFingerprinting()Z

    .line 1789
    .line 1790
    .line 1791
    move-result v1

    .line 1792
    invoke-static {p0, p1, v0, v1}, Lio/sentry/android/core/ManifestMetadataReader;->c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z

    .line 1793
    .line 1794
    .line 1795
    move-result p0

    .line 1796
    invoke-virtual {p2, p0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableAnrFingerprinting(Z)V

    .line 1797
    .line 1798
    .line 1799
    :cond_25
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1800
    .line 1801
    .line 1802
    move-result-object p0

    .line 1803
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 1804
    .line 1805
    const-string v0, "Retrieving configuration from AndroidManifest.xml"

    .line 1806
    .line 1807
    new-array v1, v2, [Ljava/lang/Object;

    .line 1808
    .line 1809
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1810
    .line 1811
    .line 1812
    return-void

    .line 1813
    :goto_c
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1814
    .line 1815
    .line 1816
    move-result-object p1

    .line 1817
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1818
    .line 1819
    const-string v0, "Failed to read configuration from android manifest metadata."

    .line 1820
    .line 1821
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1822
    .line 1823
    .line 1824
    return-void
.end method

.method public static b(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)Landroid/os/Bundle;
    .locals 0

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p2, 0x21

    .line 4
    .line 5
    if-lt p1, p2, :cond_0

    .line 6
    .line 7
    sget-object p1, Lio/sentry/android/core/ContextUtils;->d:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lio/sentry/android/core/ContextUtils;->e:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    :goto_0
    if-eqz p0, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static c(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p2, " read: "

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v0, 0x0

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return p0
.end method

.method public static d(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)D
    .locals 4

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    .line 3
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 16
    .line 17
    cmpl-double v2, v0, v2

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    invoke-virtual {p0, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    :cond_0
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p2, " read: "

    .line 45
    .line 46
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const/4 v2, 0x0

    .line 57
    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    .line 59
    invoke-interface {p1, p0, p2, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    return-wide v0
.end method

.method public static e(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 6
    .line 7
    const-string v1, " read: "

    .line 8
    .line 9
    invoke-static {p2, v1, p0}, Ljb;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p1, v0, p2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    const-string p1, ","

    .line 22
    .line 23
    const/4 p2, -0x1

    .line 24
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public static f(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;J)J
    .locals 1

    .line 1
    long-to-int p3, p3

    .line 2
    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    int-to-long p3, p0

    .line 7
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p2, " read: "

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const/4 v0, 0x0

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-wide p3
.end method

.method public static g(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 6
    .line 7
    const-string v0, " read: "

    .line 8
    .line 9
    invoke-static {p2, v0, p0}, Ljb;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public static h(Landroid/os/Bundle;Lio/sentry/ILogger;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 6
    .line 7
    const-string v0, " read: "

    .line 8
    .line 9
    invoke-static {p2, v0, p0}, Ljb;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x0

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p1, p3, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method
