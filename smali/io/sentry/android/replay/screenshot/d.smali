.class public final synthetic Lio/sentry/android/replay/screenshot/d;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/screenshot/d;->a:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/replay/screenshot/d;->b:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v2, v0, Lio/sentry/android/replay/screenshot/d;->a:Lio/sentry/android/replay/screenshot/PixelCopyStrategy;

    .line 4
    .line 5
    iget-object v1, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    iget-object v3, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    iget-object v12, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->b:Lio/sentry/SentryOptions;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v13, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 23
    .line 24
    const-string v2, "PixelCopyStrategy is closed, ignoring capture result"

    .line 25
    .line 26
    new-array v3, v13, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 39
    .line 40
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v4, "Failed to capture replay recording: %d"

    .line 49
    .line 50
    invoke-interface {v0, v1, v4, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget-object v1, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 70
    .line 71
    const-string v2, "Failed to determine view hierarchy, not capturing"

    .line 72
    .line 73
    new-array v4, v13, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget-object v3, v0, Lio/sentry/android/replay/screenshot/d;->b:Landroid/view/View;

    .line 90
    .line 91
    const/4 v14, 0x0

    .line 92
    invoke-static {v3, v14, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->a(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-boolean v0, v0, Lio/sentry/SentryReplayOptions;->o:Z

    .line 101
    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_3
    move-object v0, v14

    .line 111
    :goto_0
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    invoke-static {v3, v5, v1, v4, v0}, Lio/sentry/android/replay/util/ViewsKt;->a(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;Ljava/util/List;)V

    .line 126
    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_5

    .line 135
    .line 136
    :cond_4
    move-object v8, v3

    .line 137
    goto/16 :goto_9

    .line 138
    .line 139
    :cond_5
    iget-object v1, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->d:Lkotlin/jvm/functions/Function0;

    .line 140
    .line 141
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    iget-object v15, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->r:[I

    .line 145
    .line 146
    iget-object v1, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->q:[I

    .line 147
    .line 148
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 149
    .line 150
    .line 151
    aget v6, v1, v13

    .line 152
    .line 153
    const/16 v16, 0x1

    .line 154
    .line 155
    aget v7, v1, v16

    .line 156
    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    new-array v4, v1, [Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;

    .line 162
    .line 163
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v8

    .line 169
    invoke-direct {v1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v17

    .line 176
    move-object v8, v3

    .line 177
    move-object v3, v4

    .line 178
    move v4, v13

    .line 179
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_a

    .line 184
    .line 185
    add-int/lit8 v18, v4, 0x1

    .line 186
    .line 187
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;

    .line 192
    .line 193
    iget-object v0, v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;->h:Ljava/lang/ref/WeakReference;

    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Landroid/view/SurfaceView;

    .line 200
    .line 201
    if-eqz v0, :cond_6

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    if-eqz v9, :cond_6

    .line 208
    .line 209
    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    goto :goto_2

    .line 214
    :cond_6
    move-object v9, v14

    .line 215
    :goto_2
    if-eqz v0, :cond_7

    .line 216
    .line 217
    if-eqz v9, :cond_7

    .line 218
    .line 219
    invoke-virtual {v9}, Landroid/view/Surface;->isValid()Z

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-nez v9, :cond_8

    .line 224
    .line 225
    :cond_7
    move-object v4, v3

    .line 226
    move-object v3, v8

    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :cond_8
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 230
    .line 231
    .line 232
    move-result v9

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 238
    .line 239
    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 240
    .line 241
    .line 242
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 243
    :try_start_1
    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 244
    .line 245
    .line 246
    move v11, v7

    .line 247
    move-object v7, v1

    .line 248
    move-object v1, v2

    .line 249
    move-object v2, v9

    .line 250
    move-object v9, v5

    .line 251
    :try_start_2
    aget v5, v15, v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 252
    .line 253
    move v10, v6

    .line 254
    :try_start_3
    aget v6, v15, v16

    .line 255
    .line 256
    move-object/from16 v19, v0

    .line 257
    .line 258
    new-instance v0, Lio/sentry/android/replay/screenshot/e;

    .line 259
    .line 260
    move-object/from16 v13, v19

    .line 261
    .line 262
    invoke-direct/range {v0 .. v11}, Lio/sentry/android/replay/screenshot/e;-><init>(Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/graphics/Bitmap;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;IIILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    .line 264
    .line 265
    move-object v4, v1

    .line 266
    move-object v1, v7

    .line 267
    move-object v5, v9

    .line 268
    move v6, v10

    .line 269
    move v7, v11

    .line 270
    :try_start_4
    iget-object v9, v4, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->f:Lio/sentry/android/replay/util/MainLooperHandler;

    .line 271
    .line 272
    iget-object v9, v9, Lio/sentry/android/replay/util/MainLooperHandler;->a:Landroid/os/Handler;

    .line 273
    .line 274
    invoke-static {v13, v2, v0, v9}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    .line 276
    .line 277
    move-object v2, v4

    .line 278
    goto :goto_8

    .line 279
    :catchall_0
    move-exception v0

    .line 280
    :goto_3
    move-object v9, v2

    .line 281
    goto :goto_5

    .line 282
    :catchall_1
    move-exception v0

    .line 283
    move-object v4, v1

    .line 284
    move-object v1, v7

    .line 285
    move-object v5, v9

    .line 286
    move v6, v10

    .line 287
    :goto_4
    move v7, v11

    .line 288
    goto :goto_3

    .line 289
    :catchall_2
    move-exception v0

    .line 290
    move-object v4, v1

    .line 291
    move-object v1, v7

    .line 292
    move-object v5, v9

    .line 293
    goto :goto_4

    .line 294
    :catchall_3
    move-exception v0

    .line 295
    move-object v4, v2

    .line 296
    move-object v2, v9

    .line 297
    goto :goto_5

    .line 298
    :catchall_4
    move-exception v0

    .line 299
    move-object v4, v2

    .line 300
    move-object v9, v14

    .line 301
    :goto_5
    invoke-virtual {v12}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    sget-object v10, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 306
    .line 307
    const-string v11, "Failed to capture SurfaceView"

    .line 308
    .line 309
    invoke-interface {v2, v10, v11, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    .line 311
    .line 312
    if-eqz v9, :cond_9

    .line 313
    .line 314
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 315
    .line 316
    .line 317
    :cond_9
    move-object v2, v4

    .line 318
    move-object v4, v3

    .line 319
    move-object v3, v8

    .line 320
    invoke-static/range {v1 .. v7}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->e(Ljava/util/concurrent/atomic/AtomicInteger;Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;II)V

    .line 321
    .line 322
    .line 323
    :goto_6
    move-object v8, v3

    .line 324
    move-object v3, v4

    .line 325
    goto :goto_8

    .line 326
    :goto_7
    invoke-static/range {v1 .. v7}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->e(Ljava/util/concurrent/atomic/AtomicInteger;Lio/sentry/android/replay/screenshot/PixelCopyStrategy;Landroid/view/View;[Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;II)V

    .line 327
    .line 328
    .line 329
    goto :goto_6

    .line 330
    :goto_8
    move/from16 v4, v18

    .line 331
    .line 332
    const/4 v13, 0x0

    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :cond_a
    return-void

    .line 336
    :goto_9
    iget-object v0, v2, Lio/sentry/android/replay/screenshot/PixelCopyStrategy;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 337
    .line 338
    new-instance v1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 339
    .line 340
    new-instance v3, Ls3;

    .line 341
    .line 342
    const/16 v4, 0x9

    .line 343
    .line 344
    invoke-direct {v3, v2, v8, v5, v4}, Ls3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 345
    .line 346
    .line 347
    const-string v2, "screenshot_recorder.mask"

    .line 348
    .line 349
    invoke-direct {v1, v3, v2}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 353
    .line 354
    .line 355
    return-void
.end method
