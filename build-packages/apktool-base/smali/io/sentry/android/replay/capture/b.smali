.class public final synthetic Lio/sentry/android/replay/capture/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

.field public final synthetic k:Lkotlin/jvm/functions/Function2;

.field public final synthetic l:J


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/functions/Function2;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/replay/capture/b;->j:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 5
    .line 6
    iput-object p2, p0, Lio/sentry/android/replay/capture/b;->k:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iput-wide p3, p0, Lio/sentry/android/replay/capture/b;->l:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    sget v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->w:I

    .line 2
    .line 3
    iget-object v0, p0, Lio/sentry/android/replay/capture/b;->j:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    .line 4
    .line 5
    iget-object v1, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Lio/sentry/android/replay/capture/b;->l:J

    .line 10
    .line 11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object p0, p0, Lio/sentry/android/replay/capture/b;->k:Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    invoke-interface {p0, v1, v2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p0, v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->t:Lio/sentry/transport/ICurrentDateProvider;

    .line 21
    .line 22
    invoke-interface {p0}, Lio/sentry/transport/ICurrentDateProvider;->b()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    iget-object p0, v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->r:Lio/sentry/SentryOptions;

    .line 27
    .line 28
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    iget-wide v3, p0, Lio/sentry/SentryReplayOptions;->h:J

    .line 33
    .line 34
    sub-long/2addr v1, v3

    .line 35
    iget-object p0, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->h:Lio/sentry/android/replay/ReplayCache;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0, v1, v2}, Lio/sentry/android/replay/ReplayCache;->v(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object p0, v3

    .line 46
    :goto_0
    iget-object v4, v0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->l:Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;

    .line 47
    .line 48
    sget-object v5, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->q:[Lkotlin/reflect/KProperty;

    .line 49
    .line 50
    const/4 v6, 0x2

    .line 51
    aget-object v5, v5, v6

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    iget-object v5, v4, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    .line 61
    invoke-virtual {v5, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_3

    .line 70
    .line 71
    new-instance v6, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;

    .line 72
    .line 73
    iget-object v7, v4, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;->c:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 74
    .line 75
    invoke-direct {v6, v5, p0, v7}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;)V

    .line 76
    .line 77
    .line 78
    iget-object p0, v4, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3;->b:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    .line 79
    .line 80
    iget-object v4, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->a:Lio/sentry/SentryOptions;

    .line 81
    .line 82
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-interface {v5}, Lio/sentry/util/thread/IThreadChecker;->c()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_2

    .line 91
    .line 92
    iget-object p0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->e:Lkotlin/Lazy;

    .line 93
    .line 94
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    .line 100
    new-instance v4, Lio/sentry/android/replay/util/ReplayRunnable;

    .line 101
    .line 102
    new-instance v5, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$1;

    .line 103
    .line 104
    invoke-direct {v5, v6}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$1;-><init>(Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;)V

    .line 105
    .line 106
    .line 107
    const-string v6, "CaptureStrategy.runInBackground"

    .line 108
    .line 109
    invoke-direct {v4, v5, v6}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p0, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    :try_start_0
    invoke-virtual {v6}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$special$$inlined$persistableAtomicNullable$default$3$2;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 126
    .line 127
    const-string v6, "Failed to execute task CaptureStrategy.runInBackground"

    .line 128
    .line 129
    invoke-interface {v4, v5, v6, p0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_1
    iget-object p0, v0, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->v:Ljava/util/ArrayList;

    .line 133
    .line 134
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 135
    .line 136
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v5, Lio/sentry/android/replay/capture/BufferCaptureStrategy$rotate$1;

    .line 140
    .line 141
    invoke-direct {v5, v1, v2, v0, v4}, Lio/sentry/android/replay/capture/BufferCaptureStrategy$rotate$1;-><init>(JLio/sentry/android/replay/capture/BufferCaptureStrategy;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p0, v5}, Lkotlin/collections/CollectionsKt;->J(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 145
    .line 146
    .line 147
    iget-boolean v0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->j:Z

    .line 148
    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    const/4 v0, 0x0

    .line 156
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_7

    .line 161
    .line 162
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    add-int/lit8 v2, v0, 0x1

    .line 167
    .line 168
    if-ltz v0, :cond_6

    .line 169
    .line 170
    check-cast v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;

    .line 171
    .line 172
    iget-object v4, v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->a:Lio/sentry/SentryReplayEvent;

    .line 173
    .line 174
    iput v0, v4, Lio/sentry/SentryReplayEvent;->C:I

    .line 175
    .line 176
    iget-object v1, v1, Lio/sentry/android/replay/capture/CaptureStrategy$ReplaySegment$Created;->b:Lio/sentry/ReplayRecording;

    .line 177
    .line 178
    iget-object v1, v1, Lio/sentry/ReplayRecording;->k:Ljava/util/List;

    .line 179
    .line 180
    if-eqz v1, :cond_5

    .line 181
    .line 182
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    if-eqz v4, :cond_5

    .line 191
    .line 192
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    check-cast v4, Lio/sentry/rrweb/RRWebEvent;

    .line 197
    .line 198
    instance-of v5, v4, Lio/sentry/rrweb/RRWebVideoEvent;

    .line 199
    .line 200
    if-eqz v5, :cond_4

    .line 201
    .line 202
    check-cast v4, Lio/sentry/rrweb/RRWebVideoEvent;

    .line 203
    .line 204
    iput v0, v4, Lio/sentry/rrweb/RRWebVideoEvent;->m:I

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_5
    move v0, v2

    .line 208
    goto :goto_2

    .line 209
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->T()V

    .line 210
    .line 211
    .line 212
    throw v3

    .line 213
    :cond_7
    return-void
.end method
