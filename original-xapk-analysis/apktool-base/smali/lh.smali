.class public final synthetic Llh;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 10
    iput p1, p0, Llh;->j:I

    iput-object p2, p0, Llh;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 0

    .line 1
    const/4 p2, 0x7

    .line 2
    iput p2, p0, Llh;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Llh;->k:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Llh;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    iget-object p0, p0, Llh;->k:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast p0, Lkotlinx/coroutines/sync/MutexImpl;

    .line 14
    .line 15
    check-cast p1, Ljava/lang/Throwable;

    .line 16
    .line 17
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/sync/MutexImpl;->h(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-object v4

    .line 21
    :pswitch_0
    check-cast p0, Lio/sentry/kotlin/multiplatform/SentryOptions;

    .line 22
    .line 23
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->a:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setDsn(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lio/sentry/SentryOptions;->setAttachThreads(Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lio/sentry/SentryOptions;->setAttachStacktrace(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setDist(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->d:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setEnvironment(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v2}, Lio/sentry/SentryOptions;->setSendDefaultPii(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setRelease(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-boolean v0, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->c:Z

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setDebug(Z)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v5, 0x7530

    .line 61
    .line 62
    invoke-virtual {p1, v5, v6}, Lio/sentry/SentryOptions;->setSessionTrackingIntervalMillis(J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lio/sentry/SentryOptions;->setEnableAutoSessionTracking(Z)V

    .line 66
    .line 67
    .line 68
    iget-wide v5, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->h:J

    .line 69
    .line 70
    invoke-virtual {p1, v5, v6}, Lio/sentry/SentryOptions;->setMaxAttachmentSize(J)V

    .line 71
    .line 72
    .line 73
    iget v0, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->g:I

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setMaxBreadcrumbs(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->i:Ljava/lang/Double;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setSampleRate(Ljava/lang/Double;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v3}, Lio/sentry/SentryOptions;->setTracesSampleRate(Ljava/lang/Double;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->f:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 87
    .line 88
    invoke-static {v0}, Lio/sentry/kotlin/multiplatform/extensions/SentryLevelExtensions_jvmKt;->a(Lio/sentry/kotlin/multiplatform/SentryLevel;)Lio/sentry/SentryLevel;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setDiagnosticLevel(Lio/sentry/SentryLevel;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogs()Lio/sentry/SentryOptions$Logs;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v5, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->m:Lio/sentry/kotlin/multiplatform/log/SentryLogOptions;

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    iput-boolean v2, v0, Lio/sentry/SentryOptions$Logs;->a:Z

    .line 105
    .line 106
    new-instance v0, Lfe;

    .line 107
    .line 108
    const/16 v5, 0x19

    .line 109
    .line 110
    invoke-direct {v0, v5, p0}, Lfe;-><init>(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lio/sentry/kotlin/multiplatform/extensions/a;

    .line 117
    .line 118
    invoke-direct {v0, v2, p0}, Lio/sentry/kotlin/multiplatform/extensions/a;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lio/sentry/SentryOptions;->setBeforeSend(Lio/sentry/SentryOptions$BeforeSendCallback;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachScreenshot(Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v2}, Lio/sentry/android/core/SentryAndroidOptions;->setAttachViewHierarchy(Z)V

    .line 128
    .line 129
    .line 130
    iget-boolean v0, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->j:Z

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrEnabled(Z)V

    .line 133
    .line 134
    .line 135
    iget-wide v5, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->k:J

    .line 136
    .line 137
    invoke-virtual {p1, v5, v6}, Lio/sentry/android/core/SentryAndroidOptions;->setAnrTimeoutIntervalMillis(J)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lio/sentry/kotlin/multiplatform/SentryOptions;->l:Lio/sentry/kotlin/multiplatform/SentryReplayOptions;

    .line 148
    .line 149
    iget-boolean v2, p0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions;->a:Z

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Lio/sentry/SentryReplayOptions;->c(Z)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    iget-boolean v2, p0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions;->b:Z

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Lio/sentry/SentryReplayOptions;->b(Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v0, v3}, Lio/sentry/SentryReplayOptions;->u(Ljava/lang/Double;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, v3}, Lio/sentry/SentryReplayOptions;->t(Ljava/lang/Double;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iget-object p0, p0, Lio/sentry/kotlin/multiplatform/SentryReplayOptions;->c:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 185
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    sget-object v0, Lio/sentry/kotlin/multiplatform/extensions/SentryOptionsExtensions_androidKt$WhenMappings;->a:[I

    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 192
    .line 193
    .line 194
    move-result p0

    .line 195
    aget p0, v0, p0

    .line 196
    .line 197
    if-eq p0, v1, :cond_2

    .line 198
    .line 199
    const/4 v0, 0x2

    .line 200
    if-eq p0, v0, :cond_1

    .line 201
    .line 202
    const/4 v0, 0x3

    .line 203
    if-ne p0, v0, :cond_0

    .line 204
    .line 205
    sget-object p0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->HIGH:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_0
    invoke-static {}, Lk8;->e()V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_1
    sget-object p0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->MEDIUM:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_2
    sget-object p0, Lio/sentry/SentryReplayOptions$SentryReplayQuality;->LOW:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 216
    .line 217
    :goto_0
    iput-object p0, p1, Lio/sentry/SentryReplayOptions;->f:Lio/sentry/SentryReplayOptions$SentryReplayQuality;

    .line 218
    .line 219
    move-object v3, v4

    .line 220
    :goto_1
    return-object v3

    .line 221
    :pswitch_1
    check-cast p0, Lle;

    .line 222
    .line 223
    check-cast p1, Lio/sentry/IScope;

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    new-instance v0, Lio/sentry/kotlin/multiplatform/JvmScopeProvider;

    .line 229
    .line 230
    invoke-direct {v0, p1}, Lio/sentry/kotlin/multiplatform/JvmScopeProvider;-><init>(Lio/sentry/IScope;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v0}, Lle;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    return-object v4

    .line 237
    :pswitch_2
    check-cast p0, Llh;

    .line 238
    .line 239
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-virtual {p0, p1}, Llh;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 248
    .line 249
    .line 250
    move-result-object p0

    .line 251
    if-eqz p0, :cond_3

    .line 252
    .line 253
    const-string v0, "sentry.java.android.kmp"

    .line 254
    .line 255
    iput-object v0, p0, Lio/sentry/protocol/SdkVersion;->j:Ljava/lang/String;

    .line 256
    .line 257
    :cond_3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    if-eqz p0, :cond_4

    .line 262
    .line 263
    const-string v0, "0.27.0"

    .line 264
    .line 265
    iput-object v0, p0, Lio/sentry/protocol/SdkVersion;->k:Ljava/lang/String;

    .line 266
    .line 267
    :cond_4
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    if-eqz p0, :cond_9

    .line 272
    .line 273
    iget-object p0, p0, Lio/sentry/protocol/SdkVersion;->l:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 274
    .line 275
    if-eqz p0, :cond_5

    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_5
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    iget-object p0, p0, Lio/sentry/SentryIntegrationPackageStorage;->b:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 283
    .line 284
    :goto_2
    if-eqz p0, :cond_9

    .line 285
    .line 286
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    const-string v1, "maven:io.sentry:sentry-android"

    .line 291
    .line 292
    if-eqz v0, :cond_6

    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_8

    .line 304
    .line 305
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Lio/sentry/protocol/SentryPackage;

    .line 310
    .line 311
    iget-object v0, v0, Lio/sentry/protocol/SentryPackage;->j:Ljava/lang/String;

    .line 312
    .line 313
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    if-eqz v0, :cond_7

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_8
    :goto_3
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    if-eqz p0, :cond_9

    .line 325
    .line 326
    const-string p0, "8.41.0"

    .line 327
    .line 328
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v0, v1, p0}, Lio/sentry/SentryIntegrationPackageStorage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    :cond_9
    :goto_4
    const-string p0, "sentry.native.android.kmp"

    .line 336
    .line 337
    invoke-virtual {p1, p0}, Lio/sentry/android/core/SentryAndroidOptions;->setNativeSdkName(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    return-object v4

    .line 341
    :pswitch_3
    check-cast p0, Landroidx/navigation/NavHostController;

    .line 342
    .line 343
    check-cast p1, Ljava/lang/Integer;

    .line 344
    .line 345
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v1, "audioPicker/"

    .line 352
    .line 353
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-static {p0, p1}, Landroidx/navigation/NavController;->b(Landroidx/navigation/NavController;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    return-object v4

    .line 367
    :pswitch_4
    check-cast p0, Landroidx/compose/animation/core/TransitionInstance;

    .line 368
    .line 369
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 370
    .line 371
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$updateTransition$lambda$1$0$$inlined$onDispose$1;

    .line 372
    .line 373
    invoke-direct {p1, p0}, Landroidx/compose/animation/core/TransitionKt$updateTransition$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/TransitionInstance;)V

    .line 374
    .line 375
    .line 376
    return-object p1

    .line 377
    :pswitch_5
    check-cast p0, Landroidx/compose/animation/core/Transition;

    .line 378
    .line 379
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    .line 380
    .line 381
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$3$0$$inlined$onDispose$1;

    .line 382
    .line 383
    invoke-direct {p1, p0}, Landroidx/compose/animation/core/TransitionKt$rememberTransition$lambda$3$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/Transition;)V

    .line 384
    .line 385
    .line 386
    return-object p1

    .line 387
    :pswitch_6
    check-cast p0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    .line 388
    .line 389
    check-cast p1, Landroidx/compose/ui/autofill/FillableData;

    .line 390
    .line 391
    check-cast p1, Landroidx/compose/ui/autofill/AndroidFillableData;

    .line 392
    .line 393
    iget-object p1, p1, Landroidx/compose/ui/autofill/AndroidFillableData;->a:Landroid/view/autofill/AutofillValue;

    .line 394
    .line 395
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isToggle()Z

    .line 396
    .line 397
    .line 398
    move-result v0

    .line 399
    if-eqz v0, :cond_a

    .line 400
    .line 401
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getToggleValue()Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    :cond_a
    if-eqz v3, :cond_c

    .line 410
    .line 411
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 412
    .line 413
    .line 414
    move-result p1

    .line 415
    if-eqz p1, :cond_b

    .line 416
    .line 417
    sget-object p1, Landroidx/compose/ui/state/ToggleableState;->j:Landroidx/compose/ui/state/ToggleableState;

    .line 418
    .line 419
    goto :goto_5

    .line 420
    :cond_b
    sget-object p1, Landroidx/compose/ui/state/ToggleableState;->k:Landroidx/compose/ui/state/ToggleableState;

    .line 421
    .line 422
    :goto_5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 423
    .line 424
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->L:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 425
    .line 426
    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    .line 427
    .line 428
    const/16 v3, 0x1a

    .line 429
    .line 430
    aget-object v2, v2, v3

    .line 431
    .line 432
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    invoke-interface {p0, v0, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->b(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    .line 436
    .line 437
    .line 438
    goto :goto_6

    .line 439
    :cond_c
    move v1, v2

    .line 440
    :goto_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    return-object p0

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
