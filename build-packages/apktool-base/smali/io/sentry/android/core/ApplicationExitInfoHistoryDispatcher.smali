.class final Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;,
        Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;
    }
.end annotation


# instance fields
.field public final j:Landroid/content/Context;

.field public final k:Lio/sentry/ScopesAdapter;

.field public final l:Lio/sentry/android/core/SentryAndroidOptions;

.field public final m:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

.field public final n:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/transport/CurrentDateProvider;Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object p1, v0

    .line 11
    :cond_0
    iput-object p1, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->j:Landroid/content/Context;

    .line 12
    .line 13
    sget-object p1, Lio/sentry/ScopesAdapter;->a:Lio/sentry/ScopesAdapter;

    .line 14
    .line 15
    iput-object p1, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->k:Lio/sentry/ScopesAdapter;

    .line 16
    .line 17
    iput-object p2, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 18
    .line 19
    iput-object p4, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->m:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide p1

    .line 28
    const-wide p3, 0x1d4a2b400L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    sub-long/2addr p1, p3

    .line 34
    iput-wide p1, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->n:J

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/ApplicationExitInfo;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->m:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->e(Landroid/app/ApplicationExitInfo;Z)Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p1, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->a:Lio/sentry/SentryEvent;

    .line 11
    .line 12
    iget-object v1, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->k:Lio/sentry/ScopesAdapter;

    .line 13
    .line 14
    iget-object v2, p1, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->b:Lio/sentry/Hint;

    .line 15
    .line 16
    invoke-virtual {v1, p2, v2}, Lio/sentry/ScopesAdapter;->x(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object p1, p1, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$Report;->c:Lio/sentry/hints/BlockingFlushHint;

    .line 29
    .line 30
    invoke-virtual {p1}, Lio/sentry/hints/BlockingFlushHint;->e()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 37
    .line 38
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 43
    .line 44
    invoke-interface {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->c()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object p2, p2, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 49
    .line 50
    filled-new-array {v0, p2}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    const-string v0, "Timed out waiting to flush %s event to disk. Event: %s"

    .line 55
    .line 56
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    return-void
.end method

.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->j:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iget-object v2, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->l:Lio/sentry/android/core/SentryAndroidOptions;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 21
    .line 22
    const-string v2, "Failed to retrieve ActivityManager."

    .line 23
    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {v0}, Lqi;->e(Landroid/app/ActivityManager;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 45
    .line 46
    const-string v2, "No records in historical exit reasons."

    .line 47
    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    .line 49
    .line 50
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    instance-of v4, v3, Lio/sentry/cache/EnvelopeCache;

    .line 59
    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isEnableAutoSessionTracking()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    check-cast v3, Lio/sentry/cache/EnvelopeCache;

    .line 69
    .line 70
    invoke-virtual {v3}, Lio/sentry/cache/EnvelopeCache;->g()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_2

    .line 75
    .line 76
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 81
    .line 82
    const-string v6, "Timed out waiting to flush previous session to its own file."

    .line 83
    .line 84
    new-array v7, v1, [Ljava/lang/Object;

    .line 85
    .line 86
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v3, Lio/sentry/cache/EnvelopeCache;->o:Ljava/util/concurrent/CountDownLatch;

    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 92
    .line 93
    .line 94
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->m:Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;

    .line 100
    .line 101
    invoke-interface {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->b()Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-eqz v6, :cond_4

    .line 114
    .line 115
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {v6}, Lj;->e(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v6}, Lj;->b(Landroid/app/ApplicationExitInfo;)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-interface {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->a()I

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-ne v7, v8, :cond_3

    .line 132
    .line 133
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    const/4 v6, 0x0

    .line 138
    :goto_0
    if-nez v6, :cond_5

    .line 139
    .line 140
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 145
    .line 146
    invoke-interface {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->c()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v2, "No %ss have been found in the historical exit reasons list."

    .line 155
    .line 156
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_5
    invoke-static {v6}, Lj;->d(Landroid/app/ApplicationExitInfo;)J

    .line 161
    .line 162
    .line 163
    move-result-wide v7

    .line 164
    iget-wide v9, p0, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->n:J

    .line 165
    .line 166
    cmp-long v5, v7, v9

    .line 167
    .line 168
    if-gez v5, :cond_6

    .line 169
    .line 170
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 175
    .line 176
    invoke-interface {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->c()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    const-string v2, "Latest %s happened too long ago, returning early."

    .line 185
    .line 186
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_6
    if-eqz v4, :cond_7

    .line 191
    .line 192
    invoke-static {v6}, Lj;->d(Landroid/app/ApplicationExitInfo;)J

    .line 193
    .line 194
    .line 195
    move-result-wide v7

    .line 196
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 197
    .line 198
    .line 199
    move-result-wide v11

    .line 200
    cmp-long v5, v7, v11

    .line 201
    .line 202
    if-gtz v5, :cond_7

    .line 203
    .line 204
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 209
    .line 210
    invoke-interface {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->c()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string v2, "Latest %s has already been reported, returning early."

    .line 219
    .line 220
    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_7
    invoke-interface {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->d()Z

    .line 225
    .line 226
    .line 227
    move-result v5

    .line 228
    if-eqz v5, :cond_b

    .line 229
    .line 230
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    :cond_8
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-eqz v5, :cond_b

    .line 242
    .line 243
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    invoke-static {v5}, Lj;->e(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-static {v5}, Lj;->b(Landroid/app/ApplicationExitInfo;)I

    .line 252
    .line 253
    .line 254
    move-result v7

    .line 255
    invoke-interface {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->a()I

    .line 256
    .line 257
    .line 258
    move-result v8

    .line 259
    if-ne v7, v8, :cond_8

    .line 260
    .line 261
    invoke-static {v5}, Lj;->d(Landroid/app/ApplicationExitInfo;)J

    .line 262
    .line 263
    .line 264
    move-result-wide v7

    .line 265
    cmp-long v7, v7, v9

    .line 266
    .line 267
    if-gez v7, :cond_9

    .line 268
    .line 269
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 274
    .line 275
    invoke-interface {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->c()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    filled-new-array {v11, v5}, [Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    const-string v11, "%s happened too long ago %s."

    .line 284
    .line 285
    invoke-interface {v7, v8, v11, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    goto :goto_1

    .line 289
    :cond_9
    if-eqz v4, :cond_a

    .line 290
    .line 291
    invoke-static {v5}, Lj;->d(Landroid/app/ApplicationExitInfo;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v7

    .line 295
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 296
    .line 297
    .line 298
    move-result-wide v11

    .line 299
    cmp-long v7, v7, v11

    .line 300
    .line 301
    if-gtz v7, :cond_a

    .line 302
    .line 303
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    sget-object v8, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 308
    .line 309
    invoke-interface {v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher$ApplicationExitInfoPolicy;->c()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    filled-new-array {v11, v5}, [Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    const-string v11, "%s has already been reported %s."

    .line 318
    .line 319
    invoke-interface {v7, v8, v11, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    goto :goto_1

    .line 323
    :cond_a
    invoke-virtual {p0, v5, v1}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->a(Landroid/app/ApplicationExitInfo;Z)V

    .line 324
    .line 325
    .line 326
    goto :goto_1

    .line 327
    :cond_b
    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, v6, v0}, Lio/sentry/android/core/ApplicationExitInfoHistoryDispatcher;->a(Landroid/app/ApplicationExitInfo;Z)V

    .line 329
    .line 330
    .line 331
    return-void
.end method
