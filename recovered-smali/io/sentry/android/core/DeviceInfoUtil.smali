.class public final Lio/sentry/android/core/DeviceInfoUtil;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static volatile i:Lio/sentry/android/core/DeviceInfoUtil;

.field public static final j:Lio/sentry/util/AutoClosableReentrantLock;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/sentry/android/core/SentryAndroidOptions;

.field public final c:Lio/sentry/android/core/BuildInfoProvider;

.field public final d:Ljava/lang/Boolean;

.field public final e:Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

.field public final f:Lio/sentry/android/core/ContextUtils$SplitApksInfo;

.field public final g:Lio/sentry/protocol/OperatingSystem;

.field public final h:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/android/core/DeviceInfoUtil;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v2, v1, Lio/sentry/android/core/DeviceInfoUtil;->a:Landroid/content/Context;

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    iput-object v3, v1, Lio/sentry/android/core/DeviceInfoUtil;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 13
    .line 14
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    .line 15
    .line 16
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-direct {v0, v4}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, v1, Lio/sentry/android/core/DeviceInfoUtil;->c:Lio/sentry/android/core/BuildInfoProvider;

    .line 24
    .line 25
    sget-object v0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->c:Lio/sentry/android/core/internal/util/CpuInfoUtils;

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->a()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    new-instance v4, Lio/sentry/protocol/OperatingSystem;

    .line 31
    .line 32
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "Android"

    .line 36
    .line 37
    iput-object v0, v4, Lio/sentry/protocol/OperatingSystem;->j:Ljava/lang/String;

    .line 38
    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v0, v4, Lio/sentry/protocol/OperatingSystem;->k:Ljava/lang/String;

    .line 42
    .line 43
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, v4, Lio/sentry/protocol/OperatingSystem;->m:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const-string v0, "os.version"

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    new-instance v0, Ljava/io/File;

    .line 58
    .line 59
    const-string v7, "/proc/version"

    .line 60
    .line 61
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-nez v7, :cond_0

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_0
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    .line 72
    .line 73
    new-instance v8, Ljava/io/FileReader;

    .line 74
    .line 75
    invoke-direct {v8, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 86
    .line 87
    .line 88
    move-object v6, v0

    .line 89
    goto :goto_2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    move-object v8, v0

    .line 94
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    :try_start_4
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 103
    :goto_1
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 104
    .line 105
    const-string v8, "Exception while attempting to read kernel information"

    .line 106
    .line 107
    invoke-interface {v5, v7, v8, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    if-eqz v6, :cond_1

    .line 111
    .line 112
    iput-object v6, v4, Lio/sentry/protocol/OperatingSystem;->n:Ljava/lang/String;

    .line 113
    .line 114
    :cond_1
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableRootCheck()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/16 v5, 0x21

    .line 119
    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v8, 0x0

    .line 122
    if-eqz v0, :cond_c

    .line 123
    .line 124
    new-instance v9, Lio/sentry/android/core/internal/util/RootChecker;

    .line 125
    .line 126
    iget-object v0, v1, Lio/sentry/android/core/DeviceInfoUtil;->a:Landroid/content/Context;

    .line 127
    .line 128
    iget-object v10, v1, Lio/sentry/android/core/DeviceInfoUtil;->c:Lio/sentry/android/core/BuildInfoProvider;

    .line 129
    .line 130
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 131
    .line 132
    .line 133
    move-result-object v11

    .line 134
    invoke-direct {v9, v0, v11, v10}, Lio/sentry/android/core/internal/util/RootChecker;-><init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, v9, Lio/sentry/android/core/internal/util/RootChecker;->b:Lio/sentry/android/core/BuildInfoProvider;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v0, :cond_2

    .line 145
    .line 146
    const-string v10, "test-keys"

    .line 147
    .line 148
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    goto/16 :goto_e

    .line 155
    .line 156
    :cond_2
    iget-object v10, v9, Lio/sentry/android/core/internal/util/RootChecker;->d:[Ljava/lang/String;

    .line 157
    .line 158
    array-length v11, v10

    .line 159
    move v12, v7

    .line 160
    :goto_3
    iget-object v13, v9, Lio/sentry/android/core/internal/util/RootChecker;->c:Lio/sentry/ILogger;

    .line 161
    .line 162
    if-ge v12, v11, :cond_4

    .line 163
    .line 164
    aget-object v14, v10, v12

    .line 165
    .line 166
    :try_start_5
    new-instance v0, Ljava/io/File;

    .line 167
    .line 168
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 172
    .line 173
    .line 174
    move-result v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 175
    if-eqz v0, :cond_3

    .line 176
    .line 177
    goto/16 :goto_e

    .line 178
    .line 179
    :catch_1
    move-exception v0

    .line 180
    sget-object v15, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 181
    .line 182
    const-string v6, "Error when trying to check if root file %s exists."

    .line 183
    .line 184
    filled-new-array {v14}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v14

    .line 188
    invoke-interface {v13, v15, v0, v6, v14}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_4
    const-string v0, "/system/xbin/which"

    .line 195
    .line 196
    const-string v6, "su"

    .line 197
    .line 198
    filled-new-array {v0, v6}, [Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    :try_start_6
    iget-object v6, v9, Lio/sentry/android/core/internal/util/RootChecker;->f:Ljava/lang/Runtime;

    .line 203
    .line 204
    invoke-virtual {v6, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 205
    .line 206
    .line 207
    move-result-object v6
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 208
    :try_start_7
    new-instance v10, Ljava/io/BufferedReader;

    .line 209
    .line 210
    new-instance v0, Ljava/io/InputStreamReader;

    .line 211
    .line 212
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    sget-object v12, Lio/sentry/android/core/internal/util/RootChecker;->g:Ljava/nio/charset/Charset;

    .line 217
    .line 218
    invoke-direct {v0, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 219
    .line 220
    .line 221
    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 222
    .line 223
    .line 224
    :try_start_8
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 228
    if-eqz v0, :cond_5

    .line 229
    .line 230
    const/4 v0, 0x1

    .line 231
    goto :goto_4

    .line 232
    :cond_5
    move v0, v7

    .line 233
    :goto_4
    :try_start_9
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 237
    .line 238
    .line 239
    goto :goto_a

    .line 240
    :catchall_2
    move-exception v0

    .line 241
    goto :goto_6

    .line 242
    :catchall_3
    move-exception v0

    .line 243
    move-object v11, v0

    .line 244
    :try_start_a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 245
    .line 246
    .line 247
    goto :goto_5

    .line 248
    :catchall_4
    move-exception v0

    .line 249
    :try_start_b
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 250
    .line 251
    .line 252
    :goto_5
    throw v11
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 253
    :catchall_5
    move-exception v0

    .line 254
    move-object v6, v8

    .line 255
    goto :goto_6

    .line 256
    :catch_2
    move-object v6, v8

    .line 257
    goto :goto_8

    .line 258
    :goto_6
    :try_start_c
    sget-object v10, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 259
    .line 260
    const-string v11, "Error when trying to check if SU exists."

    .line 261
    .line 262
    invoke-interface {v13, v10, v11, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 263
    .line 264
    .line 265
    if-eqz v6, :cond_6

    .line 266
    .line 267
    :goto_7
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 268
    .line 269
    .line 270
    goto :goto_9

    .line 271
    :catchall_6
    move-exception v0

    .line 272
    goto :goto_10

    .line 273
    :catch_3
    :goto_8
    :try_start_d
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 274
    .line 275
    const-string v10, "SU isn\'t found on this Device."

    .line 276
    .line 277
    new-array v11, v7, [Ljava/lang/Object;

    .line 278
    .line 279
    invoke-interface {v13, v0, v10, v11}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 280
    .line 281
    .line 282
    if-eqz v6, :cond_6

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_6
    :goto_9
    move v0, v7

    .line 286
    :goto_a
    if-nez v0, :cond_a

    .line 287
    .line 288
    new-instance v0, Lio/sentry/android/core/BuildInfoProvider;

    .line 289
    .line 290
    invoke-direct {v0, v13}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 291
    .line 292
    .line 293
    iget-object v0, v9, Lio/sentry/android/core/internal/util/RootChecker;->a:Landroid/content/Context;

    .line 294
    .line 295
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    if-eqz v0, :cond_8

    .line 300
    .line 301
    iget-object v6, v9, Lio/sentry/android/core/internal/util/RootChecker;->e:[Ljava/lang/String;

    .line 302
    .line 303
    array-length v9, v6

    .line 304
    move v10, v7

    .line 305
    :goto_b
    if-ge v10, v9, :cond_8

    .line 306
    .line 307
    aget-object v11, v6, v10

    .line 308
    .line 309
    :try_start_e
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 310
    .line 311
    if-lt v12, v5, :cond_7

    .line 312
    .line 313
    invoke-static {}, Lio/sentry/android/core/j;->c()Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    invoke-static {v0, v11, v12}, Lio/sentry/android/core/j;->e(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)V

    .line 318
    .line 319
    .line 320
    goto :goto_c

    .line 321
    :cond_7
    invoke-virtual {v0, v11, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_4

    .line 322
    .line 323
    .line 324
    :goto_c
    const/4 v0, 0x1

    .line 325
    goto :goto_d

    .line 326
    :catch_4
    add-int/lit8 v10, v10, 0x1

    .line 327
    .line 328
    goto :goto_b

    .line 329
    :cond_8
    move v0, v7

    .line 330
    :goto_d
    if-eqz v0, :cond_9

    .line 331
    .line 332
    goto :goto_e

    .line 333
    :cond_9
    move v0, v7

    .line 334
    goto :goto_f

    .line 335
    :cond_a
    :goto_e
    const/4 v0, 0x1

    .line 336
    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iput-object v0, v4, Lio/sentry/protocol/OperatingSystem;->o:Ljava/lang/Boolean;

    .line 341
    .line 342
    goto :goto_11

    .line 343
    :goto_10
    if-eqz v6, :cond_b

    .line 344
    .line 345
    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    .line 346
    .line 347
    .line 348
    :cond_b
    throw v0

    .line 349
    :cond_c
    :goto_11
    iput-object v4, v1, Lio/sentry/android/core/DeviceInfoUtil;->g:Lio/sentry/protocol/OperatingSystem;

    .line 350
    .line 351
    iget-object v0, v1, Lio/sentry/android/core/DeviceInfoUtil;->c:Lio/sentry/android/core/BuildInfoProvider;

    .line 352
    .line 353
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->a()Ljava/lang/Boolean;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    iput-object v0, v1, Lio/sentry/android/core/DeviceInfoUtil;->d:Ljava/lang/Boolean;

    .line 358
    .line 359
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iget-object v4, v1, Lio/sentry/android/core/DeviceInfoUtil;->c:Lio/sentry/android/core/BuildInfoProvider;

    .line 364
    .line 365
    :try_start_f
    invoke-static {v2, v4}, Lio/sentry/android/core/ContextUtils;->c(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    if-eqz v4, :cond_e

    .line 374
    .line 375
    if-eqz v6, :cond_e

    .line 376
    .line 377
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_5

    .line 378
    .line 379
    :try_start_10
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    new-instance v9, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    .line 384
    .line 385
    if-nez v6, :cond_d

    .line 386
    .line 387
    const/4 v10, 0x1

    .line 388
    goto :goto_12

    .line 389
    :cond_d
    move v10, v7

    .line 390
    :goto_12
    invoke-direct {v9, v6, v10}, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_6

    .line 391
    .line 392
    .line 393
    goto :goto_13

    .line 394
    :catch_5
    move-object v4, v8

    .line 395
    :catch_6
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 396
    .line 397
    const-string v9, "%s package isn\'t installed."

    .line 398
    .line 399
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-interface {v0, v6, v9, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    :cond_e
    move-object v9, v8

    .line 407
    :goto_13
    iput-object v9, v1, Lio/sentry/android/core/DeviceInfoUtil;->e:Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    .line 408
    .line 409
    iget-object v0, v1, Lio/sentry/android/core/DeviceInfoUtil;->c:Lio/sentry/android/core/BuildInfoProvider;

    .line 410
    .line 411
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 415
    .line 416
    if-lt v4, v5, :cond_f

    .line 417
    .line 418
    sget-object v4, Lio/sentry/android/core/ContextUtils;->d:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 419
    .line 420
    invoke-virtual {v4, v2}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    move-result-object v4

    .line 424
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 425
    .line 426
    goto :goto_14

    .line 427
    :cond_f
    sget-object v4, Lio/sentry/android/core/ContextUtils;->e:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 428
    .line 429
    invoke-virtual {v4, v2}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v4

    .line 433
    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 434
    .line 435
    :goto_14
    invoke-static {v2, v0}, Lio/sentry/android/core/ContextUtils;->c(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    if-eqz v0, :cond_11

    .line 440
    .line 441
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 442
    .line 443
    if-eqz v4, :cond_10

    .line 444
    .line 445
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 446
    .line 447
    if-eqz v4, :cond_10

    .line 448
    .line 449
    const-string v5, "com.android.vending.splits.required"

    .line 450
    .line 451
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 452
    .line 453
    .line 454
    move-result v7

    .line 455
    :cond_10
    new-instance v4, Lio/sentry/android/core/ContextUtils$SplitApksInfo;

    .line 456
    .line 457
    invoke-direct {v4, v7, v0}, Lio/sentry/android/core/ContextUtils$SplitApksInfo;-><init>(Z[Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    goto :goto_15

    .line 461
    :cond_11
    move-object v4, v8

    .line 462
    :goto_15
    iput-object v4, v1, Lio/sentry/android/core/DeviceInfoUtil;->f:Lio/sentry/android/core/ContextUtils$SplitApksInfo;

    .line 463
    .line 464
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-static {v2, v0}, Lio/sentry/android/core/ContextUtils;->b(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    if-eqz v0, :cond_12

    .line 473
    .line 474
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 475
    .line 476
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    iput-object v0, v1, Lio/sentry/android/core/DeviceInfoUtil;->h:Ljava/lang/Long;

    .line 481
    .line 482
    goto :goto_16

    .line 483
    :cond_12
    iput-object v8, v1, Lio/sentry/android/core/DeviceInfoUtil;->h:Ljava/lang/Long;

    .line 484
    .line 485
    :goto_16
    return-void
.end method

.method public static b(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Float;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "level"

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v3, "scale"

    .line 10
    .line 11
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eq v1, v2, :cond_1

    .line 16
    .line 17
    if-ne p0, v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    int-to-float v1, v1

    .line 21
    int-to-float p0, p0

    .line 22
    div-float/2addr v1, p0

    .line 23
    const/high16 p0, 0x42c80000    # 100.0f

    .line 24
    .line 25
    mul-float/2addr v1, p0

    .line 26
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    return-object v0

    .line 34
    :goto_1
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 39
    .line 40
    const-string v2, "Error getting device battery level."

    .line 41
    .line 42
    invoke-interface {p1, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;
    .locals 3

    .line 1
    sget-object v0, Lio/sentry/android/core/DeviceInfoUtil;->i:Lio/sentry/android/core/DeviceInfoUtil;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lio/sentry/android/core/DeviceInfoUtil;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    sget-object v1, Lio/sentry/android/core/DeviceInfoUtil;->i:Lio/sentry/android/core/DeviceInfoUtil;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lio/sentry/android/core/DeviceInfoUtil;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    move-object p0, v2

    .line 24
    :cond_0
    invoke-direct {v1, p0, p1}, Lio/sentry/android/core/DeviceInfoUtil;-><init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lio/sentry/android/core/DeviceInfoUtil;->i:Lio/sentry/android/core/DeviceInfoUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 33
    .line 34
    .line 35
    goto :goto_3

    .line 36
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :catchall_1
    move-exception p1

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_2
    throw p0

    .line 45
    :cond_2
    :goto_3
    sget-object p0, Lio/sentry/android/core/DeviceInfoUtil;->i:Lio/sentry/android/core/DeviceInfoUtil;

    .line 46
    .line 47
    return-object p0
.end method

.method public static d(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "plugged"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p0, v0, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return-object p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 27
    .line 28
    const-string v1, "Error getting device charging state."

    .line 29
    .line 30
    invoke-interface {p1, v0, v1, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method


# virtual methods
.method public final a(ZZ)Lio/sentry/protocol/Device;
    .locals 14

    .line 1
    iget-object v1, p0, Lio/sentry/android/core/DeviceInfoUtil;->a:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v7, Lio/sentry/protocol/Device;

    .line 4
    .line 5
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, v7, Lio/sentry/protocol/Device;->k:Ljava/lang/String;

    .line 11
    .line 12
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, v7, Lio/sentry/protocol/Device;->l:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v8, p0, Lio/sentry/android/core/DeviceInfoUtil;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lio/sentry/android/core/ContextUtils;->a(Lio/sentry/ILogger;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, v7, Lio/sentry/protocol/Device;->m:Ljava/lang/String;

    .line 27
    .line 28
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v0, v7, Lio/sentry/protocol/Device;->n:Ljava/lang/String;

    .line 31
    .line 32
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v0, v7, Lio/sentry/protocol/Device;->o:Ljava/lang/String;

    .line 35
    .line 36
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 37
    .line 38
    iput-object v0, v7, Lio/sentry/protocol/Device;->p:[Ljava/lang/String;

    .line 39
    .line 40
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->c:Lio/sentry/android/core/BuildInfoProvider;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    .line 47
    const/16 v2, 0x1f

    .line 48
    .line 49
    if-lt v0, v2, :cond_0

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lng;->i()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, " "

    .line 64
    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-static {}, Lng;->p()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, v7, Lio/sentry/protocol/Device;->Q:Ljava/lang/String;

    .line 80
    .line 81
    :cond_0
    const/4 v9, 0x2

    .line 82
    const/4 v10, 0x1

    .line 83
    const/4 v2, 0x0

    .line 84
    const/4 v11, 0x0

    .line 85
    move-object v3, v2

    .line 86
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 95
    .line 96
    if-eq v0, v10, :cond_2

    .line 97
    .line 98
    if-eq v0, v9, :cond_1

    .line 99
    .line 100
    move-object v4, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    sget-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->LANDSCAPE:Lio/sentry/protocol/Device$DeviceOrientation;

    .line 103
    .line 104
    :goto_0
    move-object v4, v0

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    sget-object v0, Lio/sentry/protocol/Device$DeviceOrientation;->PORTRAIT:Lio/sentry/protocol/Device$DeviceOrientation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :goto_1
    if-nez v4, :cond_3

    .line 110
    .line 111
    :try_start_1
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    sget-object v5, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 116
    .line 117
    const-string v6, "No device orientation available (ORIENTATION_SQUARE|ORIENTATION_UNDEFINED)"

    .line 118
    .line 119
    new-array v12, v11, [Ljava/lang/Object;

    .line 120
    .line 121
    invoke-interface {v0, v5, v6, v12}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    move-object v4, v2

    .line 125
    goto :goto_4

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    goto :goto_3

    .line 128
    :goto_2
    move-object v4, v2

    .line 129
    goto :goto_3

    .line 130
    :catchall_1
    move-exception v0

    .line 131
    goto :goto_2

    .line 132
    :goto_3
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 137
    .line 138
    const-string v12, "Error getting device orientation."

    .line 139
    .line 140
    invoke-interface {v5, v6, v12, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :cond_3
    :goto_4
    iput-object v4, v7, Lio/sentry/protocol/Device;->t:Lio/sentry/protocol/Device$DeviceOrientation;

    .line 144
    .line 145
    iget-object v0, p0, Lio/sentry/android/core/DeviceInfoUtil;->d:Ljava/lang/Boolean;

    .line 146
    .line 147
    if-eqz v0, :cond_4

    .line 148
    .line 149
    iput-object v0, v7, Lio/sentry/protocol/Device;->u:Ljava/lang/Boolean;

    .line 150
    .line 151
    :cond_4
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 160
    .line 161
    .line 162
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 163
    goto :goto_5

    .line 164
    :catchall_2
    move-exception v0

    .line 165
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 166
    .line 167
    const-string v6, "Error getting DisplayMetrics."

    .line 168
    .line 169
    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    .line 171
    .line 172
    move-object v0, v3

    .line 173
    :goto_5
    if-eqz v0, :cond_5

    .line 174
    .line 175
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 176
    .line 177
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    iput-object v4, v7, Lio/sentry/protocol/Device;->D:Ljava/lang/Integer;

    .line 182
    .line 183
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 184
    .line 185
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    iput-object v4, v7, Lio/sentry/protocol/Device;->E:Ljava/lang/Integer;

    .line 190
    .line 191
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 192
    .line 193
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    iput-object v4, v7, Lio/sentry/protocol/Device;->F:Ljava/lang/Float;

    .line 198
    .line 199
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 200
    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iput-object v0, v7, Lio/sentry/protocol/Device;->G:Ljava/lang/Integer;

    .line 206
    .line 207
    :cond_5
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 208
    .line 209
    .line 210
    move-result-wide v4

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 212
    .line 213
    .line 214
    move-result-wide v12

    .line 215
    sub-long/2addr v4, v12

    .line 216
    invoke-static {v4, v5}, Lio/sentry/DateUtils;->c(J)Ljava/util/Date;

    .line 217
    .line 218
    .line 219
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 220
    goto :goto_6

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 227
    .line 228
    const-string v6, "Error getting the device\'s boot time."

    .line 229
    .line 230
    new-array v12, v11, [Ljava/lang/Object;

    .line 231
    .line 232
    invoke-interface {v4, v5, v0, v6, v12}, Lio/sentry/ILogger;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    move-object v0, v2

    .line 236
    :goto_6
    iput-object v0, v7, Lio/sentry/protocol/Device;->H:Ljava/util/Date;

    .line 237
    .line 238
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    .line 251
    .line 252
    .line 253
    move-result v4

    .line 254
    if-nez v4, :cond_6

    .line 255
    .line 256
    invoke-virtual {v0, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    goto :goto_7

    .line 269
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    :goto_7
    iput-object v0, v7, Lio/sentry/protocol/Device;->I:Ljava/util/TimeZone;

    .line 278
    .line 279
    iget-object v0, v7, Lio/sentry/protocol/Device;->J:Ljava/lang/String;

    .line 280
    .line 281
    if-nez v0, :cond_7

    .line 282
    .line 283
    :try_start_4
    invoke-static {v1}, Lio/sentry/android/core/Installation;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 287
    goto :goto_8

    .line 288
    :catchall_3
    move-exception v0

    .line 289
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 294
    .line 295
    const-string v6, "Error getting installationId."

    .line 296
    .line 297
    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    move-object v0, v2

    .line 301
    :goto_8
    iput-object v0, v7, Lio/sentry/protocol/Device;->J:Ljava/lang/String;

    .line 302
    .line 303
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    iget-object v4, v7, Lio/sentry/protocol/Device;->K:Ljava/lang/String;

    .line 308
    .line 309
    if-nez v4, :cond_8

    .line 310
    .line 311
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    iput-object v0, v7, Lio/sentry/protocol/Device;->K:Ljava/lang/String;

    .line 316
    .line 317
    :cond_8
    sget-object v0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->c:Lio/sentry/android/core/internal/util/CpuInfoUtils;

    .line 318
    .line 319
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->a()Ljava/util/ArrayList;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    if-nez v4, :cond_9

    .line 328
    .line 329
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    check-cast v4, Ljava/lang/Integer;

    .line 334
    .line 335
    invoke-virtual {v4}, Ljava/lang/Integer;->doubleValue()D

    .line 336
    .line 337
    .line 338
    move-result-wide v4

    .line 339
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 340
    .line 341
    .line 342
    move-result-object v4

    .line 343
    iput-object v4, v7, Lio/sentry/protocol/Device;->O:Ljava/lang/Double;

    .line 344
    .line 345
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    iput-object v0, v7, Lio/sentry/protocol/Device;->N:Ljava/lang/Integer;

    .line 354
    .line 355
    :cond_9
    iget-object p0, p0, Lio/sentry/android/core/DeviceInfoUtil;->h:Ljava/lang/Long;

    .line 356
    .line 357
    iput-object p0, v7, Lio/sentry/protocol/Device;->v:Ljava/lang/Long;

    .line 358
    .line 359
    if-eqz p1, :cond_19

    .line 360
    .line 361
    invoke-virtual {v8}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectAdditionalContext()Z

    .line 362
    .line 363
    .line 364
    move-result p0

    .line 365
    if-eqz p0, :cond_19

    .line 366
    .line 367
    invoke-virtual {v8}, Lio/sentry/android/core/SentryAndroidOptions;->isCollectExternalStorageContext()Z

    .line 368
    .line 369
    .line 370
    move-result p0

    .line 371
    move-object v4, v3

    .line 372
    new-instance v3, Landroid/content/IntentFilter;

    .line 373
    .line 374
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 375
    .line 376
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 380
    .line 381
    const/16 v5, 0x21

    .line 382
    .line 383
    if-lt v0, v5, :cond_a

    .line 384
    .line 385
    const/4 v4, 0x0

    .line 386
    const/4 v6, 0x4

    .line 387
    move-object v5, v2

    .line 388
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    goto :goto_9

    .line 393
    :cond_a
    invoke-virtual {v1, v2, v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    :goto_9
    if-eqz v0, :cond_c

    .line 398
    .line 399
    invoke-static {v0, v8}, Lio/sentry/android/core/DeviceInfoUtil;->b(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Float;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    iput-object v3, v7, Lio/sentry/protocol/Device;->q:Ljava/lang/Float;

    .line 404
    .line 405
    invoke-static {v0, v8}, Lio/sentry/android/core/DeviceInfoUtil;->d(Landroid/content/Intent;Lio/sentry/SentryOptions;)Ljava/lang/Boolean;

    .line 406
    .line 407
    .line 408
    move-result-object v3

    .line 409
    iput-object v3, v7, Lio/sentry/protocol/Device;->r:Ljava/lang/Boolean;

    .line 410
    .line 411
    :try_start_5
    const-string v3, "temperature"

    .line 412
    .line 413
    const/4 v4, -0x1

    .line 414
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-eq v0, v4, :cond_b

    .line 419
    .line 420
    int-to-float v0, v0

    .line 421
    const/high16 v3, 0x41200000    # 10.0f

    .line 422
    .line 423
    div-float/2addr v0, v3

    .line 424
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 425
    .line 426
    .line 427
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 428
    goto :goto_a

    .line 429
    :catchall_4
    move-exception v0

    .line 430
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 435
    .line 436
    const-string v5, "Error getting battery temperature."

    .line 437
    .line 438
    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 439
    .line 440
    .line 441
    :cond_b
    move-object v0, v2

    .line 442
    :goto_a
    iput-object v0, v7, Lio/sentry/protocol/Device;->M:Ljava/lang/Float;

    .line 443
    .line 444
    :cond_c
    sget-object v0, Lio/sentry/android/core/DeviceInfoUtil$1;->a:[I

    .line 445
    .line 446
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-interface {v3}, Lio/sentry/IConnectionStatusProvider;->p0()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    aget v0, v0, v3

    .line 459
    .line 460
    if-eq v0, v10, :cond_e

    .line 461
    .line 462
    if-eq v0, v9, :cond_d

    .line 463
    .line 464
    move-object v0, v2

    .line 465
    goto :goto_b

    .line 466
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 467
    .line 468
    goto :goto_b

    .line 469
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 470
    .line 471
    :goto_b
    iput-object v0, v7, Lio/sentry/protocol/Device;->s:Ljava/lang/Boolean;

    .line 472
    .line 473
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    invoke-static {v1, v0}, Lio/sentry/android/core/ContextUtils;->b(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    if-eqz v0, :cond_f

    .line 482
    .line 483
    if-eqz p2, :cond_f

    .line 484
    .line 485
    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 486
    .line 487
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    iput-object v3, v7, Lio/sentry/protocol/Device;->w:Ljava/lang/Long;

    .line 492
    .line 493
    iget-boolean v0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 494
    .line 495
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    iput-object v0, v7, Lio/sentry/protocol/Device;->y:Ljava/lang/Boolean;

    .line 500
    .line 501
    :cond_f
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    if-eqz v0, :cond_10

    .line 506
    .line 507
    new-instance v3, Landroid/os/StatFs;

    .line 508
    .line 509
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    :try_start_6
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 517
    .line 518
    .line 519
    move-result-wide v4

    .line 520
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 521
    .line 522
    .line 523
    move-result-wide v9

    .line 524
    mul-long/2addr v9, v4

    .line 525
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 526
    .line 527
    .line 528
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 529
    goto :goto_c

    .line 530
    :catchall_5
    move-exception v0

    .line 531
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 532
    .line 533
    .line 534
    move-result-object v4

    .line 535
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 536
    .line 537
    const-string v6, "Error getting total internal storage amount."

    .line 538
    .line 539
    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    .line 541
    .line 542
    move-object v0, v2

    .line 543
    :goto_c
    iput-object v0, v7, Lio/sentry/protocol/Device;->z:Ljava/lang/Long;

    .line 544
    .line 545
    :try_start_7
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 546
    .line 547
    .line 548
    move-result-wide v4

    .line 549
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 550
    .line 551
    .line 552
    move-result-wide v9

    .line 553
    mul-long/2addr v9, v4

    .line 554
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 555
    .line 556
    .line 557
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 558
    goto :goto_d

    .line 559
    :catchall_6
    move-exception v0

    .line 560
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 565
    .line 566
    const-string v5, "Error getting unused internal storage amount."

    .line 567
    .line 568
    invoke-interface {v3, v4, v5, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    .line 570
    .line 571
    move-object v0, v2

    .line 572
    :goto_d
    iput-object v0, v7, Lio/sentry/protocol/Device;->A:Ljava/lang/Long;

    .line 573
    .line 574
    :cond_10
    if-eqz p0, :cond_18

    .line 575
    .line 576
    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 577
    .line 578
    .line 579
    move-result-object p0

    .line 580
    :try_start_8
    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    if-eqz v0, :cond_14

    .line 585
    .line 586
    if-eqz p0, :cond_11

    .line 587
    .line 588
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object p0

    .line 592
    goto :goto_e

    .line 593
    :cond_11
    move-object p0, v2

    .line 594
    :goto_e
    array-length v1, v0

    .line 595
    move v3, v11

    .line 596
    :goto_f
    if-ge v3, v1, :cond_15

    .line 597
    .line 598
    aget-object v4, v0, v3

    .line 599
    .line 600
    if-nez v4, :cond_12

    .line 601
    .line 602
    goto :goto_10

    .line 603
    :cond_12
    if-eqz p0, :cond_16

    .line 604
    .line 605
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    if-eqz v5, :cond_13

    .line 610
    .line 611
    goto :goto_11

    .line 612
    :cond_13
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v5

    .line 616
    invoke-virtual {v5, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 617
    .line 618
    .line 619
    move-result v5

    .line 620
    if-eqz v5, :cond_16

    .line 621
    .line 622
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 623
    .line 624
    goto :goto_f

    .line 625
    :cond_14
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 626
    .line 627
    .line 628
    move-result-object p0

    .line 629
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 630
    .line 631
    const-string v1, "Not possible to read getExternalFilesDirs"

    .line 632
    .line 633
    new-array v3, v11, [Ljava/lang/Object;

    .line 634
    .line 635
    invoke-interface {p0, v0, v1, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    .line 637
    .line 638
    :cond_15
    move-object v4, v2

    .line 639
    :cond_16
    :goto_11
    if-eqz v4, :cond_17

    .line 640
    .line 641
    new-instance p0, Landroid/os/StatFs;

    .line 642
    .line 643
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 648
    .line 649
    .line 650
    goto :goto_12

    .line 651
    :catchall_7
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 652
    .line 653
    .line 654
    move-result-object p0

    .line 655
    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 656
    .line 657
    const-string v1, "Not possible to read external files directory"

    .line 658
    .line 659
    new-array v3, v11, [Ljava/lang/Object;

    .line 660
    .line 661
    invoke-interface {p0, v0, v1, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    :cond_17
    move-object p0, v2

    .line 665
    :goto_12
    if-eqz p0, :cond_18

    .line 666
    .line 667
    :try_start_9
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 668
    .line 669
    .line 670
    move-result-wide v0

    .line 671
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 672
    .line 673
    .line 674
    move-result-wide v3

    .line 675
    mul-long/2addr v3, v0

    .line 676
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 677
    .line 678
    .line 679
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 680
    goto :goto_13

    .line 681
    :catchall_8
    move-exception v0

    .line 682
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 687
    .line 688
    const-string v4, "Error getting total external storage amount."

    .line 689
    .line 690
    invoke-interface {v1, v3, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 691
    .line 692
    .line 693
    move-object v0, v2

    .line 694
    :goto_13
    iput-object v0, v7, Lio/sentry/protocol/Device;->B:Ljava/lang/Long;

    .line 695
    .line 696
    :try_start_a
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 697
    .line 698
    .line 699
    move-result-wide v0

    .line 700
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 701
    .line 702
    .line 703
    move-result-wide v3

    .line 704
    mul-long/2addr v3, v0

    .line 705
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 706
    .line 707
    .line 708
    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 709
    goto :goto_14

    .line 710
    :catchall_9
    move-exception v0

    .line 711
    move-object p0, v0

    .line 712
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 713
    .line 714
    .line 715
    move-result-object v0

    .line 716
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 717
    .line 718
    const-string v3, "Error getting unused external storage amount."

    .line 719
    .line 720
    invoke-interface {v0, v1, v3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 721
    .line 722
    .line 723
    :goto_14
    iput-object v2, v7, Lio/sentry/protocol/Device;->C:Ljava/lang/Long;

    .line 724
    .line 725
    :cond_18
    iget-object p0, v7, Lio/sentry/protocol/Device;->L:Ljava/lang/String;

    .line 726
    .line 727
    if-nez p0, :cond_19

    .line 728
    .line 729
    invoke-virtual {v8}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    .line 730
    .line 731
    .line 732
    move-result-object p0

    .line 733
    invoke-interface {p0}, Lio/sentry/IConnectionStatusProvider;->B()Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object p0

    .line 737
    iput-object p0, v7, Lio/sentry/protocol/Device;->L:Ljava/lang/String;

    .line 738
    .line 739
    :cond_19
    return-object v7
.end method
