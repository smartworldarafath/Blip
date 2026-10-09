.class public abstract Lio/sentry/Sentry;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static volatile a:Lio/sentry/IScopesStorage;

.field public static volatile b:Lio/sentry/IScopes;

.field public static final c:Lio/sentry/Scope;

.field public static volatile d:Z

.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:J

.field public static final g:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lio/sentry/NoOpScopesStorage;->a:Lio/sentry/NoOpScopesStorage;

    .line 2
    .line 3
    sput-object v0, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 4
    .line 5
    sget-object v0, Lio/sentry/NoOpScopes;->b:Lio/sentry/NoOpScopes;

    .line 6
    .line 7
    sput-object v0, Lio/sentry/Sentry;->b:Lio/sentry/IScopes;

    .line 8
    .line 9
    new-instance v0, Lio/sentry/Scope;

    .line 10
    .line 11
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lio/sentry/Scope;-><init>(Lio/sentry/SentryOptions;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lio/sentry/Sentry;->c:Lio/sentry/Scope;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sput-boolean v0, Lio/sentry/Sentry;->d:Z

    .line 22
    .line 23
    const-string v0, "UTF-8"

    .line 24
    .line 25
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lio/sentry/Sentry;->e:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    sput-wide v0, Lio/sentry/Sentry;->f:J

    .line 36
    .line 37
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lio/sentry/Sentry;->g:Lio/sentry/util/AutoClosableReentrantLock;

    .line 43
    .line 44
    return-void
.end method

.method public static a()V
    .locals 3

    .line 1
    sget-object v0, Lio/sentry/Sentry;->g:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lio/sentry/NoOpScopes;->b:Lio/sentry/NoOpScopes;

    .line 12
    .line 13
    sput-object v2, Lio/sentry/Sentry;->b:Lio/sentry/IScopes;

    .line 14
    .line 15
    sget-object v2, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 16
    .line 17
    invoke-interface {v2}, Lio/sentry/IScopesStorage;->close()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {v1, v2}, Lio/sentry/IScopes;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    throw v1
.end method

.method public static b()Lio/sentry/IScopes;
    .locals 2

    .line 1
    sget-boolean v0, Lio/sentry/Sentry;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/sentry/Sentry;->b:Lio/sentry/IScopes;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 9
    .line 10
    invoke-interface {v0}, Lio/sentry/IScopesStorage;->get()Lio/sentry/IScopes;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Lio/sentry/IScopes;->q()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return-object v0

    .line 24
    :cond_2
    :goto_0
    sget-object v0, Lio/sentry/Sentry;->b:Lio/sentry/IScopes;

    .line 25
    .line 26
    const-string v1, "getCurrentScopes"

    .line 27
    .line 28
    invoke-interface {v0, v1}, Lio/sentry/IScopes;->v(Ljava/lang/String;)Lio/sentry/IScopes;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 33
    .line 34
    invoke-interface {v1, v0}, Lio/sentry/IScopesStorage;->a(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static c(Lio/sentry/OptionsContainer;Lio/sentry/android/core/f;)V
    .locals 8

    .line 1
    const-class p0, Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lio/sentry/SentryOptions;

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {p1, p0}, Lio/sentry/android/core/f;->a(Lio/sentry/SentryOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 24
    .line 25
    const-string v3, "Error in the \'OptionsConfiguration.configure\' callback."

    .line 26
    .line 27
    invoke-interface {v1, v2, v3, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const-string p1, "You are running Android. Please, use SentryAndroid.init. "

    .line 31
    .line 32
    sget-object v1, Lio/sentry/Sentry;->g:Lio/sentry/util/AutoClosableReentrantLock;

    .line 33
    .line 34
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "io.sentry.android.core.SentryAndroidOptions"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    sget-boolean v2, Lio/sentry/util/Platform;->a:Z

    .line 55
    .line 56
    if-nez v2, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v0

    .line 77
    :catchall_1
    move-exception p0

    .line 78
    goto/16 :goto_c

    .line 79
    .line 80
    :cond_1
    :goto_1
    invoke-static {p0}, Lio/sentry/Sentry;->f(Lio/sentry/SentryOptions;)Z

    .line 81
    .line 82
    .line 83
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    :goto_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_b

    .line 90
    .line 91
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isGlobalHubMode()Ljava/lang/Boolean;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const/4 v2, 0x1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    goto :goto_3

    .line 103
    :cond_3
    move p1, v2

    .line 104
    :goto_3
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    sget-object v4, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 109
    .line 110
    const-string v5, "GlobalHubMode: \'%s\'"

    .line 111
    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    sput-boolean p1, Lio/sentry/Sentry;->d:Z

    .line 124
    .line 125
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getFatalLogger()Lio/sentry/ILogger;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    instance-of p1, p1, Lio/sentry/NoOpLogger;

    .line 130
    .line 131
    if-eqz p1, :cond_4

    .line 132
    .line 133
    new-instance p1, Lio/sentry/SystemOutLogger;

    .line 134
    .line 135
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setFatalLogger(Lio/sentry/ILogger;)V

    .line 139
    .line 140
    .line 141
    :cond_4
    sget-object p1, Lio/sentry/Sentry;->c:Lio/sentry/Scope;

    .line 142
    .line 143
    iget-object v3, p1, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 144
    .line 145
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-interface {v4}, Lio/sentry/IScopes;->isEnabled()Z

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    invoke-static {v3, p0, v4}, Lio/sentry/util/InitUtil;->a(Lio/sentry/SentryOptions;Lio/sentry/SentryOptions;Z)Z

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    const/4 v4, 0x0

    .line 158
    if-eqz v3, :cond_a

    .line 159
    .line 160
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-interface {v3}, Lio/sentry/IScopes;->isEnabled()Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-eqz v3, :cond_5

    .line 169
    .line 170
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 175
    .line 176
    const-string v6, "Sentry has been already initialized. Previous configuration will be overwritten."

    .line 177
    .line 178
    new-array v7, v4, [Ljava/lang/Object;

    .line 179
    .line 180
    invoke-interface {v3, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_5
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->activate()V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lio/sentry/Sentry;->b()Lio/sentry/IScopes;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-interface {v3, v2}, Lio/sentry/IScopes;->b(Z)V

    .line 191
    .line 192
    .line 193
    iput-object p0, p1, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 194
    .line 195
    iget-object v3, p1, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 196
    .line 197
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    invoke-static {v5}, Lio/sentry/Scope;->e(I)Ljava/util/Queue;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    iput-object v5, p1, Lio/sentry/Scope;->h:Ljava/util/Queue;

    .line 206
    .line 207
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_6

    .line 216
    .line 217
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Lio/sentry/Breadcrumb;

    .line 222
    .line 223
    invoke-virtual {p1, v5, v0}, Lio/sentry/Scope;->a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 224
    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_6
    new-instance v0, Lio/sentry/Scope;

    .line 228
    .line 229
    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/SentryOptions;)V

    .line 230
    .line 231
    .line 232
    new-instance v3, Lio/sentry/Scope;

    .line 233
    .line 234
    invoke-direct {v3, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/SentryOptions;)V

    .line 235
    .line 236
    .line 237
    new-instance v5, Lio/sentry/Scopes;

    .line 238
    .line 239
    invoke-direct {v5, v0, v3, p1}, Lio/sentry/Scopes;-><init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;)V

    .line 240
    .line 241
    .line 242
    sput-object v5, Lio/sentry/Sentry;->b:Lio/sentry/IScopes;

    .line 243
    .line 244
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isDebug()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_7

    .line 249
    .line 250
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    instance-of v0, v0, Lio/sentry/NoOpLogger;

    .line 255
    .line 256
    if-eqz v0, :cond_7

    .line 257
    .line 258
    new-instance v0, Lio/sentry/SystemOutLogger;

    .line 259
    .line 260
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setLogger(Lio/sentry/ILogger;)V

    .line 264
    .line 265
    .line 266
    :cond_7
    invoke-static {p0}, Lio/sentry/Sentry;->e(Lio/sentry/SentryOptions;)V

    .line 267
    .line 268
    .line 269
    sget-object v0, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 270
    .line 271
    sget-object v3, Lio/sentry/Sentry;->b:Lio/sentry/IScopes;

    .line 272
    .line 273
    invoke-interface {v0, v3}, Lio/sentry/IScopesStorage;->a(Lio/sentry/IScopes;)Lio/sentry/ISentryLifecycleToken;

    .line 274
    .line 275
    .line 276
    invoke-static {p0}, Lio/sentry/Sentry;->d(Lio/sentry/SentryOptions;)V

    .line 277
    .line 278
    .line 279
    new-instance v0, Lio/sentry/SentryClient;

    .line 280
    .line 281
    invoke-direct {v0, p0}, Lio/sentry/SentryClient;-><init>(Lio/sentry/SentryOptions;)V

    .line 282
    .line 283
    .line 284
    iput-object v0, p1, Lio/sentry/Scope;->v:Lio/sentry/ISentryClient;

    .line 285
    .line 286
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-interface {p1}, Lio/sentry/ISentryExecutorService;->isClosed()Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_8

    .line 295
    .line 296
    new-instance p1, Lio/sentry/SentryExecutorService;

    .line 297
    .line 298
    invoke-direct {p1, p0}, Lio/sentry/SentryExecutorService;-><init>(Lio/sentry/SentryOptions;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setExecutorService(Lio/sentry/ISentryExecutorService;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-interface {p1}, Lio/sentry/ISentryExecutorService;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 309
    .line 310
    .line 311
    :cond_8
    :try_start_3
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    new-instance v0, Lio/sentry/f;

    .line 316
    .line 317
    invoke-direct {v0, p0, v4}, Lio/sentry/f;-><init>(Lio/sentry/SentryOptions;I)V

    .line 318
    .line 319
    .line 320
    invoke-interface {p1, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 321
    .line 322
    .line 323
    goto :goto_5

    .line 324
    :catch_0
    move-exception p1

    .line 325
    :try_start_4
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 330
    .line 331
    const-string v4, "Failed to call the executor. Lazy fields will not be loaded. Did you call Sentry.close()?"

    .line 332
    .line 333
    invoke-interface {v0, v3, v4, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 334
    .line 335
    .line 336
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    new-instance v0, Lio/sentry/MovePreviousSession;

    .line 341
    .line 342
    invoke-direct {v0, p0}, Lio/sentry/MovePreviousSession;-><init>(Lio/sentry/SentryOptions;)V

    .line 343
    .line 344
    .line 345
    invoke-interface {p1, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 346
    .line 347
    .line 348
    goto :goto_6

    .line 349
    :catchall_2
    move-exception p1

    .line 350
    :try_start_6
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 355
    .line 356
    const-string v4, "Failed to move previous session."

    .line 357
    .line 358
    invoke-interface {v0, v3, v4, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    :goto_6
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-eqz v0, :cond_9

    .line 374
    .line 375
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Lio/sentry/Integration;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 380
    .line 381
    :try_start_7
    invoke-interface {v0, p0}, Lio/sentry/Integration;->E(Lio/sentry/SentryOptions;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 382
    .line 383
    .line 384
    goto :goto_7

    .line 385
    :catchall_3
    move-exception v3

    .line 386
    :try_start_8
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 387
    .line 388
    .line 389
    move-result-object v4

    .line 390
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 391
    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v7, "Failed to register the integration "

    .line 398
    .line 399
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-interface {v4, v5, v0, v3}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 418
    .line 419
    .line 420
    goto :goto_7

    .line 421
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    new-instance v0, Lio/sentry/f;

    .line 426
    .line 427
    const/4 v3, 0x2

    .line 428
    invoke-direct {v0, p0, v3}, Lio/sentry/f;-><init>(Lio/sentry/SentryOptions;I)V

    .line 429
    .line 430
    .line 431
    invoke-interface {p1, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 432
    .line 433
    .line 434
    goto :goto_8

    .line 435
    :catchall_4
    move-exception p1

    .line 436
    :try_start_a
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 441
    .line 442
    const-string v4, "Failed to notify options observers."

    .line 443
    .line 444
    invoke-interface {v0, v3, v4, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 445
    .line 446
    .line 447
    :goto_8
    :try_start_b
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 448
    .line 449
    .line 450
    move-result-object p1

    .line 451
    new-instance v0, Lio/sentry/PreviousSessionFinalizer;

    .line 452
    .line 453
    invoke-direct {v0, p0}, Lio/sentry/PreviousSessionFinalizer;-><init>(Lio/sentry/SentryOptions;)V

    .line 454
    .line 455
    .line 456
    invoke-interface {p1, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 457
    .line 458
    .line 459
    goto :goto_9

    .line 460
    :catchall_5
    move-exception p1

    .line 461
    :try_start_c
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 466
    .line 467
    const-string v4, "Failed to finalize previous session."

    .line 468
    .line 469
    invoke-interface {v0, v3, v4, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    .line 471
    .line 472
    :goto_9
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 473
    .line 474
    .line 475
    move-result-object p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 476
    :try_start_d
    new-instance v0, Lio/sentry/f;

    .line 477
    .line 478
    invoke-direct {v0, p0, v2}, Lio/sentry/f;-><init>(Lio/sentry/SentryOptions;I)V

    .line 479
    .line 480
    .line 481
    invoke-interface {p1, v0}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 482
    .line 483
    .line 484
    goto :goto_a

    .line 485
    :catchall_6
    move-exception p1

    .line 486
    :try_start_e
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 491
    .line 492
    const-string v3, "Failed to call the executor. App start profiling config will not be changed. Did you call Sentry.close()?"

    .line 493
    .line 494
    invoke-interface {v0, v2, v3, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    .line 496
    .line 497
    :goto_a
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 498
    .line 499
    .line 500
    move-result-object p1

    .line 501
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 502
    .line 503
    const-string v2, "Using openTelemetryMode %s"

    .line 504
    .line 505
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-interface {p1, v0, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    const-string v2, "Using span factory %s"

    .line 521
    .line 522
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSpanFactory()Lio/sentry/ISpanFactory;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v3

    .line 538
    invoke-interface {p1, v0, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 542
    .line 543
    .line 544
    move-result-object p0

    .line 545
    const-string p1, "Using scopes storage %s"

    .line 546
    .line 547
    sget-object v2, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 548
    .line 549
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    move-result-object v2

    .line 561
    invoke-interface {p0, v0, p1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    goto/16 :goto_2

    .line 565
    .line 566
    :cond_a
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 567
    .line 568
    .line 569
    move-result-object p0

    .line 570
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 571
    .line 572
    const-string v0, "This init call has been ignored due to priority being too low."

    .line 573
    .line 574
    new-array v2, v4, [Ljava/lang/Object;

    .line 575
    .line 576
    invoke-interface {p0, p1, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 577
    .line 578
    .line 579
    goto/16 :goto_2

    .line 580
    .line 581
    :goto_b
    return-void

    .line 582
    :goto_c
    :try_start_f
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 583
    .line 584
    .line 585
    goto :goto_d

    .line 586
    :catchall_7
    move-exception p1

    .line 587
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 588
    .line 589
    .line 590
    :goto_d
    throw p0
.end method

.method public static d(Lio/sentry/SentryOptions;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "Initializing SDK with DSN: \'%s\'"

    .line 16
    .line 17
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOutboxPath()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string v2, "No outbox dir path is defined in options."

    .line 37
    .line 38
    new-array v4, v3, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    new-instance v1, Ljava/io/File;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getEnvelopeDiskCache()Lio/sentry/cache/IEnvelopeCache;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    instance-of v0, v0, Lio/sentry/transport/NoOpEnvelopeCache;

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    sget v0, Lio/sentry/cache/EnvelopeCache;->s:I

    .line 66
    .line 67
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getCacheDirPath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getMaxCacheItems()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 82
    .line 83
    const-string v2, "cacheDirPath is null, returning NoOpEnvelopeCache"

    .line 84
    .line 85
    new-array v4, v3, [Ljava/lang/Object;

    .line 86
    .line 87
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    sget-object v0, Lio/sentry/transport/NoOpEnvelopeCache;->j:Lio/sentry/transport/NoOpEnvelopeCache;

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    new-instance v2, Lio/sentry/cache/EnvelopeCache;

    .line 94
    .line 95
    invoke-direct {v2, p0, v0, v1}, Lio/sentry/cache/EnvelopeCache;-><init>(Lio/sentry/SentryOptions;Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    move-object v0, v2

    .line 99
    :goto_1
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setEnvelopeDiskCache(Lio/sentry/cache/IEnvelopeCache;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isProfilingEnabled()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    :cond_3
    if-eqz v0, :cond_4

    .line 119
    .line 120
    new-instance v1, Ljava/io/File;

    .line 121
    .line 122
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 126
    .line 127
    .line 128
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    new-instance v2, Lio/sentry/g;

    .line 133
    .line 134
    invoke-direct {v2, v3, v1}, Lio/sentry/g;-><init>(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v0, v2}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 147
    .line 148
    const-string v4, "Failed to call the executor. Old profiles will not be deleted. Did you call Sentry.close()?"

    .line 149
    .line 150
    invoke-interface {v1, v2, v4, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isSendModules()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-nez v1, :cond_5

    .line 162
    .line 163
    sget-object v0, Lio/sentry/internal/modules/NoOpModulesLoader;->a:Lio/sentry/internal/modules/NoOpModulesLoader;

    .line 164
    .line 165
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_5
    instance-of v0, v0, Lio/sentry/internal/modules/NoOpModulesLoader;

    .line 170
    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    new-instance v0, Lio/sentry/internal/modules/CompositeModulesLoader;

    .line 174
    .line 175
    new-instance v1, Lio/sentry/internal/modules/ManifestModulesLoader;

    .line 176
    .line 177
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-direct {v1, v2}, Lio/sentry/internal/modules/ManifestModulesLoader;-><init>(Lio/sentry/ILogger;)V

    .line 182
    .line 183
    .line 184
    new-instance v2, Lio/sentry/internal/modules/ResourcesModulesLoader;

    .line 185
    .line 186
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-direct {v2, v4}, Lio/sentry/internal/modules/ResourcesModulesLoader;-><init>(Lio/sentry/ILogger;)V

    .line 191
    .line 192
    .line 193
    const/4 v4, 0x2

    .line 194
    new-array v4, v4, [Lio/sentry/internal/modules/IModulesLoader;

    .line 195
    .line 196
    aput-object v1, v4, v3

    .line 197
    .line 198
    const/4 v1, 0x1

    .line 199
    aput-object v2, v4, v1

    .line 200
    .line 201
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-direct {v0, v1, v2}, Lio/sentry/internal/modules/CompositeModulesLoader;-><init>(Ljava/util/List;Lio/sentry/ILogger;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setModulesLoader(Lio/sentry/internal/modules/IModulesLoader;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    instance-of v0, v0, Lio/sentry/internal/debugmeta/NoOpDebugMetaLoader;

    .line 220
    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    new-instance v0, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;

    .line 224
    .line 225
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-direct {v0, v1}, Lio/sentry/internal/debugmeta/ResourcesDebugMetaLoader;-><init>(Lio/sentry/ILogger;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setDebugMetaLoader(Lio/sentry/internal/debugmeta/IDebugMetaLoader;)V

    .line 233
    .line 234
    .line 235
    :cond_7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDebugMetaLoader()Lio/sentry/internal/debugmeta/IDebugMetaLoader;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-interface {v0}, Lio/sentry/internal/debugmeta/IDebugMetaLoader;->a()Ljava/util/List;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    if-eqz v0, :cond_17

    .line 244
    .line 245
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getBundleIds()Ljava/util/Set;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    const/4 v2, -0x1

    .line 254
    const-string v4, ","

    .line 255
    .line 256
    if-eqz v1, :cond_9

    .line 257
    .line 258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v5, :cond_9

    .line 267
    .line 268
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    check-cast v5, Ljava/util/Properties;

    .line 273
    .line 274
    const-string v6, "io.sentry.bundle-ids"

    .line 275
    .line 276
    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 285
    .line 286
    const-string v8, "Bundle IDs found: %s"

    .line 287
    .line 288
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    invoke-interface {v6, v7, v8, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    if-eqz v5, :cond_8

    .line 296
    .line 297
    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    array-length v6, v5

    .line 302
    move v7, v3

    .line 303
    :goto_4
    if-ge v7, v6, :cond_8

    .line 304
    .line 305
    aget-object v8, v5, v7

    .line 306
    .line 307
    invoke-virtual {p0, v8}, Lio/sentry/SentryOptions;->addBundleId(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    add-int/lit8 v7, v7, 0x1

    .line 311
    .line 312
    goto :goto_4

    .line 313
    :cond_9
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    if-nez v1, :cond_b

    .line 318
    .line 319
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v5

    .line 327
    if-eqz v5, :cond_b

    .line 328
    .line 329
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    check-cast v5, Ljava/util/Properties;

    .line 334
    .line 335
    const-string v6, "io.sentry.ProguardUuids"

    .line 336
    .line 337
    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    if-eqz v5, :cond_a

    .line 342
    .line 343
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 348
    .line 349
    const-string v7, "Proguard UUID found: %s"

    .line 350
    .line 351
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    invoke-interface {v1, v6, v7, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, v5}, Lio/sentry/SentryOptions;->setProguardUuid(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 366
    .line 367
    .line 368
    move-result v5

    .line 369
    if-eqz v5, :cond_e

    .line 370
    .line 371
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    check-cast v5, Ljava/util/Properties;

    .line 376
    .line 377
    const-string v6, "io.sentry.build-tool"

    .line 378
    .line 379
    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v6

    .line 383
    if-eqz v6, :cond_c

    .line 384
    .line 385
    const-string v1, "io.sentry.build-tool-version"

    .line 386
    .line 387
    invoke-virtual {v5, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    if-nez v1, :cond_d

    .line 392
    .line 393
    const-string v1, "unknown"

    .line 394
    .line 395
    :cond_d
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 400
    .line 401
    const-string v8, "Build tool found: %s, version %s"

    .line 402
    .line 403
    filled-new-array {v6, v1}, [Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v9

    .line 407
    invoke-interface {v5, v7, v8, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->d()Lio/sentry/SentryIntegrationPackageStorage;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    invoke-virtual {v5, v6, v1}, Lio/sentry/SentryIntegrationPackageStorage;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_17

    .line 426
    .line 427
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    check-cast v1, Ljava/util/Properties;

    .line 432
    .line 433
    const-string v5, "io.sentry.distribution.org-slug"

    .line 434
    .line 435
    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    const-string v6, "io.sentry.distribution.project-slug"

    .line 440
    .line 441
    invoke-virtual {v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    const-string v7, "io.sentry.distribution.auth-token"

    .line 446
    .line 447
    invoke-virtual {v1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    const-string v8, "io.sentry.distribution.build-configuration"

    .line 452
    .line 453
    invoke-virtual {v1, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v8

    .line 457
    const-string v9, "io.sentry.distribution.install-groups-override"

    .line 458
    .line 459
    invoke-virtual {v1, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    if-nez v5, :cond_10

    .line 464
    .line 465
    if-nez v6, :cond_10

    .line 466
    .line 467
    if-nez v7, :cond_10

    .line 468
    .line 469
    if-nez v8, :cond_10

    .line 470
    .line 471
    if-eqz v1, :cond_f

    .line 472
    .line 473
    :cond_10
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDistribution()Lio/sentry/SentryOptions$DistributionOptions;

    .line 474
    .line 475
    .line 476
    move-result-object v0

    .line 477
    if-eqz v5, :cond_11

    .line 478
    .line 479
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v9

    .line 483
    if-nez v9, :cond_11

    .line 484
    .line 485
    iget-object v9, v0, Lio/sentry/SentryOptions$DistributionOptions;->b:Ljava/lang/String;

    .line 486
    .line 487
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 488
    .line 489
    .line 490
    move-result v9

    .line 491
    if-eqz v9, :cond_11

    .line 492
    .line 493
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 494
    .line 495
    .line 496
    move-result-object v9

    .line 497
    sget-object v10, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 498
    .line 499
    const-string v11, "Distribution org slug found: %s"

    .line 500
    .line 501
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v12

    .line 505
    invoke-interface {v9, v10, v11, v12}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    .line 507
    .line 508
    iput-object v5, v0, Lio/sentry/SentryOptions$DistributionOptions;->b:Ljava/lang/String;

    .line 509
    .line 510
    :cond_11
    if-eqz v6, :cond_12

    .line 511
    .line 512
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 513
    .line 514
    .line 515
    move-result v5

    .line 516
    if-nez v5, :cond_12

    .line 517
    .line 518
    iget-object v5, v0, Lio/sentry/SentryOptions$DistributionOptions;->c:Ljava/lang/String;

    .line 519
    .line 520
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 521
    .line 522
    .line 523
    move-result v5

    .line 524
    if-eqz v5, :cond_12

    .line 525
    .line 526
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    sget-object v9, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 531
    .line 532
    const-string v10, "Distribution project slug found: %s"

    .line 533
    .line 534
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v11

    .line 538
    invoke-interface {v5, v9, v10, v11}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    iput-object v6, v0, Lio/sentry/SentryOptions$DistributionOptions;->c:Ljava/lang/String;

    .line 542
    .line 543
    :cond_12
    if-eqz v7, :cond_13

    .line 544
    .line 545
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    if-nez v5, :cond_13

    .line 550
    .line 551
    iget-object v5, v0, Lio/sentry/SentryOptions$DistributionOptions;->a:Ljava/lang/String;

    .line 552
    .line 553
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 554
    .line 555
    .line 556
    move-result v5

    .line 557
    if-eqz v5, :cond_13

    .line 558
    .line 559
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 560
    .line 561
    .line 562
    move-result-object v5

    .line 563
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 564
    .line 565
    const-string v9, "Distribution org auth token found"

    .line 566
    .line 567
    new-array v10, v3, [Ljava/lang/Object;

    .line 568
    .line 569
    invoke-interface {v5, v6, v9, v10}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    iput-object v7, v0, Lio/sentry/SentryOptions$DistributionOptions;->a:Ljava/lang/String;

    .line 573
    .line 574
    :cond_13
    if-eqz v8, :cond_14

    .line 575
    .line 576
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 577
    .line 578
    .line 579
    move-result v5

    .line 580
    if-nez v5, :cond_14

    .line 581
    .line 582
    iget-object v5, v0, Lio/sentry/SentryOptions$DistributionOptions;->d:Ljava/lang/String;

    .line 583
    .line 584
    if-nez v5, :cond_14

    .line 585
    .line 586
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 587
    .line 588
    .line 589
    move-result-object v5

    .line 590
    sget-object v6, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 591
    .line 592
    const-string v7, "Distribution build configuration found: %s"

    .line 593
    .line 594
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 595
    .line 596
    .line 597
    move-result-object v9

    .line 598
    invoke-interface {v5, v6, v7, v9}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    .line 600
    .line 601
    iput-object v8, v0, Lio/sentry/SentryOptions$DistributionOptions;->d:Ljava/lang/String;

    .line 602
    .line 603
    :cond_14
    if-eqz v1, :cond_17

    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 606
    .line 607
    .line 608
    move-result v5

    .line 609
    if-nez v5, :cond_17

    .line 610
    .line 611
    iget-object v5, v0, Lio/sentry/SentryOptions$DistributionOptions;->e:Ljava/util/ArrayList;

    .line 612
    .line 613
    if-nez v5, :cond_17

    .line 614
    .line 615
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    new-instance v2, Ljava/util/ArrayList;

    .line 620
    .line 621
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .line 623
    .line 624
    array-length v4, v1

    .line 625
    move v5, v3

    .line 626
    :goto_5
    if-ge v5, v4, :cond_16

    .line 627
    .line 628
    aget-object v6, v1, v5

    .line 629
    .line 630
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v6

    .line 634
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 635
    .line 636
    .line 637
    move-result v7

    .line 638
    if-nez v7, :cond_15

    .line 639
    .line 640
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    .line 642
    .line 643
    :cond_15
    add-int/lit8 v5, v5, 0x1

    .line 644
    .line 645
    goto :goto_5

    .line 646
    :cond_16
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-nez v1, :cond_17

    .line 651
    .line 652
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 657
    .line 658
    const-string v5, "Distribution install groups override found: %s"

    .line 659
    .line 660
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v6

    .line 664
    invoke-interface {v1, v4, v5, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 665
    .line 666
    .line 667
    iput-object v2, v0, Lio/sentry/SentryOptions$DistributionOptions;->e:Ljava/util/ArrayList;

    .line 668
    .line 669
    :cond_17
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 670
    .line 671
    .line 672
    move-result-object v0

    .line 673
    instance-of v0, v0, Lio/sentry/util/thread/NoOpThreadChecker;

    .line 674
    .line 675
    if-eqz v0, :cond_18

    .line 676
    .line 677
    sget-object v0, Lio/sentry/util/thread/ThreadChecker;->b:Lio/sentry/util/thread/ThreadChecker;

    .line 678
    .line 679
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setThreadChecker(Lio/sentry/util/thread/IThreadChecker;)V

    .line 680
    .line 681
    .line 682
    :cond_18
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getPerformanceCollectors()Ljava/util/List;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    if-eqz v0, :cond_19

    .line 691
    .line 692
    new-instance v0, Lio/sentry/JavaMemoryCollector;

    .line 693
    .line 694
    invoke-direct {v0}, Lio/sentry/JavaMemoryCollector;-><init>()V

    .line 695
    .line 696
    .line 697
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->addPerformanceCollector(Lio/sentry/IPerformanceCollector;)V

    .line 698
    .line 699
    .line 700
    :cond_19
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableBackpressureHandling()Z

    .line 701
    .line 702
    .line 703
    move-result v0

    .line 704
    if-eqz v0, :cond_1b

    .line 705
    .line 706
    sget-boolean v0, Lio/sentry/util/Platform;->a:Z

    .line 707
    .line 708
    if-nez v0, :cond_1b

    .line 709
    .line 710
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    instance-of v0, v0, Lio/sentry/backpressure/NoOpBackpressureMonitor;

    .line 715
    .line 716
    if-eqz v0, :cond_1a

    .line 717
    .line 718
    new-instance v0, Lio/sentry/backpressure/BackpressureMonitor;

    .line 719
    .line 720
    invoke-direct {v0, p0}, Lio/sentry/backpressure/BackpressureMonitor;-><init>(Lio/sentry/SentryOptions;)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setBackpressureMonitor(Lio/sentry/backpressure/IBackpressureMonitor;)V

    .line 724
    .line 725
    .line 726
    :cond_1a
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-interface {v0}, Lio/sentry/backpressure/IBackpressureMonitor;->start()V

    .line 731
    .line 732
    .line 733
    :cond_1b
    sget-boolean v0, Lio/sentry/util/Platform;->a:Z

    .line 734
    .line 735
    const/4 v1, 0x0

    .line 736
    if-nez v0, :cond_21

    .line 737
    .line 738
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    .line 739
    .line 740
    .line 741
    move-result v0

    .line 742
    if-eqz v0, :cond_21

    .line 743
    .line 744
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    .line 745
    .line 746
    .line 747
    move-result-object v0

    .line 748
    instance-of v0, v0, Lio/sentry/NoOpContinuousProfiler;

    .line 749
    .line 750
    if-eqz v0, :cond_21

    .line 751
    .line 752
    :try_start_1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesDirPath()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    if-eqz v0, :cond_1c

    .line 757
    .line 758
    goto :goto_7

    .line 759
    :cond_1c
    new-instance v0, Ljava/io/File;

    .line 760
    .line 761
    const-string v2, "java.io.tmpdir"

    .line 762
    .line 763
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    const-string v4, "sentry_profiling_traces"

    .line 768
    .line 769
    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 773
    .line 774
    .line 775
    move-result v2

    .line 776
    if-nez v2, :cond_1e

    .line 777
    .line 778
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 779
    .line 780
    .line 781
    move-result v2

    .line 782
    if-eqz v2, :cond_1d

    .line 783
    .line 784
    goto :goto_6

    .line 785
    :cond_1d
    const-string v2, "Creating a fallback directory for profiling failed in "

    .line 786
    .line 787
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    invoke-static {v0, v2}, Lfe;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    goto :goto_7

    .line 795
    :cond_1e
    :goto_6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v0

    .line 799
    invoke-virtual {p0, v0}, Lio/sentry/SentryOptions;->setProfilingTracesDirPath(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    :goto_7
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilingTracesHz()I

    .line 807
    .line 808
    .line 809
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 810
    .line 811
    .line 812
    :try_start_2
    const-class v2, Lio/sentry/profiling/JavaContinuousProfilerProvider;

    .line 813
    .line 814
    invoke-static {v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 815
    .line 816
    .line 817
    move-result-object v2

    .line 818
    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 819
    .line 820
    .line 821
    move-result-object v2

    .line 822
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 823
    .line 824
    .line 825
    move-result v4

    .line 826
    if-eqz v4, :cond_1f

    .line 827
    .line 828
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    goto :goto_8

    .line 833
    :cond_1f
    move-object v2, v1

    .line 834
    :goto_8
    if-nez v2, :cond_20

    .line 835
    .line 836
    sget-object v2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 837
    .line 838
    const-string v4, "No continuous profiler provider found, using NoOpContinuousProfiler"

    .line 839
    .line 840
    new-array v5, v3, [Ljava/lang/Object;

    .line 841
    .line 842
    invoke-interface {v0, v2, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    .line 844
    .line 845
    goto :goto_a

    .line 846
    :catchall_0
    move-exception v2

    .line 847
    goto :goto_9

    .line 848
    :cond_20
    new-instance v2, Ljava/lang/ClassCastException;

    .line 849
    .line 850
    invoke-direct {v2}, Ljava/lang/ClassCastException;-><init>()V

    .line 851
    .line 852
    .line 853
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 854
    :goto_9
    :try_start_3
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 855
    .line 856
    const-string v5, "Failed to load continuous profiler provider, using NoOpContinuousProfiler"

    .line 857
    .line 858
    invoke-interface {v0, v4, v5, v2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 859
    .line 860
    .line 861
    :goto_a
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 866
    .line 867
    const-string v4, "Could not load profiler, profiling will be disabled. If you are using Spring or Spring Boot with the OTEL Agent profiler init will be retried."

    .line 868
    .line 869
    new-array v5, v3, [Ljava/lang/Object;

    .line 870
    .line 871
    invoke-interface {v0, v2, v4, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 872
    .line 873
    .line 874
    goto :goto_b

    .line 875
    :catch_1
    move-exception v0

    .line 876
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 877
    .line 878
    .line 879
    move-result-object v2

    .line 880
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 881
    .line 882
    const-string v5, "Failed to create default profiling traces directory"

    .line 883
    .line 884
    invoke-interface {v2, v4, v5, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 885
    .line 886
    .line 887
    :goto_b
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    .line 888
    .line 889
    .line 890
    goto :goto_c

    .line 891
    :cond_21
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    .line 892
    .line 893
    .line 894
    :goto_c
    sget-boolean v0, Lio/sentry/util/Platform;->a:Z

    .line 895
    .line 896
    if-nez v0, :cond_24

    .line 897
    .line 898
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    .line 899
    .line 900
    .line 901
    move-result v0

    .line 902
    if-eqz v0, :cond_24

    .line 903
    .line 904
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilerConverter()Lio/sentry/IProfileConverter;

    .line 905
    .line 906
    .line 907
    move-result-object v0

    .line 908
    instance-of v0, v0, Lio/sentry/NoOpProfileConverter;

    .line 909
    .line 910
    if-eqz v0, :cond_24

    .line 911
    .line 912
    sget-object v0, Lio/sentry/Sentry;->c:Lio/sentry/Scope;

    .line 913
    .line 914
    iget-object v0, v0, Lio/sentry/Scope;->m:Lio/sentry/SentryOptions;

    .line 915
    .line 916
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    :try_start_4
    const-class v2, Lio/sentry/profiling/JavaProfileConverterProvider;

    .line 921
    .line 922
    invoke-static {v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    .line 923
    .line 924
    .line 925
    move-result-object v2

    .line 926
    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 931
    .line 932
    .line 933
    move-result v4

    .line 934
    if-eqz v4, :cond_22

    .line 935
    .line 936
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    :cond_22
    if-nez v1, :cond_23

    .line 941
    .line 942
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 943
    .line 944
    const-string v2, "No profile converter provider found, using NoOpProfileConverter"

    .line 945
    .line 946
    new-array v4, v3, [Ljava/lang/Object;

    .line 947
    .line 948
    invoke-interface {v0, v1, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    .line 950
    .line 951
    goto :goto_e

    .line 952
    :catchall_1
    move-exception v1

    .line 953
    goto :goto_d

    .line 954
    :cond_23
    new-instance v1, Ljava/lang/ClassCastException;

    .line 955
    .line 956
    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    .line 957
    .line 958
    .line 959
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 960
    :goto_d
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 961
    .line 962
    const-string v4, "Failed to load profile converter provider, using NoOpProfileConverter"

    .line 963
    .line 964
    invoke-interface {v0, v2, v4, v1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 965
    .line 966
    .line 967
    :goto_e
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 968
    .line 969
    .line 970
    move-result-object v0

    .line 971
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 972
    .line 973
    const-string v2, "Could not load profile converter. If you are using Spring or Spring Boot with the OTEL Agent, profile converter init will be retried."

    .line 974
    .line 975
    new-array v3, v3, [Ljava/lang/Object;

    .line 976
    .line 977
    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    .line 979
    .line 980
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilerConverter()Lio/sentry/IProfileConverter;

    .line 981
    .line 982
    .line 983
    goto :goto_f

    .line 984
    :cond_24
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfilerConverter()Lio/sentry/IProfileConverter;

    .line 985
    .line 986
    .line 987
    :goto_f
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 992
    .line 993
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    .line 994
    .line 995
    .line 996
    move-result v2

    .line 997
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    .line 1002
    .line 1003
    .line 1004
    move-result-object p0

    .line 1005
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object p0

    .line 1009
    const-string v2, "Continuous profiler is enabled %s mode: %s"

    .line 1010
    .line 1011
    invoke-interface {v0, v1, v2, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1012
    .line 1013
    .line 1014
    return-void
.end method

.method public static e(Lio/sentry/SentryOptions;)V
    .locals 6

    .line 1
    sget-object v0, Lio/sentry/NoOpLogger;->a:Lio/sentry/NoOpLogger;

    .line 2
    .line 3
    sget-boolean v1, Lio/sentry/util/Platform;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Lio/sentry/SentryOpenTelemetryMode;->AUTO:Lio/sentry/SentryOpenTelemetryMode;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    const-string v2, "io.sentry.opentelemetry.agent.AgentMarker"

    .line 21
    .line 22
    invoke-static {v2, v0}, Lio/sentry/util/LoadClass;->b(Ljava/lang/String;Lio/sentry/ILogger;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 34
    .line 35
    const-string v5, "openTelemetryMode has been inferred from AUTO to AGENT"

    .line 36
    .line 37
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object v2, Lio/sentry/SentryOpenTelemetryMode;->AGENT:Lio/sentry/SentryOpenTelemetryMode;

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lio/sentry/SentryOptions;->setOpenTelemetryMode(Lio/sentry/SentryOpenTelemetryMode;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v2, "io.sentry.opentelemetry.agent.AgentlessMarker"

    .line 49
    .line 50
    invoke-static {v2, v0}, Lio/sentry/util/LoadClass;->b(Ljava/lang/String;Lio/sentry/ILogger;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 61
    .line 62
    const-string v5, "openTelemetryMode has been inferred from AUTO to AGENTLESS"

    .line 63
    .line 64
    new-array v3, v3, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    sget-object v2, Lio/sentry/SentryOpenTelemetryMode;->AGENTLESS:Lio/sentry/SentryOpenTelemetryMode;

    .line 70
    .line 71
    invoke-virtual {p0, v2}, Lio/sentry/SentryOptions;->setOpenTelemetryMode(Lio/sentry/SentryOpenTelemetryMode;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const-string v2, "io.sentry.opentelemetry.agent.AgentlessSpringMarker"

    .line 76
    .line 77
    invoke-static {v2, v0}, Lio/sentry/util/LoadClass;->b(Ljava/lang/String;Lio/sentry/ILogger;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    sget-object v4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 88
    .line 89
    const-string v5, "openTelemetryMode has been inferred from AUTO to AGENTLESS_SPRING"

    .line 90
    .line 91
    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-interface {v2, v4, v5, v3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object v2, Lio/sentry/SentryOpenTelemetryMode;->AGENTLESS_SPRING:Lio/sentry/SentryOpenTelemetryMode;

    .line 97
    .line 98
    invoke-virtual {p0, v2}, Lio/sentry/SentryOptions;->setOpenTelemetryMode(Lio/sentry/SentryOpenTelemetryMode;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_0
    sget-object v2, Lio/sentry/SentryOpenTelemetryMode;->OFF:Lio/sentry/SentryOpenTelemetryMode;

    .line 102
    .line 103
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    if-ne v2, v3, :cond_4

    .line 108
    .line 109
    new-instance v3, Lio/sentry/DefaultSpanFactory;

    .line 110
    .line 111
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v3}, Lio/sentry/SentryOptions;->setSpanFactory(Lio/sentry/ISpanFactory;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    sget-object v3, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 118
    .line 119
    invoke-interface {v3}, Lio/sentry/IScopesStorage;->close()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopesStorageFactory()Lio/sentry/IScopesStorageFactory;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    if-ne v2, v3, :cond_5

    .line 130
    .line 131
    new-instance v0, Lio/sentry/DefaultScopesStorage;

    .line 132
    .line 133
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 134
    .line 135
    .line 136
    sput-object v0, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    if-nez v1, :cond_6

    .line 140
    .line 141
    const-string v1, "io.sentry.opentelemetry.OtelContextScopesStorage"

    .line 142
    .line 143
    invoke-static {v1, v0}, Lio/sentry/util/LoadClass;->b(Ljava/lang/String;Lio/sentry/ILogger;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_6

    .line 148
    .line 149
    invoke-static {v1, v0}, Lio/sentry/util/LoadClass;->c(Ljava/lang/String;Lio/sentry/ILogger;)Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    const/4 v1, 0x0

    .line 156
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    if-eqz v0, :cond_6

    .line 165
    .line 166
    instance-of v1, v0, Lio/sentry/IScopesStorage;

    .line 167
    .line 168
    if-eqz v1, :cond_6

    .line 169
    .line 170
    check-cast v0, Lio/sentry/IScopesStorage;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :catch_0
    :cond_6
    new-instance v0, Lio/sentry/DefaultScopesStorage;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    :goto_1
    sput-object v0, Lio/sentry/Sentry;->a:Lio/sentry/IScopesStorage;

    .line 179
    .line 180
    :goto_2
    sget-boolean v0, Lio/sentry/util/Platform;->a:Z

    .line 181
    .line 182
    if-nez v0, :cond_b

    .line 183
    .line 184
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getOpenTelemetryMode()Lio/sentry/SentryOpenTelemetryMode;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget-object v1, Lio/sentry/SentryOpenTelemetryMode;->OFF:Lio/sentry/SentryOpenTelemetryMode;

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_7

    .line 195
    .line 196
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 197
    .line 198
    goto/16 :goto_3

    .line 199
    .line 200
    :cond_7
    sget-object v1, Lio/sentry/util/SpanUtils;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 201
    .line 202
    new-instance v1, Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .line 206
    .line 207
    sget-object v2, Lio/sentry/SentryOpenTelemetryMode;->AGENT:Lio/sentry/SentryOpenTelemetryMode;

    .line 208
    .line 209
    if-eq v2, v0, :cond_8

    .line 210
    .line 211
    sget-object v3, Lio/sentry/SentryOpenTelemetryMode;->AGENTLESS_SPRING:Lio/sentry/SentryOpenTelemetryMode;

    .line 212
    .line 213
    if-ne v3, v0, :cond_9

    .line 214
    .line 215
    :cond_8
    const-string v3, "auto.http.spring_jakarta.webmvc"

    .line 216
    .line 217
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    const-string v3, "auto.http.spring.webmvc"

    .line 221
    .line 222
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    const-string v3, "auto.http.spring7.webmvc"

    .line 226
    .line 227
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    const-string v3, "auto.spring_jakarta.webflux"

    .line 231
    .line 232
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    const-string v3, "auto.spring.webflux"

    .line 236
    .line 237
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    const-string v3, "auto.spring7.webflux"

    .line 241
    .line 242
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    const-string v3, "auto.db.jdbc"

    .line 246
    .line 247
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    const-string v3, "auto.http.spring_jakarta.webclient"

    .line 251
    .line 252
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    const-string v3, "auto.http.spring.webclient"

    .line 256
    .line 257
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    const-string v3, "auto.http.spring7.webclient"

    .line 261
    .line 262
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    const-string v3, "auto.http.spring_jakarta.restclient"

    .line 266
    .line 267
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    const-string v3, "auto.http.spring.restclient"

    .line 271
    .line 272
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    const-string v3, "auto.http.spring7.restclient"

    .line 276
    .line 277
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    const-string v3, "auto.http.spring_jakarta.resttemplate"

    .line 281
    .line 282
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    const-string v3, "auto.http.spring.resttemplate"

    .line 286
    .line 287
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    const-string v3, "auto.http.spring7.resttemplate"

    .line 291
    .line 292
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    const-string v3, "auto.http.openfeign"

    .line 296
    .line 297
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .line 299
    .line 300
    const-string v3, "auto.http.ktor-client"

    .line 301
    .line 302
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    const-string v3, "auto.queue.spring_jakarta.kafka.producer"

    .line 306
    .line 307
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    const-string v3, "auto.queue.spring_jakarta.kafka.consumer"

    .line 311
    .line 312
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    const-string v3, "auto.queue.kafka.producer"

    .line 316
    .line 317
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    const-string v3, "auto.queue.kafka.consumer"

    .line 321
    .line 322
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    :cond_9
    if-ne v2, v0, :cond_a

    .line 326
    .line 327
    const-string v0, "auto.graphql.graphql"

    .line 328
    .line 329
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    const-string v0, "auto.graphql.graphql22"

    .line 333
    .line 334
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    :cond_a
    move-object v0, v1

    .line 338
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_b

    .line 347
    .line 348
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    check-cast v1, Ljava/lang/String;

    .line 353
    .line 354
    invoke-virtual {p0, v1}, Lio/sentry/SentryOptions;->addIgnoredSpanOrigin(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_b
    return-void
.end method

.method public static f(Lio/sentry/SentryOptions;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnableExternalConfiguration()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_19

    .line 6
    .line 7
    invoke-static {}, Lio/sentry/config/PropertiesProviderFactory;->a()Lio/sentry/config/PropertiesProvider;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Lio/sentry/ExternalOptions;

    .line 16
    .line 17
    invoke-direct {v2}, Lio/sentry/ExternalOptions;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "dsn"

    .line 21
    .line 22
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    iput-object v3, v2, Lio/sentry/ExternalOptions;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string v3, "environment"

    .line 29
    .line 30
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iput-object v3, v2, Lio/sentry/ExternalOptions;->b:Ljava/lang/String;

    .line 35
    .line 36
    const-string v3, "release"

    .line 37
    .line 38
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iput-object v3, v2, Lio/sentry/ExternalOptions;->c:Ljava/lang/String;

    .line 43
    .line 44
    const-string v3, "dist"

    .line 45
    .line 46
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, v2, Lio/sentry/ExternalOptions;->d:Ljava/lang/String;

    .line 51
    .line 52
    const-string v3, "servername"

    .line 53
    .line 54
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iput-object v3, v2, Lio/sentry/ExternalOptions;->e:Ljava/lang/String;

    .line 59
    .line 60
    const-string v3, "uncaught.handler.enabled"

    .line 61
    .line 62
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iput-object v3, v2, Lio/sentry/ExternalOptions;->f:Ljava/lang/Boolean;

    .line 67
    .line 68
    const-string v3, "uncaught.handler.print-stacktrace"

    .line 69
    .line 70
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    iput-object v3, v2, Lio/sentry/ExternalOptions;->y:Ljava/lang/Boolean;

    .line 75
    .line 76
    const-string v3, "sample-rate"

    .line 77
    .line 78
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v4, 0x0

    .line 83
    if-eqz v3, :cond_0

    .line 84
    .line 85
    :try_start_0
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 86
    .line 87
    .line 88
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    :cond_0
    move-object v3, v4

    .line 91
    :goto_0
    iput-object v3, v2, Lio/sentry/ExternalOptions;->i:Ljava/lang/Double;

    .line 92
    .line 93
    const-string v3, "traces-sample-rate"

    .line 94
    .line 95
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_1

    .line 100
    .line 101
    :try_start_1
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 102
    .line 103
    .line 104
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    goto :goto_1

    .line 106
    :catch_1
    :cond_1
    move-object v3, v4

    .line 107
    :goto_1
    iput-object v3, v2, Lio/sentry/ExternalOptions;->j:Ljava/lang/Double;

    .line 108
    .line 109
    const-string v3, "profiles-sample-rate"

    .line 110
    .line 111
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_2

    .line 116
    .line 117
    :try_start_2
    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 118
    .line 119
    .line 120
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    goto :goto_2

    .line 122
    :catch_2
    :cond_2
    move-object v3, v4

    .line 123
    :goto_2
    iput-object v3, v2, Lio/sentry/ExternalOptions;->k:Ljava/lang/Double;

    .line 124
    .line 125
    const-string v3, "debug"

    .line 126
    .line 127
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    iput-object v3, v2, Lio/sentry/ExternalOptions;->g:Ljava/lang/Boolean;

    .line 132
    .line 133
    const-string v3, "enable-deduplication"

    .line 134
    .line 135
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iput-object v3, v2, Lio/sentry/ExternalOptions;->h:Ljava/lang/Boolean;

    .line 140
    .line 141
    const-string v3, "send-client-reports"

    .line 142
    .line 143
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iput-object v3, v2, Lio/sentry/ExternalOptions;->z:Ljava/lang/Boolean;

    .line 148
    .line 149
    const-string v3, "force-init"

    .line 150
    .line 151
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    iput-object v3, v2, Lio/sentry/ExternalOptions;->Q:Ljava/lang/Boolean;

    .line 156
    .line 157
    const-string v3, "max-request-body-size"

    .line 158
    .line 159
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    if-eqz v3, :cond_3

    .line 164
    .line 165
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 166
    .line 167
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v3}, Lio/sentry/SentryOptions$RequestSize;->valueOf(Ljava/lang/String;)Lio/sentry/SentryOptions$RequestSize;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    iput-object v3, v2, Lio/sentry/ExternalOptions;->l:Lio/sentry/SentryOptions$RequestSize;

    .line 176
    .line 177
    :cond_3
    invoke-interface {v0}, Lio/sentry/config/PropertiesProvider;->c()Ljava/util/Map;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 182
    .line 183
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_4

    .line 196
    .line 197
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    check-cast v5, Ljava/util/Map$Entry;

    .line 202
    .line 203
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    check-cast v6, Ljava/lang/String;

    .line 208
    .line 209
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Ljava/lang/String;

    .line 214
    .line 215
    iget-object v7, v2, Lio/sentry/ExternalOptions;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 216
    .line 217
    invoke-virtual {v7, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_4
    const-string v3, "proxy.host"

    .line 222
    .line 223
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    const-string v5, "proxy.user"

    .line 228
    .line 229
    invoke-interface {v0, v5}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    const-string v6, "proxy.pass"

    .line 234
    .line 235
    invoke-interface {v0, v6}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const-string v7, "proxy.port"

    .line 240
    .line 241
    invoke-interface {v0, v7}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    if-eqz v7, :cond_5

    .line 246
    .line 247
    goto :goto_4

    .line 248
    :cond_5
    const-string v7, "80"

    .line 249
    .line 250
    :goto_4
    if-eqz v3, :cond_6

    .line 251
    .line 252
    new-instance v8, Lio/sentry/SentryOptions$Proxy;

    .line 253
    .line 254
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 255
    .line 256
    .line 257
    iput-object v3, v8, Lio/sentry/SentryOptions$Proxy;->a:Ljava/lang/String;

    .line 258
    .line 259
    iput-object v7, v8, Lio/sentry/SentryOptions$Proxy;->b:Ljava/lang/String;

    .line 260
    .line 261
    iput-object v5, v8, Lio/sentry/SentryOptions$Proxy;->c:Ljava/lang/String;

    .line 262
    .line 263
    iput-object v6, v8, Lio/sentry/SentryOptions$Proxy;->d:Ljava/lang/String;

    .line 264
    .line 265
    iput-object v8, v2, Lio/sentry/ExternalOptions;->n:Lio/sentry/SentryOptions$Proxy;

    .line 266
    .line 267
    :cond_6
    const-string v3, "in-app-includes"

    .line 268
    .line 269
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->d(Ljava/lang/String;)Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 274
    .line 275
    .line 276
    move-result-object v3

    .line 277
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 278
    .line 279
    .line 280
    move-result v5

    .line 281
    if-eqz v5, :cond_7

    .line 282
    .line 283
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    check-cast v5, Ljava/lang/String;

    .line 288
    .line 289
    iget-object v6, v2, Lio/sentry/ExternalOptions;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 290
    .line 291
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_7
    const-string v3, "in-app-excludes"

    .line 296
    .line 297
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->d(Ljava/lang/String;)Ljava/util/List;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    if-eqz v5, :cond_8

    .line 310
    .line 311
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v5

    .line 315
    check-cast v5, Ljava/lang/String;

    .line 316
    .line 317
    iget-object v6, v2, Lio/sentry/ExternalOptions;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 318
    .line 319
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_8
    const-string v3, "trace-propagation-targets"

    .line 324
    .line 325
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    if-eqz v5, :cond_9

    .line 330
    .line 331
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->d(Ljava/lang/String;)Ljava/util/List;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    goto :goto_7

    .line 336
    :cond_9
    move-object v3, v4

    .line 337
    :goto_7
    if-nez v3, :cond_a

    .line 338
    .line 339
    const-string v5, "tracing-origins"

    .line 340
    .line 341
    invoke-interface {v0, v5}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    if-eqz v6, :cond_a

    .line 346
    .line 347
    invoke-interface {v0, v5}, Lio/sentry/config/PropertiesProvider;->d(Ljava/lang/String;)Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    :cond_a
    if-eqz v3, :cond_d

    .line 352
    .line 353
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    :cond_b
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    if-eqz v5, :cond_d

    .line 362
    .line 363
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    check-cast v5, Ljava/lang/String;

    .line 368
    .line 369
    iget-object v6, v2, Lio/sentry/ExternalOptions;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 370
    .line 371
    if-nez v6, :cond_c

    .line 372
    .line 373
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 374
    .line 375
    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 376
    .line 377
    .line 378
    iput-object v6, v2, Lio/sentry/ExternalOptions;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 379
    .line 380
    :cond_c
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 381
    .line 382
    .line 383
    move-result v6

    .line 384
    if-nez v6, :cond_b

    .line 385
    .line 386
    iget-object v6, v2, Lio/sentry/ExternalOptions;->q:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 387
    .line 388
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    goto :goto_8

    .line 392
    :cond_d
    const-string v3, "context-tags"

    .line 393
    .line 394
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->d(Ljava/lang/String;)Ljava/util/List;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 403
    .line 404
    .line 405
    move-result v5

    .line 406
    if-eqz v5, :cond_e

    .line 407
    .line 408
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    check-cast v5, Ljava/lang/String;

    .line 413
    .line 414
    iget-object v6, v2, Lio/sentry/ExternalOptions;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 415
    .line 416
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    .line 418
    .line 419
    goto :goto_9

    .line 420
    :cond_e
    const-string v3, "proguard-uuid"

    .line 421
    .line 422
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    iput-object v3, v2, Lio/sentry/ExternalOptions;->s:Ljava/lang/String;

    .line 427
    .line 428
    const-string v3, "bundle-ids"

    .line 429
    .line 430
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->d(Ljava/lang/String;)Ljava/util/List;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v5

    .line 442
    if-eqz v5, :cond_f

    .line 443
    .line 444
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    check-cast v5, Ljava/lang/String;

    .line 449
    .line 450
    iget-object v6, v2, Lio/sentry/ExternalOptions;->A:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 451
    .line 452
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_f
    const-string v3, "idle-timeout"

    .line 457
    .line 458
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 459
    .line 460
    .line 461
    move-result-object v3

    .line 462
    iput-object v3, v2, Lio/sentry/ExternalOptions;->t:Ljava/lang/Long;

    .line 463
    .line 464
    const-string v3, "shutdown-timeout-millis"

    .line 465
    .line 466
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 467
    .line 468
    .line 469
    move-result-object v3

    .line 470
    iput-object v3, v2, Lio/sentry/ExternalOptions;->u:Ljava/lang/Long;

    .line 471
    .line 472
    const-string v3, "session-flush-timeout-millis"

    .line 473
    .line 474
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    iput-object v3, v2, Lio/sentry/ExternalOptions;->v:Ljava/lang/Long;

    .line 479
    .line 480
    const-string v3, "ignored-errors"

    .line 481
    .line 482
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    const-string v5, ","

    .line 487
    .line 488
    if-eqz v3, :cond_10

    .line 489
    .line 490
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v3

    .line 494
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    goto :goto_b

    .line 499
    :cond_10
    move-object v3, v4

    .line 500
    :goto_b
    iput-object v3, v2, Lio/sentry/ExternalOptions;->x:Ljava/util/List;

    .line 501
    .line 502
    const-string v3, "enabled"

    .line 503
    .line 504
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 505
    .line 506
    .line 507
    move-result-object v3

    .line 508
    iput-object v3, v2, Lio/sentry/ExternalOptions;->B:Ljava/lang/Boolean;

    .line 509
    .line 510
    const-string v3, "enable-pretty-serialization-output"

    .line 511
    .line 512
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    iput-object v3, v2, Lio/sentry/ExternalOptions;->C:Ljava/lang/Boolean;

    .line 517
    .line 518
    const-string v3, "send-modules"

    .line 519
    .line 520
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    iput-object v3, v2, Lio/sentry/ExternalOptions;->J:Ljava/lang/Boolean;

    .line 525
    .line 526
    const-string v3, "send-default-pii"

    .line 527
    .line 528
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    iput-object v3, v2, Lio/sentry/ExternalOptions;->K:Ljava/lang/Boolean;

    .line 533
    .line 534
    const-string v3, "ignored-checkins"

    .line 535
    .line 536
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v3

    .line 540
    if-eqz v3, :cond_11

    .line 541
    .line 542
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 547
    .line 548
    .line 549
    move-result-object v3

    .line 550
    goto :goto_c

    .line 551
    :cond_11
    move-object v3, v4

    .line 552
    :goto_c
    iput-object v3, v2, Lio/sentry/ExternalOptions;->H:Ljava/util/List;

    .line 553
    .line 554
    const-string v3, "ignored-transactions"

    .line 555
    .line 556
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    if-eqz v3, :cond_12

    .line 561
    .line 562
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    goto :goto_d

    .line 571
    :cond_12
    move-object v3, v4

    .line 572
    :goto_d
    iput-object v3, v2, Lio/sentry/ExternalOptions;->I:Ljava/util/List;

    .line 573
    .line 574
    const-string v3, "enable-backpressure-handling"

    .line 575
    .line 576
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 577
    .line 578
    .line 579
    move-result-object v3

    .line 580
    iput-object v3, v2, Lio/sentry/ExternalOptions;->L:Ljava/lang/Boolean;

    .line 581
    .line 582
    const-string v3, "enable-database-transaction-tracing"

    .line 583
    .line 584
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 585
    .line 586
    .line 587
    move-result-object v3

    .line 588
    iput-object v3, v2, Lio/sentry/ExternalOptions;->M:Ljava/lang/Boolean;

    .line 589
    .line 590
    const-string v3, "enable-cache-tracing"

    .line 591
    .line 592
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    iput-object v3, v2, Lio/sentry/ExternalOptions;->N:Ljava/lang/Boolean;

    .line 597
    .line 598
    const-string v3, "enable-queue-tracing"

    .line 599
    .line 600
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 601
    .line 602
    .line 603
    move-result-object v3

    .line 604
    iput-object v3, v2, Lio/sentry/ExternalOptions;->O:Ljava/lang/Boolean;

    .line 605
    .line 606
    const-string v3, "global-hub-mode"

    .line 607
    .line 608
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    iput-object v3, v2, Lio/sentry/ExternalOptions;->P:Ljava/lang/Boolean;

    .line 613
    .line 614
    const-string v3, "capture-open-telemetry-events"

    .line 615
    .line 616
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    iput-object v3, v2, Lio/sentry/ExternalOptions;->R:Ljava/lang/Boolean;

    .line 621
    .line 622
    const-string v3, "logs.enabled"

    .line 623
    .line 624
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 625
    .line 626
    .line 627
    move-result-object v3

    .line 628
    iput-object v3, v2, Lio/sentry/ExternalOptions;->E:Ljava/lang/Boolean;

    .line 629
    .line 630
    const-string v3, "metrics.enabled"

    .line 631
    .line 632
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    iput-object v3, v2, Lio/sentry/ExternalOptions;->F:Ljava/lang/Boolean;

    .line 637
    .line 638
    const-string v3, "ignored-exceptions-for-type"

    .line 639
    .line 640
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->d(Ljava/lang/String;)Ljava/util/List;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 649
    .line 650
    .line 651
    move-result v5

    .line 652
    if-eqz v5, :cond_14

    .line 653
    .line 654
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object v5

    .line 658
    check-cast v5, Ljava/lang/String;

    .line 659
    .line 660
    :try_start_3
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 661
    .line 662
    .line 663
    move-result-object v6

    .line 664
    const-class v7, Ljava/lang/Throwable;

    .line 665
    .line 666
    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 667
    .line 668
    .line 669
    move-result v7

    .line 670
    if-eqz v7, :cond_13

    .line 671
    .line 672
    iget-object v7, v2, Lio/sentry/ExternalOptions;->w:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 673
    .line 674
    invoke-virtual {v7, v6}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 675
    .line 676
    .line 677
    goto :goto_e

    .line 678
    :cond_13
    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 679
    .line 680
    const-string v7, "Skipping setting %s as ignored-exception-for-type. Reason: %s does not extend Throwable"

    .line 681
    .line 682
    filled-new-array {v5, v5}, [Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v8

    .line 686
    invoke-interface {v1, v6, v7, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 687
    .line 688
    .line 689
    goto :goto_e

    .line 690
    :catch_3
    sget-object v6, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 691
    .line 692
    const-string v7, "Skipping setting %s as ignored-exception-for-type. Reason: %s class is not found"

    .line 693
    .line 694
    filled-new-array {v5, v5}, [Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v5

    .line 698
    invoke-interface {v1, v6, v7, v5}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    goto :goto_e

    .line 702
    :cond_14
    const-string v1, "cron.default-checkin-margin"

    .line 703
    .line 704
    invoke-interface {v0, v1}, Lio/sentry/config/PropertiesProvider;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    const-string v3, "cron.default-max-runtime"

    .line 709
    .line 710
    invoke-interface {v0, v3}, Lio/sentry/config/PropertiesProvider;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    const-string v5, "cron.default-timezone"

    .line 715
    .line 716
    invoke-interface {v0, v5}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v5

    .line 720
    const-string v6, "cron.default-failure-issue-threshold"

    .line 721
    .line 722
    invoke-interface {v0, v6}, Lio/sentry/config/PropertiesProvider;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 723
    .line 724
    .line 725
    move-result-object v6

    .line 726
    const-string v7, "cron.default-recovery-threshold"

    .line 727
    .line 728
    invoke-interface {v0, v7}, Lio/sentry/config/PropertiesProvider;->b(Ljava/lang/String;)Ljava/lang/Long;

    .line 729
    .line 730
    .line 731
    move-result-object v7

    .line 732
    if-nez v1, :cond_15

    .line 733
    .line 734
    if-nez v3, :cond_15

    .line 735
    .line 736
    if-nez v5, :cond_15

    .line 737
    .line 738
    if-nez v6, :cond_15

    .line 739
    .line 740
    if-eqz v7, :cond_16

    .line 741
    .line 742
    :cond_15
    new-instance v8, Lio/sentry/SentryOptions$Cron;

    .line 743
    .line 744
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 745
    .line 746
    .line 747
    iput-object v1, v8, Lio/sentry/SentryOptions$Cron;->a:Ljava/lang/Long;

    .line 748
    .line 749
    iput-object v3, v8, Lio/sentry/SentryOptions$Cron;->b:Ljava/lang/Long;

    .line 750
    .line 751
    iput-object v5, v8, Lio/sentry/SentryOptions$Cron;->c:Ljava/lang/String;

    .line 752
    .line 753
    iput-object v6, v8, Lio/sentry/SentryOptions$Cron;->d:Ljava/lang/Long;

    .line 754
    .line 755
    iput-object v7, v8, Lio/sentry/SentryOptions$Cron;->e:Ljava/lang/Long;

    .line 756
    .line 757
    iput-object v8, v2, Lio/sentry/ExternalOptions;->X:Lio/sentry/SentryOptions$Cron;

    .line 758
    .line 759
    :cond_16
    const-string v1, "enable-strict-trace-continuation"

    .line 760
    .line 761
    invoke-interface {v0, v1}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 762
    .line 763
    .line 764
    move-result-object v1

    .line 765
    iput-object v1, v2, Lio/sentry/ExternalOptions;->V:Ljava/lang/Boolean;

    .line 766
    .line 767
    const-string v1, "org-id"

    .line 768
    .line 769
    invoke-interface {v0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    iput-object v1, v2, Lio/sentry/ExternalOptions;->W:Ljava/lang/String;

    .line 774
    .line 775
    const-string v1, "enable-spotlight"

    .line 776
    .line 777
    invoke-interface {v0, v1}, Lio/sentry/config/PropertiesProvider;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    iput-object v1, v2, Lio/sentry/ExternalOptions;->D:Ljava/lang/Boolean;

    .line 782
    .line 783
    const-string v1, "spotlight-connection-url"

    .line 784
    .line 785
    invoke-interface {v0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    iput-object v1, v2, Lio/sentry/ExternalOptions;->G:Ljava/lang/String;

    .line 790
    .line 791
    const-string v1, "profile-session-sample-rate"

    .line 792
    .line 793
    invoke-interface {v0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    if-eqz v1, :cond_17

    .line 798
    .line 799
    :try_start_4
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 800
    .line 801
    .line 802
    move-result-object v4
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 803
    :catch_4
    :cond_17
    iput-object v4, v2, Lio/sentry/ExternalOptions;->S:Ljava/lang/Double;

    .line 804
    .line 805
    const-string v1, "profiling-traces-dir-path"

    .line 806
    .line 807
    invoke-interface {v0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v1

    .line 811
    iput-object v1, v2, Lio/sentry/ExternalOptions;->T:Ljava/lang/String;

    .line 812
    .line 813
    const-string v1, "profile-lifecycle"

    .line 814
    .line 815
    invoke-interface {v0, v1}, Lio/sentry/config/PropertiesProvider;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    if-eqz v0, :cond_18

    .line 820
    .line 821
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 822
    .line 823
    .line 824
    move-result v1

    .line 825
    if-nez v1, :cond_18

    .line 826
    .line 827
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    invoke-static {v0}, Lio/sentry/ProfileLifecycle;->valueOf(Ljava/lang/String;)Lio/sentry/ProfileLifecycle;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    iput-object v0, v2, Lio/sentry/ExternalOptions;->U:Lio/sentry/ProfileLifecycle;

    .line 836
    .line 837
    :cond_18
    invoke-virtual {p0, v2}, Lio/sentry/SentryOptions;->merge(Lio/sentry/ExternalOptions;)V

    .line 838
    .line 839
    .line 840
    :cond_19
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isEnabled()Z

    .line 845
    .line 846
    .line 847
    move-result v1

    .line 848
    const/4 v2, 0x0

    .line 849
    if-eqz v1, :cond_1c

    .line 850
    .line 851
    if-eqz v0, :cond_1a

    .line 852
    .line 853
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 854
    .line 855
    .line 856
    move-result v1

    .line 857
    if-eqz v1, :cond_1a

    .line 858
    .line 859
    goto :goto_f

    .line 860
    :cond_1a
    if-eqz v0, :cond_1b

    .line 861
    .line 862
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->retrieveParsedDsn()Lio/sentry/Dsn;

    .line 863
    .line 864
    .line 865
    const/4 p0, 0x1

    .line 866
    return p0

    .line 867
    :cond_1b
    const-string p0, "DSN is required. Use empty string or set enabled to false in SentryOptions to disable SDK."

    .line 868
    .line 869
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    return v2

    .line 873
    :cond_1c
    :goto_f
    invoke-static {}, Lio/sentry/Sentry;->a()V

    .line 874
    .line 875
    .line 876
    return v2
.end method
