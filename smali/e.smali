.class public final synthetic Le;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Le;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Le;->k:Ljava/lang/Object;

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
    .locals 4

    .line 1
    iget v0, p0, Le;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    iget-object p0, p0, Le;->k:Ljava/lang/Object;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    check-cast p0, Lio/sentry/metrics/MetricsBatchProcessor;

    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->m:Lio/sentry/SentryExecutorService;

    .line 14
    .line 15
    iget-object p0, p0, Lio/sentry/metrics/MetricsBatchProcessor;->j:Lio/sentry/SentryOptions;

    .line 16
    .line 17
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryExecutorService;->a(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast p0, Lio/sentry/logger/LoggerBatchProcessor;

    .line 26
    .line 27
    iget-object v0, p0, Lio/sentry/logger/LoggerBatchProcessor;->m:Lio/sentry/SentryExecutorService;

    .line 28
    .line 29
    iget-object p0, p0, Lio/sentry/logger/LoggerBatchProcessor;->j:Lio/sentry/SentryOptions;

    .line 30
    .line 31
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {v0, v1, v2}, Lio/sentry/SentryExecutorService;->a(J)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_1
    check-cast p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 40
    .line 41
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->g:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->g:Landroid/graphics/Bitmap;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->g:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    iget-object v1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->g:Landroid/graphics/Bitmap;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    :goto_0
    monitor-exit v0

    .line 69
    goto :goto_2

    .line 70
    :goto_1
    monitor-exit v0

    .line 71
    throw p0

    .line 72
    :cond_1
    :goto_2
    iget-object p0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->j:Lio/sentry/android/replay/util/MaskRenderer;

    .line 73
    .line 74
    invoke-virtual {p0}, Lio/sentry/android/replay/util/MaskRenderer;->close()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :pswitch_2
    check-cast p0, Lio/sentry/android/ndk/NdkScopeObserver;

    .line 79
    .line 80
    iget-object p0, p0, Lio/sentry/android/ndk/NdkScopeObserver;->b:Lio/sentry/ndk/NativeScope;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lio/sentry/ndk/NativeScope;->nativeClearAttachments()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_3
    check-cast p0, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;

    .line 90
    .line 91
    sget v0, Lio/sentry/android/core/internal/modules/AssetsModulesLoader;->f:I

    .line 92
    .line 93
    invoke-virtual {p0}, Lio/sentry/internal/modules/ModulesLoader;->a()Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_4
    check-cast p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;

    .line 98
    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v0

    .line 103
    iput-wide v0, p0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->n:J

    .line 104
    .line 105
    return-void

    .line 106
    :pswitch_5
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    .line 107
    .line 108
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->d:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 109
    .line 110
    new-instance v1, Lp;

    .line 111
    .line 112
    const/16 v2, 0x17

    .line 113
    .line 114
    invoke-direct {v1, v2, p0}, Lp;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :pswitch_6
    check-cast p0, Landroidx/appcompat/widget/Toolbar;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->l()V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_7
    check-cast p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 130
    .line 131
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->q:Landroid/view/Surface;

    .line 132
    .line 133
    if-eqz v0, :cond_2

    .line 134
    .line 135
    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_2

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    check-cast v3, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;

    .line 152
    .line 153
    invoke-interface {v3}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;->r()V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->p:Landroid/graphics/SurfaceTexture;

    .line 158
    .line 159
    if-eqz v1, :cond_3

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 162
    .line 163
    .line 164
    :cond_3
    if-eqz v0, :cond_4

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 167
    .line 168
    .line 169
    :cond_4
    iput-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->p:Landroid/graphics/SurfaceTexture;

    .line 170
    .line 171
    iput-object v2, p0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->q:Landroid/view/Surface;

    .line 172
    .line 173
    return-void

    .line 174
    :pswitch_8
    check-cast p0, Landroid/view/View;

    .line 175
    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v2, "input_method"

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 187
    .line 188
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :pswitch_9
    check-cast p0, Landroidx/compose/material/ripple/RippleHostView;

    .line 193
    .line 194
    invoke-static {p0}, Landroidx/compose/material/ripple/RippleHostView;->a(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_a
    check-cast p0, Landroidx/lifecycle/ProcessLifecycleOwner;

    .line 199
    .line 200
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->o:Landroidx/lifecycle/LifecycleRegistry;

    .line 201
    .line 202
    iget v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->k:I

    .line 203
    .line 204
    if-nez v1, :cond_5

    .line 205
    .line 206
    iput-boolean v3, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->l:Z

    .line 207
    .line 208
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 211
    .line 212
    .line 213
    :cond_5
    iget v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->j:I

    .line 214
    .line 215
    if-nez v1, :cond_6

    .line 216
    .line 217
    iget-boolean v1, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->l:Z

    .line 218
    .line 219
    if-eqz v1, :cond_6

    .line 220
    .line 221
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->e(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 224
    .line 225
    .line 226
    iput-boolean v3, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->m:Z

    .line 227
    .line 228
    :cond_6
    return-void

    .line 229
    :pswitch_b
    check-cast p0, Landroidx/media3/ui/PlayerView;

    .line 230
    .line 231
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :pswitch_c
    check-cast p0, Landroidx/media3/ui/PlayerControlView;

    .line 236
    .line 237
    sget-object v0, Landroidx/media3/ui/PlayerControlView;->Q0:[F

    .line 238
    .line 239
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->s()V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :pswitch_d
    check-cast p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    .line 244
    .line 245
    iget v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->m:I

    .line 246
    .line 247
    sub-int/2addr v0, v3

    .line 248
    iput v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->m:I

    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_e
    check-cast p0, Lkotlinx/coroutines/Job;

    .line 252
    .line 253
    if-eqz p0, :cond_7

    .line 254
    .line 255
    invoke-interface {p0, v2}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 256
    .line 257
    .line 258
    :cond_7
    return-void

    .line 259
    :pswitch_f
    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    .line 260
    .line 261
    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->k:Lcom/google/common/collect/Ordering;

    .line 262
    .line 263
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->f:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 264
    .line 265
    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->B:Z

    .line 266
    .line 267
    if-eqz v0, :cond_8

    .line 268
    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 270
    .line 271
    const/16 v1, 0x20

    .line 272
    .line 273
    if-lt v0, v1, :cond_8

    .line 274
    .line 275
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->h:Landroidx/media3/exoplayer/util/SpatializerWrapper;

    .line 276
    .line 277
    if-eqz v0, :cond_8

    .line 278
    .line 279
    iget-boolean v0, v0, Landroidx/media3/exoplayer/util/SpatializerWrapper;->b:Z

    .line 280
    .line 281
    if-eqz v0, :cond_8

    .line 282
    .line 283
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelector;->a:Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;

    .line 284
    .line 285
    if-eqz p0, :cond_8

    .line 286
    .line 287
    invoke-interface {p0, v2}, Landroidx/media3/exoplayer/trackselection/TrackSelector$InvalidationListener;->a(Landroidx/media3/common/TrackSelectionParameters;)V

    .line 288
    .line 289
    .line 290
    :cond_8
    return-void

    .line 291
    :pswitch_10
    check-cast p0, Landroidx/media3/ui/DefaultTimeBar;

    .line 292
    .line 293
    sget v0, Landroidx/media3/ui/DefaultTimeBar;->b0:I

    .line 294
    .line 295
    invoke-virtual {p0, v1}, Landroidx/media3/ui/DefaultTimeBar;->d(Z)V

    .line 296
    .line 297
    .line 298
    return-void

    .line 299
    :pswitch_11
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    .line 300
    .line 301
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->G()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    new-instance v1, Lb7;

    .line 306
    .line 307
    const/16 v2, 0xa

    .line 308
    .line 309
    invoke-direct {v1, v2}, Lb7;-><init>(I)V

    .line 310
    .line 311
    .line 312
    const/16 v2, 0x404

    .line 313
    .line 314
    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->N(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 315
    .line 316
    .line 317
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->o:Landroidx/media3/common/util/ListenerSet;

    .line 318
    .line 319
    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->d()V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :pswitch_12
    check-cast p0, Landroidx/activity/ComponentDialog;

    .line 324
    .line 325
    invoke-static {p0}, Landroidx/activity/ComponentDialog;->c(Landroidx/activity/ComponentDialog;)V

    .line 326
    .line 327
    .line 328
    return-void

    .line 329
    :pswitch_13
    check-cast p0, Landroidx/media3/common/util/ListenerSet;

    .line 330
    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 332
    .line 333
    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    iget-object v1, p0, Landroidx/media3/common/util/ListenerSet;->a:Ljava/lang/Thread;

    .line 339
    .line 340
    if-ne v0, v1, :cond_9

    .line 341
    .line 342
    new-instance v0, Landroidx/media3/exoplayer/audio/a;

    .line 343
    .line 344
    invoke-direct {v0, v3}, Landroidx/media3/exoplayer/audio/a;-><init>(I)V

    .line 345
    .line 346
    .line 347
    const/4 v1, -0x1

    .line 348
    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    .line 349
    .line 350
    .line 351
    :cond_9
    return-void

    .line 352
    :pswitch_14
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 353
    .line 354
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->c()V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :pswitch_15
    check-cast p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;

    .line 359
    .line 360
    iget-object v0, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->a:Landroid/content/Context;

    .line 361
    .line 362
    iget-object p0, p0, Landroidx/media3/common/audio/AudioBecomingNoisyManager;->b:Landroidx/media3/common/audio/AudioBecomingNoisyManager$AudioBecomingNoisyReceiver;

    .line 363
    .line 364
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :pswitch_16
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    .line 369
    .line 370
    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->h:Landroid/view/ActionMode;

    .line 371
    .line 372
    if-eqz p0, :cond_a

    .line 373
    .line 374
    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    .line 375
    .line 376
    .line 377
    :cond_a
    return-void

    .line 378
    :pswitch_17
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 379
    .line 380
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->W:Landroidx/collection/MutableIntList;

    .line 381
    .line 382
    const-string v0, "Compose:semantics:measureAndLayout"

    .line 383
    .line 384
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    :try_start_1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->m:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 388
    .line 389
    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->r(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 390
    .line 391
    .line 392
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 393
    .line 394
    .line 395
    const-string v0, "Compose:semantics:checkForSemanticsChanges"

    .line 396
    .line 397
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 401
    .line 402
    .line 403
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 404
    .line 405
    .line 406
    iput-boolean v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->R:Z

    .line 407
    .line 408
    return-void

    .line 409
    :catchall_1
    move-exception p0

    .line 410
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 411
    .line 412
    .line 413
    throw p0

    .line 414
    :catchall_2
    move-exception p0

    .line 415
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 416
    .line 417
    .line 418
    throw p0

    .line 419
    :pswitch_18
    check-cast p0, Landroidx/compose/ui/platform/AbstractComposeView;

    .line 420
    .line 421
    sget v0, Landroidx/compose/ui/platform/AbstractComposeView;->s:I

    .line 422
    .line 423
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->b()V

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
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
