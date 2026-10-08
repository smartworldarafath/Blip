.class public final Lio/sentry/MainEventProcessor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/EventProcessor;
.implements Ljava/io/Closeable;


# instance fields
.field public final j:Lio/sentry/SentryOptions;

.field public final k:Lio/sentry/SentryThreadFactory;

.field public final l:Lio/sentry/SentryExceptionFactory;

.field public volatile m:Lio/sentry/HostnameCache;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/MainEventProcessor;->m:Lio/sentry/HostnameCache;

    .line 6
    .line 7
    iput-object p1, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 8
    .line 9
    new-instance v0, Lio/sentry/SentryStackTraceFactory;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lio/sentry/SentryStackTraceFactory;-><init>(Lio/sentry/SentryOptions;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lio/sentry/SentryExceptionFactory;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lio/sentry/SentryExceptionFactory;-><init>(Lio/sentry/SentryStackTraceFactory;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lio/sentry/MainEventProcessor;->l:Lio/sentry/SentryExceptionFactory;

    .line 20
    .line 21
    new-instance p1, Lio/sentry/SentryThreadFactory;

    .line 22
    .line 23
    invoke-direct {p1, v0}, Lio/sentry/SentryThreadFactory;-><init>(Lio/sentry/SentryStackTraceFactory;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lio/sentry/MainEventProcessor;->k:Lio/sentry/SentryThreadFactory;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/SentryReplayEvent;Lio/sentry/Hint;)Lio/sentry/SentryReplayEvent;
    .locals 1

    .line 1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "java"

    .line 6
    .line 7
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/sentry/MainEventProcessor;->v(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lio/sentry/MainEventProcessor;->q(Lio/sentry/SentryBaseEvent;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 19
    .line 20
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iget-object p0, p0, Lio/sentry/SentryReplayOptions;->l:Lio/sentry/protocol/SdkVersion;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iput-object p0, p1, Lio/sentry/SentryBaseEvent;->l:Lio/sentry/protocol/SdkVersion;

    .line 29
    .line 30
    :cond_1
    return-object p1
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->m:Lio/sentry/HostnameCache;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lio/sentry/MainEventProcessor;->m:Lio/sentry/HostnameCache;

    .line 6
    .line 7
    iget-object p0, p0, Lio/sentry/HostnameCache;->f:Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final h(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 8

    .line 1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "java"

    .line 6
    .line 7
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object v2, p1, Lio/sentry/SentryBaseEvent;->s:Lio/sentry/exception/ExceptionMechanismException;

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    new-instance v4, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v5, Ljava/util/ArrayDeque;

    .line 25
    .line 26
    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    iget-object v1, p0, Lio/sentry/MainEventProcessor;->l:Lio/sentry/SentryExceptionFactory;

    .line 31
    .line 32
    invoke-virtual/range {v1 .. v6}, Lio/sentry/SentryExceptionFactory;->a(Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/HashSet;Ljava/util/ArrayDeque;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lio/sentry/SentryEvent;->h(Ljava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 44
    .line 45
    iget-object v1, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 46
    .line 47
    invoke-static {v0, v1}, Lio/sentry/protocol/DebugMeta;->a(Lio/sentry/protocol/DebugMeta;Lio/sentry/SentryOptions;)Lio/sentry/protocol/DebugMeta;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 54
    .line 55
    :cond_2
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getModulesLoader()Lio/sentry/internal/modules/IModulesLoader;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Lio/sentry/internal/modules/IModulesLoader;->a()Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    iget-object v2, p1, Lio/sentry/SentryEvent;->H:Ljava/util/AbstractMap;

    .line 67
    .line 68
    if-nez v2, :cond_4

    .line 69
    .line 70
    new-instance v2, Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p1, Lio/sentry/SentryEvent;->H:Ljava/util/AbstractMap;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/sentry/MainEventProcessor;->v(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_d

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lio/sentry/MainEventProcessor;->q(Lio/sentry/SentryBaseEvent;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->e()Ljava/util/ArrayList;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-nez v0, :cond_d

    .line 95
    .line 96
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->d()Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const/4 v2, 0x0

    .line 101
    if-eqz v0, :cond_7

    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_7

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    move-object v4, v2

    .line 114
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-eqz v5, :cond_8

    .line 119
    .line 120
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    check-cast v5, Lio/sentry/protocol/SentryException;

    .line 125
    .line 126
    iget-object v6, v5, Lio/sentry/protocol/SentryException;->o:Lio/sentry/protocol/Mechanism;

    .line 127
    .line 128
    if-eqz v6, :cond_5

    .line 129
    .line 130
    iget-object v6, v5, Lio/sentry/protocol/SentryException;->m:Ljava/lang/Long;

    .line 131
    .line 132
    if-eqz v6, :cond_5

    .line 133
    .line 134
    if-nez v4, :cond_6

    .line 135
    .line 136
    new-instance v4, Ljava/util/ArrayList;

    .line 137
    .line 138
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .line 140
    .line 141
    :cond_6
    iget-object v5, v5, Lio/sentry/protocol/SentryException;->m:Ljava/lang/Long;

    .line 142
    .line 143
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_7
    move-object v4, v2

    .line 148
    :cond_8
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isAttachThreads()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    const-string v5, "sentry:typeCheckHint"

    .line 153
    .line 154
    const/4 v6, 0x0

    .line 155
    iget-object p0, p0, Lio/sentry/MainEventProcessor;->k:Lio/sentry/SentryThreadFactory;

    .line 156
    .line 157
    if-nez v3, :cond_b

    .line 158
    .line 159
    const-class v3, Lio/sentry/hints/AbnormalExit;

    .line 160
    .line 161
    invoke-virtual {p2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v7

    .line 165
    invoke-virtual {v3, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_9

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_9
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isAttachStacktrace()Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_d

    .line 177
    .line 178
    if-eqz v0, :cond_a

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_d

    .line 185
    .line 186
    :cond_a
    const-class v0, Lio/sentry/hints/Cached;

    .line 187
    .line 188
    invoke-virtual {p2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result p2

    .line 196
    if-nez p2, :cond_d

    .line 197
    .line 198
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isAttachStacktrace()Z

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    new-instance v0, Ljava/util/HashMap;

    .line 203
    .line 204
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    .line 206
    .line 207
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0, v0, v2, v6, p2}, Lio/sentry/SentryThreadFactory;->a(Ljava/util/Map;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->j(Ljava/util/List;)V

    .line 223
    .line 224
    .line 225
    return-object p1

    .line 226
    :cond_b
    :goto_2
    invoke-virtual {p2, v5}, Lio/sentry/Hint;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->isAttachStacktrace()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    instance-of v1, p2, Lio/sentry/hints/AbnormalExit;

    .line 235
    .line 236
    if-eqz v1, :cond_c

    .line 237
    .line 238
    check-cast p2, Lio/sentry/hints/AbnormalExit;

    .line 239
    .line 240
    invoke-interface {p2}, Lio/sentry/hints/AbnormalExit;->c()Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    const/4 v0, 0x1

    .line 245
    :cond_c
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 246
    .line 247
    .line 248
    move-result-object p2

    .line 249
    invoke-virtual {p0, p2, v4, v6, v0}, Lio/sentry/SentryThreadFactory;->a(Ljava/util/Map;Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-virtual {p1, p0}, Lio/sentry/SentryEvent;->j(Ljava/util/List;)V

    .line 254
    .line 255
    .line 256
    :cond_d
    return-object p1
.end method

.method public final n(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 2

    .line 1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "java"

    .line 6
    .line 7
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->q:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 10
    .line 11
    iget-object v1, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lio/sentry/protocol/DebugMeta;->a(Lio/sentry/protocol/DebugMeta;Lio/sentry/SentryOptions;)Lio/sentry/protocol/DebugMeta;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->w:Lio/sentry/protocol/DebugMeta;

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/sentry/MainEventProcessor;->v(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lio/sentry/MainEventProcessor;->q(Lio/sentry/SentryBaseEvent;)V

    .line 28
    .line 29
    .line 30
    :cond_2
    return-object p1
.end method

.method public final q(Lio/sentry/SentryBaseEvent;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->o:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->p:Ljava/lang/String;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 18
    .line 19
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->p:Ljava/lang/String;

    .line 24
    .line 25
    :cond_1
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->t:Ljava/lang/String;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 30
    .line 31
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getServerName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->t:Ljava/lang/String;

    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 38
    .line 39
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isAttachServerName()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_7

    .line 44
    .line 45
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->t:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v0, :cond_7

    .line 48
    .line 49
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->m:Lio/sentry/HostnameCache;

    .line 50
    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    sget-object v0, Lio/sentry/HostnameCache;->g:Lio/sentry/HostnameCache;

    .line 54
    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    sget-object v0, Lio/sentry/HostnameCache;->h:Lio/sentry/util/AutoClosableReentrantLock;

    .line 58
    .line 59
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :try_start_0
    sget-object v1, Lio/sentry/HostnameCache;->g:Lio/sentry/HostnameCache;

    .line 64
    .line 65
    if-nez v1, :cond_3

    .line 66
    .line 67
    new-instance v1, Lio/sentry/HostnameCache;

    .line 68
    .line 69
    invoke-direct {v1}, Lio/sentry/HostnameCache;-><init>()V

    .line 70
    .line 71
    .line 72
    sput-object v1, Lio/sentry/HostnameCache;->g:Lio/sentry/HostnameCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catchall_1
    move-exception p1

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :goto_2
    throw p0

    .line 90
    :cond_4
    :goto_3
    sget-object v0, Lio/sentry/HostnameCache;->g:Lio/sentry/HostnameCache;

    .line 91
    .line 92
    iput-object v0, p0, Lio/sentry/MainEventProcessor;->m:Lio/sentry/HostnameCache;

    .line 93
    .line 94
    :cond_5
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->m:Lio/sentry/HostnameCache;

    .line 95
    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->m:Lio/sentry/HostnameCache;

    .line 99
    .line 100
    iget-wide v1, v0, Lio/sentry/HostnameCache;->c:J

    .line 101
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    cmp-long v1, v1, v3

    .line 107
    .line 108
    if-gez v1, :cond_6

    .line 109
    .line 110
    iget-object v1, v0, Lio/sentry/HostnameCache;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    const/4 v3, 0x1

    .line 114
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    invoke-virtual {v0}, Lio/sentry/HostnameCache;->a()V

    .line 121
    .line 122
    .line 123
    :cond_6
    iget-object v0, v0, Lio/sentry/HostnameCache;->b:Ljava/lang/String;

    .line 124
    .line 125
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->t:Ljava/lang/String;

    .line 126
    .line 127
    :cond_7
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 128
    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 132
    .line 133
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDist()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->u:Ljava/lang/String;

    .line 138
    .line 139
    :cond_8
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->l:Lio/sentry/protocol/SdkVersion;

    .line 140
    .line 141
    if-nez v0, :cond_9

    .line 142
    .line 143
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 144
    .line 145
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSdkVersion()Lio/sentry/protocol/SdkVersion;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->l:Lio/sentry/protocol/SdkVersion;

    .line 150
    .line 151
    :cond_9
    iget-object v0, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 152
    .line 153
    iget-object v1, p1, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 154
    .line 155
    if-nez v1, :cond_a

    .line 156
    .line 157
    new-instance v1, Ljava/util/HashMap;

    .line 158
    .line 159
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v1}, Lio/sentry/SentryBaseEvent;->c(Ljava/util/Map;)V

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_a
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getTags()Ljava/util/Map;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    :cond_b
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_c

    .line 187
    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Ljava/util/Map$Entry;

    .line 193
    .line 194
    iget-object v2, p1, Lio/sentry/SentryBaseEvent;->n:Ljava/util/AbstractMap;

    .line 195
    .line 196
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_b

    .line 205
    .line 206
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    check-cast v2, Ljava/lang/String;

    .line 211
    .line 212
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v1, Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {p1, v2, v1}, Lio/sentry/SentryBaseEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_c
    :goto_5
    iget-object v0, p1, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 223
    .line 224
    if-nez v0, :cond_d

    .line 225
    .line 226
    new-instance v0, Lio/sentry/protocol/User;

    .line 227
    .line 228
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 229
    .line 230
    .line 231
    iput-object v0, p1, Lio/sentry/SentryBaseEvent;->r:Lio/sentry/protocol/User;

    .line 232
    .line 233
    :cond_d
    iget-object p1, v0, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 234
    .line 235
    if-nez p1, :cond_e

    .line 236
    .line 237
    iget-object p0, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

    .line 238
    .line 239
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    if-eqz p0, :cond_e

    .line 244
    .line 245
    const-string p0, "{{auto}}"

    .line 246
    .line 247
    iput-object p0, v0, Lio/sentry/protocol/User;->m:Ljava/lang/String;

    .line 248
    .line 249
    :cond_e
    return-void
.end method

.method public final v(Lio/sentry/SentryBaseEvent;Lio/sentry/Hint;)Z
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
    iget-object p0, p0, Lio/sentry/MainEventProcessor;->j:Lio/sentry/SentryOptions;

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
