.class abstract Lio/sentry/android/core/AndroidOptionsInitializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Lio/sentry/android/core/SentryAndroidOptions;Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/util/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;Z)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lio/sentry/transport/NoOpEnvelopeCache;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lio/sentry/android/core/cache/AndroidEnvelopeCache;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lio/sentry/android/core/cache/AndroidEnvelopeCache;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnvelopeDiskCache(Lio/sentry/cache/IEnvelopeCache;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v0, v0, Lio/sentry/NoOpConnectionStatusProvider;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    .line 32
    .line 33
    invoke-direct {v0, p1, p2, p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setConnectionStatusProvider(Lio/sentry/IConnectionStatusProvider;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lio/sentry/cache/PersistingScopeObserver;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->addScopeObserver(Lio/sentry/IScopeObserver;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lio/sentry/cache/PersistingOptionsObserver;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lio/sentry/cache/PersistingOptionsObserver;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->addOptionsObserver(Lio/sentry/IOptionsObserver;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    new-instance v0, Lio/sentry/DeduplicateMultithreadedEventProcessor;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lio/sentry/DeduplicateMultithreadedEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lio/sentry/android/core/DefaultAndroidEventProcessor;

    .line 70
    .line 71
    invoke-direct {v0, p1, p2, p0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lio/sentry/android/core/PerformanceAndroidEventProcessor;

    .line 78
    .line 79
    invoke-direct {v0, p0, p4}, Lio/sentry/android/core/PerformanceAndroidEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ActivityFramesTracker;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 83
    .line 84
    .line 85
    new-instance p4, Lio/sentry/android/core/ScreenshotEventProcessor;

    .line 86
    .line 87
    invoke-direct {p4, p0, p2, p5}, Lio/sentry/android/core/ScreenshotEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Z)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 91
    .line 92
    .line 93
    new-instance p4, Lio/sentry/android/core/ViewHierarchyEventProcessor;

    .line 94
    .line 95
    invoke-direct {p4, p0}, Lio/sentry/android/core/ViewHierarchyEventProcessor;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 99
    .line 100
    .line 101
    new-instance p4, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    .line 102
    .line 103
    invoke-direct {p4, p1, p2, p0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTransportGate()Lio/sentry/transport/ITransportGate;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    instance-of p4, p4, Lio/sentry/transport/NoOpTransportGate;

    .line 114
    .line 115
    if-eqz p4, :cond_3

    .line 116
    .line 117
    new-instance p4, Lio/sentry/android/core/AndroidTransportGate;

    .line 118
    .line 119
    invoke-direct {p4, p0}, Lio/sentry/android/core/AndroidTransportGate;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p4}, Lio/sentry/SentryOptions;->setTransportGate(Lio/sentry/transport/ITransportGate;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    instance-of v0, v0, Lio/sentry/internal/modules/NoOpModulesLoader;

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    new-instance v0, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;

    .line 138
    .line 139
    invoke-direct {v0, p1, p0}, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V

    .line 143
    .line 144
    .line 145
    :cond_4
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    instance-of v0, v0, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    .line 150
    .line 151
    if-eqz v0, :cond_5

    .line 152
    .line 153
    new-instance v0, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;

    .line 154
    .line 155
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-direct {v0, p1, v1}, Lio/sentry/android/core/internal/debugmeta/AssetsDebugMetaLoader;-><init>(Landroid/content/Context;Lio/sentry/ILogger;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDebugMetaLoader(Lio/sentry/internal/debugmeta/IDebugMetaLoader;)V

    .line 163
    .line 164
    .line 165
    :cond_5
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getVersionDetector()Lio/sentry/IVersionDetector;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    instance-of v0, v0, Lio/sentry/NoopVersionDetector;

    .line 170
    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    new-instance v0, Lio/sentry/DefaultVersionDetector;

    .line 174
    .line 175
    invoke-direct {v0, p0}, Lio/sentry/DefaultVersionDetector;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setVersionDetector(Lio/sentry/IVersionDetector;)V

    .line 179
    .line 180
    .line 181
    :cond_6
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    .line 182
    .line 183
    new-instance v1, Lio/sentry/kotlin/multiplatform/extensions/a;

    .line 184
    .line 185
    const/4 v2, 0x1

    .line 186
    invoke-direct {v1, p3, p0, v2}, Lio/sentry/kotlin/multiplatform/extensions/a;-><init>(Lio/sentry/util/LoadClass;Ljava/lang/Object;I)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 190
    .line 191
    .line 192
    const-string p3, "androidx.compose.ui.node.Owner"

    .line 193
    .line 194
    invoke-static {p0, p3}, Lio/sentry/util/LoadClass;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result p3

    .line 198
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getGestureTargetLocators()Ljava/util/List;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_8

    .line 207
    .line 208
    new-instance v1, Ljava/util/ArrayList;

    .line 209
    .line 210
    const/4 v3, 0x2

    .line 211
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .line 213
    .line 214
    new-instance v3, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;

    .line 215
    .line 216
    invoke-direct {v3, v0}, Lio/sentry/android/core/internal/gestures/AndroidViewGestureTargetLocator;-><init>(Lio/sentry/util/LazyEvaluator;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    if-eqz p3, :cond_7

    .line 223
    .line 224
    const-string v0, "io.sentry.compose.gestures.ComposeGestureTargetLocator"

    .line 225
    .line 226
    invoke-static {p0, v0}, Lio/sentry/util/LoadClass;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_7

    .line 231
    .line 232
    new-instance v0, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;

    .line 233
    .line 234
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-direct {v0, v3}, Lio/sentry/compose/gestures/ComposeGestureTargetLocator;-><init>(Lio/sentry/ILogger;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    :cond_7
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setGestureTargetLocators(Ljava/util/List;)V

    .line 245
    .line 246
    .line 247
    :cond_8
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getViewHierarchyExporters()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_9

    .line 256
    .line 257
    if-eqz p3, :cond_9

    .line 258
    .line 259
    const-string p3, "io.sentry.compose.viewhierarchy.ComposeViewHierarchyExporter"

    .line 260
    .line 261
    invoke-static {p0, p3}, Lio/sentry/util/LoadClass;->a(Lio/sentry/SentryOptions;Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result p3

    .line 265
    if-eqz p3, :cond_9

    .line 266
    .line 267
    new-instance p3, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    .line 271
    .line 272
    new-instance v0, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;

    .line 273
    .line 274
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-direct {v0, v1}, Lio/sentry/compose/viewhierarchy/ComposeViewHierarchyExporter;-><init>(Lio/sentry/ILogger;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, p3}, Lio/sentry/SentryOptions;->setViewHierarchyExporters(Ljava/util/List;)V

    .line 285
    .line 286
    .line 287
    :cond_9
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 288
    .line 289
    .line 290
    move-result-object p3

    .line 291
    instance-of p3, p3, Lio/sentry/util/thread/NoOpThreadChecker;

    .line 292
    .line 293
    if-eqz p3, :cond_a

    .line 294
    .line 295
    sget-object p3, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->a:Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    .line 296
    .line 297
    invoke-virtual {p0, p3}, Lio/sentry/SentryOptions;->setThreadChecker(Lio/sentry/util/thread/IThreadChecker;)V

    .line 298
    .line 299
    .line 300
    :cond_a
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSocketTagger()Lio/sentry/ISocketTagger;

    .line 301
    .line 302
    .line 303
    move-result-object p3

    .line 304
    instance-of p3, p3, Lio/sentry/NoOpSocketTagger;

    .line 305
    .line 306
    if-eqz p3, :cond_b

    .line 307
    .line 308
    sget-object p3, Lio/sentry/android/core/AndroidSocketTagger;->a:Lio/sentry/android/core/AndroidSocketTagger;

    .line 309
    .line 310
    invoke-virtual {p0, p3}, Lio/sentry/SentryOptions;->setSocketTagger(Lio/sentry/ISocketTagger;)V

    .line 311
    .line 312
    .line 313
    :cond_b
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getPerformanceCollectors()Ljava/util/List;

    .line 314
    .line 315
    .line 316
    move-result-object p3

    .line 317
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 318
    .line 319
    .line 320
    move-result p3

    .line 321
    const-string v0, "options.getFrameMetricsCollector is required"

    .line 322
    .line 323
    if-eqz p3, :cond_c

    .line 324
    .line 325
    new-instance p3, Lio/sentry/android/core/AndroidMemoryCollector;

    .line 326
    .line 327
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0, p3}, Lio/sentry/SentryOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 331
    .line 332
    .line 333
    new-instance p3, Lio/sentry/android/core/AndroidCpuCollector;

    .line 334
    .line 335
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-direct {p3, v1}, Lio/sentry/android/core/AndroidCpuCollector;-><init>(Lio/sentry/ILogger;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0, p3}, Lio/sentry/SentryOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    .line 346
    .line 347
    .line 348
    move-result p3

    .line 349
    if-eqz p3, :cond_c

    .line 350
    .line 351
    new-instance p3, Lio/sentry/android/core/SpanFrameMetricsCollector;

    .line 352
    .line 353
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-static {v1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-direct {p3, p0, v1}, Lio/sentry/android/core/SpanFrameMetricsCollector;-><init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, p3}, Lio/sentry/SentryOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 364
    .line 365
    .line 366
    :cond_c
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    .line 367
    .line 368
    .line 369
    move-result-object p3

    .line 370
    instance-of p3, p3, Lio/sentry/NoOpCompositePerformanceCollector;

    .line 371
    .line 372
    if-eqz p3, :cond_d

    .line 373
    .line 374
    new-instance p3, Lio/sentry/DefaultCompositePerformanceCollector;

    .line 375
    .line 376
    invoke-direct {p3, p0}, Lio/sentry/DefaultCompositePerformanceCollector;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0, p3}, Lio/sentry/SentryOptions;->setCompositePerformanceCollector(Lio/sentry/CompositePerformanceCollector;)V

    .line 380
    .line 381
    .line 382
    :cond_d
    if-eqz p5, :cond_e

    .line 383
    .line 384
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 385
    .line 386
    .line 387
    move-result-object p3

    .line 388
    invoke-interface {p3}, Lio/sentry/ReplayController;->P()Lio/sentry/ReplayBreadcrumbConverter;

    .line 389
    .line 390
    .line 391
    move-result-object p3

    .line 392
    instance-of p3, p3, Lio/sentry/NoOpReplayBreadcrumbConverter;

    .line 393
    .line 394
    if-eqz p3, :cond_e

    .line 395
    .line 396
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 397
    .line 398
    .line 399
    move-result-object p3

    .line 400
    new-instance p5, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;

    .line 401
    .line 402
    invoke-direct {p5, p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;-><init>(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 403
    .line 404
    .line 405
    invoke-interface {p3, p5}, Lio/sentry/ReplayController;->w(Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;)V

    .line 406
    .line 407
    .line 408
    :cond_e
    sget-object p3, Lio/sentry/android/core/performance/AppStartMetrics;->A:Lio/sentry/util/AutoClosableReentrantLock;

    .line 409
    .line 410
    invoke-virtual {p3}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 411
    .line 412
    .line 413
    move-result-object p3

    .line 414
    :try_start_0
    iget-object p5, p4, Lio/sentry/android/core/performance/AppStartMetrics;->r:Lio/sentry/ITransactionProfiler;

    .line 415
    .line 416
    iget-object v1, p4, Lio/sentry/android/core/performance/AppStartMetrics;->s:Lio/sentry/android/core/AndroidContinuousProfiler;

    .line 417
    .line 418
    const/4 v3, 0x0

    .line 419
    iput-object v3, p4, Lio/sentry/android/core/performance/AppStartMetrics;->r:Lio/sentry/ITransactionProfiler;

    .line 420
    .line 421
    iput-object v3, p4, Lio/sentry/android/core/performance/AppStartMetrics;->s:Lio/sentry/android/core/AndroidContinuousProfiler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .line 423
    invoke-interface {p3}, Ljava/lang/AutoCloseable;->close()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    .line 427
    .line 428
    .line 429
    move-result-object p3

    .line 430
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    .line 431
    .line 432
    .line 433
    move-result p4

    .line 434
    if-nez p4, :cond_f

    .line 435
    .line 436
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilesSampleRate()Ljava/lang/Double;

    .line 437
    .line 438
    .line 439
    move-result-object p4

    .line 440
    if-eqz p4, :cond_10

    .line 441
    .line 442
    :cond_f
    move-object v3, p2

    .line 443
    move-object p3, v0

    .line 444
    goto :goto_0

    .line 445
    :cond_10
    sget-object p1, Lio/sentry/NoOpTransactionProfiler;->a:Lio/sentry/NoOpTransactionProfiler;

    .line 446
    .line 447
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 448
    .line 449
    .line 450
    if-eqz p5, :cond_11

    .line 451
    .line 452
    check-cast p5, Lio/sentry/android/core/AndroidTransactionProfiler;

    .line 453
    .line 454
    invoke-virtual {p5}, Lio/sentry/android/core/AndroidTransactionProfiler;->close()V

    .line 455
    .line 456
    .line 457
    :cond_11
    if-eqz v1, :cond_13

    .line 458
    .line 459
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setContinuousProfiler(Lio/sentry/IContinuousProfiler;)V

    .line 460
    .line 461
    .line 462
    iget-object p0, v1, Lio/sentry/android/core/AndroidContinuousProfiler;->x:Lio/sentry/protocol/SentryId;

    .line 463
    .line 464
    iget-boolean p1, v1, Lio/sentry/android/core/AndroidContinuousProfiler;->r:Z

    .line 465
    .line 466
    if-eqz p1, :cond_12

    .line 467
    .line 468
    sget-object p1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 469
    .line 470
    invoke-virtual {p0, p1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    move-result p1

    .line 474
    if-nez p1, :cond_12

    .line 475
    .line 476
    invoke-virtual {p0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object p0

    .line 480
    invoke-interface {p3, p0}, Lio/sentry/CompositePerformanceCollector;->a(Ljava/lang/String;)V

    .line 481
    .line 482
    .line 483
    :cond_12
    return-void

    .line 484
    :cond_13
    move-object p3, v0

    .line 485
    new-instance v0, Lio/sentry/android/core/AndroidContinuousProfiler;

    .line 486
    .line 487
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-static {v2, p3}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v4

    .line 502
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesHz()I

    .line 503
    .line 504
    .line 505
    move-result v5

    .line 506
    new-instance v6, Lio/sentry/android/core/h;

    .line 507
    .line 508
    const/4 p1, 0x0

    .line 509
    invoke-direct {v6, p0, p1}, Lio/sentry/android/core/h;-><init>(Lio/sentry/android/core/SentryAndroidOptions;I)V

    .line 510
    .line 511
    .line 512
    move-object v1, p2

    .line 513
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/AndroidContinuousProfiler;-><init>(Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ILio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setContinuousProfiler(Lio/sentry/IContinuousProfiler;)V

    .line 517
    .line 518
    .line 519
    return-void

    .line 520
    :goto_0
    sget-object p2, Lio/sentry/NoOpContinuousProfiler;->j:Lio/sentry/NoOpContinuousProfiler;

    .line 521
    .line 522
    invoke-virtual {p0, p2}, Lio/sentry/SentryOptions;->setContinuousProfiler(Lio/sentry/IContinuousProfiler;)V

    .line 523
    .line 524
    .line 525
    if-eqz v1, :cond_14

    .line 526
    .line 527
    invoke-virtual {v1, v2}, Lio/sentry/android/core/AndroidContinuousProfiler;->b(Z)V

    .line 528
    .line 529
    .line 530
    :cond_14
    if-eqz p5, :cond_15

    .line 531
    .line 532
    invoke-virtual {p0, p5}, Lio/sentry/SentryOptions;->setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 533
    .line 534
    .line 535
    return-void

    .line 536
    :cond_15
    new-instance v1, Lio/sentry/android/core/AndroidTransactionProfiler;

    .line 537
    .line 538
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getFrameMetricsCollector()Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 539
    .line 540
    .line 541
    move-result-object v4

    .line 542
    invoke-static {v4, p3}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 546
    .line 547
    .line 548
    move-result-object v5

    .line 549
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    .line 554
    .line 555
    .line 556
    move-result v7

    .line 557
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesHz()I

    .line 558
    .line 559
    .line 560
    move-result v8

    .line 561
    new-instance v9, Lio/sentry/android/core/h;

    .line 562
    .line 563
    const/4 p2, 0x3

    .line 564
    invoke-direct {v9, p0, p2}, Lio/sentry/android/core/h;-><init>(Lio/sentry/android/core/SentryAndroidOptions;I)V

    .line 565
    .line 566
    .line 567
    move-object v2, p1

    .line 568
    invoke-direct/range {v1 .. v9}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->setTransactionProfiler(Lio/sentry/ITransactionProfiler;)V

    .line 572
    .line 573
    .line 574
    return-void

    .line 575
    :catchall_0
    move-exception v0

    .line 576
    move-object p0, v0

    .line 577
    :try_start_1
    invoke-interface {p3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 578
    .line 579
    .line 580
    goto :goto_1

    .line 581
    :catchall_1
    move-exception v0

    .line 582
    move-object p1, v0

    .line 583
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 584
    .line 585
    .line 586
    :goto_1
    throw p0
.end method

.method public static b(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/util/LoadClass;Lio/sentry/android/core/ActivityFramesTracker;ZZZZ)V
    .locals 6

    .line 1
    new-instance p3, Lio/sentry/util/LazyEvaluator;

    .line 2
    .line 3
    new-instance v0, Lio/sentry/android/core/h;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-direct {v0, p1, v1}, Lio/sentry/android/core/h;-><init>(Lio/sentry/android/core/SentryAndroidOptions;I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p3, v0}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    .line 13
    .line 14
    new-instance v2, Lio/sentry/SendFireAndForgetEnvelopeSender;

    .line 15
    .line 16
    new-instance v3, Lio/sentry/android/core/h;

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    invoke-direct {v3, p1, v4}, Lio/sentry/android/core/h;-><init>(Lio/sentry/android/core/SentryAndroidOptions;I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {v2, v3}, Lio/sentry/SendFireAndForgetEnvelopeSender;-><init>(Lio/sentry/android/core/h;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2, p3}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;Lio/sentry/util/LazyEvaluator;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "io.sentry.android.ndk.SentryNdk"

    .line 32
    .line 33
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0, v2}, Lio/sentry/util/LoadClass;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v2, Lio/sentry/android/core/NdkIntegration;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lio/sentry/android/core/NdkIntegration;-><init>(Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 47
    .line 48
    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    const/16 v2, 0x1f

    .line 52
    .line 53
    if-lt v0, v2, :cond_0

    .line 54
    .line 55
    new-instance v2, Lio/sentry/android/core/TombstoneIntegration;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lio/sentry/android/core/TombstoneIntegration;-><init>(Landroid/content/Context;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    new-instance v2, Lio/sentry/android/core/EnvelopeFileObserverIntegration$OutboxEnvelopeFileObserverIntegration;

    .line 64
    .line 65
    invoke-direct {v2}, Lio/sentry/android/core/EnvelopeFileObserverIntegration;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Lio/sentry/android/core/SendCachedEnvelopeIntegration;

    .line 72
    .line 73
    new-instance v3, Lio/sentry/SendFireAndForgetOutboxSender;

    .line 74
    .line 75
    new-instance v5, Lio/sentry/android/core/h;

    .line 76
    .line 77
    invoke-direct {v5, p1, v4}, Lio/sentry/android/core/h;-><init>(Lio/sentry/android/core/SentryAndroidOptions;I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v3, v5}, Lio/sentry/SendFireAndForgetOutboxSender;-><init>(Lio/sentry/android/core/h;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {v2, v3, p3}, Lio/sentry/android/core/SendCachedEnvelopeIntegration;-><init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;Lio/sentry/util/LazyEvaluator;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 87
    .line 88
    .line 89
    new-instance p3, Lio/sentry/android/core/AppLifecycleIntegration;

    .line 90
    .line 91
    invoke-direct {p3}, Lio/sentry/android/core/AppLifecycleIntegration;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 95
    .line 96
    .line 97
    const/16 p3, 0x1e

    .line 98
    .line 99
    if-lt v0, p3, :cond_1

    .line 100
    .line 101
    new-instance p3, Lio/sentry/android/core/AnrV2Integration;

    .line 102
    .line 103
    invoke-direct {p3, p0}, Lio/sentry/android/core/AnrV2Integration;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    new-instance p3, Lio/sentry/android/core/AnrIntegration;

    .line 108
    .line 109
    invoke-direct {p3, p0}, Lio/sentry/android/core/AnrIntegration;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 113
    .line 114
    .line 115
    new-instance p3, Lio/sentry/android/core/anr/AnrProfilingIntegration;

    .line 116
    .line 117
    invoke-direct {p3}, Lio/sentry/android/core/anr/AnrProfilingIntegration;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 121
    .line 122
    .line 123
    instance-of p3, p0, Landroid/app/Application;

    .line 124
    .line 125
    if-eqz p3, :cond_2

    .line 126
    .line 127
    new-instance p3, Lio/sentry/android/core/ActivityLifecycleIntegration;

    .line 128
    .line 129
    move-object v0, p0

    .line 130
    check-cast v0, Landroid/app/Application;

    .line 131
    .line 132
    invoke-direct {p3, v0, p2, p4}, Lio/sentry/android/core/ActivityLifecycleIntegration;-><init>(Landroid/app/Application;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/ActivityFramesTracker;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 136
    .line 137
    .line 138
    new-instance p3, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;

    .line 139
    .line 140
    invoke-direct {p3, v0}, Lio/sentry/android/core/ActivityBreadcrumbsIntegration;-><init>(Landroid/app/Application;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 144
    .line 145
    .line 146
    new-instance p3, Lio/sentry/android/core/UserInteractionIntegration;

    .line 147
    .line 148
    invoke-direct {p3, v0}, Lio/sentry/android/core/UserInteractionIntegration;-><init>(Landroid/app/Application;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 152
    .line 153
    .line 154
    new-instance p3, Lio/sentry/android/core/FeedbackShakeIntegration;

    .line 155
    .line 156
    invoke-direct {p3, v0}, Lio/sentry/android/core/FeedbackShakeIntegration;-><init>(Landroid/app/Application;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 160
    .line 161
    .line 162
    if-eqz p5, :cond_3

    .line 163
    .line 164
    new-instance p3, Lio/sentry/android/fragment/FragmentLifecycleIntegration;

    .line 165
    .line 166
    invoke-direct {p3, v0, v1, v1}, Lio/sentry/android/fragment/FragmentLifecycleIntegration;-><init>(Landroid/app/Application;ZZ)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    sget-object p4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 178
    .line 179
    const/4 p5, 0x0

    .line 180
    new-array p5, p5, [Ljava/lang/Object;

    .line 181
    .line 182
    const-string v0, "ActivityLifecycle, FragmentLifecycle and UserInteraction Integrations need an Application class to be installed."

    .line 183
    .line 184
    invoke-interface {p3, p4, v0, p5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_3
    :goto_1
    if-eqz p6, :cond_4

    .line 188
    .line 189
    new-instance p3, Lio/sentry/android/timber/SentryTimberIntegration;

    .line 190
    .line 191
    invoke-direct {p3}, Lio/sentry/android/timber/SentryTimberIntegration;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 195
    .line 196
    .line 197
    :cond_4
    new-instance p3, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;

    .line 198
    .line 199
    invoke-direct {p3, p0}, Lio/sentry/android/core/AppComponentsBreadcrumbsIntegration;-><init>(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 203
    .line 204
    .line 205
    new-instance p3, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    .line 206
    .line 207
    invoke-direct {p3, p0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;-><init>(Landroid/content/Context;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 211
    .line 212
    .line 213
    new-instance p3, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 214
    .line 215
    invoke-direct {p3, p0, p2}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, p3}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 219
    .line 220
    .line 221
    if-eqz p7, :cond_5

    .line 222
    .line 223
    new-instance p2, Lio/sentry/android/replay/ReplayIntegration;

    .line 224
    .line 225
    invoke-direct {p2, p0}, Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->setReplayController(Lio/sentry/ReplayController;)V

    .line 232
    .line 233
    .line 234
    :cond_5
    if-eqz p8, :cond_6

    .line 235
    .line 236
    new-instance p2, Lio/sentry/android/distribution/DistributionIntegration;

    .line 237
    .line 238
    invoke-direct {p2, p0}, Lio/sentry/android/distribution/DistributionIntegration;-><init>(Landroid/content/Context;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->setDistributionController(Lio/sentry/IDistributionApi;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, p2}, Lio/sentry/SentryOptions;->addIntegration(Lio/sentry/Integration;)V

    .line 245
    .line 246
    .line 247
    :cond_6
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getFeedbackOptions()Lio/sentry/SentryFeedbackOptions;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    .line 253
    .line 254
    return-void
.end method
