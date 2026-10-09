.class public final Lio/sentry/android/core/ApplicationExitInfoEventProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/BackfillingEventProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;,
        Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;
    }
.end annotation


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Lio/sentry/android/core/SentryAndroidOptions;

.field public final l:Lio/sentry/android/core/BuildInfoProvider;

.field public final m:Lio/sentry/SentryExceptionFactory;

.field public final n:Lio/sentry/cache/PersistingScopeObserver;

.field public final o:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;-><init>(Lio/sentry/android/core/ApplicationExitInfoEventProcessor;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->o:Ljava/util/List;

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
    iput-object p1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->j:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p3, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 25
    .line 26
    iput-object p2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->l:Lio/sentry/android/core/BuildInfoProvider;

    .line 27
    .line 28
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->findPersistingScopeObserver()Lio/sentry/cache/PersistingScopeObserver;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->n:Lio/sentry/cache/PersistingScopeObserver;

    .line 33
    .line 34
    new-instance p1, Lio/sentry/SentryStackTraceFactory;

    .line 35
    .line 36
    invoke-direct {p1, p3}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    .line 37
    .line 38
    .line 39
    new-instance p2, Lio/sentry/SentryExceptionFactory;

    .line 40
    .line 41
    invoke-direct {p2, p1}, Lio/sentry/SentryExceptionFactory;-><init>(Lio/sentry/SentryStackTraceFactory;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->m:Lio/sentry/SentryExceptionFactory;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->n:Lio/sentry/cache/PersistingScopeObserver;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/cache/PersistingScopeObserver;->h(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final h(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 37

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, "sentry:typeCheckHint"

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    invoke-virtual {v3, v0}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v3, v0, Lio/sentry/hints/Backfillable;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    iget-object v5, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 25
    .line 26
    const-string v3, "The event is not Backfillable, but has been passed to BackfillingEventProcessor, skipping."

    .line 27
    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_0
    move-object v3, v0

    .line 35
    check-cast v3, Lio/sentry/hints/Backfillable;

    .line 36
    .line 37
    iget-object v6, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->o:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_2

    .line 48
    .line 49
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$HintEnricher;

    .line 54
    .line 55
    move-object v9, v7

    .line 56
    check-cast v9, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;

    .line 57
    .line 58
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    instance-of v9, v0, Lio/sentry/hints/AbnormalExit;

    .line 62
    .line 63
    if-eqz v9, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const/4 v7, 0x0

    .line 67
    :goto_0
    const-string v6, "anr_background"

    .line 68
    .line 69
    const-string v9, "main"

    .line 70
    .line 71
    const-string v10, "ANR"

    .line 72
    .line 73
    const/4 v11, 0x1

    .line 74
    if-eqz v7, :cond_c

    .line 75
    .line 76
    move-object v0, v7

    .line 77
    check-cast v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;

    .line 78
    .line 79
    instance-of v12, v3, Lio/sentry/hints/AbnormalExit;

    .line 80
    .line 81
    if-eqz v12, :cond_3

    .line 82
    .line 83
    move-object v12, v3

    .line 84
    check-cast v12, Lio/sentry/hints/AbnormalExit;

    .line 85
    .line 86
    invoke-interface {v12}, Lio/sentry/hints/AbnormalExit;->f()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v12

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    move v12, v4

    .line 96
    :goto_1
    iget-object v0, v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->a:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    .line 97
    .line 98
    iget-object v13, v2, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 99
    .line 100
    if-nez v13, :cond_4

    .line 101
    .line 102
    const-string v13, "java"

    .line 103
    .line 104
    iput-object v13, v2, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 105
    .line 106
    :cond_4
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->d()Ljava/util/ArrayList;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    if-eqz v13, :cond_5

    .line 111
    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :cond_5
    new-instance v13, Lio/sentry/protocol/Mechanism;

    .line 115
    .line 116
    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-interface {v3}, Lio/sentry/hints/Backfillable;->a()Z

    .line 120
    .line 121
    .line 122
    move-result v14

    .line 123
    if-nez v14, :cond_6

    .line 124
    .line 125
    const-string v14, "HistoricalAppExitInfo"

    .line 126
    .line 127
    iput-object v14, v13, Lio/sentry/protocol/Mechanism;->j:Ljava/lang/String;

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_6
    const-string v14, "AppExitInfo"

    .line 131
    .line 132
    iput-object v14, v13, Lio/sentry/protocol/Mechanism;->j:Ljava/lang/String;

    .line 133
    .line 134
    :goto_2
    if-eqz v12, :cond_7

    .line 135
    .line 136
    const-string v12, "Background ANR"

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    move-object v12, v10

    .line 140
    :goto_3
    new-instance v14, Lio/sentry/android/core/ApplicationNotResponding;

    .line 141
    .line 142
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 143
    .line 144
    .line 145
    move-result-object v15

    .line 146
    invoke-direct {v14, v12, v15}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;Ljava/lang/Thread;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->e()Ljava/util/ArrayList;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    if-eqz v12, :cond_9

    .line 154
    .line 155
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v15

    .line 163
    if-eqz v15, :cond_9

    .line 164
    .line 165
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v15

    .line 169
    check-cast v15, Lio/sentry/protocol/SentryThread;

    .line 170
    .line 171
    iget-object v8, v15, Lio/sentry/protocol/SentryThread;->l:Ljava/lang/String;

    .line 172
    .line 173
    if-eqz v8, :cond_8

    .line 174
    .line 175
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    if-eqz v8, :cond_8

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_9
    const/4 v15, 0x0

    .line 183
    :goto_4
    if-nez v15, :cond_a

    .line 184
    .line 185
    new-instance v15, Lio/sentry/protocol/SentryThread;

    .line 186
    .line 187
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 188
    .line 189
    .line 190
    new-instance v8, Lio/sentry/protocol/SentryStackTrace;

    .line 191
    .line 192
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 193
    .line 194
    .line 195
    iput-object v8, v15, Lio/sentry/protocol/SentryThread;->r:Lio/sentry/protocol/SentryStackTrace;

    .line 196
    .line 197
    :cond_a
    iget-object v0, v0, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->m:Lio/sentry/SentryExceptionFactory;

    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    .line 201
    .line 202
    iget-object v0, v15, Lio/sentry/protocol/SentryThread;->r:Lio/sentry/protocol/SentryStackTrace;

    .line 203
    .line 204
    if-nez v0, :cond_b

    .line 205
    .line 206
    new-instance v0, Ljava/util/ArrayList;

    .line 207
    .line 208
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_b
    new-instance v8, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .line 216
    .line 217
    iget-object v12, v15, Lio/sentry/protocol/SentryThread;->j:Ljava/lang/Long;

    .line 218
    .line 219
    iget-object v0, v0, Lio/sentry/protocol/SentryStackTrace;->j:Ljava/util/List;

    .line 220
    .line 221
    invoke-static {v14, v13, v12, v0, v11}, Lio/sentry/SentryExceptionFactory;->b(Ljava/lang/Throwable;Lio/sentry/protocol/Mechanism;Ljava/lang/Long;Ljava/util/List;Z)Lio/sentry/protocol/SentryException;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-object v0, v8

    .line 229
    :goto_5
    invoke-virtual {v2, v0}, Lio/sentry/SentryEvent;->h(Ljava/util/ArrayList;)V

    .line 230
    .line 231
    .line 232
    :cond_c
    :goto_6
    iget-object v8, v2, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 233
    .line 234
    invoke-virtual {v8}, Lio/sentry/protocol/Contexts;->g()Lio/sentry/protocol/OperatingSystem;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v12, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->j:Landroid/content/Context;

    .line 239
    .line 240
    invoke-static {v12, v5}, Lio/sentry/android/core/DeviceInfoUtil;->c(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    .line 241
    .line 242
    .line 243
    move-result-object v13

    .line 244
    iget-object v13, v13, Lio/sentry/android/core/DeviceInfoUtil;->g:Lio/sentry/protocol/OperatingSystem;

    .line 245
    .line 246
    invoke-virtual {v8, v13}, Lio/sentry/protocol/Contexts;->r(Lio/sentry/protocol/OperatingSystem;)V

    .line 247
    .line 248
    .line 249
    if-eqz v0, :cond_e

    .line 250
    .line 251
    iget-object v13, v0, Lio/sentry/protocol/OperatingSystem;->j:Ljava/lang/String;

    .line 252
    .line 253
    if-eqz v13, :cond_d

    .line 254
    .line 255
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    if-nez v14, :cond_d

    .line 260
    .line 261
    new-instance v14, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    const-string v15, "os_"

    .line 264
    .line 265
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v13

    .line 272
    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 273
    .line 274
    invoke-virtual {v13, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v13

    .line 285
    goto :goto_7

    .line 286
    :cond_d
    const-string v13, "os_1"

    .line 287
    .line 288
    :goto_7
    invoke-virtual {v8, v0, v13}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    :cond_e
    invoke-virtual {v8}, Lio/sentry/protocol/Contexts;->e()Lio/sentry/protocol/Device;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    const-string v13, "Error getting installationId."

    .line 296
    .line 297
    iget-object v14, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->l:Lio/sentry/android/core/BuildInfoProvider;

    .line 298
    .line 299
    if-nez v0, :cond_13

    .line 300
    .line 301
    new-instance v15, Lio/sentry/protocol/Device;

    .line 302
    .line 303
    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    .line 304
    .line 305
    .line 306
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 307
    .line 308
    iput-object v0, v15, Lio/sentry/protocol/Device;->k:Ljava/lang/String;

    .line 309
    .line 310
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 311
    .line 312
    iput-object v0, v15, Lio/sentry/protocol/Device;->l:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-static {v0}, Lio/sentry/android/core/ContextUtils;->a(Lio/sentry/ILogger;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iput-object v0, v15, Lio/sentry/protocol/Device;->m:Ljava/lang/String;

    .line 323
    .line 324
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 325
    .line 326
    iput-object v0, v15, Lio/sentry/protocol/Device;->n:Ljava/lang/String;

    .line 327
    .line 328
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 329
    .line 330
    iput-object v0, v15, Lio/sentry/protocol/Device;->o:Ljava/lang/String;

    .line 331
    .line 332
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 333
    .line 334
    iput-object v0, v15, Lio/sentry/protocol/Device;->p:[Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v12, v0}, Lio/sentry/android/core/ContextUtils;->b(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/app/ActivityManager$MemoryInfo;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    move/from16 v16, v11

    .line 345
    .line 346
    move-object/from16 v17, v12

    .line 347
    .line 348
    if-eqz v0, :cond_f

    .line 349
    .line 350
    iget-wide v11, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 351
    .line 352
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iput-object v0, v15, Lio/sentry/protocol/Device;->v:Ljava/lang/Long;

    .line 357
    .line 358
    :cond_f
    invoke-virtual {v14}, Lio/sentry/android/core/BuildInfoProvider;->a()Ljava/lang/Boolean;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iput-object v0, v15, Lio/sentry/protocol/Device;->u:Ljava/lang/Boolean;

    .line 363
    .line 364
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 365
    .line 366
    .line 367
    move-result-object v11

    .line 368
    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 373
    .line 374
    .line 375
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    goto :goto_8

    .line 377
    :catchall_0
    move-exception v0

    .line 378
    sget-object v12, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 379
    .line 380
    const-string v4, "Error getting DisplayMetrics."

    .line 381
    .line 382
    invoke-interface {v11, v12, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 383
    .line 384
    .line 385
    const/4 v0, 0x0

    .line 386
    :goto_8
    if-eqz v0, :cond_10

    .line 387
    .line 388
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 389
    .line 390
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v4

    .line 394
    iput-object v4, v15, Lio/sentry/protocol/Device;->D:Ljava/lang/Integer;

    .line 395
    .line 396
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 397
    .line 398
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    iput-object v4, v15, Lio/sentry/protocol/Device;->E:Ljava/lang/Integer;

    .line 403
    .line 404
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 405
    .line 406
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 407
    .line 408
    .line 409
    move-result-object v4

    .line 410
    iput-object v4, v15, Lio/sentry/protocol/Device;->F:Ljava/lang/Float;

    .line 411
    .line 412
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 413
    .line 414
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    iput-object v0, v15, Lio/sentry/protocol/Device;->G:Ljava/lang/Integer;

    .line 419
    .line 420
    :cond_10
    iget-object v0, v15, Lio/sentry/protocol/Device;->J:Ljava/lang/String;

    .line 421
    .line 422
    if-nez v0, :cond_11

    .line 423
    .line 424
    :try_start_1
    invoke-static/range {v17 .. v17}, Lio/sentry/android/core/Installation;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 428
    goto :goto_9

    .line 429
    :catchall_1
    move-exception v0

    .line 430
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    sget-object v11, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 435
    .line 436
    invoke-interface {v4, v11, v13, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    .line 438
    .line 439
    const/4 v0, 0x0

    .line 440
    :goto_9
    iput-object v0, v15, Lio/sentry/protocol/Device;->J:Ljava/lang/String;

    .line 441
    .line 442
    :cond_11
    sget-object v0, Lio/sentry/android/core/internal/util/CpuInfoUtils;->c:Lio/sentry/android/core/internal/util/CpuInfoUtils;

    .line 443
    .line 444
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/CpuInfoUtils;->a()Ljava/util/ArrayList;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 449
    .line 450
    .line 451
    move-result v4

    .line 452
    if-nez v4, :cond_12

    .line 453
    .line 454
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    check-cast v4, Ljava/lang/Integer;

    .line 459
    .line 460
    invoke-virtual {v4}, Ljava/lang/Integer;->doubleValue()D

    .line 461
    .line 462
    .line 463
    move-result-wide v11

    .line 464
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    iput-object v4, v15, Lio/sentry/protocol/Device;->O:Ljava/lang/Double;

    .line 469
    .line 470
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    iput-object v0, v15, Lio/sentry/protocol/Device;->N:Ljava/lang/Integer;

    .line 479
    .line 480
    :cond_12
    invoke-virtual {v8, v15}, Lio/sentry/protocol/Contexts;->o(Lio/sentry/protocol/Device;)V

    .line 481
    .line 482
    .line 483
    goto :goto_a

    .line 484
    :cond_13
    move/from16 v16, v11

    .line 485
    .line 486
    move-object/from16 v17, v12

    .line 487
    .line 488
    :goto_a
    invoke-interface {v3}, Lio/sentry/hints/Backfillable;->a()Z

    .line 489
    .line 490
    .line 491
    move-result v0

    .line 492
    if-nez v0, :cond_14

    .line 493
    .line 494
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 499
    .line 500
    const-string v3, "The event is Backfillable, but should not be enriched, skipping."

    .line 501
    .line 502
    const/4 v4, 0x0

    .line 503
    new-array v4, v4, [Ljava/lang/Object;

    .line 504
    .line 505
    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    return-object v2

    .line 509
    :cond_14
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 510
    .line 511
    if-nez v0, :cond_15

    .line 512
    .line 513
    const-string v0, "request.json"

    .line 514
    .line 515
    const-class v4, Lio/sentry/protocol/Request;

    .line 516
    .line 517
    invoke-virtual {v1, v5, v0, v4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v0

    .line 521
    check-cast v0, Lio/sentry/protocol/Request;

    .line 522
    .line 523
    iput-object v0, v2, Lio/sentry/SentryBaseEvent;->m:Lio/sentry/protocol/Request;

    .line 524
    .line 525
    :cond_15
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 526
    .line 527
    if-nez v0, :cond_16

    .line 528
    .line 529
    const-string v0, "user.json"

    .line 530
    .line 531
    const-class v4, Lio/sentry/protocol/User;

    .line 532
    .line 533
    invoke-virtual {v1, v5, v0, v4}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    check-cast v0, Lio/sentry/protocol/User;

    .line 538
    .line 539
    iput-object v0, v2, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 540
    .line 541
    :cond_16
    const-string v4, "tags.json"

    .line 542
    .line 543
    const-class v11, Ljava/util/Map;

    .line 544
    .line 545
    invoke-virtual {v1, v5, v4, v11}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    check-cast v0, Ljava/util/Map;

    .line 550
    .line 551
    if-nez v0, :cond_17

    .line 552
    .line 553
    goto :goto_c

    .line 554
    :cond_17
    iget-object v12, v2, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 555
    .line 556
    if-nez v12, :cond_18

    .line 557
    .line 558
    new-instance v12, Ljava/util/HashMap;

    .line 559
    .line 560
    invoke-direct {v12, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v2, v12}, Lio/sentry/SentryBaseEvent;->c(Ljava/util/Map;)V

    .line 564
    .line 565
    .line 566
    goto :goto_c

    .line 567
    :cond_18
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 576
    .line 577
    .line 578
    move-result v12

    .line 579
    if-eqz v12, :cond_1a

    .line 580
    .line 581
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v12

    .line 585
    check-cast v12, Ljava/util/Map$Entry;

    .line 586
    .line 587
    iget-object v15, v2, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 588
    .line 589
    move-object/from16 v19, v0

    .line 590
    .line 591
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result v0

    .line 599
    if-nez v0, :cond_19

    .line 600
    .line 601
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    check-cast v0, Ljava/lang/String;

    .line 606
    .line 607
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    move-result-object v12

    .line 611
    check-cast v12, Ljava/lang/String;

    .line 612
    .line 613
    invoke-virtual {v2, v0, v12}, Lio/sentry/SentryBaseEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    :cond_19
    move-object/from16 v0, v19

    .line 617
    .line 618
    goto :goto_b

    .line 619
    :cond_1a
    :goto_c
    const-string v0, "breadcrumbs.json"

    .line 620
    .line 621
    const-class v12, Ljava/util/List;

    .line 622
    .line 623
    invoke-virtual {v1, v5, v0, v12}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    check-cast v0, Ljava/util/List;

    .line 628
    .line 629
    if-nez v0, :cond_1b

    .line 630
    .line 631
    goto :goto_d

    .line 632
    :cond_1b
    iget-object v15, v2, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 633
    .line 634
    if-nez v15, :cond_1c

    .line 635
    .line 636
    new-instance v15, Ljava/util/ArrayList;

    .line 637
    .line 638
    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 639
    .line 640
    .line 641
    iput-object v15, v2, Lio/sentry/SentryBaseEvent;->v:Ljava/util/List;

    .line 642
    .line 643
    goto :goto_d

    .line 644
    :cond_1c
    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 645
    .line 646
    .line 647
    :goto_d
    const-string v0, "extras.json"

    .line 648
    .line 649
    invoke-virtual {v1, v5, v0, v11}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    check-cast v0, Ljava/util/Map;

    .line 654
    .line 655
    if-nez v0, :cond_1d

    .line 656
    .line 657
    goto :goto_e

    .line 658
    :cond_1d
    iget-object v15, v2, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 659
    .line 660
    if-nez v15, :cond_1f

    .line 661
    .line 662
    new-instance v15, Ljava/util/HashMap;

    .line 663
    .line 664
    invoke-direct {v15, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 665
    .line 666
    .line 667
    new-instance v0, Ljava/util/HashMap;

    .line 668
    .line 669
    invoke-direct {v0, v15}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 670
    .line 671
    .line 672
    iput-object v0, v2, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 673
    .line 674
    :cond_1e
    :goto_e
    move-object/from16 v20, v7

    .line 675
    .line 676
    goto :goto_10

    .line 677
    :cond_1f
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 686
    .line 687
    .line 688
    move-result v15

    .line 689
    if-eqz v15, :cond_1e

    .line 690
    .line 691
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    move-result-object v15

    .line 695
    check-cast v15, Ljava/util/Map$Entry;

    .line 696
    .line 697
    move-object/from16 v19, v0

    .line 698
    .line 699
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 700
    .line 701
    move-object/from16 v20, v7

    .line 702
    .line 703
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v7

    .line 707
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result v0

    .line 711
    if-nez v0, :cond_20

    .line 712
    .line 713
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->x:Ljava/util/AbstractMap;

    .line 714
    .line 715
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 716
    .line 717
    .line 718
    move-result-object v7

    .line 719
    check-cast v7, Ljava/lang/String;

    .line 720
    .line 721
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    move-result-object v15

    .line 725
    invoke-interface {v0, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    :cond_20
    move-object/from16 v0, v19

    .line 729
    .line 730
    move-object/from16 v7, v20

    .line 731
    .line 732
    goto :goto_f

    .line 733
    :goto_10
    const-string v0, "contexts.json"

    .line 734
    .line 735
    const-class v7, Lio/sentry/protocol/Contexts;

    .line 736
    .line 737
    invoke-virtual {v1, v5, v0, v7}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    check-cast v0, Lio/sentry/protocol/Contexts;

    .line 742
    .line 743
    if-nez v0, :cond_21

    .line 744
    .line 745
    goto :goto_13

    .line 746
    :cond_21
    new-instance v7, Lio/sentry/protocol/Contexts;

    .line 747
    .line 748
    invoke-direct {v7, v0}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    .line 749
    .line 750
    .line 751
    iget-object v0, v7, Lio/sentry/protocol/Contexts;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 752
    .line 753
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 762
    .line 763
    .line 764
    move-result v7

    .line 765
    if-eqz v7, :cond_24

    .line 766
    .line 767
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v7

    .line 771
    check-cast v7, Ljava/util/Map$Entry;

    .line 772
    .line 773
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v15

    .line 777
    move-object/from16 v19, v0

    .line 778
    .line 779
    const-string v0, "trace"

    .line 780
    .line 781
    move-object/from16 v21, v7

    .line 782
    .line 783
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v7

    .line 787
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    if-eqz v0, :cond_23

    .line 792
    .line 793
    instance-of v0, v15, Lio/sentry/SpanContext;

    .line 794
    .line 795
    if-eqz v0, :cond_23

    .line 796
    .line 797
    :cond_22
    :goto_12
    move-object/from16 v0, v19

    .line 798
    .line 799
    goto :goto_11

    .line 800
    :cond_23
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v0

    .line 804
    invoke-virtual {v8, v0}, Lio/sentry/protocol/Contexts;->a(Ljava/lang/Object;)Z

    .line 805
    .line 806
    .line 807
    move-result v0

    .line 808
    if-nez v0, :cond_22

    .line 809
    .line 810
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    check-cast v0, Ljava/lang/String;

    .line 815
    .line 816
    invoke-virtual {v8, v15, v0}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    goto :goto_12

    .line 820
    :cond_24
    :goto_13
    const-string v0, "transaction.json"

    .line 821
    .line 822
    const-class v7, Ljava/lang/String;

    .line 823
    .line 824
    invoke-virtual {v1, v5, v0, v7}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    check-cast v0, Ljava/lang/String;

    .line 829
    .line 830
    iget-object v15, v2, Lio/sentry/SentryEvent;->E:Ljava/lang/String;

    .line 831
    .line 832
    if-nez v15, :cond_25

    .line 833
    .line 834
    iput-object v0, v2, Lio/sentry/SentryEvent;->E:Ljava/lang/String;

    .line 835
    .line 836
    :cond_25
    const-string v0, "fingerprint.json"

    .line 837
    .line 838
    invoke-virtual {v1, v5, v0, v12}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v0

    .line 842
    check-cast v0, Ljava/util/List;

    .line 843
    .line 844
    iget-object v12, v2, Lio/sentry/SentryEvent;->F:Ljava/util/List;

    .line 845
    .line 846
    if-nez v12, :cond_26

    .line 847
    .line 848
    invoke-virtual {v2, v0}, Lio/sentry/SentryEvent;->i(Ljava/util/List;)V

    .line 849
    .line 850
    .line 851
    :cond_26
    const-string v0, "level.json"

    .line 852
    .line 853
    const-class v12, Lio/sentry/SentryLevel;

    .line 854
    .line 855
    invoke-virtual {v1, v5, v0, v12}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v0

    .line 859
    check-cast v0, Lio/sentry/SentryLevel;

    .line 860
    .line 861
    iget-object v12, v2, Lio/sentry/SentryEvent;->D:Lio/sentry/SentryLevel;

    .line 862
    .line 863
    if-nez v12, :cond_27

    .line 864
    .line 865
    iput-object v0, v2, Lio/sentry/SentryEvent;->D:Lio/sentry/SentryLevel;

    .line 866
    .line 867
    :cond_27
    const-string v0, "trace.json"

    .line 868
    .line 869
    const-class v12, Lio/sentry/SpanContext;

    .line 870
    .line 871
    invoke-virtual {v1, v5, v0, v12}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 872
    .line 873
    .line 874
    move-result-object v0

    .line 875
    check-cast v0, Lio/sentry/SpanContext;

    .line 876
    .line 877
    invoke-virtual {v8}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 878
    .line 879
    .line 880
    move-result-object v12

    .line 881
    if-nez v12, :cond_28

    .line 882
    .line 883
    if-eqz v0, :cond_28

    .line 884
    .line 885
    invoke-virtual {v8, v0}, Lio/sentry/protocol/Contexts;->v(Lio/sentry/SpanContext;)V

    .line 886
    .line 887
    .line 888
    :cond_28
    const-string v0, "replay.json"

    .line 889
    .line 890
    invoke-virtual {v1, v5, v0, v7}, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    check-cast v1, Ljava/lang/String;

    .line 895
    .line 896
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 897
    .line 898
    .line 899
    move-result-object v12

    .line 900
    if-nez v12, :cond_29

    .line 901
    .line 902
    move-object/from16 v21, v9

    .line 903
    .line 904
    move-object/from16 v19, v10

    .line 905
    .line 906
    goto/16 :goto_17

    .line 907
    .line 908
    :cond_29
    new-instance v15, Ljava/io/File;

    .line 909
    .line 910
    move-object/from16 v19, v10

    .line 911
    .line 912
    const-string v10, "replay_"

    .line 913
    .line 914
    move-object/from16 v21, v9

    .line 915
    .line 916
    invoke-static {v10, v1}, Ljb;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v9

    .line 920
    invoke-direct {v15, v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 924
    .line 925
    .line 926
    move-result v9

    .line 927
    if-nez v9, :cond_2f

    .line 928
    .line 929
    const-string v1, "replay-error-sample-rate.json"

    .line 930
    .line 931
    invoke-static {v5, v1, v7}, Lio/sentry/cache/PersistingOptionsObserver;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v1

    .line 935
    check-cast v1, Ljava/lang/String;

    .line 936
    .line 937
    if-nez v1, :cond_2a

    .line 938
    .line 939
    goto/16 :goto_17

    .line 940
    .line 941
    :cond_2a
    :try_start_2
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 942
    .line 943
    .line 944
    move-result-wide v22

    .line 945
    invoke-static {}, Lio/sentry/util/SentryRandom;->a()Lio/sentry/util/Random;

    .line 946
    .line 947
    .line 948
    move-result-object v1

    .line 949
    invoke-virtual {v1}, Lio/sentry/util/Random;->c()D

    .line 950
    .line 951
    .line 952
    move-result-wide v24

    .line 953
    cmpg-double v1, v22, v24

    .line 954
    .line 955
    if-gez v1, :cond_2b

    .line 956
    .line 957
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 962
    .line 963
    const-string v9, "Not capturing replay for ANR %s due to not being sampled."

    .line 964
    .line 965
    iget-object v10, v2, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 966
    .line 967
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v10

    .line 971
    invoke-interface {v0, v1, v9, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 972
    .line 973
    .line 974
    goto/16 :goto_17

    .line 975
    .line 976
    :catchall_2
    move-exception v0

    .line 977
    goto :goto_15

    .line 978
    :cond_2b
    new-instance v1, Ljava/io/File;

    .line 979
    .line 980
    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    if-eqz v1, :cond_2e

    .line 988
    .line 989
    array-length v9, v1

    .line 990
    const-wide/high16 v22, -0x8000000000000000L

    .line 991
    .line 992
    const/4 v12, 0x0

    .line 993
    const/4 v15, 0x0

    .line 994
    :goto_14
    if-ge v15, v9, :cond_2d

    .line 995
    .line 996
    aget-object v24, v1, v15

    .line 997
    .line 998
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->isDirectory()Z

    .line 999
    .line 1000
    .line 1001
    move-result v25

    .line 1002
    move-object/from16 p0, v1

    .line 1003
    .line 1004
    if-eqz v25, :cond_2c

    .line 1005
    .line 1006
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v1

    .line 1010
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1011
    .line 1012
    .line 1013
    move-result v1

    .line 1014
    if-eqz v1, :cond_2c

    .line 1015
    .line 1016
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    .line 1017
    .line 1018
    .line 1019
    move-result-wide v25

    .line 1020
    cmp-long v1, v25, v22

    .line 1021
    .line 1022
    if-lez v1, :cond_2c

    .line 1023
    .line 1024
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    .line 1025
    .line 1026
    .line 1027
    move-result-wide v25

    .line 1028
    iget-object v1, v2, Lio/sentry/SentryEvent;->y:Ljava/util/Date;

    .line 1029
    .line 1030
    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    check-cast v1, Ljava/util/Date;

    .line 1035
    .line 1036
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 1037
    .line 1038
    .line 1039
    move-result-wide v27

    .line 1040
    cmp-long v1, v25, v27

    .line 1041
    .line 1042
    if-gtz v1, :cond_2c

    .line 1043
    .line 1044
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->lastModified()J

    .line 1045
    .line 1046
    .line 1047
    move-result-wide v22

    .line 1048
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    const/4 v12, 0x7

    .line 1053
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v12

    .line 1057
    :cond_2c
    add-int/lit8 v15, v15, 0x1

    .line 1058
    .line 1059
    move-object/from16 v1, p0

    .line 1060
    .line 1061
    goto :goto_14

    .line 1062
    :cond_2d
    move-object v1, v12

    .line 1063
    goto :goto_16

    .line 1064
    :cond_2e
    const/4 v1, 0x0

    .line 1065
    goto :goto_16

    .line 1066
    :goto_15
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v1

    .line 1070
    sget-object v9, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1071
    .line 1072
    const-string v10, "Error parsing replay sample rate."

    .line 1073
    .line 1074
    invoke-interface {v1, v9, v10, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1075
    .line 1076
    .line 1077
    goto :goto_17

    .line 1078
    :cond_2f
    :goto_16
    if-nez v1, :cond_30

    .line 1079
    .line 1080
    goto :goto_17

    .line 1081
    :cond_30
    invoke-static {v5, v1, v0}, Lio/sentry/cache/PersistingScopeObserver;->k(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1082
    .line 1083
    .line 1084
    const-string v0, "replay_id"

    .line 1085
    .line 1086
    invoke-virtual {v8, v1, v0}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1087
    .line 1088
    .line 1089
    :goto_17
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 1090
    .line 1091
    const-string v1, "release.json"

    .line 1092
    .line 1093
    if-nez v0, :cond_31

    .line 1094
    .line 1095
    invoke-static {v5, v1, v7}, Lio/sentry/cache/PersistingOptionsObserver;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    check-cast v0, Ljava/lang/String;

    .line 1100
    .line 1101
    iput-object v0, v2, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 1102
    .line 1103
    :cond_31
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->p:Ljava/lang/String;

    .line 1104
    .line 1105
    if-nez v0, :cond_33

    .line 1106
    .line 1107
    const-string v0, "environment.json"

    .line 1108
    .line 1109
    invoke-static {v5, v0, v7}, Lio/sentry/cache/PersistingOptionsObserver;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v0

    .line 1113
    check-cast v0, Ljava/lang/String;

    .line 1114
    .line 1115
    if-eqz v0, :cond_32

    .line 1116
    .line 1117
    goto :goto_18

    .line 1118
    :cond_32
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v0

    .line 1122
    :goto_18
    iput-object v0, v2, Lio/sentry/SentryBaseEvent;->p:Ljava/lang/String;

    .line 1123
    .line 1124
    :cond_33
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 1125
    .line 1126
    if-nez v0, :cond_34

    .line 1127
    .line 1128
    const-string v0, "dist.json"

    .line 1129
    .line 1130
    invoke-static {v5, v0, v7}, Lio/sentry/cache/PersistingOptionsObserver;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    check-cast v0, Ljava/lang/String;

    .line 1135
    .line 1136
    iput-object v0, v2, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 1137
    .line 1138
    :cond_34
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 1139
    .line 1140
    const-string v9, "Failed to parse release from scope cache: %s"

    .line 1141
    .line 1142
    const/16 v10, 0x2b

    .line 1143
    .line 1144
    if-nez v0, :cond_35

    .line 1145
    .line 1146
    invoke-static {v5, v1, v7}, Lio/sentry/cache/PersistingOptionsObserver;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v0

    .line 1150
    check-cast v0, Ljava/lang/String;

    .line 1151
    .line 1152
    if-eqz v0, :cond_35

    .line 1153
    .line 1154
    :try_start_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->indexOf(I)I

    .line 1155
    .line 1156
    .line 1157
    move-result v12

    .line 1158
    add-int/lit8 v12, v12, 0x1

    .line 1159
    .line 1160
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v12

    .line 1164
    iput-object v12, v2, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1165
    .line 1166
    goto :goto_19

    .line 1167
    :catchall_3
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v12

    .line 1171
    sget-object v15, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 1172
    .line 1173
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-interface {v12, v15, v9, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1178
    .line 1179
    .line 1180
    :cond_35
    :goto_19
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 1181
    .line 1182
    if-nez v0, :cond_36

    .line 1183
    .line 1184
    new-instance v0, Lio/sentry/protocol/DebugMeta;

    .line 1185
    .line 1186
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1187
    .line 1188
    .line 1189
    :cond_36
    iget-object v12, v0, Lio/sentry/protocol/DebugMeta;->k:Ljava/util/List;

    .line 1190
    .line 1191
    if-nez v12, :cond_37

    .line 1192
    .line 1193
    new-instance v12, Ljava/util/ArrayList;

    .line 1194
    .line 1195
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .line 1197
    .line 1198
    new-instance v15, Ljava/util/ArrayList;

    .line 1199
    .line 1200
    invoke-direct {v15, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1201
    .line 1202
    .line 1203
    iput-object v15, v0, Lio/sentry/protocol/DebugMeta;->k:Ljava/util/List;

    .line 1204
    .line 1205
    :cond_37
    iget-object v12, v0, Lio/sentry/protocol/DebugMeta;->k:Ljava/util/List;

    .line 1206
    .line 1207
    if-eqz v12, :cond_39

    .line 1208
    .line 1209
    const-string v15, "proguard-uuid.json"

    .line 1210
    .line 1211
    invoke-static {v5, v15, v7}, Lio/sentry/cache/PersistingOptionsObserver;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v15

    .line 1215
    check-cast v15, Ljava/lang/String;

    .line 1216
    .line 1217
    if-eqz v15, :cond_38

    .line 1218
    .line 1219
    new-instance v10, Lio/sentry/protocol/DebugImage;

    .line 1220
    .line 1221
    invoke-direct {v10}, Lio/sentry/protocol/DebugImage;-><init>()V

    .line 1222
    .line 1223
    .line 1224
    move-object/from16 v22, v6

    .line 1225
    .line 1226
    const-string v6, "proguard"

    .line 1227
    .line 1228
    invoke-virtual {v10, v6}, Lio/sentry/protocol/DebugImage;->setType(Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v10, v15}, Lio/sentry/protocol/DebugImage;->setUuid(Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    .line 1236
    .line 1237
    goto :goto_1a

    .line 1238
    :cond_38
    move-object/from16 v22, v6

    .line 1239
    .line 1240
    :goto_1a
    iput-object v0, v2, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 1241
    .line 1242
    goto :goto_1b

    .line 1243
    :cond_39
    move-object/from16 v22, v6

    .line 1244
    .line 1245
    :goto_1b
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->l:Lio/sentry/protocol/SdkVersion;

    .line 1246
    .line 1247
    if-nez v0, :cond_3a

    .line 1248
    .line 1249
    const-string v0, "sdk-version.json"

    .line 1250
    .line 1251
    const-class v6, Lio/sentry/protocol/SdkVersion;

    .line 1252
    .line 1253
    invoke-static {v5, v0, v6}, Lio/sentry/cache/PersistingOptionsObserver;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    check-cast v0, Lio/sentry/protocol/SdkVersion;

    .line 1258
    .line 1259
    iput-object v0, v2, Lio/sentry/SentryBaseEvent;->l:Lio/sentry/protocol/SdkVersion;

    .line 1260
    .line 1261
    :cond_3a
    invoke-virtual {v8}, Lio/sentry/protocol/Contexts;->d()Lio/sentry/protocol/App;

    .line 1262
    .line 1263
    .line 1264
    move-result-object v0

    .line 1265
    if-nez v0, :cond_3b

    .line 1266
    .line 1267
    new-instance v0, Lio/sentry/protocol/App;

    .line 1268
    .line 1269
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1270
    .line 1271
    .line 1272
    :cond_3b
    move-object v6, v0

    .line 1273
    sget-object v0, Lio/sentry/android/core/ContextUtils;->c:Lio/sentry/android/core/util/AndroidLazyEvaluator;

    .line 1274
    .line 1275
    move-object/from16 v10, v17

    .line 1276
    .line 1277
    invoke-virtual {v0, v10}, Lio/sentry/android/core/util/AndroidLazyEvaluator;->a(Landroid/content/Context;)Ljava/lang/Object;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v0

    .line 1281
    check-cast v0, Ljava/lang/String;

    .line 1282
    .line 1283
    iput-object v0, v6, Lio/sentry/protocol/App;->n:Ljava/lang/String;

    .line 1284
    .line 1285
    invoke-static {v10, v14}, Lio/sentry/android/core/ContextUtils;->c(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;)Landroid/content/pm/PackageInfo;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v0

    .line 1289
    if-eqz v0, :cond_3c

    .line 1290
    .line 1291
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1292
    .line 1293
    iput-object v0, v6, Lio/sentry/protocol/App;->j:Ljava/lang/String;

    .line 1294
    .line 1295
    :cond_3c
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 1296
    .line 1297
    if-eqz v0, :cond_3d

    .line 1298
    .line 1299
    goto :goto_1c

    .line 1300
    :cond_3d
    invoke-static {v5, v1, v7}, Lio/sentry/cache/PersistingOptionsObserver;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v0

    .line 1304
    check-cast v0, Ljava/lang/String;

    .line 1305
    .line 1306
    :goto_1c
    if-eqz v0, :cond_3e

    .line 1307
    .line 1308
    const/16 v1, 0x40

    .line 1309
    .line 1310
    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    .line 1311
    .line 1312
    .line 1313
    move-result v1

    .line 1314
    add-int/lit8 v1, v1, 0x1

    .line 1315
    .line 1316
    const/16 v7, 0x2b

    .line 1317
    .line 1318
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    .line 1319
    .line 1320
    .line 1321
    move-result v12

    .line 1322
    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    .line 1327
    .line 1328
    .line 1329
    move-result v7

    .line 1330
    add-int/lit8 v7, v7, 0x1

    .line 1331
    .line 1332
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1333
    .line 1334
    .line 1335
    move-result-object v7

    .line 1336
    iput-object v1, v6, Lio/sentry/protocol/App;->o:Ljava/lang/String;

    .line 1337
    .line 1338
    iput-object v7, v6, Lio/sentry/protocol/App;->p:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1339
    .line 1340
    goto :goto_1d

    .line 1341
    :catchall_4
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v1

    .line 1345
    sget-object v7, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 1346
    .line 1347
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v0

    .line 1351
    invoke-interface {v1, v7, v9, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    .line 1353
    .line 1354
    :cond_3e
    :goto_1d
    :try_start_5
    invoke-static {v10, v5}, Lio/sentry/android/core/DeviceInfoUtil;->c(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v0

    .line 1358
    iget-object v0, v0, Lio/sentry/android/core/DeviceInfoUtil;->f:Lio/sentry/android/core/ContextUtils$SplitApksInfo;

    .line 1359
    .line 1360
    if-eqz v0, :cond_3f

    .line 1361
    .line 1362
    iget-boolean v1, v0, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->a:Z

    .line 1363
    .line 1364
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1365
    .line 1366
    .line 1367
    move-result-object v1

    .line 1368
    iput-object v1, v6, Lio/sentry/protocol/App;->u:Ljava/lang/Boolean;

    .line 1369
    .line 1370
    iget-object v0, v0, Lio/sentry/android/core/ContextUtils$SplitApksInfo;->b:[Ljava/lang/String;

    .line 1371
    .line 1372
    if-eqz v0, :cond_3f

    .line 1373
    .line 1374
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v0

    .line 1378
    iput-object v0, v6, Lio/sentry/protocol/App;->v:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1379
    .line 1380
    goto :goto_1e

    .line 1381
    :catchall_5
    move-exception v0

    .line 1382
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v1

    .line 1386
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1387
    .line 1388
    const-string v9, "Error getting split apks info."

    .line 1389
    .line 1390
    invoke-interface {v1, v7, v9, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1391
    .line 1392
    .line 1393
    :cond_3f
    :goto_1e
    invoke-virtual {v8, v6}, Lio/sentry/protocol/Contexts;->m(Lio/sentry/protocol/App;)V

    .line 1394
    .line 1395
    .line 1396
    invoke-static {v5, v4, v11}, Lio/sentry/cache/PersistingOptionsObserver;->b(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v0

    .line 1400
    check-cast v0, Ljava/util/Map;

    .line 1401
    .line 1402
    if-nez v0, :cond_40

    .line 1403
    .line 1404
    goto :goto_20

    .line 1405
    :cond_40
    iget-object v1, v2, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 1406
    .line 1407
    if-nez v1, :cond_41

    .line 1408
    .line 1409
    new-instance v1, Ljava/util/HashMap;

    .line 1410
    .line 1411
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1412
    .line 1413
    .line 1414
    invoke-virtual {v2, v1}, Lio/sentry/SentryBaseEvent;->c(Ljava/util/Map;)V

    .line 1415
    .line 1416
    .line 1417
    goto :goto_20

    .line 1418
    :cond_41
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v0

    .line 1422
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v0

    .line 1426
    :cond_42
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1427
    .line 1428
    .line 1429
    move-result v1

    .line 1430
    if-eqz v1, :cond_43

    .line 1431
    .line 1432
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v1

    .line 1436
    check-cast v1, Ljava/util/Map$Entry;

    .line 1437
    .line 1438
    iget-object v4, v2, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 1439
    .line 1440
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v6

    .line 1444
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1445
    .line 1446
    .line 1447
    move-result v4

    .line 1448
    if-nez v4, :cond_42

    .line 1449
    .line 1450
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v4

    .line 1454
    check-cast v4, Ljava/lang/String;

    .line 1455
    .line 1456
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v1

    .line 1460
    check-cast v1, Ljava/lang/String;

    .line 1461
    .line 1462
    invoke-virtual {v2, v4, v1}, Lio/sentry/SentryBaseEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    goto :goto_1f

    .line 1466
    :cond_43
    :goto_20
    iget-object v0, v2, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 1467
    .line 1468
    if-nez v0, :cond_44

    .line 1469
    .line 1470
    new-instance v0, Lio/sentry/protocol/User;

    .line 1471
    .line 1472
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1473
    .line 1474
    .line 1475
    iput-object v0, v2, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 1476
    .line 1477
    :cond_44
    move-object v1, v0

    .line 1478
    iget-object v0, v1, Lio/sentry/protocol/User;->k:Ljava/lang/String;

    .line 1479
    .line 1480
    if-nez v0, :cond_45

    .line 1481
    .line 1482
    :try_start_6
    invoke-static {v10}, Lio/sentry/android/core/Installation;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 1486
    goto :goto_21

    .line 1487
    :catchall_6
    move-exception v0

    .line 1488
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v4

    .line 1492
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1493
    .line 1494
    invoke-interface {v4, v6, v13, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1495
    .line 1496
    .line 1497
    const/4 v0, 0x0

    .line 1498
    :goto_21
    iput-object v0, v1, Lio/sentry/protocol/User;->k:Ljava/lang/String;

    .line 1499
    .line 1500
    :cond_45
    iget-object v0, v1, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 1501
    .line 1502
    if-nez v0, :cond_46

    .line 1503
    .line 1504
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    .line 1505
    .line 1506
    .line 1507
    move-result v0

    .line 1508
    if-eqz v0, :cond_46

    .line 1509
    .line 1510
    const-string v0, "{{auto}}"

    .line 1511
    .line 1512
    iput-object v0, v1, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 1513
    .line 1514
    :cond_46
    :try_start_7
    invoke-static {v10, v5}, Lio/sentry/android/core/DeviceInfoUtil;->c(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    .line 1515
    .line 1516
    .line 1517
    move-result-object v0

    .line 1518
    iget-object v0, v0, Lio/sentry/android/core/DeviceInfoUtil;->e:Lio/sentry/android/core/ContextUtils$SideLoadedInfo;

    .line 1519
    .line 1520
    if-eqz v0, :cond_48

    .line 1521
    .line 1522
    new-instance v1, Ljava/util/HashMap;

    .line 1523
    .line 1524
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1525
    .line 1526
    .line 1527
    const-string v4, "isSideLoaded"

    .line 1528
    .line 1529
    iget-boolean v6, v0, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->a:Z

    .line 1530
    .line 1531
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v6

    .line 1535
    invoke-virtual {v1, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1536
    .line 1537
    .line 1538
    iget-object v0, v0, Lio/sentry/android/core/ContextUtils$SideLoadedInfo;->b:Ljava/lang/String;

    .line 1539
    .line 1540
    if-eqz v0, :cond_47

    .line 1541
    .line 1542
    const-string v4, "installerStore"

    .line 1543
    .line 1544
    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    .line 1546
    .line 1547
    :cond_47
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v0

    .line 1551
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v0

    .line 1555
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1556
    .line 1557
    .line 1558
    move-result v1

    .line 1559
    if-eqz v1, :cond_48

    .line 1560
    .line 1561
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v1

    .line 1565
    check-cast v1, Ljava/util/Map$Entry;

    .line 1566
    .line 1567
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v4

    .line 1571
    check-cast v4, Ljava/lang/String;

    .line 1572
    .line 1573
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1574
    .line 1575
    .line 1576
    move-result-object v1

    .line 1577
    check-cast v1, Ljava/lang/String;

    .line 1578
    .line 1579
    invoke-virtual {v2, v4, v1}, Lio/sentry/SentryBaseEvent;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 1580
    .line 1581
    .line 1582
    goto :goto_22

    .line 1583
    :catchall_7
    move-exception v0

    .line 1584
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v1

    .line 1588
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 1589
    .line 1590
    const-string v5, "Error getting side loaded info."

    .line 1591
    .line 1592
    invoke-interface {v1, v4, v5, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1593
    .line 1594
    .line 1595
    :cond_48
    if-eqz v20, :cond_6c

    .line 1596
    .line 1597
    move-object/from16 v7, v20

    .line 1598
    .line 1599
    check-cast v7, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;

    .line 1600
    .line 1601
    instance-of v0, v3, Lio/sentry/hints/AbnormalExit;

    .line 1602
    .line 1603
    if-eqz v0, :cond_49

    .line 1604
    .line 1605
    move-object v1, v3

    .line 1606
    check-cast v1, Lio/sentry/hints/AbnormalExit;

    .line 1607
    .line 1608
    invoke-interface {v1}, Lio/sentry/hints/AbnormalExit;->f()Ljava/lang/String;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v1

    .line 1612
    move-object/from16 v4, v22

    .line 1613
    .line 1614
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1615
    .line 1616
    .line 1617
    move-result v1

    .line 1618
    move v4, v1

    .line 1619
    goto :goto_23

    .line 1620
    :cond_49
    const/4 v4, 0x0

    .line 1621
    :goto_23
    iget-object v1, v7, Lio/sentry/android/core/ApplicationExitInfoEventProcessor$AnrHintEnricher;->a:Lio/sentry/android/core/ApplicationExitInfoEventProcessor;

    .line 1622
    .line 1623
    iget-object v5, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 1624
    .line 1625
    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->isAnrProfilingEnabled()Z

    .line 1626
    .line 1627
    .line 1628
    move-result v6

    .line 1629
    if-eqz v6, :cond_60

    .line 1630
    .line 1631
    const-string v6, "Could not delete ANR profile file"

    .line 1632
    .line 1633
    if-eqz v4, :cond_4a

    .line 1634
    .line 1635
    goto/16 :goto_32

    .line 1636
    .line 1637
    :cond_4a
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v7

    .line 1641
    if-nez v7, :cond_4b

    .line 1642
    .line 1643
    goto/16 :goto_32

    .line 1644
    .line 1645
    :cond_4b
    new-instance v9, Ljava/io/File;

    .line 1646
    .line 1647
    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1648
    .line 1649
    .line 1650
    if-nez v0, :cond_4c

    .line 1651
    .line 1652
    goto/16 :goto_32

    .line 1653
    .line 1654
    :cond_4c
    check-cast v3, Lio/sentry/hints/AbnormalExit;

    .line 1655
    .line 1656
    invoke-interface {v3}, Lio/sentry/hints/AbnormalExit;->b()Ljava/lang/Long;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v0

    .line 1660
    if-eqz v0, :cond_4d

    .line 1661
    .line 1662
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 1663
    .line 1664
    .line 1665
    move-result-wide v10

    .line 1666
    goto :goto_24

    .line 1667
    :cond_4d
    iget-object v0, v2, Lio/sentry/SentryEvent;->y:Ljava/util/Date;

    .line 1668
    .line 1669
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v0

    .line 1673
    check-cast v0, Ljava/util/Date;

    .line 1674
    .line 1675
    if-eqz v0, :cond_60

    .line 1676
    .line 1677
    iget-object v0, v2, Lio/sentry/SentryEvent;->y:Ljava/util/Date;

    .line 1678
    .line 1679
    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v0

    .line 1683
    check-cast v0, Ljava/util/Date;

    .line 1684
    .line 1685
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 1686
    .line 1687
    .line 1688
    move-result-wide v10

    .line 1689
    :goto_24
    :try_start_8
    invoke-static {v9}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->b(Ljava/io/File;)V

    .line 1690
    .line 1691
    .line 1692
    new-instance v0, Ljava/io/File;

    .line 1693
    .line 1694
    const-string v3, "anr_profile_old"

    .line 1695
    .line 1696
    invoke-direct {v0, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1697
    .line 1698
    .line 1699
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 1700
    .line 1701
    .line 1702
    move-result v3

    .line 1703
    if-eqz v3, :cond_4e

    .line 1704
    .line 1705
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v3

    .line 1709
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 1710
    .line 1711
    const-string v12, "Reading ANR profile"

    .line 1712
    .line 1713
    const/4 v13, 0x0

    .line 1714
    new-array v14, v13, [Ljava/lang/Object;

    .line 1715
    .line 1716
    invoke-interface {v3, v7, v12, v14}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1717
    .line 1718
    .line 1719
    new-instance v3, Lio/sentry/android/core/anr/AnrProfileManager;

    .line 1720
    .line 1721
    invoke-direct {v3, v5, v0}, Lio/sentry/android/core/anr/AnrProfileManager;-><init>(Lio/sentry/SentryOptions;Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 1722
    .line 1723
    .line 1724
    :try_start_9
    new-instance v7, Lio/sentry/android/core/anr/AnrProfile;

    .line 1725
    .line 1726
    iget-object v0, v3, Lio/sentry/android/core/anr/AnrProfileManager;->j:Lio/sentry/cache/tape/ObjectQueue;

    .line 1727
    .line 1728
    invoke-virtual {v0}, Lio/sentry/cache/tape/ObjectQueue;->E()Ljava/util/List;

    .line 1729
    .line 1730
    .line 1731
    move-result-object v0

    .line 1732
    invoke-direct {v7, v0}, Lio/sentry/android/core/anr/AnrProfile;-><init>(Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 1733
    .line 1734
    .line 1735
    :try_start_a
    invoke-virtual {v3}, Lio/sentry/android/core/anr/AnrProfileManager;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 1736
    .line 1737
    .line 1738
    const/4 v13, 0x0

    .line 1739
    goto :goto_28

    .line 1740
    :catchall_8
    move-exception v0

    .line 1741
    goto :goto_29

    .line 1742
    :goto_25
    move-object v7, v0

    .line 1743
    goto :goto_26

    .line 1744
    :catchall_9
    move-exception v0

    .line 1745
    goto :goto_25

    .line 1746
    :goto_26
    :try_start_b
    invoke-virtual {v3}, Lio/sentry/android/core/anr/AnrProfileManager;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    .line 1747
    .line 1748
    .line 1749
    goto :goto_27

    .line 1750
    :catchall_a
    move-exception v0

    .line 1751
    :try_start_c
    invoke-virtual {v7, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1752
    .line 1753
    .line 1754
    :goto_27
    throw v7

    .line 1755
    :catchall_b
    move-exception v0

    .line 1756
    const/4 v7, 0x0

    .line 1757
    goto :goto_29

    .line 1758
    :cond_4e
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v0

    .line 1762
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 1763
    .line 1764
    const-string v7, "No ANR profile file found"

    .line 1765
    .line 1766
    const/4 v13, 0x0

    .line 1767
    new-array v12, v13, [Ljava/lang/Object;

    .line 1768
    .line 1769
    invoke-interface {v0, v3, v7, v12}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    .line 1770
    .line 1771
    .line 1772
    const/4 v7, 0x0

    .line 1773
    :goto_28
    invoke-static {v9}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->a(Ljava/io/File;)Z

    .line 1774
    .line 1775
    .line 1776
    move-result v0

    .line 1777
    if-nez v0, :cond_4f

    .line 1778
    .line 1779
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1780
    .line 1781
    .line 1782
    move-result-object v0

    .line 1783
    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 1784
    .line 1785
    new-array v9, v13, [Ljava/lang/Object;

    .line 1786
    .line 1787
    invoke-interface {v0, v3, v6, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1788
    .line 1789
    .line 1790
    :cond_4f
    const/4 v13, 0x0

    .line 1791
    goto :goto_2a

    .line 1792
    :goto_29
    :try_start_d
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1793
    .line 1794
    .line 1795
    move-result-object v3

    .line 1796
    sget-object v12, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 1797
    .line 1798
    const-string v13, "Could not retrieve ANR profile"

    .line 1799
    .line 1800
    invoke-interface {v3, v12, v13, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    .line 1801
    .line 1802
    .line 1803
    invoke-static {v9}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->a(Ljava/io/File;)Z

    .line 1804
    .line 1805
    .line 1806
    move-result v0

    .line 1807
    if-nez v0, :cond_4f

    .line 1808
    .line 1809
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1810
    .line 1811
    .line 1812
    move-result-object v0

    .line 1813
    const/4 v13, 0x0

    .line 1814
    new-array v3, v13, [Ljava/lang/Object;

    .line 1815
    .line 1816
    invoke-interface {v0, v12, v6, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1817
    .line 1818
    .line 1819
    :goto_2a
    if-nez v7, :cond_50

    .line 1820
    .line 1821
    goto/16 :goto_32

    .line 1822
    .line 1823
    :cond_50
    iget-object v0, v7, Lio/sentry/android/core/anr/AnrProfile;->a:Ljava/util/ArrayList;

    .line 1824
    .line 1825
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v3

    .line 1829
    sget-object v6, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 1830
    .line 1831
    const-string v9, "ANR profile found"

    .line 1832
    .line 1833
    new-array v12, v13, [Ljava/lang/Object;

    .line 1834
    .line 1835
    invoke-interface {v3, v6, v9, v12}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1836
    .line 1837
    .line 1838
    iget-wide v12, v7, Lio/sentry/android/core/anr/AnrProfile;->b:J

    .line 1839
    .line 1840
    cmp-long v3, v10, v12

    .line 1841
    .line 1842
    if-ltz v3, :cond_51

    .line 1843
    .line 1844
    iget-wide v6, v7, Lio/sentry/android/core/anr/AnrProfile;->c:J

    .line 1845
    .line 1846
    cmp-long v3, v10, v6

    .line 1847
    .line 1848
    if-lez v3, :cond_52

    .line 1849
    .line 1850
    :cond_51
    move/from16 v17, v4

    .line 1851
    .line 1852
    move-object/from16 v20, v5

    .line 1853
    .line 1854
    move-object v3, v8

    .line 1855
    goto/16 :goto_31

    .line 1856
    .line 1857
    :cond_52
    invoke-static {v0}, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->a(Ljava/util/List;)Lio/sentry/android/core/anr/AggregatedStackTrace;

    .line 1858
    .line 1859
    .line 1860
    move-result-object v3

    .line 1861
    if-nez v3, :cond_53

    .line 1862
    .line 1863
    goto/16 :goto_32

    .line 1864
    .line 1865
    :cond_53
    new-instance v6, Lio/sentry/protocol/profiling/SentryProfile;

    .line 1866
    .line 1867
    invoke-direct {v6}, Lio/sentry/protocol/profiling/SentryProfile;-><init>()V

    .line 1868
    .line 1869
    .line 1870
    new-instance v7, Ljava/util/ArrayList;

    .line 1871
    .line 1872
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1873
    .line 1874
    .line 1875
    new-instance v9, Ljava/util/HashMap;

    .line 1876
    .line 1877
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1878
    .line 1879
    .line 1880
    new-instance v12, Ljava/util/ArrayList;

    .line 1881
    .line 1882
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1883
    .line 1884
    .line 1885
    new-instance v13, Ljava/util/HashMap;

    .line 1886
    .line 1887
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1888
    .line 1889
    .line 1890
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1891
    .line 1892
    .line 1893
    move-result-object v0

    .line 1894
    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1895
    .line 1896
    .line 1897
    move-result v14

    .line 1898
    const-wide v22, 0x408f400000000000L    # 1000.0

    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    const-string v15, "0"

    .line 1904
    .line 1905
    if-eqz v14, :cond_5b

    .line 1906
    .line 1907
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1908
    .line 1909
    .line 1910
    move-result-object v14

    .line 1911
    check-cast v14, Lio/sentry/android/core/anr/AnrStackTrace;

    .line 1912
    .line 1913
    move-object/from16 p0, v0

    .line 1914
    .line 1915
    iget-object v0, v14, Lio/sentry/android/core/anr/AnrStackTrace;->j:[Ljava/lang/StackTraceElement;

    .line 1916
    .line 1917
    move/from16 v17, v4

    .line 1918
    .line 1919
    new-instance v4, Ljava/util/ArrayList;

    .line 1920
    .line 1921
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1922
    .line 1923
    .line 1924
    move-object/from16 v20, v5

    .line 1925
    .line 1926
    array-length v5, v0

    .line 1927
    move-object/from16 v24, v0

    .line 1928
    .line 1929
    const/4 v0, 0x0

    .line 1930
    :goto_2c
    if-ge v0, v5, :cond_57

    .line 1931
    .line 1932
    aget-object v25, v24, v0

    .line 1933
    .line 1934
    move/from16 v26, v0

    .line 1935
    .line 1936
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1937
    .line 1938
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1939
    .line 1940
    .line 1941
    move/from16 v27, v5

    .line 1942
    .line 1943
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 1944
    .line 1945
    .line 1946
    move-result-object v5

    .line 1947
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1948
    .line 1949
    .line 1950
    const-string v5, "#"

    .line 1951
    .line 1952
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    .line 1954
    .line 1955
    move-object/from16 v28, v8

    .line 1956
    .line 1957
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v8

    .line 1961
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    .line 1963
    .line 1964
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    .line 1966
    .line 1967
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v8

    .line 1971
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1972
    .line 1973
    .line 1974
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1975
    .line 1976
    .line 1977
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 1978
    .line 1979
    .line 1980
    move-result v5

    .line 1981
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1982
    .line 1983
    .line 1984
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1985
    .line 1986
    .line 1987
    move-result-object v0

    .line 1988
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1989
    .line 1990
    .line 1991
    move-result-object v5

    .line 1992
    check-cast v5, Ljava/lang/Integer;

    .line 1993
    .line 1994
    if-nez v5, :cond_56

    .line 1995
    .line 1996
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 1997
    .line 1998
    .line 1999
    move-result v5

    .line 2000
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2001
    .line 2002
    .line 2003
    move-result-object v5

    .line 2004
    new-instance v8, Lio/sentry/protocol/SentryStackFrame;

    .line 2005
    .line 2006
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 2007
    .line 2008
    .line 2009
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    .line 2010
    .line 2011
    .line 2012
    move-result-object v2

    .line 2013
    iput-object v2, v8, Lio/sentry/protocol/SentryStackFrame;->m:Ljava/lang/String;

    .line 2014
    .line 2015
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 2016
    .line 2017
    .line 2018
    move-result-object v2

    .line 2019
    iput-object v2, v8, Lio/sentry/protocol/SentryStackFrame;->n:Ljava/lang/String;

    .line 2020
    .line 2021
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 2022
    .line 2023
    .line 2024
    move-result-object v2

    .line 2025
    iput-object v2, v8, Lio/sentry/protocol/SentryStackFrame;->o:Ljava/lang/String;

    .line 2026
    .line 2027
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 2028
    .line 2029
    .line 2030
    move-result v2

    .line 2031
    if-lez v2, :cond_54

    .line 2032
    .line 2033
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 2034
    .line 2035
    .line 2036
    move-result v2

    .line 2037
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v2

    .line 2041
    goto :goto_2d

    .line 2042
    :cond_54
    const/4 v2, 0x0

    .line 2043
    :goto_2d
    iput-object v2, v8, Lio/sentry/protocol/SentryStackFrame;->p:Ljava/lang/Integer;

    .line 2044
    .line 2045
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    .line 2046
    .line 2047
    .line 2048
    move-result v2

    .line 2049
    if-eqz v2, :cond_55

    .line 2050
    .line 2051
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2052
    .line 2053
    iput-object v2, v8, Lio/sentry/protocol/SentryStackFrame;->v:Ljava/lang/Boolean;

    .line 2054
    .line 2055
    :cond_55
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    .line 2057
    .line 2058
    invoke-virtual {v9, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2059
    .line 2060
    .line 2061
    :cond_56
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    .line 2063
    .line 2064
    add-int/lit8 v0, v26, 0x1

    .line 2065
    .line 2066
    move-object/from16 v2, p1

    .line 2067
    .line 2068
    move/from16 v5, v27

    .line 2069
    .line 2070
    move-object/from16 v8, v28

    .line 2071
    .line 2072
    goto/16 :goto_2c

    .line 2073
    .line 2074
    :cond_57
    move-object/from16 v28, v8

    .line 2075
    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2077
    .line 2078
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2079
    .line 2080
    .line 2081
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2082
    .line 2083
    .line 2084
    move-result-object v2

    .line 2085
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 2086
    .line 2087
    .line 2088
    move-result v5

    .line 2089
    if-eqz v5, :cond_59

    .line 2090
    .line 2091
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2092
    .line 2093
    .line 2094
    move-result-object v5

    .line 2095
    check-cast v5, Ljava/lang/Integer;

    .line 2096
    .line 2097
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 2098
    .line 2099
    .line 2100
    move-result v8

    .line 2101
    if-lez v8, :cond_58

    .line 2102
    .line 2103
    const-string v8, ","

    .line 2104
    .line 2105
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2106
    .line 2107
    .line 2108
    :cond_58
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2109
    .line 2110
    .line 2111
    goto :goto_2e

    .line 2112
    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2113
    .line 2114
    .line 2115
    move-result-object v0

    .line 2116
    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2117
    .line 2118
    .line 2119
    move-result-object v2

    .line 2120
    check-cast v2, Ljava/lang/Integer;

    .line 2121
    .line 2122
    if-nez v2, :cond_5a

    .line 2123
    .line 2124
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 2125
    .line 2126
    .line 2127
    move-result v2

    .line 2128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2129
    .line 2130
    .line 2131
    move-result-object v2

    .line 2132
    new-instance v5, Ljava/util/ArrayList;

    .line 2133
    .line 2134
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2135
    .line 2136
    .line 2137
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2138
    .line 2139
    .line 2140
    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2141
    .line 2142
    .line 2143
    :cond_5a
    new-instance v0, Lio/sentry/protocol/profiling/SentrySample;

    .line 2144
    .line 2145
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2146
    .line 2147
    .line 2148
    iget-wide v4, v14, Lio/sentry/android/core/anr/AnrStackTrace;->k:J

    .line 2149
    .line 2150
    long-to-double v4, v4

    .line 2151
    div-double v4, v4, v22

    .line 2152
    .line 2153
    iput-wide v4, v0, Lio/sentry/protocol/profiling/SentrySample;->j:D

    .line 2154
    .line 2155
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 2156
    .line 2157
    .line 2158
    move-result v2

    .line 2159
    iput v2, v0, Lio/sentry/protocol/profiling/SentrySample;->k:I

    .line 2160
    .line 2161
    iput-object v15, v0, Lio/sentry/protocol/profiling/SentrySample;->l:Ljava/lang/String;

    .line 2162
    .line 2163
    iget-object v2, v6, Lio/sentry/protocol/profiling/SentryProfile;->j:Ljava/util/List;

    .line 2164
    .line 2165
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2166
    .line 2167
    .line 2168
    move-object/from16 v0, p0

    .line 2169
    .line 2170
    move-object/from16 v2, p1

    .line 2171
    .line 2172
    move/from16 v4, v17

    .line 2173
    .line 2174
    move-object/from16 v5, v20

    .line 2175
    .line 2176
    move-object/from16 v8, v28

    .line 2177
    .line 2178
    goto/16 :goto_2b

    .line 2179
    .line 2180
    :cond_5b
    move/from16 v17, v4

    .line 2181
    .line 2182
    move-object/from16 v20, v5

    .line 2183
    .line 2184
    move-object/from16 v28, v8

    .line 2185
    .line 2186
    iput-object v7, v6, Lio/sentry/protocol/profiling/SentryProfile;->l:Ljava/util/List;

    .line 2187
    .line 2188
    iput-object v12, v6, Lio/sentry/protocol/profiling/SentryProfile;->k:Ljava/util/List;

    .line 2189
    .line 2190
    new-instance v0, Lio/sentry/protocol/profiling/SentryThreadMetadata;

    .line 2191
    .line 2192
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2193
    .line 2194
    .line 2195
    move-object/from16 v2, v21

    .line 2196
    .line 2197
    iput-object v2, v0, Lio/sentry/protocol/profiling/SentryThreadMetadata;->j:Ljava/lang/String;

    .line 2198
    .line 2199
    const/4 v2, 0x5

    .line 2200
    iput v2, v0, Lio/sentry/protocol/profiling/SentryThreadMetadata;->k:I

    .line 2201
    .line 2202
    invoke-static {v15, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 2203
    .line 2204
    .line 2205
    move-result-object v0

    .line 2206
    iput-object v0, v6, Lio/sentry/protocol/profiling/SentryProfile;->m:Ljava/util/Map;

    .line 2207
    .line 2208
    new-instance v29, Lio/sentry/ProfileChunk;

    .line 2209
    .line 2210
    new-instance v30, Lio/sentry/protocol/SentryId;

    .line 2211
    .line 2212
    invoke-direct/range {v30 .. v30}, Lio/sentry/protocol/SentryId;-><init>()V

    .line 2213
    .line 2214
    .line 2215
    new-instance v31, Lio/sentry/protocol/SentryId;

    .line 2216
    .line 2217
    invoke-direct/range {v31 .. v31}, Lio/sentry/protocol/SentryId;-><init>()V

    .line 2218
    .line 2219
    .line 2220
    new-instance v0, Ljava/util/HashMap;

    .line 2221
    .line 2222
    const/4 v13, 0x0

    .line 2223
    invoke-direct {v0, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 2224
    .line 2225
    .line 2226
    long-to-double v4, v10

    .line 2227
    div-double v4, v4, v22

    .line 2228
    .line 2229
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 2230
    .line 2231
    .line 2232
    move-result-object v34

    .line 2233
    const-string v35, "java"

    .line 2234
    .line 2235
    iget-object v2, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->k:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2236
    .line 2237
    const/16 v32, 0x0

    .line 2238
    .line 2239
    move-object/from16 v33, v0

    .line 2240
    .line 2241
    move-object/from16 v36, v2

    .line 2242
    .line 2243
    invoke-direct/range {v29 .. v36}, Lio/sentry/ProfileChunk;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Ljava/io/File;Ljava/util/Map;Ljava/lang/Double;Ljava/lang/String;Lio/sentry/SentryOptions;)V

    .line 2244
    .line 2245
    .line 2246
    move-object/from16 v0, v29

    .line 2247
    .line 2248
    iput-object v6, v0, Lio/sentry/ProfileChunk;->v:Lio/sentry/protocol/profiling/SentryProfile;

    .line 2249
    .line 2250
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 2251
    .line 2252
    .line 2253
    move-result-object v2

    .line 2254
    invoke-interface {v2, v0}, Lio/sentry/IScopes;->h(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;

    .line 2255
    .line 2256
    .line 2257
    move-result-object v2

    .line 2258
    sget-object v4, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2259
    .line 2260
    invoke-virtual {v4, v2}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 2261
    .line 2262
    .line 2263
    move-result v2

    .line 2264
    if-eqz v2, :cond_5c

    .line 2265
    .line 2266
    const/4 v0, 0x0

    .line 2267
    goto :goto_2f

    .line 2268
    :cond_5c
    iget-object v0, v0, Lio/sentry/ProfileChunk;->k:Lio/sentry/protocol/SentryId;

    .line 2269
    .line 2270
    :goto_2f
    iget-object v2, v3, Lio/sentry/android/core/anr/AggregatedStackTrace;->c:[Ljava/lang/StackTraceElement;

    .line 2271
    .line 2272
    iget v4, v3, Lio/sentry/android/core/anr/AggregatedStackTrace;->d:I

    .line 2273
    .line 2274
    iget v3, v3, Lio/sentry/android/core/anr/AggregatedStackTrace;->e:I

    .line 2275
    .line 2276
    add-int/lit8 v3, v3, 0x1

    .line 2277
    .line 2278
    invoke-static {v2, v4, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 2279
    .line 2280
    .line 2281
    move-result-object v2

    .line 2282
    check-cast v2, [Ljava/lang/StackTraceElement;

    .line 2283
    .line 2284
    array-length v3, v2

    .line 2285
    if-lez v3, :cond_5e

    .line 2286
    .line 2287
    const/16 v18, 0x0

    .line 2288
    .line 2289
    aget-object v3, v2, v18

    .line 2290
    .line 2291
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2292
    .line 2293
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2294
    .line 2295
    .line 2296
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 2297
    .line 2298
    .line 2299
    move-result-object v5

    .line 2300
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2301
    .line 2302
    .line 2303
    const-string v5, "."

    .line 2304
    .line 2305
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    .line 2307
    .line 2308
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 2309
    .line 2310
    .line 2311
    move-result-object v3

    .line 2312
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2313
    .line 2314
    .line 2315
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2316
    .line 2317
    .line 2318
    move-result-object v3

    .line 2319
    new-instance v4, Lio/sentry/android/core/ApplicationNotResponding;

    .line 2320
    .line 2321
    invoke-direct {v4, v3}, Lio/sentry/android/core/ApplicationNotResponding;-><init>(Ljava/lang/String;)V

    .line 2322
    .line 2323
    .line 2324
    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 2325
    .line 2326
    .line 2327
    new-instance v2, Lio/sentry/protocol/Mechanism;

    .line 2328
    .line 2329
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2330
    .line 2331
    .line 2332
    move-object/from16 v3, v19

    .line 2333
    .line 2334
    iput-object v3, v2, Lio/sentry/protocol/Mechanism;->j:Ljava/lang/String;

    .line 2335
    .line 2336
    new-instance v6, Lio/sentry/exception/ExceptionMechanismException;

    .line 2337
    .line 2338
    const/4 v3, 0x0

    .line 2339
    const/4 v13, 0x0

    .line 2340
    invoke-direct {v6, v2, v4, v3, v13}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    .line 2341
    .line 2342
    .line 2343
    iget-object v5, v1, Lio/sentry/android/core/ApplicationExitInfoEventProcessor;->m:Lio/sentry/SentryExceptionFactory;

    .line 2344
    .line 2345
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2346
    .line 2347
    .line 2348
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2349
    .line 2350
    const/4 v1, -0x1

    .line 2351
    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2352
    .line 2353
    .line 2354
    new-instance v8, Ljava/util/HashSet;

    .line 2355
    .line 2356
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2357
    .line 2358
    .line 2359
    new-instance v9, Ljava/util/ArrayDeque;

    .line 2360
    .line 2361
    invoke-direct {v9}, Ljava/util/ArrayDeque;-><init>()V

    .line 2362
    .line 2363
    .line 2364
    const/4 v10, 0x0

    .line 2365
    invoke-virtual/range {v5 .. v10}, Lio/sentry/SentryExceptionFactory;->a(Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/HashSet;Ljava/util/ArrayDeque;Ljava/lang/String;)V

    .line 2366
    .line 2367
    .line 2368
    new-instance v1, Ljava/util/ArrayList;

    .line 2369
    .line 2370
    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2371
    .line 2372
    .line 2373
    move-object/from16 v2, p1

    .line 2374
    .line 2375
    invoke-virtual {v2, v1}, Lio/sentry/SentryEvent;->h(Ljava/util/ArrayList;)V

    .line 2376
    .line 2377
    .line 2378
    if-eqz v0, :cond_5d

    .line 2379
    .line 2380
    new-instance v1, Lio/sentry/ProfileContext;

    .line 2381
    .line 2382
    invoke-direct {v1, v0}, Lio/sentry/ProfileContext;-><init>(Lio/sentry/protocol/SentryId;)V

    .line 2383
    .line 2384
    .line 2385
    const-string v0, "profile"

    .line 2386
    .line 2387
    move-object/from16 v3, v28

    .line 2388
    .line 2389
    invoke-virtual {v3, v1, v0}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2390
    .line 2391
    .line 2392
    goto :goto_33

    .line 2393
    :cond_5d
    :goto_30
    move-object/from16 v3, v28

    .line 2394
    .line 2395
    goto :goto_33

    .line 2396
    :cond_5e
    move-object/from16 v2, p1

    .line 2397
    .line 2398
    goto :goto_30

    .line 2399
    :goto_31
    invoke-virtual/range {v20 .. v20}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 2400
    .line 2401
    .line 2402
    move-result-object v0

    .line 2403
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 2404
    .line 2405
    const-string v4, "ANR profile found, but doesn\'t match"

    .line 2406
    .line 2407
    const/4 v13, 0x0

    .line 2408
    new-array v5, v13, [Ljava/lang/Object;

    .line 2409
    .line 2410
    invoke-interface {v0, v1, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2411
    .line 2412
    .line 2413
    goto :goto_33

    .line 2414
    :catchall_c
    move-exception v0

    .line 2415
    move-object/from16 v20, v5

    .line 2416
    .line 2417
    invoke-static {v9}, Lio/sentry/android/core/anr/AnrProfileRotationHelper;->a(Ljava/io/File;)Z

    .line 2418
    .line 2419
    .line 2420
    move-result v1

    .line 2421
    if-nez v1, :cond_5f

    .line 2422
    .line 2423
    invoke-virtual/range {v20 .. v20}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 2424
    .line 2425
    .line 2426
    move-result-object v1

    .line 2427
    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 2428
    .line 2429
    const/4 v13, 0x0

    .line 2430
    new-array v3, v13, [Ljava/lang/Object;

    .line 2431
    .line 2432
    invoke-interface {v1, v2, v6, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2433
    .line 2434
    .line 2435
    :cond_5f
    throw v0

    .line 2436
    :cond_60
    :goto_32
    move/from16 v17, v4

    .line 2437
    .line 2438
    move-object/from16 v20, v5

    .line 2439
    .line 2440
    move-object v3, v8

    .line 2441
    :goto_33
    iget-object v0, v2, Lio/sentry/SentryEvent;->F:Ljava/util/List;

    .line 2442
    .line 2443
    if-eqz v0, :cond_61

    .line 2444
    .line 2445
    goto/16 :goto_36

    .line 2446
    .line 2447
    :cond_61
    invoke-virtual/range {v20 .. v20}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableAnrFingerprinting()Z

    .line 2448
    .line 2449
    .line 2450
    move-result v0

    .line 2451
    const-string v1, "foreground-anr"

    .line 2452
    .line 2453
    const-string v4, "background-anr"

    .line 2454
    .line 2455
    if-eqz v0, :cond_69

    .line 2456
    .line 2457
    invoke-virtual {v2}, Lio/sentry/SentryEvent;->d()Ljava/util/ArrayList;

    .line 2458
    .line 2459
    .line 2460
    move-result-object v0

    .line 2461
    if-eqz v0, :cond_69

    .line 2462
    .line 2463
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 2464
    .line 2465
    .line 2466
    move-result v5

    .line 2467
    if-eqz v5, :cond_62

    .line 2468
    .line 2469
    goto :goto_35

    .line 2470
    :cond_62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2471
    .line 2472
    .line 2473
    move-result-object v0

    .line 2474
    :cond_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 2475
    .line 2476
    .line 2477
    move-result v5

    .line 2478
    if-eqz v5, :cond_67

    .line 2479
    .line 2480
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2481
    .line 2482
    .line 2483
    move-result-object v5

    .line 2484
    check-cast v5, Lio/sentry/protocol/SentryException;

    .line 2485
    .line 2486
    iget-object v5, v5, Lio/sentry/protocol/SentryException;->n:Lio/sentry/protocol/SentryStackTrace;

    .line 2487
    .line 2488
    if-eqz v5, :cond_63

    .line 2489
    .line 2490
    iget-object v5, v5, Lio/sentry/protocol/SentryStackTrace;->j:Ljava/util/List;

    .line 2491
    .line 2492
    if-eqz v5, :cond_63

    .line 2493
    .line 2494
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 2495
    .line 2496
    .line 2497
    move-result v6

    .line 2498
    if-nez v6, :cond_63

    .line 2499
    .line 2500
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2501
    .line 2502
    .line 2503
    move-result-object v5

    .line 2504
    :cond_64
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 2505
    .line 2506
    .line 2507
    move-result v6

    .line 2508
    if-eqz v6, :cond_63

    .line 2509
    .line 2510
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2511
    .line 2512
    .line 2513
    move-result-object v6

    .line 2514
    check-cast v6, Lio/sentry/protocol/SentryStackFrame;

    .line 2515
    .line 2516
    iget-object v7, v6, Lio/sentry/protocol/SentryStackFrame;->t:Ljava/lang/Boolean;

    .line 2517
    .line 2518
    if-eqz v7, :cond_65

    .line 2519
    .line 2520
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2521
    .line 2522
    .line 2523
    move-result v7

    .line 2524
    if-eqz v7, :cond_65

    .line 2525
    .line 2526
    goto :goto_35

    .line 2527
    :cond_65
    iget-object v6, v6, Lio/sentry/protocol/SentryStackFrame;->o:Ljava/lang/String;

    .line 2528
    .line 2529
    if-eqz v6, :cond_64

    .line 2530
    .line 2531
    sget-object v7, Lio/sentry/android/core/anr/AnrCulpritIdentifier;->a:Ljava/util/ArrayList;

    .line 2532
    .line 2533
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2534
    .line 2535
    .line 2536
    move-result-object v7

    .line 2537
    :cond_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 2538
    .line 2539
    .line 2540
    move-result v8

    .line 2541
    if-eqz v8, :cond_69

    .line 2542
    .line 2543
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2544
    .line 2545
    .line 2546
    move-result-object v8

    .line 2547
    check-cast v8, Ljava/lang/String;

    .line 2548
    .line 2549
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2550
    .line 2551
    .line 2552
    move-result v8

    .line 2553
    if-eqz v8, :cond_66

    .line 2554
    .line 2555
    goto :goto_34

    .line 2556
    :cond_67
    if-eqz v17, :cond_68

    .line 2557
    .line 2558
    move-object v1, v4

    .line 2559
    :cond_68
    const-string v0, "system-frames-only-anr"

    .line 2560
    .line 2561
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 2562
    .line 2563
    .line 2564
    move-result-object v0

    .line 2565
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2566
    .line 2567
    .line 2568
    move-result-object v0

    .line 2569
    invoke-virtual {v2, v0}, Lio/sentry/SentryEvent;->i(Ljava/util/List;)V

    .line 2570
    .line 2571
    .line 2572
    goto :goto_36

    .line 2573
    :cond_69
    :goto_35
    if-eqz v17, :cond_6a

    .line 2574
    .line 2575
    move-object v1, v4

    .line 2576
    :cond_6a
    const-string v0, "{{ default }}"

    .line 2577
    .line 2578
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 2579
    .line 2580
    .line 2581
    move-result-object v0

    .line 2582
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2583
    .line 2584
    .line 2585
    move-result-object v0

    .line 2586
    invoke-virtual {v2, v0}, Lio/sentry/SentryEvent;->i(Ljava/util/List;)V

    .line 2587
    .line 2588
    .line 2589
    :goto_36
    xor-int/lit8 v0, v17, 0x1

    .line 2590
    .line 2591
    invoke-virtual {v3}, Lio/sentry/protocol/Contexts;->d()Lio/sentry/protocol/App;

    .line 2592
    .line 2593
    .line 2594
    move-result-object v1

    .line 2595
    if-nez v1, :cond_6b

    .line 2596
    .line 2597
    new-instance v1, Lio/sentry/protocol/App;

    .line 2598
    .line 2599
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2600
    .line 2601
    .line 2602
    invoke-virtual {v3, v1}, Lio/sentry/protocol/Contexts;->m(Lio/sentry/protocol/App;)V

    .line 2603
    .line 2604
    .line 2605
    :cond_6b
    iget-object v3, v1, Lio/sentry/protocol/App;->t:Ljava/lang/Boolean;

    .line 2606
    .line 2607
    if-nez v3, :cond_6c

    .line 2608
    .line 2609
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2610
    .line 2611
    .line 2612
    move-result-object v0

    .line 2613
    iput-object v0, v1, Lio/sentry/protocol/App;->t:Ljava/lang/Boolean;

    .line 2614
    .line 2615
    :cond_6c
    return-object v2
.end method

.method public final n(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 0

    .line 1
    return-object p1
.end method
