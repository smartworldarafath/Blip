.class public final Lio/sentry/android/core/ScreenshotEventProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/EventProcessor;


# instance fields
.field public final j:Lio/sentry/android/core/SentryAndroidOptions;

.field public final k:Lio/sentry/android/core/BuildInfoProvider;

.field public final l:Lio/sentry/android/core/internal/util/Debouncer;

.field public final m:Z

.field public final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/BuildInfoProvider;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const-string v0, "SentryAndroidOptions is required"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->j:Lio/sentry/android/core/SentryAndroidOptions;

    .line 18
    .line 19
    iput-object p2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->k:Lio/sentry/android/core/BuildInfoProvider;

    .line 20
    .line 21
    new-instance p2, Lio/sentry/android/core/internal/util/Debouncer;

    .line 22
    .line 23
    const-wide/16 v0, 0x7d0

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-direct {p2, v2, v0, v1}, Lio/sentry/android/core/internal/util/Debouncer;-><init>(IJ)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->l:Lio/sentry/android/core/internal/util/Debouncer;

    .line 30
    .line 31
    iput-boolean p3, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->m:Z

    .line 32
    .line 33
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    const-string p0, "Screenshot"

    .line 40
    .line 41
    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 4

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/ScreenshotEventProcessor;->j:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    move-object p1, v0

    .line 50
    :goto_0
    if-nez p1, :cond_1

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {p1, v0, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->a(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {p1, v1, v2, v3, v0}, Lio/sentry/android/replay/util/ViewsKt;->a(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/SentryMaskingOptions;Lio/sentry/ILogger;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :goto_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 78
    .line 79
    const-string v2, "Failed to build view hierarchy"

    .line 80
    .line 81
    invoke-interface {p0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    return-object v0
.end method

.method public final h(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lio/sentry/SentryEvent;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_11

    .line 12
    .line 13
    :cond_0
    iget-object v7, v1, Lio/sentry/android/core/ScreenshotEventProcessor;->j:Lio/sentry/android/core/SentryAndroidOptions;

    .line 14
    .line 15
    invoke-virtual {v7}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachScreenshot()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v8, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 27
    .line 28
    const-string v2, "attachScreenshot is disabled."

    .line 29
    .line 30
    new-array v3, v8, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    iget-boolean v2, v1, Lio/sentry/android/core/ScreenshotEventProcessor;->m:Z

    .line 37
    .line 38
    const/4 v9, 0x1

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v7}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v0, v0, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-object v0, v1, Lio/sentry/android/core/ScreenshotEventProcessor;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1a

    .line 60
    .line 61
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 66
    .line 67
    const-string v2, "Screenshot masking requires sentry-android-replay module"

    .line 68
    .line 69
    new-array v3, v8, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_2
    sget-object v0, Lio/sentry/android/core/CurrentActivityHolder;->b:Lio/sentry/android/core/CurrentActivityHolder;

    .line 76
    .line 77
    iget-object v0, v0, Lio/sentry/android/core/CurrentActivityHolder;->a:Ljava/lang/ref/WeakReference;

    .line 78
    .line 79
    const/4 v10, 0x0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/app/Activity;

    .line 87
    .line 88
    move-object v3, v0

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    move-object v3, v10

    .line 91
    :goto_0
    if-eqz v3, :cond_1a

    .line 92
    .line 93
    invoke-static {v6}, Lio/sentry/util/HintUtils;->c(Lio/sentry/Hint;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    goto/16 :goto_11

    .line 100
    .line 101
    :cond_4
    iget-object v0, v1, Lio/sentry/android/core/ScreenshotEventProcessor;->l:Lio/sentry/android/core/internal/util/Debouncer;

    .line 102
    .line 103
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/Debouncer;->a()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {v7}, Lio/sentry/android/core/SentryAndroidOptions;->getBeforeScreenshotCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    .line 108
    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    goto/16 :goto_11

    .line 113
    .line 114
    :cond_5
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    iget-object v0, v1, Lio/sentry/android/core/ScreenshotEventProcessor;->k:Lio/sentry/android/core/BuildInfoProvider;

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 128
    .line 129
    if-nez v5, :cond_c

    .line 130
    .line 131
    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-nez v5, :cond_c

    .line 136
    .line 137
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    if-nez v5, :cond_6

    .line 142
    .line 143
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 144
    .line 145
    const-string v5, "Activity window is null, not taking screenshot."

    .line 146
    .line 147
    new-array v12, v8, [Ljava/lang/Object;

    .line 148
    .line 149
    invoke-interface {v4, v0, v5, v12}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :goto_1
    move-object v12, v10

    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :cond_6
    invoke-virtual {v5}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    if-nez v12, :cond_7

    .line 160
    .line 161
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 162
    .line 163
    const-string v5, "DecorView is null, not taking screenshot."

    .line 164
    .line 165
    new-array v12, v8, [Ljava/lang/Object;

    .line 166
    .line 167
    invoke-interface {v4, v0, v5, v12}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_7
    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v12

    .line 175
    if-nez v12, :cond_8

    .line 176
    .line 177
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 178
    .line 179
    const-string v5, "Root view is null, not taking screenshot."

    .line 180
    .line 181
    new-array v12, v8, [Ljava/lang/Object;

    .line 182
    .line 183
    invoke-interface {v4, v0, v5, v12}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_8
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    .line 188
    .line 189
    .line 190
    move-result v13

    .line 191
    if-lez v13, :cond_b

    .line 192
    .line 193
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 194
    .line 195
    .line 196
    move-result v13

    .line 197
    if-gtz v13, :cond_9

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_9
    :try_start_0
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    .line 201
    .line 202
    .line 203
    move-result v13

    .line 204
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 209
    .line 210
    invoke-static {v13, v12, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    .line 215
    .line 216
    invoke-direct {v13, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 220
    .line 221
    .line 222
    new-instance v14, Landroid/os/HandlerThread;

    .line 223
    .line 224
    const-string v0, "SentryScreenshot"

    .line 225
    .line 226
    invoke-direct {v14, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    .line 231
    .line 232
    :try_start_1
    new-instance v0, Landroid/os/Handler;

    .line 233
    .line 234
    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 235
    .line 236
    .line 237
    move-result-object v15

    .line 238
    invoke-direct {v0, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    .line 240
    .line 241
    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 242
    .line 243
    invoke-direct {v15, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 244
    .line 245
    .line 246
    new-instance v9, Lio/sentry/android/core/internal/util/c;

    .line 247
    .line 248
    invoke-direct {v9, v15, v13}, Lio/sentry/android/core/internal/util/c;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    .line 249
    .line 250
    .line 251
    invoke-static {v5, v12, v9, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 252
    .line 253
    .line 254
    const-wide/16 v8, 0x3e8

    .line 255
    .line 256
    invoke-virtual {v13, v8, v9, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_a

    .line 261
    .line 262
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 263
    .line 264
    .line 265
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    if-eqz v0, :cond_a

    .line 267
    .line 268
    const/4 v0, 0x1

    .line 269
    goto :goto_2

    .line 270
    :catchall_0
    move-exception v0

    .line 271
    goto :goto_3

    .line 272
    :cond_a
    const/4 v0, 0x0

    .line 273
    :goto_2
    :try_start_2
    invoke-virtual {v14}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :catchall_1
    move-exception v0

    .line 278
    goto :goto_5

    .line 279
    :goto_3
    :try_start_3
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 280
    .line 281
    const-string v8, "Taking screenshot using PixelCopy failed."

    .line 282
    .line 283
    invoke-interface {v4, v5, v8, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 284
    .line 285
    .line 286
    :try_start_4
    invoke-virtual {v14}, Landroid/os/HandlerThread;->quit()Z

    .line 287
    .line 288
    .line 289
    const/4 v0, 0x0

    .line 290
    :goto_4
    if-nez v0, :cond_d

    .line 291
    .line 292
    goto/16 :goto_1

    .line 293
    .line 294
    :catchall_2
    move-exception v0

    .line 295
    invoke-virtual {v14}, Landroid/os/HandlerThread;->quit()Z

    .line 296
    .line 297
    .line 298
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 299
    :goto_5
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 300
    .line 301
    const-string v8, "Taking screenshot failed."

    .line 302
    .line 303
    invoke-interface {v4, v5, v8, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_1

    .line 307
    .line 308
    :cond_b
    :goto_6
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 309
    .line 310
    const-string v5, "View\'s width and height is zeroed, not taking screenshot."

    .line 311
    .line 312
    const/4 v8, 0x0

    .line 313
    new-array v9, v8, [Ljava/lang/Object;

    .line 314
    .line 315
    invoke-interface {v4, v0, v5, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_1

    .line 319
    .line 320
    :cond_c
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 321
    .line 322
    const-string v5, "Activity isn\'t valid, not taking screenshot."

    .line 323
    .line 324
    new-array v9, v8, [Ljava/lang/Object;

    .line 325
    .line 326
    invoke-interface {v4, v0, v5, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    goto/16 :goto_1

    .line 330
    .line 331
    :cond_d
    :goto_7
    if-nez v12, :cond_e

    .line 332
    .line 333
    goto/16 :goto_11

    .line 334
    .line 335
    :cond_e
    invoke-virtual {v7}, Lio/sentry/android/core/SentryAndroidOptions;->getScreenshot()Lio/sentry/android/core/SentryScreenshotOptions;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    iget-object v0, v0, Lio/sentry/SentryMaskingOptions;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 340
    .line 341
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-nez v0, :cond_f

    .line 346
    .line 347
    if-eqz v2, :cond_f

    .line 348
    .line 349
    const/4 v0, 0x1

    .line 350
    goto :goto_8

    .line 351
    :cond_f
    const/4 v0, 0x0

    .line 352
    :goto_8
    if-eqz v0, :cond_19

    .line 353
    .line 354
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->c()Z

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_10

    .line 363
    .line 364
    invoke-virtual {v1, v3}, Lio/sentry/android/core/ScreenshotEventProcessor;->b(Landroid/app/Activity;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    const/4 v8, 0x0

    .line 369
    goto :goto_b

    .line 370
    :cond_10
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    .line 371
    .line 372
    invoke-direct {v2, v10}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 376
    .line 377
    const/4 v5, 0x1

    .line 378
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 379
    .line 380
    .line 381
    :try_start_5
    new-instance v0, Lse;

    .line 382
    .line 383
    const/4 v5, 0x1

    .line 384
    invoke-direct/range {v0 .. v5}, Lse;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 388
    .line 389
    .line 390
    const-wide/16 v8, 0x7d0

    .line 391
    .line 392
    invoke-virtual {v4, v8, v9, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-nez v0, :cond_11

    .line 397
    .line 398
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 403
    .line 404
    const-string v4, "Timed out waiting for view hierarchy capture on main thread"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 405
    .line 406
    const/4 v8, 0x0

    .line 407
    :try_start_6
    new-array v5, v8, [Ljava/lang/Object;

    .line 408
    .line 409
    invoke-interface {v0, v2, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 410
    .line 411
    .line 412
    :goto_9
    move-object v0, v10

    .line 413
    goto :goto_b

    .line 414
    :catchall_3
    move-exception v0

    .line 415
    goto :goto_a

    .line 416
    :catchall_4
    move-exception v0

    .line 417
    const/4 v8, 0x0

    .line 418
    goto :goto_a

    .line 419
    :cond_11
    const/4 v8, 0x0

    .line 420
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    check-cast v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 425
    .line 426
    goto :goto_b

    .line 427
    :goto_a
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 432
    .line 433
    const-string v5, "Failed to capture view hierarchy"

    .line 434
    .line 435
    invoke-interface {v2, v4, v5, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    .line 437
    .line 438
    goto :goto_9

    .line 439
    :goto_b
    if-nez v0, :cond_12

    .line 440
    .line 441
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 442
    .line 443
    .line 444
    return-object p1

    .line 445
    :cond_12
    :try_start_7
    new-instance v2, Lio/sentry/android/replay/util/MaskRenderer;

    .line 446
    .line 447
    invoke-direct {v2}, Lio/sentry/android/replay/util/MaskRenderer;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    .line 448
    .line 449
    .line 450
    :try_start_8
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    if-nez v4, :cond_14

    .line 455
    .line 456
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 457
    .line 458
    const/4 v5, 0x1

    .line 459
    invoke-virtual {v12, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 460
    .line 461
    .line 462
    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 463
    if-nez v4, :cond_13

    .line 464
    .line 465
    :try_start_9
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 466
    .line 467
    .line 468
    :try_start_a
    invoke-virtual {v2}, Lio/sentry/android/replay/util/MaskRenderer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 469
    .line 470
    .line 471
    goto :goto_10

    .line 472
    :catchall_5
    move-exception v0

    .line 473
    goto :goto_f

    .line 474
    :catchall_6
    move-exception v0

    .line 475
    move-object v5, v4

    .line 476
    move-object v4, v0

    .line 477
    goto :goto_d

    .line 478
    :cond_13
    const/4 v8, 0x1

    .line 479
    goto :goto_c

    .line 480
    :catchall_7
    move-exception v0

    .line 481
    move-object v4, v0

    .line 482
    move-object v5, v12

    .line 483
    goto :goto_d

    .line 484
    :cond_14
    move-object v4, v12

    .line 485
    :goto_c
    :try_start_b
    invoke-virtual {v2, v4, v0, v10}, Lio/sentry/android/replay/util/MaskRenderer;->a(Landroid/graphics/Bitmap;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Landroid/graphics/Matrix;)Ljava/util/List;

    .line 486
    .line 487
    .line 488
    if-eqz v8, :cond_15

    .line 489
    .line 490
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-nez v0, :cond_15

    .line 495
    .line 496
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 497
    .line 498
    .line 499
    :cond_15
    :try_start_c
    invoke-virtual {v2}, Lio/sentry/android/replay/util/MaskRenderer;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 500
    .line 501
    .line 502
    move-object v10, v4

    .line 503
    goto :goto_10

    .line 504
    :goto_d
    :try_start_d
    invoke-virtual {v2}, Lio/sentry/android/replay/util/MaskRenderer;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 505
    .line 506
    .line 507
    goto :goto_e

    .line 508
    :catchall_8
    move-exception v0

    .line 509
    :try_start_e
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 510
    .line 511
    .line 512
    :goto_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 513
    :catchall_9
    move-exception v0

    .line 514
    move-object v4, v5

    .line 515
    goto :goto_f

    .line 516
    :catchall_a
    move-exception v0

    .line 517
    move-object v4, v12

    .line 518
    :goto_f
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 523
    .line 524
    const-string v7, "Failed to mask screenshot"

    .line 525
    .line 526
    invoke-interface {v2, v5, v7, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 527
    .line 528
    .line 529
    if-eqz v8, :cond_16

    .line 530
    .line 531
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    if-nez v0, :cond_16

    .line 536
    .line 537
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 538
    .line 539
    .line 540
    :cond_16
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    if-nez v0, :cond_17

    .line 545
    .line 546
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 547
    .line 548
    .line 549
    :cond_17
    :goto_10
    if-nez v10, :cond_18

    .line 550
    .line 551
    goto :goto_11

    .line 552
    :cond_18
    move-object v12, v10

    .line 553
    :cond_19
    new-instance v0, Lio/sentry/android/core/k;

    .line 554
    .line 555
    const/4 v5, 0x1

    .line 556
    invoke-direct {v0, v1, v12, v5}, Lio/sentry/android/core/k;-><init>(Lio/sentry/EventProcessor;Ljava/lang/Object;I)V

    .line 557
    .line 558
    .line 559
    new-instance v1, Lio/sentry/Attachment;

    .line 560
    .line 561
    invoke-direct {v1, v0}, Lio/sentry/Attachment;-><init>(Lio/sentry/android/core/k;)V

    .line 562
    .line 563
    .line 564
    iput-object v1, v6, Lio/sentry/Hint;->d:Lio/sentry/Attachment;

    .line 565
    .line 566
    const-string v0, "android:activity"

    .line 567
    .line 568
    invoke-virtual {v6, v3, v0}, Lio/sentry/Hint;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    :cond_1a
    :goto_11
    return-object p1
.end method

.method public final n(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 0

    .line 1
    return-object p1
.end method
