.class public final Lnet/blip/android/App;
.super Landroid/app/Application;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/blip/android/App$Companion;
    }
.end annotation


# static fields
.field public static m:Landroid/content/Context;

.field public static n:Lnet/blip/libblip/Core;

.field public static o:Lnet/blip/android/App;


# instance fields
.field public final j:Lkotlin/Lazy;

.field public final k:Lkotlin/Lazy;

.field public final l:Lnet/blip/android/SystemPathsAndroid;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lx2;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lx2;-><init>(Lnet/blip/android/App;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lnet/blip/android/App;->j:Lkotlin/Lazy;

    .line 15
    .line 16
    new-instance v0, Lx2;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, p0, v1}, Lx2;-><init>(Lnet/blip/android/App;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lnet/blip/android/App;->k:Lkotlin/Lazy;

    .line 27
    .line 28
    sget-object v0, Lnet/blip/android/SystemPathsAndroid;->a:Lnet/blip/android/SystemPathsAndroid;

    .line 29
    .line 30
    iput-object v0, p0, Lnet/blip/android/App;->l:Lnet/blip/android/SystemPathsAndroid;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a()Lnet/blip/libblip/Flavor;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/blip/android/App;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lnet/blip/libblip/Flavor;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onCreate()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super {v1}, Landroid/app/Application;->onCreate()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v1}, Lnet/blip/android/App;->a()Lnet/blip/libblip/Flavor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lnet/blip/android/FlavorAndroid;

    .line 11
    .line 12
    iget-object v0, v0, Lnet/blip/android/FlavorAndroid;->f:Lnet/blip/libblip/SentryConfig;

    .line 13
    .line 14
    const/16 v2, 0x1d

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    sget-object v5, Lio/sentry/kotlin/multiplatform/Sentry;->a:Lio/sentry/kotlin/multiplatform/SentryBridge;

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance v5, Lio/sentry/kotlin/multiplatform/SentryOptions;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v6, Lio/sentry/kotlin/multiplatform/SentryLevel;->DEBUG:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 31
    .line 32
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->f:Lio/sentry/kotlin/multiplatform/SentryLevel;

    .line 33
    .line 34
    const/16 v6, 0x64

    .line 35
    .line 36
    iput v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->g:I

    .line 37
    .line 38
    const-wide/32 v6, 0x1400000

    .line 39
    .line 40
    .line 41
    iput-wide v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->h:J

    .line 42
    .line 43
    new-instance v6, Lio/sentry/kotlin/multiplatform/HttpStatusCodeRange;

    .line 44
    .line 45
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    const-string v6, ".*"

    .line 52
    .line 53
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->B(Ljava/lang/Object;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    iput-boolean v4, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->j:Z

    .line 57
    .line 58
    const-wide/16 v6, 0x1388

    .line 59
    .line 60
    iput-wide v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->k:J

    .line 61
    .line 62
    new-instance v6, Lio/sentry/kotlin/multiplatform/SentryReplayOptions;

    .line 63
    .line 64
    sget-object v7, Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;->MEDIUM:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 65
    .line 66
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-boolean v4, v6, Lio/sentry/kotlin/multiplatform/SentryReplayOptions;->a:Z

    .line 73
    .line 74
    iput-boolean v4, v6, Lio/sentry/kotlin/multiplatform/SentryReplayOptions;->b:Z

    .line 75
    .line 76
    iput-object v7, v6, Lio/sentry/kotlin/multiplatform/SentryReplayOptions;->c:Lio/sentry/kotlin/multiplatform/SentryReplayOptions$Quality;

    .line 77
    .line 78
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->l:Lio/sentry/kotlin/multiplatform/SentryReplayOptions;

    .line 79
    .line 80
    new-instance v6, Lio/sentry/kotlin/multiplatform/log/SentryLogOptions;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->m:Lio/sentry/kotlin/multiplatform/log/SentryLogOptions;

    .line 86
    .line 87
    iget-object v6, v0, Lnet/blip/libblip/SentryConfig;->a:Ljava/lang/String;

    .line 88
    .line 89
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->a:Ljava/lang/String;

    .line 90
    .line 91
    iput-boolean v4, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->c:Z

    .line 92
    .line 93
    iget-object v6, v0, Lnet/blip/libblip/SentryConfig;->b:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->d:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v6, v0, Lnet/blip/libblip/SentryConfig;->c:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->b:Ljava/lang/String;

    .line 100
    .line 101
    const-wide v6, 0x3fb999999999999aL    # 0.1

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->i:Ljava/lang/Double;

    .line 111
    .line 112
    iput-boolean v3, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->j:Z

    .line 113
    .line 114
    new-instance v6, Lma;

    .line 115
    .line 116
    const/16 v7, 0x16

    .line 117
    .line 118
    invoke-direct {v6, v7, v0}, Lma;-><init>(ILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iput-object v6, v5, Lio/sentry/kotlin/multiplatform/SentryOptions;->e:Lma;

    .line 122
    .line 123
    new-instance v0, Llh;

    .line 124
    .line 125
    const/4 v6, 0x6

    .line 126
    invoke-direct {v0, v6, v5}, Llh;-><init>(ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    new-instance v5, Llh;

    .line 130
    .line 131
    const/4 v6, 0x4

    .line 132
    invoke-direct {v5, v6, v0}, Llh;-><init>(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object v0, Lio/sentry/kotlin/multiplatform/Context_androidKt;->a:Landroid/content/Context;

    .line 136
    .line 137
    if-nez v0, :cond_0

    .line 138
    .line 139
    goto/16 :goto_7

    .line 140
    .line 141
    :cond_0
    new-instance v7, Lp;

    .line 142
    .line 143
    invoke-direct {v7, v2, v5}, Lp;-><init>(ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    new-instance v5, Lio/sentry/android/core/AndroidLogger;

    .line 147
    .line 148
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v8, "Failed to initialize Sentry\'s SDK"

    .line 152
    .line 153
    const-string v9, "Fatal error during SentryAndroid.init(...)"

    .line 154
    .line 155
    :try_start_0
    sget-object v10, Lio/sentry/android/core/SentryAndroid;->b:Lio/sentry/util/AutoClosableReentrantLock;

    .line 156
    .line 157
    invoke-virtual {v10}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 158
    .line 159
    .line 160
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :try_start_1
    new-instance v11, Lio/sentry/OptionsContainer;

    .line 162
    .line 163
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v12, Lio/sentry/android/core/f;

    .line 167
    .line 168
    invoke-direct {v12, v5, v0, v7}, Lio/sentry/android/core/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v11, v12}, Lio/sentry/Sentry;->c(Lio/sentry/OptionsContainer;Lio/sentry/android/core/f;)V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {}, Lio/sentry/android/core/ContextUtils;->d()Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_2

    .line 183
    .line 184
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-virtual {v7}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-eqz v7, :cond_1

    .line 193
    .line 194
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 195
    .line 196
    invoke-direct {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 197
    .line 198
    .line 199
    new-instance v11, Lio/sentry/android/core/l;

    .line 200
    .line 201
    invoke-direct {v11, v6, v7}, Lio/sentry/android/core/l;-><init>(ILjava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {v0, v11}, Lio/sentry/IScopes;->o(Lio/sentry/ScopeCallback;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-nez v6, :cond_1

    .line 212
    .line 213
    invoke-interface {v0}, Lio/sentry/IScopes;->m()V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    move-object v1, v0

    .line 219
    goto :goto_1

    .line 220
    :cond_1
    :goto_0
    invoke-interface {v0}, Lio/sentry/IScopes;->j()Lio/sentry/SentryOptions;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getReplayController()Lio/sentry/ReplayController;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-interface {v0}, Lio/sentry/ReplayController;->O()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .line 230
    .line 231
    :cond_2
    :try_start_2
    invoke-interface {v10}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    .line 233
    .line 234
    goto :goto_7

    .line 235
    :catch_0
    move-exception v0

    .line 236
    goto :goto_3

    .line 237
    :catch_1
    move-exception v0

    .line 238
    goto :goto_4

    .line 239
    :catch_2
    move-exception v0

    .line 240
    goto :goto_5

    .line 241
    :catch_3
    move-exception v0

    .line 242
    goto :goto_6

    .line 243
    :goto_1
    :try_start_3
    invoke-interface {v10}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :catchall_1
    move-exception v0

    .line 248
    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 249
    .line 250
    .line 251
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0

    .line 252
    :goto_3
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 253
    .line 254
    invoke-virtual {v5, v1, v9, v0}, Lio/sentry/android/core/AndroidLogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    .line 256
    .line 257
    invoke-static {v8, v0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    .line 259
    .line 260
    return-void

    .line 261
    :goto_4
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 262
    .line 263
    invoke-virtual {v5, v1, v9, v0}, Lio/sentry/android/core/AndroidLogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v8, v0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :goto_5
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 271
    .line 272
    invoke-virtual {v5, v1, v9, v0}, Lio/sentry/android/core/AndroidLogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    .line 274
    .line 275
    invoke-static {v8, v0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :goto_6
    sget-object v1, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 280
    .line 281
    invoke-virtual {v5, v1, v9, v0}, Lio/sentry/android/core/AndroidLogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    .line 283
    .line 284
    invoke-static {v8, v0}, Lu2;->k(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    .line 286
    .line 287
    return-void

    .line 288
    :cond_3
    :goto_7
    invoke-virtual {v1}, Lnet/blip/android/App;->a()Lnet/blip/libblip/Flavor;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    check-cast v0, Lnet/blip/android/FlavorAndroid;

    .line 296
    .line 297
    iget-object v0, v0, Lnet/blip/android/FlavorAndroid;->e:Ljava/lang/String;

    .line 298
    .line 299
    const-string v5, "core-crash.log"

    .line 300
    .line 301
    filled-new-array {v5}, [Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v6

    .line 305
    invoke-static {v0, v6}, Lnet/blip/libblip/PathUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    const-string v7, "Core: "

    .line 310
    .line 311
    const/4 v8, 0x0

    .line 312
    :try_start_5
    sget-object v0, Lokio/Path;->k:Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {v6}, Lokio/Path$Companion;->a(Ljava/lang/String;)Lokio/Path;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    sget-object v0, Lokio/FileSystem;->j:Lokio/JvmSystemFileSystem;

    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v9}, Lokio/Path;->toFile()Ljava/io/File;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v0}, Lokio/Okio;->d(Ljava/io/File;)Lokio/Source;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    new-instance v10, Lokio/RealBufferedSource;

    .line 332
    .line 333
    invoke-direct {v10, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 334
    .line 335
    .line 336
    :try_start_6
    iget-object v11, v10, Lokio/RealBufferedSource;->k:Lokio/Buffer;

    .line 337
    .line 338
    invoke-virtual {v11, v0}, Lokio/Buffer;->a0(Lokio/Source;)J

    .line 339
    .line 340
    .line 341
    iget-wide v12, v11, Lokio/Buffer;->k:J

    .line 342
    .line 343
    invoke-virtual {v11, v12, v13}, Lokio/Buffer;->s(J)Lokio/ByteString;

    .line 344
    .line 345
    .line 346
    move-result-object v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 347
    :try_start_7
    invoke-virtual {v10}, Lokio/RealBufferedSource;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 348
    .line 349
    .line 350
    move-object v0, v8

    .line 351
    goto :goto_b

    .line 352
    :catchall_2
    move-exception v0

    .line 353
    goto :goto_b

    .line 354
    :goto_8
    move-object v11, v0

    .line 355
    goto :goto_9

    .line 356
    :catchall_3
    move-exception v0

    .line 357
    goto :goto_8

    .line 358
    :goto_9
    :try_start_8
    invoke-virtual {v10}, Lokio/RealBufferedSource;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 359
    .line 360
    .line 361
    goto :goto_a

    .line 362
    :catchall_4
    move-exception v0

    .line 363
    :try_start_9
    invoke-static {v11, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 364
    .line 365
    .line 366
    :goto_a
    move-object v0, v11

    .line 367
    move-object v11, v8

    .line 368
    :goto_b
    if-nez v0, :cond_5

    .line 369
    .line 370
    invoke-virtual {v11}, Lokio/ByteString;->s()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 375
    .line 376
    .line 377
    move-result v10

    .line 378
    if-lez v10, :cond_4

    .line 379
    .line 380
    sget-object v10, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 381
    .line 382
    const-string v11, "found saved core crash, reporting to Sentry"

    .line 383
    .line 384
    const-string v12, "message"

    .line 385
    .line 386
    invoke-static {v0}, Lkotlin/text/StringsKt;->x(Ljava/lang/String;)Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object v13

    .line 390
    invoke-static {v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v13

    .line 394
    new-instance v14, Lkotlin/Pair;

    .line 395
    .line 396
    invoke-direct {v14, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    const-string v12, "path"

    .line 400
    .line 401
    new-instance v13, Lkotlin/Pair;

    .line 402
    .line 403
    invoke-direct {v13, v12, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    filled-new-array {v14, v13}, [Lkotlin/Pair;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-static {v11, v6}, Lnet/blip/libblip/Logger;->h(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 414
    .line 415
    .line 416
    sget-object v6, Lio/sentry/kotlin/multiplatform/Sentry;->a:Lio/sentry/kotlin/multiplatform/SentryBridge;

    .line 417
    .line 418
    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    new-instance v6, Lle;

    .line 423
    .line 424
    const/16 v7, 0x11

    .line 425
    .line 426
    invoke-direct {v6, v7}, Lle;-><init>(I)V

    .line 427
    .line 428
    .line 429
    invoke-static {v0, v6}, Lio/sentry/kotlin/multiplatform/Sentry;->a(Ljava/lang/String;Lle;)V

    .line 430
    .line 431
    .line 432
    goto :goto_c

    .line 433
    :catchall_5
    move-exception v0

    .line 434
    goto :goto_d

    .line 435
    :cond_4
    :goto_c
    sget-object v0, Lokio/FileSystem;->j:Lokio/JvmSystemFileSystem;

    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, v9}, Lokio/JvmSystemFileSystem;->v(Lokio/Path;)V

    .line 441
    .line 442
    .line 443
    goto :goto_e

    .line 444
    :cond_5
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 445
    :goto_d
    new-instance v6, Lkotlin/Result$Failure;

    .line 446
    .line 447
    invoke-direct {v6, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 448
    .line 449
    .line 450
    :goto_e
    sput-object v1, Lnet/blip/android/App;->o:Lnet/blip/android/App;

    .line 451
    .line 452
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    sput-object v0, Lnet/blip/android/App;->m:Landroid/content/Context;

    .line 460
    .line 461
    sget-object v0, Lnet/blip/libblip/LibBlip;->a:Lnet/blip/libblip/LibBlip$Companion;

    .line 462
    .line 463
    invoke-virtual {v1}, Lnet/blip/android/App;->a()Lnet/blip/libblip/Flavor;

    .line 464
    .line 465
    .line 466
    move-result-object v6

    .line 467
    check-cast v6, Lnet/blip/android/FlavorAndroid;

    .line 468
    .line 469
    iget-object v6, v6, Lnet/blip/android/FlavorAndroid;->e:Ljava/lang/String;

    .line 470
    .line 471
    sget-object v7, Lnet/blip/libblip/LogLevel;->k:Lnet/blip/libblip/LogLevel;

    .line 472
    .line 473
    const/4 v7, -0x4

    .line 474
    const-string v9, "AndroidApp"

    .line 475
    .line 476
    invoke-virtual {v0, v6, v9, v7}, Lnet/blip/libblip/LibBlip$Companion;->configureLogging(Ljava/lang/String;Ljava/lang/String;I)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1}, Lnet/blip/android/App;->a()Lnet/blip/libblip/Flavor;

    .line 480
    .line 481
    .line 482
    move-result-object v6

    .line 483
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 484
    .line 485
    .line 486
    check-cast v6, Lnet/blip/android/FlavorAndroid;

    .line 487
    .line 488
    iget-object v6, v6, Lnet/blip/android/FlavorAndroid;->e:Ljava/lang/String;

    .line 489
    .line 490
    filled-new-array {v5}, [Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    invoke-static {v6, v5}, Lnet/blip/libblip/PathUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v5

    .line 498
    invoke-virtual {v0, v5}, Lnet/blip/libblip/LibBlip$Companion;->setCrashOutput(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    invoke-virtual {v1}, Lnet/blip/android/App;->a()Lnet/blip/libblip/Flavor;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    check-cast v5, Lnet/blip/android/FlavorAndroid;

    .line 506
    .line 507
    iget-object v5, v5, Lnet/blip/android/FlavorAndroid;->e:Ljava/lang/String;

    .line 508
    .line 509
    invoke-virtual {v1}, Lnet/blip/android/App;->a()Lnet/blip/libblip/Flavor;

    .line 510
    .line 511
    .line 512
    move-result-object v6

    .line 513
    check-cast v6, Lnet/blip/android/FlavorAndroid;

    .line 514
    .line 515
    iget-object v6, v6, Lnet/blip/android/FlavorAndroid;->d:Ljava/lang/String;

    .line 516
    .line 517
    invoke-virtual {v1}, Lnet/blip/android/App;->a()Lnet/blip/libblip/Flavor;

    .line 518
    .line 519
    .line 520
    move-result-object v7

    .line 521
    check-cast v7, Lnet/blip/android/FlavorAndroid;

    .line 522
    .line 523
    iget-object v7, v7, Lnet/blip/android/FlavorAndroid;->c:Ljava/lang/String;

    .line 524
    .line 525
    invoke-virtual {v0, v4, v5, v6, v7}, Lnet/blip/libblip/LibBlip$Companion;->startHosting(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    new-instance v0, Lnet/blip/android/PathDecoderAndroid;

    .line 529
    .line 530
    iget-object v5, v1, Lnet/blip/android/App;->l:Lnet/blip/android/SystemPathsAndroid;

    .line 531
    .line 532
    invoke-direct {v0, v5}, Lnet/blip/android/PathDecoderAndroid;-><init>(Lnet/blip/android/SystemPathsAndroid;)V

    .line 533
    .line 534
    .line 535
    sput-object v0, Lnet/blip/libblip/PathDecoder$Companion;->a:Lnet/blip/android/PathDecoderAndroid;

    .line 536
    .line 537
    new-instance v0, Lnet/blip/libblip/Core;

    .line 538
    .line 539
    invoke-virtual {v1}, Lnet/blip/android/App;->a()Lnet/blip/libblip/Flavor;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 544
    .line 545
    .line 546
    check-cast v5, Lnet/blip/android/FlavorAndroid;

    .line 547
    .line 548
    iget-object v5, v5, Lnet/blip/android/FlavorAndroid;->e:Ljava/lang/String;

    .line 549
    .line 550
    const-string v6, "sock"

    .line 551
    .line 552
    filled-new-array {v6}, [Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v6

    .line 556
    invoke-static {v5, v6}, Lnet/blip/libblip/PathUtil;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    sget-object v6, Lnet/blip/libblip/UserAgent;->v:Lnet/blip/libblip/UserAgent$Companion$ADAPTER$1;

    .line 561
    .line 562
    iget-object v6, v1, Lnet/blip/android/App;->k:Lkotlin/Lazy;

    .line 563
    .line 564
    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v6

    .line 568
    check-cast v6, Lnet/blip/libblip/HardwareInfo;

    .line 569
    .line 570
    invoke-virtual {v1}, Lnet/blip/android/App;->a()Lnet/blip/libblip/Flavor;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    new-instance v9, Lnet/blip/libblip/UserAgent;

    .line 581
    .line 582
    check-cast v6, Lnet/blip/android/HardwareInfoAndroid;

    .line 583
    .line 584
    iget-object v7, v6, Lnet/blip/android/HardwareInfoAndroid;->c:Ljava/lang/String;

    .line 585
    .line 586
    const-string v10, ""

    .line 587
    .line 588
    if-nez v7, :cond_6

    .line 589
    .line 590
    move-object v7, v10

    .line 591
    :cond_6
    iget-object v11, v6, Lnet/blip/android/HardwareInfoAndroid;->d:Ljava/lang/String;

    .line 592
    .line 593
    if-nez v11, :cond_7

    .line 594
    .line 595
    move-object v11, v10

    .line 596
    :cond_7
    iget-object v12, v6, Lnet/blip/android/HardwareInfoAndroid;->g:Lnet/blip/libblip/DeviceKind;

    .line 597
    .line 598
    iget-object v13, v6, Lnet/blip/android/HardwareInfoAndroid;->e:Ljava/lang/String;

    .line 599
    .line 600
    iget-object v6, v6, Lnet/blip/android/HardwareInfoAndroid;->f:Ljava/lang/String;

    .line 601
    .line 602
    if-nez v6, :cond_8

    .line 603
    .line 604
    move-object v14, v10

    .line 605
    goto :goto_f

    .line 606
    :cond_8
    move-object v14, v6

    .line 607
    :goto_f
    check-cast v1, Lnet/blip/android/FlavorAndroid;

    .line 608
    .line 609
    iget-object v6, v1, Lnet/blip/android/FlavorAndroid;->b:Lnet/blip/libblip/SemanticVersion;

    .line 610
    .line 611
    iget-object v1, v1, Lnet/blip/android/FlavorAndroid;->a:Ljava/lang/String;

    .line 612
    .line 613
    if-eqz v6, :cond_9

    .line 614
    .line 615
    invoke-virtual {v6}, Lnet/blip/libblip/SemanticVersion;->a()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v15

    .line 619
    move-object/from16 v17, v15

    .line 620
    .line 621
    goto :goto_10

    .line 622
    :cond_9
    move-object/from16 v17, v10

    .line 623
    .line 624
    :goto_10
    if-eqz v6, :cond_b

    .line 625
    .line 626
    iget v15, v6, Lnet/blip/libblip/SemanticVersion;->a:I

    .line 627
    .line 628
    const v16, 0x989680

    .line 629
    .line 630
    .line 631
    mul-int v15, v15, v16

    .line 632
    .line 633
    iget v3, v6, Lnet/blip/libblip/SemanticVersion;->b:I

    .line 634
    .line 635
    const v16, 0x186a0

    .line 636
    .line 637
    .line 638
    mul-int v3, v3, v16

    .line 639
    .line 640
    add-int/2addr v3, v15

    .line 641
    iget v15, v6, Lnet/blip/libblip/SemanticVersion;->c:I

    .line 642
    .line 643
    mul-int/lit16 v15, v15, 0x3e8

    .line 644
    .line 645
    add-int/2addr v15, v3

    .line 646
    iget v3, v6, Lnet/blip/libblip/SemanticVersion;->d:I

    .line 647
    .line 648
    add-int/2addr v15, v3

    .line 649
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v3

    .line 653
    if-nez v3, :cond_a

    .line 654
    .line 655
    goto :goto_11

    .line 656
    :cond_a
    move-object/from16 v18, v3

    .line 657
    .line 658
    goto :goto_12

    .line 659
    :cond_b
    :goto_11
    move-object/from16 v18, v10

    .line 660
    .line 661
    :goto_12
    sget-object v19, Lokio/ByteString;->m:Lokio/ByteString;

    .line 662
    .line 663
    const-string v15, "net.blip.android"

    .line 664
    .line 665
    move-object/from16 v16, v1

    .line 666
    .line 667
    move-object v10, v7

    .line 668
    invoke-direct/range {v9 .. v19}, Lnet/blip/libblip/UserAgent;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/blip/libblip/DeviceKind;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    .line 669
    .line 670
    .line 671
    invoke-direct {v0, v5, v9}, Lnet/blip/libblip/Core;-><init>(Ljava/lang/String;Lnet/blip/libblip/UserAgent;)V

    .line 672
    .line 673
    .line 674
    sput-object v0, Lnet/blip/android/App;->n:Lnet/blip/libblip/Core;

    .line 675
    .line 676
    invoke-static {}, Lnet/blip/android/App$Companion;->a()Landroid/content/Context;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    iget-object v1, v1, Lnet/blip/libblip/Core;->b:Lc;

    .line 685
    .line 686
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 687
    .line 688
    .line 689
    new-instance v3, Lc8;

    .line 690
    .line 691
    const/4 v5, 0x2

    .line 692
    invoke-direct {v3, v1, v5}, Lc8;-><init>(Lkotlin/jvm/functions/Function1;I)V

    .line 693
    .line 694
    .line 695
    const-string v1, "connectivity"

    .line 696
    .line 697
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 702
    .line 703
    .line 704
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 705
    .line 706
    new-instance v1, Lnet/blip/android/netstatus/NetworkGenerationTracker;

    .line 707
    .line 708
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 709
    .line 710
    if-lt v6, v2, :cond_c

    .line 711
    .line 712
    goto :goto_13

    .line 713
    :cond_c
    const/4 v4, 0x0

    .line 714
    :goto_13
    invoke-direct {v1, v4}, Lnet/blip/android/netstatus/NetworkGenerationTracker;-><init>(Z)V

    .line 715
    .line 716
    .line 717
    new-instance v2, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;

    .line 718
    .line 719
    invoke-direct {v2, v1, v3}, Lnet/blip/android/netstatus/NetworkAvailabilityManager$observe$1;-><init>(Lnet/blip/android/netstatus/NetworkGenerationTracker;Lc8;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 723
    .line 724
    .line 725
    new-instance v0, Lnet/blip/android/App$onCreate$1;

    .line 726
    .line 727
    invoke-direct {v0, v5, v8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 728
    .line 729
    .line 730
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->j:Lkotlinx/coroutines/GlobalScope;

    .line 731
    .line 732
    const/4 v2, 0x3

    .line 733
    invoke-static {v1, v8, v8, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 734
    .line 735
    .line 736
    new-instance v0, Lnet/blip/android/App$onCreate$2;

    .line 737
    .line 738
    invoke-direct {v0, v5, v8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 739
    .line 740
    .line 741
    invoke-static {v1, v8, v8, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 742
    .line 743
    .line 744
    new-instance v0, Lnet/blip/android/App$onCreate$3;

    .line 745
    .line 746
    invoke-direct {v0, v5, v8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 747
    .line 748
    .line 749
    invoke-static {v1, v8, v8, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 750
    .line 751
    .line 752
    invoke-static {}, Lnet/blip/android/App$Companion;->a()Landroid/content/Context;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    sput-object v0, Lcom/jaredrummler/android/device/DeviceName;->a:Landroid/content/Context;

    .line 761
    .line 762
    return-void
.end method

.method public final onTerminate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lnet/blip/android/App$Companion;->b()Lnet/blip/libblip/Core;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    iget-object p0, p0, Lnet/blip/libblip/Core;->c:Lj6;

    .line 9
    .line 10
    invoke-virtual {p0}, Lj6;->a()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    sget-object p0, Lnet/blip/libblip/LibBlip;->a:Lnet/blip/libblip/LibBlip$Companion;

    .line 14
    .line 15
    invoke-virtual {p0}, Lnet/blip/libblip/LibBlip$Companion;->stopHosting()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
