.class public final Lio/sentry/Scopes;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/IScopes;


# instance fields
.field public final a:Lio/sentry/IScope;

.field public final b:Lio/sentry/IScope;

.field public final c:Lio/sentry/IScope;

.field public final d:Lio/sentry/CompositePerformanceCollector;

.field public final e:Lio/sentry/CombinedScopeView;

.field public final f:Lio/sentry/IFeedbackApi;


# direct methods
.method public constructor <init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/CombinedScopeView;

    .line 5
    .line 6
    invoke-direct {v0, p3, p2, p1}, Lio/sentry/CombinedScopeView;-><init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 10
    .line 11
    iput-object p1, p0, Lio/sentry/Scopes;->a:Lio/sentry/IScope;

    .line 12
    .line 13
    iput-object p2, p0, Lio/sentry/Scopes;->b:Lio/sentry/IScope;

    .line 14
    .line 15
    iput-object p3, p0, Lio/sentry/Scopes;->c:Lio/sentry/IScope;

    .line 16
    .line 17
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "SentryOptions is required."

    .line 22
    .line 23
    invoke-static {p1, p2}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lio/sentry/Scopes;->d:Lio/sentry/CompositePerformanceCollector;

    .line 47
    .line 48
    new-instance p1, Lio/sentry/FeedbackApi;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lio/sentry/FeedbackApi;-><init>(Lio/sentry/Scopes;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lio/sentry/Scopes;->f:Lio/sentry/IFeedbackApi;

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    const-string p0, "Scopes requires a DSN to be instantiated. Considering using the NoOpScopes if no DSN is available."

    .line 57
    .line 58
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 p0, 0x0

    .line 62
    throw p0
.end method


# virtual methods
.method public final a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const-string p2, "Instance is disabled and this \'addBreadcrumb\' call is a no-op."

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 27
    .line 28
    invoke-virtual {p0, p1, p2}, Lio/sentry/CombinedScopeView;->a(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final b(Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 17
    .line 18
    const-string v0, "Instance is disabled and this \'close\' call is a no-op."

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIntegrations()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lio/sentry/Integration;

    .line 49
    .line 50
    instance-of v3, v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    :try_start_1
    move-object v3, v2

    .line 55
    check-cast v3, Ljava/io/Closeable;

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v3

    .line 62
    :try_start_2
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 71
    .line 72
    const-string v6, "Failed to close the integration {}."

    .line 73
    .line 74
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v4, v5, v6, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    goto/16 :goto_7

    .line 84
    .line 85
    :cond_2
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEventProcessors()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_4

    .line 102
    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lio/sentry/EventProcessor;

    .line 108
    .line 109
    instance-of v3, v2, Ljava/io/Closeable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    :try_start_3
    move-object v3, v2

    .line 114
    check-cast v3, Ljava/io/Closeable;

    .line 115
    .line 116
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_2
    move-exception v3

    .line 121
    :try_start_4
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 130
    .line 131
    const-string v6, "Failed to close the event processor {}."

    .line 132
    .line 133
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-interface {v4, v5, v6, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 142
    .line 143
    .line 144
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 145
    const-string v2, "Error in the \'configureScope\' callback."

    .line 146
    .line 147
    iget-object v3, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 148
    .line 149
    const-string v4, "Instance is disabled and this \'configureScope\' call is a no-op."

    .line 150
    .line 151
    if-nez v0, :cond_5

    .line 152
    .line 153
    :try_start_5
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 162
    .line 163
    new-array v6, v1, [Ljava/lang/Object;

    .line 164
    .line 165
    invoke-interface {v0, v5, v4, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_5
    const/4 v0, 0x0

    .line 170
    :try_start_6
    invoke-virtual {v3, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0}, Lio/sentry/IScope;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :catchall_3
    move-exception v0

    .line 179
    :try_start_7
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 188
    .line 189
    invoke-interface {v5, v6, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    :goto_2
    sget-object v0, Lio/sentry/ScopeType;->ISOLATION:Lio/sentry/ScopeType;

    .line 193
    .line 194
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-nez v5, :cond_6

    .line 199
    .line 200
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 209
    .line 210
    new-array v6, v1, [Ljava/lang/Object;

    .line 211
    .line 212
    invoke-interface {v0, v5, v4, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 213
    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_6
    :try_start_8
    invoke-virtual {v3, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-interface {v0}, Lio/sentry/IScope;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 221
    .line 222
    .line 223
    goto :goto_3

    .line 224
    :catchall_4
    move-exception v0

    .line 225
    :try_start_9
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 234
    .line 235
    invoke-interface {v5, v6, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    .line 237
    .line 238
    :goto_3
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-interface {v0}, Lio/sentry/backpressure/IBackpressureMonitor;->close()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-interface {v0}, Lio/sentry/ITransactionProfiler;->close()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    const/4 v5, 0x1

    .line 269
    invoke-interface {v0, v5}, Lio/sentry/IContinuousProfiler;->b(Z)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getCompositePerformanceCollector()Lio/sentry/CompositePerformanceCollector;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-interface {v0}, Lio/sentry/CompositePerformanceCollector;->close()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    .line 299
    .line 300
    .line 301
    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 302
    if-eqz p1, :cond_7

    .line 303
    .line 304
    :try_start_a
    new-instance v5, Lf3;

    .line 305
    .line 306
    const/16 v6, 0x1c

    .line 307
    .line 308
    invoke-direct {v5, v6, p0, v0}, Lf3;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    invoke-interface {v0, v5}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 312
    .line 313
    .line 314
    goto :goto_4

    .line 315
    :catch_0
    move-exception v5

    .line 316
    :try_start_b
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 317
    .line 318
    .line 319
    move-result-object v6

    .line 320
    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    sget-object v7, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 325
    .line 326
    const-string v8, "Failed to submit executor service shutdown task during restart. Shutting down synchronously."

    .line 327
    .line 328
    invoke-interface {v6, v7, v8, v5}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    .line 336
    .line 337
    .line 338
    move-result-wide v5

    .line 339
    invoke-interface {v0, v5, v6}, Lio/sentry/ISentryExecutorService;->a(J)V

    .line 340
    .line 341
    .line 342
    goto :goto_4

    .line 343
    :cond_7
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getShutdownTimeoutMillis()J

    .line 348
    .line 349
    .line 350
    move-result-wide v5

    .line 351
    invoke-interface {v0, v5, v6}, Lio/sentry/ISentryExecutorService;->a(J)V

    .line 352
    .line 353
    .line 354
    :goto_4
    sget-object v0, Lio/sentry/ScopeType;->CURRENT:Lio/sentry/ScopeType;

    .line 355
    .line 356
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-nez v5, :cond_8

    .line 361
    .line 362
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 371
    .line 372
    new-array v6, v1, [Ljava/lang/Object;

    .line 373
    .line 374
    invoke-interface {v0, v5, v4, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 375
    .line 376
    .line 377
    goto :goto_5

    .line 378
    :cond_8
    :try_start_c
    invoke-virtual {v3, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-interface {v0}, Lio/sentry/IScope;->w()Lio/sentry/ISentryClient;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    invoke-interface {v0, p1}, Lio/sentry/ISentryClient;->b(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 387
    .line 388
    .line 389
    goto :goto_5

    .line 390
    :catchall_5
    move-exception v0

    .line 391
    :try_start_d
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 400
    .line 401
    invoke-interface {v5, v6, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    .line 403
    .line 404
    :goto_5
    sget-object v0, Lio/sentry/ScopeType;->ISOLATION:Lio/sentry/ScopeType;

    .line 405
    .line 406
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    if-nez v5, :cond_9

    .line 411
    .line 412
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    sget-object v5, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 421
    .line 422
    new-array v6, v1, [Ljava/lang/Object;

    .line 423
    .line 424
    invoke-interface {v0, v5, v4, v6}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 425
    .line 426
    .line 427
    goto :goto_6

    .line 428
    :cond_9
    :try_start_e
    invoke-virtual {v3, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-interface {v0}, Lio/sentry/IScope;->w()Lio/sentry/ISentryClient;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    invoke-interface {v0, p1}, Lio/sentry/ISentryClient;->b(Z)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 437
    .line 438
    .line 439
    goto :goto_6

    .line 440
    :catchall_6
    move-exception v0

    .line 441
    :try_start_f
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    sget-object v6, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 450
    .line 451
    invoke-interface {v5, v6, v2, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 452
    .line 453
    .line 454
    :goto_6
    sget-object v0, Lio/sentry/ScopeType;->GLOBAL:Lio/sentry/ScopeType;

    .line 455
    .line 456
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 457
    .line 458
    .line 459
    move-result v5

    .line 460
    if-nez v5, :cond_a

    .line 461
    .line 462
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 471
    .line 472
    new-array v1, v1, [Ljava/lang/Object;

    .line 473
    .line 474
    invoke-interface {p1, v0, v4, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 475
    .line 476
    .line 477
    goto :goto_8

    .line 478
    :cond_a
    :try_start_10
    invoke-virtual {v3, v0}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-interface {v0}, Lio/sentry/IScope;->w()Lio/sentry/ISentryClient;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-interface {v0, p1}, Lio/sentry/ISentryClient;->b(Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 487
    .line 488
    .line 489
    goto :goto_8

    .line 490
    :catchall_7
    move-exception p1

    .line 491
    :try_start_11
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 500
    .line 501
    invoke-interface {v0, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 502
    .line 503
    .line 504
    goto :goto_8

    .line 505
    :goto_7
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 506
    .line 507
    .line 508
    move-result-object p0

    .line 509
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 514
    .line 515
    const-string v1, "Error while closing the Scopes."

    .line 516
    .line 517
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 518
    .line 519
    .line 520
    :goto_8
    return-void
.end method

.method public final c(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    new-array p2, p2, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v0, "Instance is disabled and this \'flush\' call is a no-op."

    .line 21
    .line 22
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0, p1, p2}, Lio/sentry/ISentryClient;->c(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 46
    .line 47
    const-string v0, "Error in the \'client.flush\'."

    .line 48
    .line 49
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final clone()Lio/sentry/IHub;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v3, "Disabled Scopes cloned."

    .line 21
    .line 22
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v0, Lio/sentry/HubScopesWrapper;

    .line 26
    .line 27
    const-string v1, "scopes clone"

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lio/sentry/Scopes;->v(Ljava/lang/String;)Lio/sentry/IScopes;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lio/sentry/Scopes;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lio/sentry/HubScopesWrapper;-><init>(Lio/sentry/Scopes;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lio/sentry/Scopes;->clone()Lio/sentry/IHub;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lio/sentry/transport/RateLimiter;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lio/sentry/ISentryClient;->d()Lio/sentry/transport/RateLimiter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final f()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lio/sentry/ISentryClient;->f()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final g(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 2

    .line 1
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    new-array p2, p2, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v1, "Instance is disabled and this \'captureEnvelope\' call is a no-op."

    .line 23
    .line 24
    invoke-interface {p0, p1, v1, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 29
    .line 30
    invoke-virtual {v1}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1, p1, p2}, Lio/sentry/ISentryClient;->g(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_1
    return-object v0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 52
    .line 53
    const-string v1, "Error while capturing envelope."

    .line 54
    .line 55
    invoke-interface {p0, p2, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method

.method public final h(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;
    .locals 5

    .line 1
    const-string v0, "profilingContinuousData is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v2, "Instance is disabled and this \'captureTransaction\' call is a no-op."

    .line 28
    .line 29
    invoke-interface {p0, p1, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 34
    .line 35
    invoke-virtual {v1}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1, p1}, Lio/sentry/ISentryClient;->h(Lio/sentry/ProfileChunk;)Lio/sentry/protocol/SentryId;

    .line 40
    .line 41
    .line 42
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 54
    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v4, "Error while capturing profile chunk with id: "

    .line 58
    .line 59
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, Lio/sentry/ProfileChunk;->l:Lio/sentry/protocol/SentryId;

    .line 63
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p0, v2, p1, v1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method public final isEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Lio/sentry/ISentryClient;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final j()Lio/sentry/SentryOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/CombinedScopeView;->a:Lio/sentry/IScope;

    .line 4
    .line 5
    invoke-interface {p0}, Lio/sentry/IScope;->j()Lio/sentry/SentryOptions;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final k()Lio/sentry/ITransaction;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "Instance is disabled and this \'getTransaction\' call is a no-op."

    .line 21
    .line 22
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_0
    iget-object p0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 28
    .line 29
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->k()Lio/sentry/ITransaction;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "Instance is disabled and this \'endSession\' call is a no-op."

    .line 21
    .line 22
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 27
    .line 28
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->l()Lio/sentry/Session;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v1, Lio/sentry/hints/SessionEndHint;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v1}, Lio/sentry/util/HintUtils;->a(Ljava/lang/Object;)Lio/sentry/Hint;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-interface {p0, v0, v1}, Lio/sentry/ISentryClient;->a(Lio/sentry/Session;Lio/sentry/Hint;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 17
    .line 18
    const-string v2, "Instance is disabled and this \'startSession\' call is a no-op."

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 27
    .line 28
    invoke-virtual {v0}, Lio/sentry/CombinedScopeView;->m()Lio/sentry/Scope$SessionPair;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    iget-object p0, v2, Lio/sentry/Scope$SessionPair;->a:Lio/sentry/Session;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    new-instance v1, Lio/sentry/hints/SessionEndHint;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v1}, Lio/sentry/util/HintUtils;->a(Ljava/lang/Object;)Lio/sentry/Hint;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {v3, p0, v1}, Lio/sentry/ISentryClient;->a(Lio/sentry/Session;Lio/sentry/Hint;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    new-instance p0, Lio/sentry/hints/SessionStartHint;

    .line 55
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lio/sentry/util/HintUtils;->a(Ljava/lang/Object;)Lio/sentry/Hint;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-object v1, v2, Lio/sentry/Scope$SessionPair;->b:Lio/sentry/Session;

    .line 68
    .line 69
    invoke-interface {v0, v1, p0}, Lio/sentry/ISentryClient;->a(Lio/sentry/Session;Lio/sentry/Hint;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 82
    .line 83
    const-string v2, "Session could not be started."

    .line 84
    .line 85
    new-array v1, v1, [Ljava/lang/Object;

    .line 86
    .line 87
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final n(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;
    .locals 6

    .line 1
    iget-object v0, p2, Lio/sentry/SpanOptions;->d:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p1, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    sget-object v2, Lio/sentry/NoOpTransaction;->a:Lio/sentry/NoOpTransaction;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 23
    .line 24
    const-string v0, "Instance is disabled and this \'startTransaction\' returns a no-op."

    .line 25
    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getIgnoredSpanOrigins()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v3, p1, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v3, v0}, Lio/sentry/util/SpanUtils;->a(Ljava/lang/String;Ljava/util/List;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 58
    .line 59
    iget-object p1, p1, Lio/sentry/SpanContext;->r:Ljava/lang/String;

    .line 60
    .line 61
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v1, "Returning no-op for span origin %s as the SDK has been configured to ignore it"

    .line 66
    .line 67
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_2

    .line 71
    .line 72
    :cond_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getInstrumenter()Lio/sentry/Instrumenter;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v3, p1, Lio/sentry/SpanContext;->u:Lio/sentry/Instrumenter;

    .line 81
    .line 82
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 97
    .line 98
    iget-object p1, p1, Lio/sentry/SpanContext;->u:Lio/sentry/Instrumenter;

    .line 99
    .line 100
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getInstrumenter()Lio/sentry/Instrumenter;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string p1, "Returning no-op for instrumenter %s as the SDK has been configured to use instrumenter %s"

    .line 113
    .line 114
    invoke-interface {v0, v1, p1, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :cond_2
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_3

    .line 128
    .line 129
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 138
    .line 139
    const-string v0, "Tracing is disabled and this \'startTransaction\' returns a no-op."

    .line 140
    .line 141
    new-array v1, v1, [Ljava/lang/Object;

    .line 142
    .line 143
    invoke-interface {p0, p1, v0, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_2

    .line 147
    .line 148
    :cond_3
    iget-object v0, p1, Lio/sentry/SpanContext;->v:Lio/sentry/Baggage;

    .line 149
    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    iget-object v0, v0, Lio/sentry/Baggage;->d:Ljava/lang/Double;

    .line 153
    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    iget-object v0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 158
    .line 159
    invoke-virtual {v0}, Lio/sentry/CombinedScopeView;->t()Lio/sentry/PropagationContext;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v0, v0, Lio/sentry/PropagationContext;->c:Lio/sentry/Baggage;

    .line 164
    .line 165
    iget-object v0, v0, Lio/sentry/Baggage;->d:Ljava/lang/Double;

    .line 166
    .line 167
    if-nez v0, :cond_5

    .line 168
    .line 169
    const-wide/16 v0, 0x0

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 173
    .line 174
    .line 175
    move-result-wide v0

    .line 176
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :goto_1
    new-instance v1, Lio/sentry/SamplingContext;

    .line 181
    .line 182
    invoke-direct {v1, p1, v0}, Lio/sentry/SamplingContext;-><init>(Lio/sentry/TransactionContext;Ljava/lang/Double;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getInternalTracesSampler()Lio/sentry/TracesSampler;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0, v1}, Lio/sentry/TracesSampler;->a(Lio/sentry/SamplingContext;)Lio/sentry/TracesSamplingDecision;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iget-object v1, v0, Lio/sentry/TracesSamplingDecision;->a:Ljava/lang/Boolean;

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lio/sentry/SpanContext;->a(Lio/sentry/TracesSamplingDecision;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getSpanFactory()Lio/sentry/ISpanFactory;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_6

    .line 215
    .line 216
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_6

    .line 225
    .line 226
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    sget-object v4, Lio/sentry/ProfileLifecycle;->TRACE:Lio/sentry/ProfileLifecycle;

    .line 235
    .line 236
    if-ne v3, v4, :cond_6

    .line 237
    .line 238
    iget-object v3, p1, Lio/sentry/SpanContext;->x:Lio/sentry/protocol/SentryId;

    .line 239
    .line 240
    sget-object v5, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 241
    .line 242
    invoke-virtual {v3, v5}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-eqz v3, :cond_6

    .line 247
    .line 248
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-virtual {v5}, Lio/sentry/SentryOptions;->getInternalTracesSampler()Lio/sentry/TracesSampler;

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-interface {v3, v4, v5}, Lio/sentry/IContinuousProfiler;->d(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V

    .line 265
    .line 266
    .line 267
    :cond_6
    iget-object v3, p0, Lio/sentry/Scopes;->d:Lio/sentry/CompositePerformanceCollector;

    .line 268
    .line 269
    invoke-interface {v2, p1, p0, p2, v3}, Lio/sentry/ISpanFactory;->a(Lio/sentry/TransactionContext;Lio/sentry/Scopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)Lio/sentry/ITransaction;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_8

    .line 278
    .line 279
    iget-object p1, v0, Lio/sentry/TracesSamplingDecision;->d:Ljava/lang/Boolean;

    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_8

    .line 286
    .line 287
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 288
    .line 289
    .line 290
    move-result-object p0

    .line 291
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-interface {p0}, Lio/sentry/ITransactionProfiler;->isRunning()Z

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    if-nez p1, :cond_7

    .line 300
    .line 301
    invoke-interface {p0}, Lio/sentry/ITransactionProfiler;->start()V

    .line 302
    .line 303
    .line 304
    invoke-interface {p0, v2}, Lio/sentry/ITransactionProfiler;->a(Lio/sentry/ITransaction;)V

    .line 305
    .line 306
    .line 307
    goto :goto_2

    .line 308
    :cond_7
    iget-boolean p1, p2, Lio/sentry/TransactionOptions;->e:Z

    .line 309
    .line 310
    if-eqz p1, :cond_8

    .line 311
    .line 312
    invoke-interface {p0, v2}, Lio/sentry/ITransactionProfiler;->a(Lio/sentry/ITransaction;)V

    .line 313
    .line 314
    .line 315
    :cond_8
    :goto_2
    sget-object p0, Lio/sentry/ScopeBindingMode;->ON:Lio/sentry/ScopeBindingMode;

    .line 316
    .line 317
    iget-object p1, p2, Lio/sentry/SpanOptions;->b:Lio/sentry/ScopeBindingMode;

    .line 318
    .line 319
    if-ne p0, p1, :cond_9

    .line 320
    .line 321
    invoke-interface {v2}, Lio/sentry/ISpan;->j()V

    .line 322
    .line 323
    .line 324
    :cond_9
    return-object v2
.end method

.method public final o(Lio/sentry/ScopeCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v1, "Instance is disabled and this \'configureScope\' call is a no-op."

    .line 21
    .line 22
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Lio/sentry/ScopeCallback;->i(Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 47
    .line 48
    const-string v1, "Error in the \'configureScope\' callback."

    .line 49
    .line 50
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final p(Ljava/lang/String;Lio/sentry/SentryLevel;Lp;)Lio/sentry/protocol/SentryId;
    .locals 5

    .line 1
    sget-object v0, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 20
    .line 21
    const-string p2, "Instance is disabled and this \'captureMessage\' call is a no-op."

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    new-array p3, p3, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    if-eqz p3, :cond_1

    .line 31
    .line 32
    :try_start_0
    invoke-interface {v2}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p3, v1}, Lp;->i(Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p3

    .line 41
    :try_start_1
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 50
    .line 51
    const-string v4, "Error in the \'ScopeCallback\' callback."

    .line 52
    .line 53
    invoke-interface {v1, v3, v4, p3}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    move-object v1, v2

    .line 57
    :goto_0
    invoke-virtual {v2}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v3, Lio/sentry/SentryEvent;

    .line 65
    .line 66
    invoke-direct {v3}, Lio/sentry/SentryEvent;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v4, Lio/sentry/protocol/Message;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object p1, v4, Lio/sentry/protocol/Message;->j:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v4, v3, Lio/sentry/SentryEvent;->z:Lio/sentry/protocol/Message;

    .line 77
    .line 78
    iput-object p2, v3, Lio/sentry/SentryEvent;->D:Lio/sentry/SentryLevel;

    .line 79
    .line 80
    const/4 p2, 0x0

    .line 81
    invoke-interface {p3, v3, v1, p2}, Lio/sentry/ISentryClient;->k(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 82
    .line 83
    .line 84
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    goto :goto_1

    .line 86
    :catchall_1
    move-exception p2

    .line 87
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 96
    .line 97
    const-string v1, "Error while capturing message: "

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p0, p3, p1, p2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_1
    invoke-virtual {v2, v0}, Lio/sentry/CombinedScopeView;->F(Lio/sentry/protocol/SentryId;)V

    .line 107
    .line 108
    .line 109
    return-object v0
.end method

.method public final r(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    new-array p2, p2, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v0, "Instance is disabled and this \'captureReplay\' call is a no-op."

    .line 25
    .line 26
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2, p1, v0, p2}, Lio/sentry/ISentryClient;->e(Lio/sentry/SentryReplayEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 35
    .line 36
    .line 37
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 49
    .line 50
    const-string v0, "Error while capturing replay"

    .line 51
    .line 52
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-object v1
.end method

.method public final s()Lio/sentry/IScope;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scopes;->a:Lio/sentry/IScope;

    .line 2
    .line 3
    return-object p0
.end method

.method public final t()Lio/sentry/IFeedbackApi;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/Scopes;->f:Lio/sentry/IFeedbackApi;

    .line 2
    .line 3
    return-object p0
.end method

.method public final u(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;
    .locals 7

    .line 1
    iget-object v3, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 2
    .line 3
    iget-object v0, p1, Lio/sentry/protocol/SentryTransaction;->B:Ljava/util/ArrayList;

    .line 4
    .line 5
    sget-object v6, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 23
    .line 24
    const-string p2, "Instance is disabled and this \'captureTransaction\' call is a no-op."

    .line 25
    .line 26
    new-array p3, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-object v6

    .line 32
    :cond_0
    iget-object v1, p1, Lio/sentry/protocol/SentryTransaction;->A:Ljava/lang/Double;

    .line 33
    .line 34
    if-eqz v1, :cond_5

    .line 35
    .line 36
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 37
    .line 38
    iget-object v4, p1, Lio/sentry/SentryBaseEvent;->k:Lio/sentry/protocol/Contexts;

    .line 39
    .line 40
    invoke-virtual {v4}, Lio/sentry/protocol/Contexts;->i()Lio/sentry/SpanContext;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    if-nez v4, :cond_1

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object v4, v4, Lio/sentry/SpanContext;->m:Lio/sentry/TracesSamplingDecision;

    .line 49
    .line 50
    :goto_0
    if-nez v4, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget-object v2, v4, Lio/sentry/TracesSamplingDecision;->a:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    sget-object p3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 78
    .line 79
    iget-object p1, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 80
    .line 81
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const-string p4, "Transaction %s was dropped due to sampling decision."

    .line 86
    .line 87
    invoke-interface {p2, p3, p4, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getBackpressureMonitor()Lio/sentry/backpressure/IBackpressureMonitor;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1}, Lio/sentry/backpressure/IBackpressureMonitor;->a()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-lez p1, :cond_3

    .line 103
    .line 104
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    sget-object p2, Lio/sentry/clientreport/DiscardReason;->BACKPRESSURE:Lio/sentry/clientreport/DiscardReason;

    .line 113
    .line 114
    sget-object p3, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 115
    .line 116
    invoke-interface {p1, p2, p3}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    sget-object p1, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result p3

    .line 133
    add-int/lit8 p3, p3, 0x1

    .line 134
    .line 135
    int-to-long p3, p3

    .line 136
    invoke-interface {p0, p2, p1, p3, p4}, Lio/sentry/clientreport/IClientReportRecorder;->c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 137
    .line 138
    .line 139
    return-object v6

    .line 140
    :cond_3
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    sget-object p2, Lio/sentry/clientreport/DiscardReason;->SAMPLE_RATE:Lio/sentry/clientreport/DiscardReason;

    .line 149
    .line 150
    sget-object p3, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    .line 151
    .line 152
    invoke-interface {p1, p2, p3}, Lio/sentry/clientreport/IClientReportRecorder;->a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getClientReportRecorder()Lio/sentry/clientreport/IClientReportRecorder;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    sget-object p1, Lio/sentry/DataCategory;->Span:Lio/sentry/DataCategory;

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    add-int/lit8 p3, p3, 0x1

    .line 170
    .line 171
    int-to-long p3, p3

    .line 172
    invoke-interface {p0, p2, p1, p3, p4}, Lio/sentry/clientreport/IClientReportRecorder;->c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;J)V

    .line 173
    .line 174
    .line 175
    return-object v6

    .line 176
    :cond_4
    :try_start_0
    invoke-virtual {v3}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 177
    .line 178
    .line 179
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    move-object v1, p1

    .line 181
    move-object v2, p2

    .line 182
    move-object v4, p3

    .line 183
    move-object v5, p4

    .line 184
    :try_start_1
    invoke-interface/range {v0 .. v5}, Lio/sentry/ISentryClient;->i(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/IScope;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    .line 185
    .line 186
    .line 187
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    return-object p0

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    :goto_2
    move-object p1, v0

    .line 191
    goto :goto_3

    .line 192
    :catchall_1
    move-exception v0

    .line 193
    move-object v1, p1

    .line 194
    goto :goto_2

    .line 195
    :goto_3
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 204
    .line 205
    new-instance p3, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string p4, "Error while capturing transaction with id: "

    .line 208
    .line 209
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget-object p4, v1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 213
    .line 214
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p3

    .line 221
    invoke-interface {p0, p2, p3, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    return-object v6

    .line 225
    :cond_5
    move-object v1, p1

    .line 226
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 231
    .line 232
    .line 233
    move-result-object p0

    .line 234
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 235
    .line 236
    iget-object p2, v1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 237
    .line 238
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    const-string p3, "Transaction: %s is not finished and this \'captureTransaction\' call is a no-op."

    .line 243
    .line 244
    invoke-interface {p0, p1, p3, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    .line 246
    .line 247
    return-object v6
.end method

.method public final v(Ljava/lang/String;)Lio/sentry/IScopes;
    .locals 2

    .line 1
    new-instance p1, Lio/sentry/Scopes;

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/Scopes;->a:Lio/sentry/IScope;

    .line 4
    .line 5
    invoke-interface {v0}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/sentry/Scopes;->b:Lio/sentry/IScope;

    .line 10
    .line 11
    invoke-interface {v1}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p0, p0, Lio/sentry/Scopes;->c:Lio/sentry/IScope;

    .line 16
    .line 17
    invoke-direct {p1, v0, v1, p0}, Lio/sentry/Scopes;-><init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public final w(Lio/sentry/protocol/Feedback;)Lio/sentry/protocol/SentryId;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 21
    .line 22
    const-string v0, "Instance is disabled and this \'captureFeedback\' call is a no-op."

    .line 23
    .line 24
    new-array v2, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {p0, p1, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    iget-object v2, p1, Lio/sentry/protocol/Feedback;->j:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 47
    .line 48
    const-string v0, "captureFeedback called with empty message."

    .line 49
    .line 50
    new-array v2, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-interface {p0, p1, v0, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v2, p1, v0}, Lio/sentry/ISentryClient;->j(Lio/sentry/protocol/Feedback;Lio/sentry/IScope;)Lio/sentry/protocol/SentryId;

    .line 61
    .line 62
    .line 63
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    return-object p0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v4, "Error while capturing feedback: "

    .line 79
    .line 80
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p1, Lio/sentry/protocol/Feedback;->j:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-interface {p0, v2, p1, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    return-object v1
.end method

.method public final x(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 2
    .line 3
    sget-object v1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    invoke-virtual {p0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 20
    .line 21
    const-string p2, "Instance is disabled and this \'captureEvent\' call is a no-op."

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lio/sentry/CombinedScopeView;->A(Lio/sentry/SentryEvent;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Lio/sentry/CombinedScopeView;->w()Lio/sentry/ISentryClient;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2, p1, v0, p2}, Lio/sentry/ISentryClient;->k(Lio/sentry/SentryEvent;Lio/sentry/IScope;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lio/sentry/CombinedScopeView;->F(Lio/sentry/protocol/SentryId;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    return-object v1

    .line 45
    :catchall_0
    move-exception p2

    .line 46
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v3, "Error while capturing event with id: "

    .line 59
    .line 60
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lio/sentry/SentryBaseEvent;->j:Lio/sentry/protocol/SentryId;

    .line 64
    .line 65
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p0, v0, p1, p2}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    return-object v1
.end method
