.class public final synthetic Lio/sentry/android/core/anr/a;
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
    iput p1, p0, Lio/sentry/android/core/anr/a;->j:I

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

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
    .locals 11

    .line 1
    iget v0, p0, Lio/sentry/android/core/anr/a;->j:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lio/sentry/cache/PersistingScopeObserver;

    .line 10
    .line 11
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Lio/sentry/protocol/Contexts;

    .line 14
    .line 15
    sget-object v1, Lio/sentry/cache/PersistingScopeObserver;->c:Ljava/nio/charset/Charset;

    .line 16
    .line 17
    const-string v1, "contexts.json"

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Lio/sentry/cache/PersistingScopeObserver;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lio/sentry/cache/PersistingScopeObserver;

    .line 26
    .line 27
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p0, Ljava/lang/String;

    .line 30
    .line 31
    sget-object v1, Lio/sentry/cache/PersistingScopeObserver;->c:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    const-string v1, "transaction.json"

    .line 34
    .line 35
    if-nez p0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, p0, v1}, Lio/sentry/cache/PersistingScopeObserver;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :pswitch_1
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lio/sentry/cache/PersistingScopeObserver;

    .line 48
    .line 49
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p0, Lio/sentry/protocol/SentryId;

    .line 52
    .line 53
    sget-object v1, Lio/sentry/cache/PersistingScopeObserver;->c:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    const-string v1, "replay.json"

    .line 56
    .line 57
    invoke-virtual {v0, p0, v1}, Lio/sentry/cache/PersistingScopeObserver;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_2
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v1, v0

    .line 64
    check-cast v1, Lio/sentry/cache/PersistingScopeObserver;

    .line 65
    .line 66
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p0, Lio/sentry/Breadcrumb;

    .line 69
    .line 70
    sget-object v0, Lio/sentry/cache/PersistingScopeObserver;->c:Ljava/nio/charset/Charset;

    .line 71
    .line 72
    :try_start_0
    iget-object v0, v1, Lio/sentry/cache/PersistingScopeObserver;->b:Lio/sentry/util/LazyEvaluator;

    .line 73
    .line 74
    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->a()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lio/sentry/cache/tape/ObjectQueue;

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Lio/sentry/cache/tape/ObjectQueue;->A(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    move-object p0, v0

    .line 86
    iget-object v0, v1, Lio/sentry/cache/PersistingScopeObserver;->a:Lio/sentry/SentryOptions;

    .line 87
    .line 88
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 93
    .line 94
    const-string v2, "Failed to add breadcrumb to file queue"

    .line 95
    .line 96
    invoke-interface {v0, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    return-void

    .line 100
    :pswitch_3
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 101
    .line 102
    move-object v1, v0

    .line 103
    check-cast v1, Lio/sentry/cache/PersistingScopeObserver;

    .line 104
    .line 105
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p0, Ljava/lang/Runnable;

    .line 108
    .line 109
    sget-object v0, Lio/sentry/cache/PersistingScopeObserver;->c:Ljava/nio/charset/Charset;

    .line 110
    .line 111
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    move-object p0, v0

    .line 117
    iget-object v0, v1, Lio/sentry/cache/PersistingScopeObserver;->a:Lio/sentry/SentryOptions;

    .line 118
    .line 119
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 124
    .line 125
    const-string v2, "Serialization task failed"

    .line 126
    .line 127
    invoke-interface {v0, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :goto_2
    return-void

    .line 131
    :pswitch_4
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v0, Lio/sentry/cache/PersistingScopeObserver;

    .line 134
    .line 135
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p0, Lio/sentry/SentryLevel;

    .line 138
    .line 139
    sget-object v1, Lio/sentry/cache/PersistingScopeObserver;->c:Ljava/nio/charset/Charset;

    .line 140
    .line 141
    const-string v1, "level.json"

    .line 142
    .line 143
    if-nez p0, :cond_1

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lio/sentry/cache/PersistingScopeObserver;->g(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_1
    invoke-virtual {v0, p0, v1}, Lio/sentry/cache/PersistingScopeObserver;->l(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :goto_3
    return-void

    .line 153
    :pswitch_5
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 154
    .line 155
    move-object v1, v0

    .line 156
    check-cast v1, Ljava/lang/Runnable;

    .line 157
    .line 158
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast p0, Lio/sentry/android/replay/util/ReplayExecutorService;

    .line 161
    .line 162
    :try_start_2
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :catchall_1
    move-exception v0

    .line 167
    iget-object p0, p0, Lio/sentry/android/replay/util/ReplayExecutorService;->k:Lio/sentry/SentryOptions;

    .line 168
    .line 169
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 174
    .line 175
    instance-of v3, v1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 176
    .line 177
    if-eqz v3, :cond_2

    .line 178
    .line 179
    check-cast v1, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 180
    .line 181
    iget-object v1, v1, Lio/sentry/android/replay/util/ReplayRunnable;->j:Ljava/lang/String;

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_2
    const-string v1, ""

    .line 185
    .line 186
    :goto_4
    const-string v3, "Failed to execute task "

    .line 187
    .line 188
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-interface {p0, v2, v1, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :goto_5
    return-void

    .line 196
    :pswitch_6
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v0, Lio/sentry/android/replay/b;

    .line 199
    .line 200
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast p0, Lio/sentry/SentryOptions;

    .line 203
    .line 204
    :try_start_3
    invoke-virtual {v0}, Lio/sentry/android/replay/b;->run()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 205
    .line 206
    .line 207
    goto :goto_6

    .line 208
    :catchall_2
    move-exception v0

    .line 209
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 214
    .line 215
    const-string v2, "Failed to execute task ReplayIntegration.finalize_previous_replay"

    .line 216
    .line 217
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    :goto_6
    return-void

    .line 221
    :pswitch_7
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v0, Ljava/io/File;

    .line 224
    .line 225
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 228
    .line 229
    sget v1, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->w:I

    .line 230
    .line 231
    invoke-static {v0}, Lio/sentry/util/FileUtils;->a(Ljava/io/File;)Z

    .line 232
    .line 233
    .line 234
    const/4 v0, -0x1

    .line 235
    invoke-virtual {p0, v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->l(I)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :pswitch_8
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast v0, Lio/sentry/android/ndk/NdkScopeObserver;

    .line 242
    .line 243
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast p0, Lio/sentry/SpanContext;

    .line 246
    .line 247
    iget-object v0, v0, Lio/sentry/android/ndk/NdkScopeObserver;->b:Lio/sentry/ndk/NativeScope;

    .line 248
    .line 249
    iget-object v1, p0, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 250
    .line 251
    invoke-virtual {v1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget-object p0, p0, Lio/sentry/SpanContext;->k:Lio/sentry/SpanId;

    .line 256
    .line 257
    invoke-virtual {p0}, Lio/sentry/SpanId;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 262
    .line 263
    .line 264
    invoke-static {v1, p0}, Lio/sentry/ndk/NativeScope;->nativeSetTrace(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :pswitch_9
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 269
    .line 270
    move-object v2, v0

    .line 271
    check-cast v2, Lio/sentry/android/ndk/NdkScopeObserver;

    .line 272
    .line 273
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast p0, Lio/sentry/Breadcrumb;

    .line 276
    .line 277
    iget-object v3, v2, Lio/sentry/android/ndk/NdkScopeObserver;->a:Lio/sentry/SentryOptions;

    .line 278
    .line 279
    iget-object v0, p0, Lio/sentry/Breadcrumb;->r:Lio/sentry/SentryLevel;

    .line 280
    .line 281
    const/4 v4, 0x0

    .line 282
    if-eqz v0, :cond_3

    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 289
    .line 290
    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    move-object v5, v0

    .line 295
    goto :goto_7

    .line 296
    :cond_3
    move-object v5, v4

    .line 297
    :goto_7
    invoke-virtual {p0}, Lio/sentry/Breadcrumb;->b()Ljava/util/Date;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0}, Lio/sentry/DateUtils;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    :try_start_4
    iget-object v0, p0, Lio/sentry/Breadcrumb;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 306
    .line 307
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    if-nez v6, :cond_4

    .line 312
    .line 313
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    .line 314
    .line 315
    .line 316
    move-result-object v6

    .line 317
    invoke-interface {v6, v0}, Lio/sentry/ISerializer;->c(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 321
    goto :goto_8

    .line 322
    :catchall_3
    move-exception v0

    .line 323
    goto :goto_9

    .line 324
    :cond_4
    :goto_8
    move-object v10, v4

    .line 325
    goto :goto_a

    .line 326
    :goto_9
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 331
    .line 332
    const-string v7, "Breadcrumb data is not serializable."

    .line 333
    .line 334
    new-array v1, v1, [Ljava/lang/Object;

    .line 335
    .line 336
    invoke-interface {v3, v6, v0, v7, v1}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    .line 338
    .line 339
    goto :goto_8

    .line 340
    :goto_a
    iget-object v0, v2, Lio/sentry/android/ndk/NdkScopeObserver;->b:Lio/sentry/ndk/NativeScope;

    .line 341
    .line 342
    iget-object v6, p0, Lio/sentry/Breadcrumb;->m:Ljava/lang/String;

    .line 343
    .line 344
    iget-object v7, p0, Lio/sentry/Breadcrumb;->p:Ljava/lang/String;

    .line 345
    .line 346
    iget-object v8, p0, Lio/sentry/Breadcrumb;->n:Ljava/lang/String;

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    invoke-static/range {v5 .. v10}, Lio/sentry/ndk/NativeScope;->nativeAddBreadcrumb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    return-void

    .line 355
    :pswitch_a
    iget-object v0, p0, Lio/sentry/android/core/anr/a;->k:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v0, Lio/sentry/android/core/anr/AnrProfilingIntegration;

    .line 358
    .line 359
    iget-object p0, p0, Lio/sentry/android/core/anr/a;->l:Ljava/lang/Object;

    .line 360
    .line 361
    check-cast p0, Lio/sentry/android/core/anr/AnrProfileManager;

    .line 362
    .line 363
    if-nez p0, :cond_5

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lio/sentry/android/core/anr/AnrProfileManager;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 367
    .line 368
    .line 369
    goto :goto_b

    .line 370
    :catch_1
    iget-object p0, v0, Lio/sentry/android/core/anr/AnrProfilingIntegration;->r:Lio/sentry/ILogger;

    .line 371
    .line 372
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 373
    .line 374
    const-string v2, "Failed to close AnrProfileManager"

    .line 375
    .line 376
    new-array v1, v1, [Ljava/lang/Object;

    .line 377
    .line 378
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    :goto_b
    return-void

    .line 382
    nop

    .line 383
    :pswitch_data_0
    .packed-switch 0x0
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
