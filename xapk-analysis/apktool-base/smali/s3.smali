.class public final synthetic Ls3;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;Lcom/google/android/datatransport/runtime/TransportContext;Lf7;Lcom/google/android/datatransport/runtime/EventInternal;)V
    .locals 0

    .line 1
    const/4 p3, 0x3

    .line 2
    iput p3, p0, Ls3;->j:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Ls3;->k:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Ls3;->l:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p4, p0, Ls3;->m:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Ls3;->j:I

    iput-object p1, p0, Ls3;->k:Ljava/lang/Object;

    iput-object p2, p0, Ls3;->l:Ljava/lang/Object;

    iput-object p3, p0, Ls3;->m:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Ls3;->j:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lio/sentry/cache/PersistingScopeObserver;

    .line 11
    .line 12
    iget-object v1, p0, Ls3;->l:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lio/sentry/SpanContext;

    .line 15
    .line 16
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lio/sentry/Scope;

    .line 19
    .line 20
    sget-object v3, Lio/sentry/cache/PersistingScopeObserver;->c:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    const-string v3, "trace.json"

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lio/sentry/Scope;->t:Lio/sentry/PropagationContext;

    .line 27
    .line 28
    new-instance v1, Lio/sentry/SpanContext;

    .line 29
    .line 30
    iget-object v4, p0, Lio/sentry/PropagationContext;->a:Lio/sentry/protocol/SentryId;

    .line 31
    .line 32
    iget-object p0, p0, Lio/sentry/PropagationContext;->b:Lio/sentry/SpanId;

    .line 33
    .line 34
    const-string v5, "default"

    .line 35
    .line 36
    invoke-direct {v1, v4, p0, v5, v2}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;)V

    .line 37
    .line 38
    .line 39
    const-string p0, "auto"

    .line 40
    .line 41
    iput-object p0, v1, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1, v3}, Lio/sentry/cache/PersistingScopeObserver;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0, v1, v3}, Lio/sentry/cache/PersistingScopeObserver;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 54
    .line 55
    iget-object v1, p0, Ls3;->l:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Landroid/view/View;

    .line 58
    .line 59
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 62
    .line 63
    invoke-virtual {v0, v1, p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->d(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_1
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    iget-object v1, p0, Ls3;->l:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 74
    .line 75
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->c(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    return-void

    .line 99
    :pswitch_2
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    .line 102
    .line 103
    iget-object v1, p0, Ls3;->l:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v1, Landroidx/media3/common/Format;

    .line 106
    .line 107
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 110
    .line 111
    iget-object v0, v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 112
    .line 113
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 114
    .line 115
    invoke-interface {v0, v1, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->v(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :pswitch_3
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Landroidx/work/impl/Processor;

    .line 122
    .line 123
    iget-object v2, p0, Ls3;->l:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 126
    .line 127
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p0, Landroidx/work/impl/WorkerWrapper;

    .line 130
    .line 131
    sget-object v3, Landroidx/work/impl/Processor;->l:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    :try_start_1
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :catch_0
    iget-object v3, v0, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    .line 147
    .line 148
    monitor-enter v3

    .line 149
    :try_start_2
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 150
    .line 151
    invoke-static {v2}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    iget-object v4, v2, Landroidx/work/impl/model/WorkGenerationalId;->a:Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v0, v4}, Landroidx/work/impl/Processor;->c(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-ne v5, p0, :cond_2

    .line 162
    .line 163
    invoke-virtual {v0, v4}, Landroidx/work/impl/Processor;->b(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :catchall_1
    move-exception p0

    .line 168
    goto :goto_4

    .line 169
    :cond_2
    :goto_2
    invoke-static {}, Landroidx/work/Logger;->d()Landroidx/work/Logger;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    sget-object v5, Landroidx/work/impl/Processor;->l:Ljava/lang/String;

    .line 174
    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v7, " "

    .line 192
    .line 193
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v4, " executed; reschedule = "

    .line 200
    .line 201
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {p0, v5, v4}, Landroidx/work/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object p0, v0, Landroidx/work/impl/Processor;->j:Ljava/util/ArrayList;

    .line 215
    .line 216
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_3

    .line 225
    .line 226
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Landroidx/work/impl/ExecutionListener;

    .line 231
    .line 232
    invoke-interface {v0, v2, v1}, Landroidx/work/impl/ExecutionListener;->b(Landroidx/work/impl/model/WorkGenerationalId;Z)V

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_3
    monitor-exit v3

    .line 237
    return-void

    .line 238
    :goto_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 239
    throw p0

    .line 240
    :pswitch_4
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    .line 244
    iget-object v1, p0, Ls3;->l:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    .line 247
    .line 248
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast p0, Lp1;

    .line 251
    .line 252
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-eqz v0, :cond_4

    .line 257
    .line 258
    goto :goto_5

    .line 259
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lp1;->a()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :catchall_2
    move-exception p0

    .line 267
    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->c(Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    :goto_5
    return-void

    .line 271
    :pswitch_5
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v0, Lcom/google/firebase/messaging/EnhancedIntentService;

    .line 274
    .line 275
    iget-object v1, p0, Ls3;->l:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v1, Landroid/content/Intent;

    .line 278
    .line 279
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 282
    .line 283
    sget v3, Lcom/google/firebase/messaging/EnhancedIntentService;->o:I

    .line 284
    .line 285
    :try_start_4
    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/EnhancedIntentService;->b(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :catchall_3
    move-exception v0

    .line 293
    invoke-virtual {p0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :pswitch_6
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;

    .line 300
    .line 301
    iget-object v1, p0, Ls3;->l:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast v1, Lcom/google/android/datatransport/runtime/TransportContext;

    .line 304
    .line 305
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast p0, Lcom/google/android/datatransport/runtime/EventInternal;

    .line 308
    .line 309
    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->f:Ljava/util/logging/Logger;

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 312
    .line 313
    .line 314
    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->f:Ljava/util/logging/Logger;

    .line 315
    .line 316
    const-string v3, "Transport backend \'"

    .line 317
    .line 318
    :try_start_5
    iget-object v4, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->c:Lcom/google/android/datatransport/runtime/backends/BackendRegistry;

    .line 319
    .line 320
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/TransportContext;->b()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-interface {v4, v5}, Lcom/google/android/datatransport/runtime/backends/BackendRegistry;->a(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/TransportBackend;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    if-nez v4, :cond_5

    .line 329
    .line 330
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/TransportContext;->b()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string p0, "\' is not registered"

    .line 343
    .line 344
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p0

    .line 351
    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 355
    .line 356
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    goto :goto_7

    .line 360
    :catch_1
    move-exception p0

    .line 361
    goto :goto_6

    .line 362
    :cond_5
    invoke-interface {v4, p0}, Lcom/google/android/datatransport/runtime/backends/TransportBackend;->b(Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/EventInternal;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    iget-object v3, v0, Lcom/google/android/datatransport/runtime/scheduling/DefaultScheduler;->e:Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;

    .line 367
    .line 368
    new-instance v4, Ll7;

    .line 369
    .line 370
    invoke-direct {v4, v0, v1, p0}, Ll7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;

    .line 374
    .line 375
    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->E(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 376
    .line 377
    .line 378
    goto :goto_7

    .line 379
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 380
    .line 381
    const-string v1, "Error scheduling event "

    .line 382
    .line 383
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    invoke-virtual {v2, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :goto_7
    return-void

    .line 401
    :pswitch_7
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v0, Landroidx/work/impl/WorkDatabase;

    .line 404
    .line 405
    iget-object v2, p0, Ls3;->l:Ljava/lang/Object;

    .line 406
    .line 407
    check-cast v2, Ljava/lang/String;

    .line 408
    .line 409
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 410
    .line 411
    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    .line 412
    .line 413
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 418
    .line 419
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 423
    .line 424
    .line 425
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 426
    .line 427
    new-instance v3, Lq7;

    .line 428
    .line 429
    const/16 v4, 0xc

    .line 430
    .line 431
    invoke-direct {v3, v2, v4}, Lq7;-><init>(Ljava/lang/String;I)V

    .line 432
    .line 433
    .line 434
    const/4 v2, 0x0

    .line 435
    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/DBUtil;->b(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    check-cast v0, Ljava/util/List;

    .line 440
    .line 441
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    if-eqz v1, :cond_6

    .line 450
    .line 451
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    check-cast v1, Ljava/lang/String;

    .line 456
    .line 457
    invoke-static {p0, v1}, Landroidx/work/impl/utils/CancelWorkRunnable;->a(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    goto :goto_8

    .line 461
    :cond_6
    return-void

    .line 462
    :pswitch_8
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 463
    .line 464
    check-cast v0, Landroid/media/AudioTrack;

    .line 465
    .line 466
    iget-object v3, p0, Ls3;->l:Ljava/lang/Object;

    .line 467
    .line 468
    check-cast v3, Landroid/os/Handler;

    .line 469
    .line 470
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast p0, Landroidx/media3/common/util/ListenerSet;

    .line 473
    .line 474
    const/4 v4, 0x5

    .line 475
    :try_start_6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 479
    .line 480
    .line 481
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 490
    .line 491
    .line 492
    move-result v0

    .line 493
    if-eqz v0, :cond_7

    .line 494
    .line 495
    new-instance v0, Le;

    .line 496
    .line 497
    invoke-direct {v0, v4, p0}, Le;-><init>(ILjava/lang/Object;)V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 501
    .line 502
    .line 503
    :cond_7
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->q:Ljava/lang/Object;

    .line 504
    .line 505
    monitor-enter v0

    .line 506
    :try_start_7
    sget p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    .line 507
    .line 508
    sub-int/2addr p0, v1

    .line 509
    sput p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    .line 510
    .line 511
    if-nez p0, :cond_8

    .line 512
    .line 513
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    .line 514
    .line 515
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 519
    .line 520
    .line 521
    sput-object v2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    .line 522
    .line 523
    goto :goto_9

    .line 524
    :catchall_4
    move-exception p0

    .line 525
    goto :goto_a

    .line 526
    :cond_8
    :goto_9
    monitor-exit v0

    .line 527
    return-void

    .line 528
    :goto_a
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 529
    throw p0

    .line 530
    :catchall_5
    move-exception v0

    .line 531
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 532
    .line 533
    .line 534
    move-result-object v5

    .line 535
    invoke-virtual {v5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 536
    .line 537
    .line 538
    move-result-object v5

    .line 539
    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    if-eqz v5, :cond_9

    .line 544
    .line 545
    new-instance v5, Le;

    .line 546
    .line 547
    invoke-direct {v5, v4, p0}, Le;-><init>(ILjava/lang/Object;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    .line 552
    .line 553
    :cond_9
    sget-object v3, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->q:Ljava/lang/Object;

    .line 554
    .line 555
    monitor-enter v3

    .line 556
    :try_start_8
    sget p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    .line 557
    .line 558
    sub-int/2addr p0, v1

    .line 559
    sput p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->s:I

    .line 560
    .line 561
    if-nez p0, :cond_a

    .line 562
    .line 563
    sget-object p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    .line 564
    .line 565
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 569
    .line 570
    .line 571
    sput-object v2, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutput;->r:Ljava/util/concurrent/ScheduledExecutorService;

    .line 572
    .line 573
    goto :goto_b

    .line 574
    :catchall_6
    move-exception p0

    .line 575
    goto :goto_c

    .line 576
    :cond_a
    :goto_b
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 577
    throw v0

    .line 578
    :goto_c
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 579
    throw p0

    .line 580
    :pswitch_9
    iget-object v0, p0, Ls3;->k:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    .line 583
    .line 584
    iget-object v1, p0, Ls3;->l:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast v1, Landroidx/media3/common/Format;

    .line 587
    .line 588
    iget-object p0, p0, Ls3;->m:Ljava/lang/Object;

    .line 589
    .line 590
    check-cast p0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 591
    .line 592
    iget-object v0, v0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/audio/AudioRendererEventListener;

    .line 593
    .line 594
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    .line 595
    .line 596
    invoke-interface {v0, v1, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener;->y(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    .line 597
    .line 598
    .line 599
    return-void

    .line 600
    nop

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
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
