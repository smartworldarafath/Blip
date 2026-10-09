.class public final synthetic Lf3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lf3;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lf3;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lf3;->l:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lf3;->j:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lio/sentry/ShutdownHookIntegration;

    .line 11
    .line 12
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lio/sentry/SentryOptions;

    .line 15
    .line 16
    iget-object v1, v0, Lio/sentry/ShutdownHookIntegration;->j:Ljava/lang/Runtime;

    .line 17
    .line 18
    iget-object v0, v0, Lio/sentry/ShutdownHookIntegration;->k:Ljava/lang/Thread;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 28
    .line 29
    const-string v1, "ShutdownHookIntegration installed."

    .line 30
    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    .line 33
    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const-string p0, "ShutdownHook"

    .line 37
    .line 38
    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lio/sentry/Scopes;

    .line 45
    .line 46
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lio/sentry/ISentryExecutorService;

    .line 49
    .line 50
    invoke-virtual {v0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    invoke-interface {p0, v0, v1}, Lio/sentry/ISentryExecutorService;->a(J)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_1
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v0, Landroidx/media3/common/util/WakeLockManager;

    .line 65
    .line 66
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    iget-object v0, v0, Landroidx/media3/common/util/WakeLockManager;->a:Landroidx/media3/common/util/WakeLockManager$WakeLockManagerInternal;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_0

    .line 80
    .line 81
    new-instance v2, Ljava/lang/Thread;

    .line 82
    .line 83
    new-instance v3, Landroidx/media3/common/util/a;

    .line 84
    .line 85
    invoke-direct {v3, v1, v0, p0}, Landroidx/media3/common/util/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    const-string p0, "ExoPlayer:WakeLockManager"

    .line 89
    .line 90
    invoke-direct {v2, v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 94
    .line 95
    .line 96
    :cond_0
    return-void

    .line 97
    :pswitch_2
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 100
    .line 101
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast p0, Landroidx/media3/exoplayer/CodecParameters;

    .line 104
    .line 105
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 106
    .line 107
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->i(Landroidx/media3/exoplayer/CodecParameters;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_3
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 116
    .line 117
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast p0, Ljava/lang/Exception;

    .line 120
    .line 121
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 122
    .line 123
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->A(Ljava/lang/Exception;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_4
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 132
    .line 133
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast p0, Landroidx/media3/common/VideoSize;

    .line 136
    .line 137
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 138
    .line 139
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 140
    .line 141
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->a(Landroidx/media3/common/VideoSize;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :pswitch_5
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 148
    .line 149
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p0, Ljava/lang/String;

    .line 152
    .line 153
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 154
    .line 155
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 156
    .line 157
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->h(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_6
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v0, Landroid/content/Context;

    .line 164
    .line 165
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast p0, Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :pswitch_7
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast v0, Ljava/lang/Runnable;

    .line 180
    .line 181
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast p0, Landroidx/room/TransactionExecutor;

    .line 184
    .line 185
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->b()V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->b()V

    .line 194
    .line 195
    .line 196
    throw v0

    .line 197
    :pswitch_8
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v0, Landroidx/work/impl/background/greedy/TimeLimiter;

    .line 200
    .line 201
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast p0, Landroidx/work/impl/StartStopToken;

    .line 204
    .line 205
    iget-object v0, v0, Landroidx/work/impl/background/greedy/TimeLimiter;->b:Landroidx/work/impl/WorkLauncherImpl;

    .line 206
    .line 207
    invoke-virtual {v0, p0, v1}, Landroidx/work/impl/WorkLauncherImpl;->a(Landroidx/work/impl/StartStopToken;I)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :pswitch_9
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    .line 214
    .line 215
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast p0, Landroid/graphics/SurfaceTexture;

    .line 218
    .line 219
    iget-object v1, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->p:Landroid/graphics/SurfaceTexture;

    .line 220
    .line 221
    iget-object v2, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->q:Landroid/view/Surface;

    .line 222
    .line 223
    new-instance v3, Landroid/view/Surface;

    .line 224
    .line 225
    invoke-direct {v3, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 226
    .line 227
    .line 228
    iput-object p0, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->p:Landroid/graphics/SurfaceTexture;

    .line 229
    .line 230
    iput-object v3, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->q:Landroid/view/Surface;

    .line 231
    .line 232
    iget-object p0, v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 233
    .line 234
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 235
    .line 236
    .line 237
    move-result-object p0

    .line 238
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_1

    .line 243
    .line 244
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;

    .line 249
    .line 250
    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;->u(Landroid/view/Surface;)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_1
    if-eqz v1, :cond_2

    .line 255
    .line 256
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 257
    .line 258
    .line 259
    :cond_2
    if-eqz v2, :cond_3

    .line 260
    .line 261
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 262
    .line 263
    .line 264
    :cond_3
    return-void

    .line 265
    :pswitch_a
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v0, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 268
    .line 269
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast p0, Landroid/graphics/Typeface;

    .line 272
    .line 273
    invoke-virtual {v0, p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->c(Landroid/graphics/Typeface;)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :pswitch_b
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v0, Landroidx/work/impl/Processor;

    .line 280
    .line 281
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast p0, Landroidx/work/impl/model/WorkGenerationalId;

    .line 284
    .line 285
    iget-object v1, v0, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    .line 286
    .line 287
    monitor-enter v1

    .line 288
    :try_start_1
    iget-object v0, v0, Landroidx/work/impl/Processor;->j:Ljava/util/ArrayList;

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_4

    .line 299
    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v3

    .line 304
    check-cast v3, Landroidx/work/impl/ExecutionListener;

    .line 305
    .line 306
    invoke-interface {v3, p0, v2}, Landroidx/work/impl/ExecutionListener;->b(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    .line 307
    .line 308
    .line 309
    goto :goto_1

    .line 310
    :catchall_1
    move-exception p0

    .line 311
    goto :goto_2

    .line 312
    :cond_4
    monitor-exit v1

    .line 313
    return-void

    .line 314
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 315
    throw p0

    .line 316
    :pswitch_c
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Landroidx/media3/ui/PlayerView;

    .line 319
    .line 320
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 321
    .line 322
    check-cast p0, Landroid/graphics/Bitmap;

    .line 323
    .line 324
    invoke-static {v0, p0}, Landroidx/media3/ui/PlayerView;->a(Landroidx/media3/ui/PlayerView;Landroid/graphics/Bitmap;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :pswitch_d
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v0, Landroidx/media3/common/util/Consumer;

    .line 331
    .line 332
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    .line 335
    .line 336
    invoke-interface {v0, p0}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :pswitch_e
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 343
    .line 344
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast p0, Landroid/media/metrics/PlaybackStateEvent;

    .line 347
    .line 348
    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    .line 349
    .line 350
    invoke-static {v0, p0}, Lcb;->t(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackStateEvent;)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :pswitch_f
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 357
    .line 358
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast p0, Landroid/media/metrics/PlaybackMetrics;

    .line 361
    .line 362
    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    .line 363
    .line 364
    invoke-static {v0, p0}, Lcb;->s(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackMetrics;)V

    .line 365
    .line 366
    .line 367
    return-void

    .line 368
    :pswitch_10
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 369
    .line 370
    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 371
    .line 372
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 373
    .line 374
    check-cast p0, Landroid/media/metrics/PlaybackErrorEvent;

    .line 375
    .line 376
    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    .line 377
    .line 378
    invoke-static {v0, p0}, Lcb;->r(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/PlaybackErrorEvent;)V

    .line 379
    .line 380
    .line 381
    return-void

    .line 382
    :pswitch_11
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 383
    .line 384
    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 385
    .line 386
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast p0, Landroid/media/metrics/NetworkEvent;

    .line 389
    .line 390
    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    .line 391
    .line 392
    invoke-static {v0, p0}, Lcb;->q(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/NetworkEvent;)V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :pswitch_12
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;

    .line 399
    .line 400
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast p0, Landroid/media/metrics/TrackChangeEvent;

    .line 403
    .line 404
    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/MediaMetricsListener;->d:Landroid/media/metrics/PlaybackSession;

    .line 405
    .line 406
    invoke-static {v0, p0}, Lcb;->u(Landroid/media/metrics/PlaybackSession;Landroid/media/metrics/TrackChangeEvent;)V

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :pswitch_13
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

    .line 413
    .line 414
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast p0, Landroidx/media3/exoplayer/FormatHolder;

    .line 417
    .line 418
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->M:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 419
    .line 420
    iget-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->G:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 421
    .line 422
    invoke-virtual {v0, p0, v3, v2}, Landroidx/media3/exoplayer/BaseRenderer;->C(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    .line 423
    .line 424
    .line 425
    move-result p0

    .line 426
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    :pswitch_14
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 431
    .line 432
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 433
    .line 434
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast p0, Landroid/app/job/JobParameters;

    .line 437
    .line 438
    sget v1, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->j:I

    .line 439
    .line 440
    invoke-virtual {v0, p0, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 441
    .line 442
    .line 443
    return-void

    .line 444
    :pswitch_15
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 445
    .line 446
    check-cast v0, Lcom/google/firebase/messaging/ImageDownload;

    .line 447
    .line 448
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 451
    .line 452
    :try_start_2
    invoke-virtual {v0}, Lcom/google/firebase/messaging/ImageDownload;->a()Landroid/graphics/Bitmap;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 457
    .line 458
    .line 459
    goto :goto_3

    .line 460
    :catch_0
    move-exception v0

    .line 461
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)V

    .line 462
    .line 463
    .line 464
    :goto_3
    return-void

    .line 465
    :pswitch_16
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 468
    .line 469
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast p0, Lkotlinx/coroutines/android/HandlerContext;

    .line 472
    .line 473
    sget v1, Lkotlinx/coroutines/android/HandlerContext;->p:I

    .line 474
    .line 475
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->F(Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 476
    .line 477
    .line 478
    return-void

    .line 479
    :pswitch_17
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v0, Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 482
    .line 483
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 484
    .line 485
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 486
    .line 487
    :try_start_3
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->a()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 492
    .line 493
    .line 494
    goto :goto_4

    .line 495
    :catch_1
    move-exception v0

    .line 496
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)V

    .line 497
    .line 498
    .line 499
    :goto_4
    return-void

    .line 500
    :pswitch_18
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v0, Ljava/util/List;

    .line 503
    .line 504
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 505
    .line 506
    check-cast p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;

    .line 507
    .line 508
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 513
    .line 514
    .line 515
    move-result v1

    .line 516
    if-eqz v1, :cond_5

    .line 517
    .line 518
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    check-cast v1, Landroidx/work/impl/constraints/ConstraintListener;

    .line 523
    .line 524
    iget-object v2, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->e:Ljava/lang/Object;

    .line 525
    .line 526
    check-cast v1, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;

    .line 527
    .line 528
    invoke-virtual {v1, v2}, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1$listener$1;->a(Ljava/lang/Object;)V

    .line 529
    .line 530
    .line 531
    goto :goto_5

    .line 532
    :cond_5
    return-void

    .line 533
    :pswitch_19
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 536
    .line 537
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 538
    .line 539
    check-cast p0, Landroidx/activity/OnBackPressedDispatcher;

    .line 540
    .line 541
    sget v1, Landroidx/activity/ComponentActivity;->D:I

    .line 542
    .line 543
    iget-object v1, v0, Landroidx/core/app/ComponentActivity;->j:Landroidx/lifecycle/LifecycleRegistry;

    .line 544
    .line 545
    new-instance v3, Lg5;

    .line 546
    .line 547
    invoke-direct {v3, v2, p0, v0}, Lg5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1, v3}, Landroidx/lifecycle/LifecycleRegistry;->a(Landroidx/lifecycle/LifecycleObserver;)V

    .line 551
    .line 552
    .line 553
    return-void

    .line 554
    :pswitch_1a
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 555
    .line 556
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 557
    .line 558
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 559
    .line 560
    check-cast p0, Landroidx/media3/exoplayer/CodecParameters;

    .line 561
    .line 562
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 563
    .line 564
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 565
    .line 566
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->p(Landroidx/media3/exoplayer/CodecParameters;)V

    .line 567
    .line 568
    .line 569
    return-void

    .line 570
    :pswitch_1b
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 571
    .line 572
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 573
    .line 574
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 575
    .line 576
    check-cast p0, Ljava/lang/String;

    .line 577
    .line 578
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 579
    .line 580
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 581
    .line 582
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->l(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    return-void

    .line 586
    :pswitch_1c
    iget-object v0, p0, Lf3;->k:Ljava/lang/Object;

    .line 587
    .line 588
    check-cast v0, Landroid/content/Context;

    .line 589
    .line 590
    iget-object p0, p0, Lf3;->l:Ljava/lang/Object;

    .line 591
    .line 592
    check-cast p0, Landroidx/media3/common/util/ConditionVariable;

    .line 593
    .line 594
    const-string v1, "audio"

    .line 595
    .line 596
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    check-cast v0, Landroid/media/AudioManager;

    .line 601
    .line 602
    sput-object v0, Landroidx/media3/common/audio/AudioManagerCompat;->a:Landroid/media/AudioManager;

    .line 603
    .line 604
    invoke-virtual {p0}, Landroidx/media3/common/util/ConditionVariable;->c()Z

    .line 605
    .line 606
    .line 607
    return-void

    .line 608
    nop

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
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
