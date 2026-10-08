.class public final Lio/sentry/SentryTracer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ITransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryTracer$FinishStatus;
    }
.end annotation


# instance fields
.field public final a:Lio/sentry/protocol/SentryId;

.field public final b:Lio/sentry/Span;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final d:Lio/sentry/Scopes;

.field public final e:Ljava/lang/String;

.field public f:Lio/sentry/SentryTracer$FinishStatus;

.field public volatile g:Ljava/util/TimerTask;

.field public volatile h:Ljava/util/TimerTask;

.field public volatile i:Ljava/util/Timer;

.field public final j:Lio/sentry/util/AutoClosableReentrantLock;

.field public final k:Lio/sentry/util/AutoClosableReentrantLock;

.field public final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Lio/sentry/protocol/TransactionNameSource;

.field public final o:Lio/sentry/Instrumenter;

.field public final p:Lio/sentry/protocol/Contexts;

.field public final q:Lio/sentry/CompositePerformanceCollector;

.field public final r:Lio/sentry/TransactionOptions;


# direct methods
.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/Scopes;Lio/sentry/TransactionOptions;Lio/sentry/CompositePerformanceCollector;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/protocol/SentryId;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/SentryTracer;->a:Lio/sentry/protocol/SentryId;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    sget-object v0, Lio/sentry/SentryTracer$FinishStatus;->c:Lio/sentry/SentryTracer$FinishStatus;

    .line 19
    .line 20
    iput-object v0, p0, Lio/sentry/SentryTracer;->f:Lio/sentry/SentryTracer$FinishStatus;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lio/sentry/SentryTracer;->i:Ljava/util/Timer;

    .line 24
    .line 25
    new-instance v1, Lio/sentry/util/AutoClosableReentrantLock;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lio/sentry/SentryTracer;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 31
    .line 32
    new-instance v2, Lio/sentry/util/AutoClosableReentrantLock;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v2, p0, Lio/sentry/SentryTracer;->k:Lio/sentry/util/AutoClosableReentrantLock;

    .line 38
    .line 39
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lio/sentry/SentryTracer;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lio/sentry/SentryTracer;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    new-instance v4, Lio/sentry/protocol/Contexts;

    .line 55
    .line 56
    invoke-direct {v4}, Lio/sentry/protocol/Contexts;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v4, p0, Lio/sentry/SentryTracer;->p:Lio/sentry/protocol/Contexts;

    .line 60
    .line 61
    new-instance v5, Lio/sentry/Span;

    .line 62
    .line 63
    invoke-direct {v5, p1, p0, p2, p3}, Lio/sentry/Span;-><init>(Lio/sentry/TransactionContext;Lio/sentry/SentryTracer;Lio/sentry/Scopes;Lio/sentry/TransactionOptions;)V

    .line 64
    .line 65
    .line 66
    iput-object v5, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 67
    .line 68
    iget-object v6, p1, Lio/sentry/TransactionContext;->y:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v6, p0, Lio/sentry/SentryTracer;->e:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v6, p1, Lio/sentry/SpanContext;->u:Lio/sentry/Instrumenter;

    .line 73
    .line 74
    iput-object v6, p0, Lio/sentry/SentryTracer;->o:Lio/sentry/Instrumenter;

    .line 75
    .line 76
    iput-object p2, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 77
    .line 78
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {v5}, Lio/sentry/Span;->v()Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {p2, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_0

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move-object p4, v0

    .line 92
    :goto_0
    iput-object p4, p0, Lio/sentry/SentryTracer;->q:Lio/sentry/CompositePerformanceCollector;

    .line 93
    .line 94
    iget-object p1, p1, Lio/sentry/TransactionContext;->z:Lio/sentry/protocol/TransactionNameSource;

    .line 95
    .line 96
    iput-object p1, p0, Lio/sentry/SentryTracer;->n:Lio/sentry/protocol/TransactionNameSource;

    .line 97
    .line 98
    iput-object p3, p0, Lio/sentry/SentryTracer;->r:Lio/sentry/TransactionOptions;

    .line 99
    .line 100
    invoke-virtual {p0, v5}, Lio/sentry/SentryTracer;->z(Lio/sentry/Span;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->y()Lio/sentry/protocol/SentryId;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget-object v6, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 108
    .line 109
    invoke-virtual {p1, v6}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    if-nez v6, :cond_1

    .line 114
    .line 115
    invoke-virtual {v5}, Lio/sentry/Span;->v()Ljava/lang/Boolean;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {p2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p2

    .line 123
    if-eqz p2, :cond_1

    .line 124
    .line 125
    new-instance p2, Lio/sentry/ProfileContext;

    .line 126
    .line 127
    invoke-direct {p2, p1}, Lio/sentry/ProfileContext;-><init>(Lio/sentry/protocol/SentryId;)V

    .line 128
    .line 129
    .line 130
    const-string p1, "profile"

    .line 131
    .line 132
    invoke-virtual {v4, p2, p1}, Lio/sentry/protocol/Contexts;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    :cond_1
    if-eqz p4, :cond_2

    .line 136
    .line 137
    invoke-interface {p4, p0}, Lio/sentry/CompositePerformanceCollector;->e(Lio/sentry/SentryTracer;)V

    .line 138
    .line 139
    .line 140
    :cond_2
    iget-object p1, p3, Lio/sentry/TransactionOptions;->g:Ljava/lang/Long;

    .line 141
    .line 142
    if-nez p1, :cond_4

    .line 143
    .line 144
    iget-object p1, p3, Lio/sentry/TransactionOptions;->h:Ljava/lang/Long;

    .line 145
    .line 146
    if-eqz p1, :cond_3

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_3
    return-void

    .line 150
    :cond_4
    :goto_1
    new-instance p1, Ljava/util/Timer;

    .line 151
    .line 152
    const/4 p2, 0x1

    .line 153
    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    .line 154
    .line 155
    .line 156
    iput-object p1, p0, Lio/sentry/SentryTracer;->i:Ljava/util/Timer;

    .line 157
    .line 158
    iget-object p1, p3, Lio/sentry/TransactionOptions;->h:Ljava/lang/Long;

    .line 159
    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    :try_start_0
    iget-object p4, p0, Lio/sentry/SentryTracer;->i:Ljava/util/Timer;

    .line 167
    .line 168
    if-eqz p4, :cond_7

    .line 169
    .line 170
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->v()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 174
    .line 175
    .line 176
    new-instance p4, Lio/sentry/SentryTracer$2;

    .line 177
    .line 178
    invoke-direct {p4, p0}, Lio/sentry/SentryTracer$2;-><init>(Lio/sentry/SentryTracer;)V

    .line 179
    .line 180
    .line 181
    iput-object p4, p0, Lio/sentry/SentryTracer;->h:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    .line 183
    :try_start_1
    iget-object p4, p0, Lio/sentry/SentryTracer;->i:Ljava/util/Timer;

    .line 184
    .line 185
    iget-object v1, p0, Lio/sentry/SentryTracer;->h:Ljava/util/TimerTask;

    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 188
    .line 189
    .line 190
    move-result-wide v4

    .line 191
    invoke-virtual {p4, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .line 193
    .line 194
    goto :goto_4

    .line 195
    :catchall_0
    move-exception p1

    .line 196
    :try_start_2
    iget-object p4, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 197
    .line 198
    invoke-virtual {p4}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 199
    .line 200
    .line 201
    move-result-object p4

    .line 202
    invoke-virtual {p4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 203
    .line 204
    .line 205
    move-result-object p4

    .line 206
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 207
    .line 208
    const-string v2, "Failed to schedule finish timer"

    .line 209
    .line 210
    invoke-interface {p4, v1, v2, p1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->a()Lio/sentry/SpanStatus;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    if-eqz p1, :cond_5

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_5
    sget-object p1, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    .line 221
    .line 222
    :goto_2
    iget-object p4, p0, Lio/sentry/SentryTracer;->r:Lio/sentry/TransactionOptions;

    .line 223
    .line 224
    iget-object p4, p4, Lio/sentry/TransactionOptions;->g:Ljava/lang/Long;

    .line 225
    .line 226
    if-eqz p4, :cond_6

    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_6
    move p2, v3

    .line 230
    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Lio/sentry/SentryTracer;->e(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lio/sentry/SentryTracer;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 234
    .line 235
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :catchall_1
    move-exception p0

    .line 240
    goto :goto_5

    .line 241
    :cond_7
    :goto_4
    invoke-interface {p3}, Ljava/lang/AutoCloseable;->close()V

    .line 242
    .line 243
    .line 244
    goto :goto_7

    .line 245
    :goto_5
    :try_start_3
    invoke-interface {p3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 246
    .line 247
    .line 248
    goto :goto_6

    .line 249
    :catchall_2
    move-exception p1

    .line 250
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    :goto_6
    throw p0

    .line 254
    :cond_8
    :goto_7
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->p()V

    .line 255
    .line 256
    .line 257
    return-void
.end method


# virtual methods
.method public final a()Lio/sentry/SpanStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/SpanContext;->p:Lio/sentry/SpanStatus;

    .line 6
    .line 7
    return-object p0
.end method

.method public final b()Lio/sentry/TraceContext;
    .locals 13

    .line 1
    iget-object v1, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {v1}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 15
    .line 16
    iget-object v3, v0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 17
    .line 18
    iget-object v4, v0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 19
    .line 20
    iget-object v5, v3, Lio/sentry/SpanContext;->v:Lio/sentry/Baggage;

    .line 21
    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lio/sentry/SentryTracer;->k:Lio/sentry/util/AutoClosableReentrantLock;

    .line 25
    .line 26
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    :try_start_0
    iget-boolean v0, v5, Lio/sentry/Baggage;->e:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    .line 36
    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lio/sentry/Scopes;->isEnabled()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/4 v12, 0x0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {v1}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sget-object v2, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 55
    .line 56
    const-string v7, "Instance is disabled and this \'configureScope\' call is a no-op."

    .line 57
    .line 58
    new-array v8, v12, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-interface {v0, v2, v7, v8}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    .line 62
    .line 63
    :goto_0
    move-object v2, v6

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    :try_start_1
    iget-object v0, v1, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v0}, Lio/sentry/IScope;->h()Lio/sentry/protocol/SentryId;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    :try_start_2
    invoke-virtual {v1}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    sget-object v7, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 89
    .line 90
    const-string v8, "Error in the \'configureScope\' callback."

    .line 91
    .line 92
    invoke-interface {v2, v7, v8, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :goto_1
    iget-object v6, v4, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    move-object v7, v0

    .line 103
    check-cast v7, Lio/sentry/protocol/SentryId;

    .line 104
    .line 105
    invoke-virtual {v1}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    iget-object v9, v4, Lio/sentry/SpanContext;->m:Lio/sentry/TracesSamplingDecision;

    .line 110
    .line 111
    iget-object v10, p0, Lio/sentry/SentryTracer;->e:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v11, p0, Lio/sentry/SentryTracer;->n:Lio/sentry/protocol/TransactionNameSource;

    .line 114
    .line 115
    invoke-virtual/range {v5 .. v11}, Lio/sentry/Baggage;->d(Lio/sentry/protocol/SentryId;Lio/sentry/protocol/SentryId;Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V

    .line 116
    .line 117
    .line 118
    iput-boolean v12, v5, Lio/sentry/Baggage;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    move-object p0, v0

    .line 123
    goto :goto_3

    .line 124
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Lio/sentry/Baggage;->e()Lio/sentry/TraceContext;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :goto_3
    :try_start_3
    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :catchall_2
    move-exception v0

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :goto_4
    throw p0

    .line 141
    :cond_2
    return-object v2
.end method

.method public final c(Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 6

    .line 1
    new-instance v5, Lio/sentry/SpanOptions;

    .line 2
    .line 3
    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "activity.load"

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lio/sentry/SentryTracer;->l(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-boolean p0, p0, Lio/sentry/Span;->f:Z

    .line 4
    .line 5
    return p0
.end method

.method public final e(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-boolean v0, v0, Lio/sentry/Span;->f:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    iget-object v2, p0, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lio/sentry/Span;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    iput-object v3, v2, Lio/sentry/Span;->i:Lio/sentry/SpanFinishedCallback;

    .line 51
    .line 52
    invoke-virtual {v2, p1, v0}, Lio/sentry/Span;->t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/sentry/SentryTracer;->x(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final f(Ljava/lang/Number;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/sentry/Span;->f(Ljava/lang/Number;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(Lio/sentry/SpanStatus;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->a()Lio/sentry/SpanStatus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lio/sentry/SentryTracer;->t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/sentry/Span;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

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
    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 18
    .line 19
    const-string v0, "The transaction is already finished. Data %s cannot be set"

    .line 20
    .line 21
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {v0, p1, p2}, Lio/sentry/Span;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/Scopes;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

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
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v2, "Instance is disabled and this \'configureScope\' call is a no-op."

    .line 23
    .line 24
    invoke-interface {p0, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_0
    iget-object v1, v0, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-virtual {v1, v2}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1, p0}, Lio/sentry/IScope;->G(Lio/sentry/ITransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-virtual {v0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 49
    .line 50
    const-string v2, "Error in the \'configureScope\' callback."

    .line 51
    .line 52
    invoke-interface {v0, v1, v2, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final k()Lio/sentry/ISpan;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator(I)Ljava/util/ListIterator;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lio/sentry/Span;

    .line 27
    .line 28
    iget-boolean v1, v0, Lio/sentry/Span;->f:Z

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    return-object p0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-boolean v0, v0, Lio/sentry/Span;->f:Z

    .line 4
    .line 5
    sget-object v1, Lio/sentry/NoOpSpan;->a:Lio/sentry/NoOpSpan;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->o:Lio/sentry/Instrumenter;

    .line 11
    .line 12
    invoke-virtual {v0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-object v1

    .line 19
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v2, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 26
    .line 27
    invoke-virtual {v2}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getMaxSpans()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-ge v0, v3, :cond_2

    .line 36
    .line 37
    iget-object p0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 38
    .line 39
    invoke-virtual/range {p0 .. p5}, Lio/sentry/Span;->l(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    :cond_2
    invoke-virtual {v2}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 53
    .line 54
    const-string p4, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    .line 55
    .line 56
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p0, p3, p4, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-object v1
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/sentry/Span;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

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
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 18
    .line 19
    const-string v1, "The transaction is already finished. Description %s cannot be set"

    .line 20
    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object p0, v0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 30
    .line 31
    iput-object p1, p0, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 32
    .line 33
    return-void
.end method

.method public final n()Lio/sentry/protocol/SentryId;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->a:Lio/sentry/protocol/SentryId;

    .line 2
    .line 3
    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/SpanContext;->o:Ljava/lang/String;

    .line 6
    .line 7
    return-object p0
.end method

.method public final p()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->i:Ljava/util/Timer;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Lio/sentry/SentryTracer;->r:Lio/sentry/TransactionOptions;

    .line 12
    .line 13
    iget-object v1, v1, Lio/sentry/TransactionOptions;->g:Ljava/lang/Long;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->w()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lio/sentry/SentryTracer;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lio/sentry/SentryTracer$1;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lio/sentry/SentryTracer$1;-><init>(Lio/sentry/SentryTracer;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lio/sentry/SentryTracer;->g:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    .line 33
    :try_start_1
    iget-object v2, p0, Lio/sentry/SentryTracer;->i:Ljava/util/Timer;

    .line 34
    .line 35
    iget-object v3, p0, Lio/sentry/SentryTracer;->g:Ljava/util/TimerTask;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    :try_start_2
    iget-object v2, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 47
    .line 48
    invoke-virtual {v2}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 57
    .line 58
    const-string v4, "Failed to schedule finish timer"

    .line 59
    .line 60
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->a()Lio/sentry/SpanStatus;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    sget-object v1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 71
    .line 72
    :goto_0
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0, v1, v2}, Lio/sentry/SentryTracer;->t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lio/sentry/SentryTracer;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catchall_1
    move-exception p0

    .line 84
    goto :goto_2

    .line 85
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_2
    :try_start_3
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :catchall_2
    move-exception v0

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :goto_3
    throw p0
.end method

.method public final q(Ljava/lang/String;Ljava/lang/Long;Lio/sentry/MeasurementUnit;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/Span;->q(Ljava/lang/String;Ljava/lang/Long;Lio/sentry/MeasurementUnit;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r()Lio/sentry/SpanContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 4
    .line 5
    return-object p0
.end method

.method public final s()Lio/sentry/SentryDate;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 4
    .line 5
    return-object p0
.end method

.method public final t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/sentry/SentryTracer;->x(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final u()Lio/sentry/SentryDate;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-object p0, p0, Lio/sentry/Span;->a:Lio/sentry/SentryDate;

    .line 4
    .line 5
    return-object p0
.end method

.method public final v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->h:Ljava/util/TimerTask;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lio/sentry/SentryTracer;->h:Ljava/util/TimerTask;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/sentry/SentryTracer;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lio/sentry/SentryTracer;->h:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    throw p0
.end method

.method public final w()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->g:Ljava/util/TimerTask;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lio/sentry/SentryTracer;->g:Ljava/util/TimerTask;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/sentry/SentryTracer;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lio/sentry/SentryTracer;->g:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :goto_2
    throw p0
.end method

.method public final x(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-object v0, v0, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object p2, v0

    .line 9
    :goto_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 12
    .line 13
    invoke-virtual {p2}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-interface {p2}, Lio/sentry/SentryDateProvider;->a()Lio/sentry/SentryDate;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lio/sentry/Span;

    .line 42
    .line 43
    iget-object v1, v1, Lio/sentry/Span;->h:Lio/sentry/SpanOptions;

    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance v0, Lio/sentry/SentryTracer$FinishStatus;

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    invoke-direct {v0, v1, p1}, Lio/sentry/SentryTracer$FinishStatus;-><init>(ZLio/sentry/SpanStatus;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lio/sentry/SentryTracer;->f:Lio/sentry/SentryTracer$FinishStatus;

    .line 56
    .line 57
    iget-object p1, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 58
    .line 59
    iget-boolean p1, p1, Lio/sentry/Span;->f:Z

    .line 60
    .line 61
    if-nez p1, :cond_d

    .line 62
    .line 63
    iget-object p1, p0, Lio/sentry/SentryTracer;->r:Lio/sentry/TransactionOptions;

    .line 64
    .line 65
    iget-boolean p1, p1, Lio/sentry/TransactionOptions;->f:Z

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :cond_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lio/sentry/Span;

    .line 86
    .line 87
    iget-boolean v1, v0, Lio/sentry/Span;->f:Z

    .line 88
    .line 89
    if-nez v1, :cond_3

    .line 90
    .line 91
    iget-object v0, v0, Lio/sentry/Span;->b:Lio/sentry/SentryDate;

    .line 92
    .line 93
    if-nez v0, :cond_3

    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    .line 98
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 102
    .line 103
    iget-object v1, v0, Lio/sentry/Span;->i:Lio/sentry/SpanFinishedCallback;

    .line 104
    .line 105
    new-instance v2, Lio/sentry/h;

    .line 106
    .line 107
    invoke-direct {v2, p0, v1, p1}, Lio/sentry/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iput-object v2, v0, Lio/sentry/Span;->i:Lio/sentry/SpanFinishedCallback;

    .line 111
    .line 112
    iget-object v1, p0, Lio/sentry/SentryTracer;->f:Lio/sentry/SentryTracer$FinishStatus;

    .line 113
    .line 114
    iget-object v1, v1, Lio/sentry/SentryTracer$FinishStatus;->b:Lio/sentry/SpanStatus;

    .line 115
    .line 116
    invoke-virtual {v0, v1, p2}, Lio/sentry/Span;->t(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    .line 117
    .line 118
    .line 119
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 120
    .line 121
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 122
    .line 123
    invoke-virtual {v0}, Lio/sentry/Span;->v()Ljava/lang/Boolean;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    const/4 v1, 0x0

    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 135
    .line 136
    iget-object v0, v0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 137
    .line 138
    iget-object v0, v0, Lio/sentry/SpanContext;->m:Lio/sentry/TracesSamplingDecision;

    .line 139
    .line 140
    if-nez v0, :cond_5

    .line 141
    .line 142
    move-object v0, v1

    .line 143
    goto :goto_2

    .line 144
    :cond_5
    iget-object v0, v0, Lio/sentry/TracesSamplingDecision;->d:Ljava/lang/Boolean;

    .line 145
    .line 146
    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_6

    .line 151
    .line 152
    iget-object p2, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 153
    .line 154
    invoke-virtual {p2}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    check-cast v0, Ljava/util/List;

    .line 167
    .line 168
    iget-object v2, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 169
    .line 170
    invoke-virtual {v2}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-interface {p2, p0, v0, v2}, Lio/sentry/ITransactionProfiler;->b(Lio/sentry/SentryTracer;Ljava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    goto :goto_3

    .line 179
    :cond_6
    move-object p2, v1

    .line 180
    :goto_3
    iget-object v0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 181
    .line 182
    invoke-virtual {v0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isContinuousProfilingEnabled()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    iget-object v0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 193
    .line 194
    invoke-virtual {v0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getProfileLifecycle()Lio/sentry/ProfileLifecycle;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    sget-object v2, Lio/sentry/ProfileLifecycle;->TRACE:Lio/sentry/ProfileLifecycle;

    .line 203
    .line 204
    if-ne v0, v2, :cond_7

    .line 205
    .line 206
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 207
    .line 208
    iget-object v0, v0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 209
    .line 210
    iget-object v0, v0, Lio/sentry/SpanContext;->x:Lio/sentry/protocol/SentryId;

    .line 211
    .line 212
    sget-object v3, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 213
    .line 214
    invoke-virtual {v0, v3}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    iget-object v0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 221
    .line 222
    invoke-virtual {v0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-interface {v0, v2}, Lio/sentry/IContinuousProfiler;->c(Lio/sentry/ProfileLifecycle;)V

    .line 231
    .line 232
    .line 233
    :cond_7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    if-eqz v0, :cond_8

    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    check-cast p1, Ljava/util/List;

    .line 244
    .line 245
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 246
    .line 247
    .line 248
    :cond_8
    iget-object p1, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 249
    .line 250
    invoke-virtual {p1}, Lio/sentry/Scopes;->isEnabled()Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-nez v0, :cond_9

    .line 255
    .line 256
    invoke-virtual {p1}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 265
    .line 266
    const/4 v2, 0x0

    .line 267
    new-array v2, v2, [Ljava/lang/Object;

    .line 268
    .line 269
    const-string v3, "Instance is disabled and this \'configureScope\' call is a no-op."

    .line 270
    .line 271
    invoke-interface {p1, v0, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_9
    :try_start_0
    iget-object v0, p1, Lio/sentry/Scopes;->e:Lio/sentry/CombinedScopeView;

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Lio/sentry/CombinedScopeView;->e(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    new-instance v2, Ln5;

    .line 282
    .line 283
    const/16 v3, 0xb

    .line 284
    .line 285
    invoke-direct {v2, v3, p0, v0}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v0, v2}, Lio/sentry/IScope;->E(Lio/sentry/Scope$IWithTransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .line 290
    .line 291
    goto :goto_4

    .line 292
    :catchall_0
    move-exception v0

    .line 293
    invoke-virtual {p1}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 302
    .line 303
    const-string v3, "Error in the \'configureScope\' callback."

    .line 304
    .line 305
    invoke-interface {p1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .line 307
    .line 308
    :goto_4
    new-instance p1, Lio/sentry/protocol/SentryTransaction;

    .line 309
    .line 310
    invoke-direct {p1, p0}, Lio/sentry/protocol/SentryTransaction;-><init>(Lio/sentry/SentryTracer;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lio/sentry/SentryTracer;->i:Ljava/util/Timer;

    .line 314
    .line 315
    if-eqz v0, :cond_b

    .line 316
    .line 317
    iget-object v0, p0, Lio/sentry/SentryTracer;->j:Lio/sentry/util/AutoClosableReentrantLock;

    .line 318
    .line 319
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    :try_start_1
    iget-object v2, p0, Lio/sentry/SentryTracer;->i:Ljava/util/Timer;

    .line 324
    .line 325
    if-eqz v2, :cond_a

    .line 326
    .line 327
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->w()V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->v()V

    .line 331
    .line 332
    .line 333
    iget-object v2, p0, Lio/sentry/SentryTracer;->i:Ljava/util/Timer;

    .line 334
    .line 335
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 336
    .line 337
    .line 338
    iput-object v1, p0, Lio/sentry/SentryTracer;->i:Ljava/util/Timer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 339
    .line 340
    goto :goto_5

    .line 341
    :catchall_1
    move-exception p0

    .line 342
    goto :goto_6

    .line 343
    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 344
    .line 345
    .line 346
    goto :goto_8

    .line 347
    :goto_6
    :try_start_2
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 348
    .line 349
    .line 350
    goto :goto_7

    .line 351
    :catchall_2
    move-exception p1

    .line 352
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 353
    .line 354
    .line 355
    :goto_7
    throw p0

    .line 356
    :cond_b
    :goto_8
    if-eqz p3, :cond_c

    .line 357
    .line 358
    iget-object p3, p0, Lio/sentry/SentryTracer;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 359
    .line 360
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 361
    .line 362
    .line 363
    move-result p3

    .line 364
    if-eqz p3, :cond_c

    .line 365
    .line 366
    iget-object p3, p0, Lio/sentry/SentryTracer;->r:Lio/sentry/TransactionOptions;

    .line 367
    .line 368
    iget-object p3, p3, Lio/sentry/TransactionOptions;->g:Ljava/lang/Long;

    .line 369
    .line 370
    if-eqz p3, :cond_c

    .line 371
    .line 372
    iget-object p1, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 373
    .line 374
    invoke-virtual {p1}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 383
    .line 384
    iget-object p0, p0, Lio/sentry/SentryTracer;->e:Ljava/lang/String;

    .line 385
    .line 386
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object p0

    .line 390
    const-string p3, "Dropping idle transaction %s because it has no child spans"

    .line 391
    .line 392
    invoke-interface {p1, p2, p3, p0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :cond_c
    iget-object p3, p1, Lio/sentry/protocol/SentryTransaction;->C:Ljava/util/HashMap;

    .line 397
    .line 398
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 399
    .line 400
    iget-object v0, v0, Lio/sentry/Span;->k:Ljava/util/concurrent/ConcurrentHashMap;

    .line 401
    .line 402
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 403
    .line 404
    .line 405
    iget-object p3, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 406
    .line 407
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->b()Lio/sentry/TraceContext;

    .line 408
    .line 409
    .line 410
    move-result-object p0

    .line 411
    invoke-virtual {p3, p1, p0, p4, p2}, Lio/sentry/Scopes;->u(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    .line 412
    .line 413
    .line 414
    :cond_d
    return-void
.end method

.method public final y()Lio/sentry/protocol/SentryId;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 2
    .line 3
    iget-object v1, v0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 4
    .line 5
    iget-object v1, v1, Lio/sentry/SpanContext;->x:Lio/sentry/protocol/SentryId;

    .line 6
    .line 7
    sget-object v2, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object p0, v0, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 16
    .line 17
    iget-object p0, p0, Lio/sentry/SpanContext;->x:Lio/sentry/protocol/SentryId;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object p0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 21
    .line 22
    invoke-virtual {p0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Lio/sentry/IContinuousProfiler;->f()Lio/sentry/protocol/SentryId;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public final z(Lio/sentry/Span;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/SentryTracer;->d:Lio/sentry/Scopes;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/Scopes;->j()Lio/sentry/SentryOptions;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->y()Lio/sentry/protocol/SentryId;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v1, Lio/sentry/protocol/SentryId;->k:Lio/sentry/protocol/SentryId;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {p1}, Lio/sentry/Span;->v()Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const-string v1, "profiler_id"

    .line 36
    .line 37
    invoke-virtual {p0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p1, p0, v1}, Lio/sentry/Span;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->b()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v1, "thread.id"

    .line 53
    .line 54
    invoke-virtual {p1, p0, v1}, Lio/sentry/Span;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p0, "thread.name"

    .line 58
    .line 59
    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->a()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0, p0}, Lio/sentry/Span;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
