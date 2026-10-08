.class final Lio/sentry/android/core/DefaultAndroidEventProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/EventProcessor;


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Lio/sentry/android/core/BuildInfoProvider;

.field public final l:Lio/sentry/android/core/SentryAndroidOptions;

.field public final m:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    .line 5
    .line 6
    new-instance v1, Lio/sentry/android/core/a;

    .line 7
    .line 8
    const/4 v2, 0x7

    .line 9
    invoke-direct {v1, v2}, Lio/sentry/android/core/a;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    move-object p1, v0

    .line 22
    :cond_0
    iput-object p1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->j:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->k:Lio/sentry/android/core/BuildInfoProvider;

    .line 25
    .line 26
    const-string p1, "The options object is required."

    .line 27
    .line 28
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object p3, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 32
    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :try_start_0
    new-instance p2, Lio/sentry/android/core/k;

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-direct {p2, p0, p3, v0}, Lio/sentry/android/core/k;-><init>(Lio/sentry/EventProcessor;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 44
    .line 45
    .line 46
    move-result-object p2
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p2

    .line 49
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 54
    .line 55
    const-string v1, "Device info caching task rejected."

    .line 56
    .line 57
    invoke-interface {p3, v0, v1, p2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    const/4 p2, 0x0

    .line 61
    :goto_0
    iput-object p2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->m:Ljava/util/concurrent/Future;

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 64
    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->d(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->b(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->c(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method public final b(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->d()Lio/sentry/protocol/App;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lio/sentry/protocol/App;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->j:Landroid/content/Context;

    .line 15
    .line 16
    sget-object v2, Lio/sentry/android/core/ContextUtils;->c:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lio/sentry/protocol/App;->n:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lio/sentry/android/core/performance/AppStartMetrics;->b(Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/performance/TimeSpan;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->b()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x0

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1}, Lio/sentry/android/core/performance/TimeSpan;->b()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    new-instance v2, Lio/sentry/SentryLongDate;

    .line 50
    .line 51
    iget-wide v4, v1, Lio/sentry/android/core/performance/TimeSpan;->k:J

    .line 52
    .line 53
    const-wide/32 v6, 0xf4240

    .line 54
    .line 55
    .line 56
    mul-long/2addr v4, v6

    .line 57
    invoke-direct {v2, v4, v5}, Lio/sentry/SentryLongDate;-><init>(J)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object v2, v3

    .line 62
    :goto_0
    if-nez v2, :cond_2

    .line 63
    .line 64
    move-object v1, v3

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-wide v1, v2, Lio/sentry/SentryLongDate;->j:J

    .line 67
    .line 68
    long-to-double v1, v1

    .line 69
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    div-double/2addr v1, v4

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Ljava/lang/Double;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    invoke-static {v1, v2}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    :goto_1
    iput-object v1, v0, Lio/sentry/protocol/App;->k:Ljava/util/Date;

    .line 88
    .line 89
    :cond_3
    invoke-static {p2}, Lio/sentry/util/HintUtils;->c(Lio/sentry/Hint;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-nez p2, :cond_4

    .line 94
    .line 95
    iget-object p2, v0, Lio/sentry/protocol/App;->t:Ljava/lang/Boolean;

    .line 96
    .line 97
    if-nez p2, :cond_4

    .line 98
    .line 99
    sget-object p2, Lio/sentry/android/core/AppState;->n:Lio/sentry/android/core/AppState;

    .line 100
    .line 101
    iget-object p2, p2, Lio/sentry/android/core/AppState;->m:Ljava/lang/Boolean;

    .line 102
    .line 103
    if-eqz p2, :cond_4

    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    xor-int/lit8 p2, p2, 0x1

    .line 110
    .line 111
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iput-object p2, v0, Lio/sentry/protocol/App;->t:Ljava/lang/Boolean;

    .line 116
    .line 117
    :cond_4
    iget-object p2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->j:Landroid/content/Context;

    .line 118
    .line 119
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 120
    .line 121
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget-object v4, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->k:Lio/sentry/android/core/BuildInfoProvider;

    .line 126
    .line 127
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 131
    .line 132
    const/16 v6, 0x21

    .line 133
    .line 134
    if-lt v5, v6, :cond_5

    .line 135
    .line 136
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    const-wide/16 v6, 0x1000

    .line 145
    .line 146
    invoke-static {v6, v7}, Lio/sentry/android/core/j;->d(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    invoke-static {v5, p2, v6}, Lio/sentry/android/core/j;->b(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    goto :goto_3

    .line 155
    :catchall_0
    move-exception p2

    .line 156
    goto :goto_2

    .line 157
    :cond_5
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p2

    .line 165
    const/16 v6, 0x1000

    .line 166
    .line 167
    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 168
    .line 169
    .line 170
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    goto :goto_3

    .line 172
    :goto_2
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 173
    .line 174
    const-string v6, "Error getting package info."

    .line 175
    .line 176
    invoke-interface {v2, v5, v6, p2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    move-object p2, v3

    .line 180
    :goto_3
    if-eqz p2, :cond_a

    .line 181
    .line 182
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 186
    .line 187
    .line 188
    move-result-wide v4

    .line 189
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    iget-object v4, p1, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 194
    .line 195
    if-nez v4, :cond_6

    .line 196
    .line 197
    iput-object v2, p1, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 198
    .line 199
    :cond_6
    iget-object p0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->m:Ljava/util/concurrent/Future;

    .line 200
    .line 201
    const/4 v2, 0x0

    .line 202
    const-string v4, "Failed to retrieve device info"

    .line 203
    .line 204
    if-eqz p0, :cond_7

    .line 205
    .line 206
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    check-cast p0, Lio/sentry/android/core/DeviceInfoUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    .line 212
    move-object v3, p0

    .line 213
    goto :goto_4

    .line 214
    :catchall_1
    move-exception p0

    .line 215
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 220
    .line 221
    invoke-interface {v1, v5, v4, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_7
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 230
    .line 231
    new-array v5, v2, [Ljava/lang/Object;

    .line 232
    .line 233
    invoke-interface {p0, v1, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    :goto_4
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 237
    .line 238
    iput-object p0, v0, Lio/sentry/protocol/App;->j:Ljava/lang/String;

    .line 239
    .line 240
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 241
    .line 242
    iput-object p0, v0, Lio/sentry/protocol/App;->o:Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 245
    .line 246
    .line 247
    move-result-wide v4

    .line 248
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    iput-object p0, v0, Lio/sentry/protocol/App;->p:Ljava/lang/String;

    .line 253
    .line 254
    new-instance p0, Ljava/util/HashMap;

    .line 255
    .line 256
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 257
    .line 258
    .line 259
    iget-object v1, p2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 260
    .line 261
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 262
    .line 263
    if-eqz v1, :cond_9

    .line 264
    .line 265
    array-length v4, v1

    .line 266
    if-lez v4, :cond_9

    .line 267
    .line 268
    if-eqz p2, :cond_9

    .line 269
    .line 270
    array-length v4, p2

    .line 271
    if-lez v4, :cond_9

    .line 272
    .line 273
    :goto_5
    array-length v4, v1

    .line 274
    if-ge v2, v4, :cond_9

    .line 275
    .line 276
    aget-object v4, v1, v2

    .line 277
    .line 278
    const/16 v5, 0x2e

    .line 279
    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    .line 281
    .line 282
    .line 283
    move-result v5

    .line 284
    add-int/lit8 v5, v5, 0x1

    .line 285
    .line 286
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    aget v5, p2, v2

    .line 291
    .line 292
    const/4 v6, 0x2

    .line 293
    and-int/2addr v5, v6

    .line 294
    if-ne v5, v6, :cond_8

    .line 295
    .line 296
    const-string v5, "granted"

    .line 297
    .line 298
    goto :goto_6

    .line 299
    :cond_8
    const-string v5, "not_granted"

    .line 300
    .line 301
    :goto_6
    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    add-int/lit8 v2, v2, 0x1

    .line 305
    .line 306
    goto :goto_5

    .line 307
    :cond_9
    iput-object p0, v0, Lio/sentry/protocol/App;->q:Ljava/util/AbstractMap;

    .line 308
    .line 309
    if-eqz v3, :cond_a

    .line 310
    .line 311
    :try_start_2
    iget-object p0, v3, Lio/sentry/android/core/DeviceInfoUtil;->f:Lio/sentry/android/core/ContextUtils$SplitApksInfo;

    .line 312
    .line 313
    if-eqz p0, :cond_a

    .line 314
    .line 315
    iget-boolean p2, p0, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->a:Z

    .line 316
    .line 317
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    iput-object p2, v0, Lio/sentry/protocol/App;->u:Ljava/lang/Boolean;

    .line 322
    .line 323
    iget-object p0, p0, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->b:[Ljava/lang/String;

    .line 324
    .line 325
    if-eqz p0, :cond_a

    .line 326
    .line 327
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    iput-object p0, v0, Lio/sentry/protocol/App;->v:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 332
    .line 333
    :catchall_2
    :cond_a
    iget-object p0, p1, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 334
    .line 335
    invoke-virtual {p0, v0}, Lio/sentry/protocol/Contexts;->m(Lio/sentry/protocol/App;)V

    .line 336
    .line 337
    .line 338
    return-void
.end method

.method public final c(Lio/sentry/SentryBaseEvent;ZZ)V
    .locals 7

    .line 1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/sentry/protocol/User;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 11
    .line 12
    :cond_0
    iget-object v1, v0, Lio/sentry/protocol/User;->k:Ljava/lang/String;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->j:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Lio/sentry/android/core/Installation;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lio/sentry/protocol/User;->k:Ljava/lang/String;

    .line 23
    .line 24
    :cond_1
    iget-object v1, v0, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v2, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const-string v1, "{{auto}}"

    .line 37
    .line 38
    iput-object v1, v0, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 39
    .line 40
    :cond_2
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 41
    .line 42
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->e()Lio/sentry/protocol/Device;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v3, "Failed to retrieve device info"

    .line 47
    .line 48
    iget-object p0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->m:Ljava/util/concurrent/Future;

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    if-nez v1, :cond_6

    .line 52
    .line 53
    if-eqz p0, :cond_3

    .line 54
    .line 55
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lio/sentry/android/core/DeviceInfoUtil;

    .line 60
    .line 61
    invoke-virtual {v1, p2, p3}, Lio/sentry/android/core/DeviceInfoUtil;->a(ZZ)Lio/sentry/protocol/Device;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {v0, p2}, Lio/sentry/protocol/Contexts;->o(Lio/sentry/protocol/Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p2

    .line 70
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 75
    .line 76
    invoke-interface {p3, v1, v3, p2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 85
    .line 86
    new-array v1, v4, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-interface {p2, p3, v3, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->g()Lio/sentry/protocol/OperatingSystem;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-eqz p0, :cond_4

    .line 96
    .line 97
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    check-cast p3, Lio/sentry/android/core/DeviceInfoUtil;

    .line 102
    .line 103
    iget-object p3, p3, Lio/sentry/android/core/DeviceInfoUtil;->g:Lio/sentry/protocol/OperatingSystem;

    .line 104
    .line 105
    invoke-virtual {v0, p3}, Lio/sentry/protocol/Contexts;->r(Lio/sentry/protocol/OperatingSystem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catchall_1
    move-exception p3

    .line 110
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 115
    .line 116
    const-string v6, "Failed to retrieve os system"

    .line 117
    .line 118
    invoke-interface {v1, v5, v6, p3}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 127
    .line 128
    new-array v5, v4, [Ljava/lang/Object;

    .line 129
    .line 130
    invoke-interface {p3, v1, v3, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    if-eqz p2, :cond_6

    .line 134
    .line 135
    iget-object p3, p2, Lio/sentry/protocol/OperatingSystem;->j:Ljava/lang/String;

    .line 136
    .line 137
    if-eqz p3, :cond_5

    .line 138
    .line 139
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_5

    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v5, "os_"

    .line 148
    .line 149
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p3

    .line 156
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 157
    .line 158
    invoke-virtual {p3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p3

    .line 169
    goto :goto_2

    .line 170
    :cond_5
    const-string p3, "os_1"

    .line 171
    .line 172
    :goto_2
    invoke-virtual {v0, p2, p3}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    :cond_6
    if-eqz p0, :cond_8

    .line 176
    .line 177
    :try_start_2
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    check-cast p0, Lio/sentry/android/core/DeviceInfoUtil;

    .line 182
    .line 183
    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->e:Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    .line 184
    .line 185
    if-eqz p0, :cond_9

    .line 186
    .line 187
    new-instance p2, Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string p3, "isSideLoaded"

    .line 193
    .line 194
    iget-boolean v0, p0, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->a:Z

    .line 195
    .line 196
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    iget-object p0, p0, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->b:Ljava/lang/String;

    .line 204
    .line 205
    if-eqz p0, :cond_7

    .line 206
    .line 207
    const-string p3, "installerStore"

    .line 208
    .line 209
    invoke-virtual {p2, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    :cond_7
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 213
    .line 214
    .line 215
    move-result-object p0

    .line 216
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

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
    move-result p2

    .line 224
    if-eqz p2, :cond_9

    .line 225
    .line 226
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    check-cast p2, Ljava/util/Map$Entry;

    .line 231
    .line 232
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    check-cast p3, Ljava/lang/String;

    .line 237
    .line 238
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    check-cast p2, Ljava/lang/String;

    .line 243
    .line 244
    invoke-virtual {p1, p3, p2}, Lio/sentry/SentryBaseEvent;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :catchall_2
    move-exception p0

    .line 249
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 254
    .line 255
    const-string p3, "Error getting side loaded info."

    .line 256
    .line 257
    invoke-interface {p1, p2, p3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_8
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 266
    .line 267
    new-array p2, v4, [Ljava/lang/Object;

    .line 268
    .line 269
    invoke-interface {p0, p1, v3, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    :cond_9
    :goto_4
    return-void
.end method

.method public final d(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z
    .locals 1

    .line 1
    invoke-static {p2}, Lio/sentry/util/HintUtils;->d(Lio/sentry/Hint;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/DefaultAndroidEventProcessor;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    iget-object p1, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 18
    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "Event was cached so not applying data relevant to the current app execution/version: %s"

    .line 24
    .line 25
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public final h(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 9

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->d(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->b(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->e()Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_4

    .line 16
    .line 17
    invoke-static {p2}, Lio/sentry/util/HintUtils;->c(Lio/sentry/Hint;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->e()Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_4

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lio/sentry/protocol/SentryThread;

    .line 40
    .line 41
    sget-object v4, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->a:Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-object v4, v3, Lio/sentry/protocol/SentryThread;->j:Ljava/lang/Long;

    .line 47
    .line 48
    if-eqz v4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    .line 64
    const/16 v8, 0x24

    .line 65
    .line 66
    if-lt v7, v8, :cond_1

    .line 67
    .line 68
    invoke-static {v6}, Lt4;->d(Ljava/lang/Thread;)J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    .line 74
    .line 75
    .line 76
    move-result-wide v6

    .line 77
    :goto_1
    cmp-long v4, v6, v4

    .line 78
    .line 79
    if-nez v4, :cond_2

    .line 80
    .line 81
    move v4, v1

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    const/4 v4, 0x0

    .line 84
    :goto_2
    iget-object v5, v3, Lio/sentry/protocol/SentryThread;->o:Ljava/lang/Boolean;

    .line 85
    .line 86
    if-nez v5, :cond_3

    .line 87
    .line 88
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    iput-object v5, v3, Lio/sentry/protocol/SentryThread;->o:Ljava/lang/Boolean;

    .line 93
    .line 94
    :cond_3
    if-nez p2, :cond_0

    .line 95
    .line 96
    iget-object v5, v3, Lio/sentry/protocol/SentryThread;->q:Ljava/lang/Boolean;

    .line 97
    .line 98
    if-nez v5, :cond_0

    .line 99
    .line 100
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    iput-object v4, v3, Lio/sentry/protocol/SentryThread;->q:Ljava/lang/Boolean;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {p0, p1, v1, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->c(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->d()Ljava/util/ArrayList;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-eqz p0, :cond_6

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    if-le p2, v1, :cond_6

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    sub-int/2addr p2, v1

    .line 127
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, Lio/sentry/protocol/SentryException;

    .line 132
    .line 133
    const-string v0, "java.lang"

    .line 134
    .line 135
    iget-object v1, p2, Lio/sentry/protocol/SentryException;->l:Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    iget-object p2, p2, Lio/sentry/protocol/SentryException;->n:Lio/sentry/protocol/SentryStackTrace;

    .line 144
    .line 145
    if-eqz p2, :cond_6

    .line 146
    .line 147
    iget-object p2, p2, Lio/sentry/protocol/SentryStackTrace;->j:Ljava/util/List;

    .line 148
    .line 149
    if-eqz p2, :cond_6

    .line 150
    .line 151
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    check-cast v0, Lio/sentry/protocol/SentryStackFrame;

    .line 166
    .line 167
    const-string v1, "com.android.internal.os.RuntimeInit$MethodAndArgsCaller"

    .line 168
    .line 169
    iget-object v0, v0, Lio/sentry/protocol/SentryStackFrame;->o:Ljava/lang/String;

    .line 170
    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_5

    .line 176
    .line 177
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 178
    .line 179
    .line 180
    :cond_6
    return-object p1
.end method

.method public final n(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->d(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->b(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/android/core/DefaultAndroidEventProcessor;->c(Lio/sentry/SentryBaseEvent;ZZ)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method
