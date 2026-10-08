.class final Lio/sentry/android/core/AndroidTransactionProfiler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lio/sentry/ITransactionProfiler;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/sentry/ILogger;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:I

.field public final f:Lio/sentry/util/LazyEvaluator$Evaluator;

.field public final g:Lio/sentry/android/core/BuildInfoProvider;

.field public h:Z

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field public volatile k:Lio/sentry/ProfilingTransactionData;

.field public volatile l:Lio/sentry/android/core/AndroidProfiler;

.field public m:J

.field public n:J

.field public o:Ljava/util/Date;

.field public final p:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/util/LazyEvaluator$Evaluator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->h:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->l:Lio/sentry/android/core/AndroidProfiler;

    .line 16
    .line 17
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->p:Lio/sentry/util/AutoClosableReentrantLock;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    move-object p1, v0

    .line 31
    :cond_0
    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->a:Landroid/content/Context;

    .line 32
    .line 33
    const-string p1, "ILogger is required"

    .line 34
    .line 35
    invoke-static {p4, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object p4, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->b:Lio/sentry/ILogger;

    .line 39
    .line 40
    iput-object p3, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->j:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 41
    .line 42
    const-string p1, "The BuildInfoProvider is required."

    .line 43
    .line 44
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iput-object p2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->g:Lio/sentry/android/core/BuildInfoProvider;

    .line 48
    .line 49
    iput-object p5, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->c:Ljava/lang/String;

    .line 50
    .line 51
    iput-boolean p6, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->d:Z

    .line 52
    .line 53
    iput p7, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->e:I

    .line 54
    .line 55
    iput-object p8, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->f:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 56
    .line 57
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iput-object p1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->o:Ljava/util/Date;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/ITransaction;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->k:Lio/sentry/ProfilingTransactionData;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->p:Lio/sentry/util/AutoClosableReentrantLock;

    .line 14
    .line 15
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->k:Lio/sentry/ProfilingTransactionData;

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Lio/sentry/ProfilingTransactionData;

    .line 32
    .line 33
    iget-wide v2, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->m:J

    .line 34
    .line 35
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-wide v3, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->n:J

    .line 40
    .line 41
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-direct {v1, p1, v2, v3}, Lio/sentry/ProfilingTransactionData;-><init>(Lio/sentry/ITransaction;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->k:Lio/sentry/ProfilingTransactionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :goto_2
    throw p0

    .line 66
    :cond_1
    return-void
.end method

.method public final b(Lio/sentry/SentryTracer;Ljava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;
    .locals 7

    .line 1
    iget-object v1, p1, Lio/sentry/SentryTracer;->e:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p1, Lio/sentry/SentryTracer;->a:Lio/sentry/protocol/SentryId;

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object p1, p1, Lio/sentry/SentryTracer;->b:Lio/sentry/Span;

    .line 10
    .line 11
    iget-object p1, p1, Lio/sentry/Span;->c:Lio/sentry/SpanContext;

    .line 12
    .line 13
    iget-object p1, p1, Lio/sentry/SpanContext;->j:Lio/sentry/protocol/SentryId;

    .line 14
    .line 15
    invoke-virtual {p1}, Lio/sentry/protocol/SentryId;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v0, p0

    .line 21
    move-object v5, p2

    .line 22
    move-object v6, p3

    .line 23
    invoke-virtual/range {v0 .. v6}, Lio/sentry/android/core/AndroidTransactionProfiler;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v6, p3

    .line 6
    .line 7
    move-object/from16 v1, p6

    .line 8
    .line 9
    iget-object v2, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->g:Lio/sentry/android/core/BuildInfoProvider;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    iget-object v2, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->l:Lio/sentry/android/core/AndroidProfiler;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v2, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->p:Lio/sentry/util/AutoClosableReentrantLock;

    .line 23
    .line 24
    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    :try_start_0
    iget-object v5, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->k:Lio/sentry/ProfilingTransactionData;

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget-object v7, v5, Lio/sentry/ProfilingTransactionData;->j:Ljava/lang/String;

    .line 33
    .line 34
    move-object/from16 v9, p2

    .line 35
    .line 36
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-nez v7, :cond_2

    .line 41
    .line 42
    :cond_1
    move-object/from16 p5, v3

    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_2
    iput-object v3, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->k:Lio/sentry/ProfilingTransactionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 49
    .line 50
    .line 51
    iget-object v2, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->b:Lio/sentry/ILogger;

    .line 52
    .line 53
    sget-object v7, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 54
    .line 55
    const-string v10, "Transaction %s (%s) finished."

    .line 56
    .line 57
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    invoke-interface {v2, v7, v10, v11}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->l:Lio/sentry/android/core/AndroidProfiler;

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    move-object/from16 v10, p5

    .line 68
    .line 69
    invoke-virtual {v2, v10, v7}, Lio/sentry/android/core/AndroidProfiler;->a(Ljava/util/List;Z)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v10, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    .line 77
    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    :goto_0
    return-object v3

    .line 81
    :cond_3
    iget-wide v10, v2, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->a:J

    .line 82
    .line 83
    iget-wide v12, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->m:J

    .line 84
    .line 85
    sub-long/2addr v10, v12

    .line 86
    move-object v12, v3

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    .line 88
    .line 89
    const/4 v13, 0x1

    .line 90
    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    iget-wide v13, v2, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->a:J

    .line 97
    .line 98
    move/from16 v16, v7

    .line 99
    .line 100
    move v15, v8

    .line 101
    iget-wide v7, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->m:J

    .line 102
    .line 103
    move-object/from16 p5, v12

    .line 104
    .line 105
    move-wide/from16 v17, v13

    .line 106
    .line 107
    iget-wide v12, v2, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->b:J

    .line 108
    .line 109
    move-object v14, v3

    .line 110
    iget-wide v3, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->n:J

    .line 111
    .line 112
    move-wide/from16 v19, v3

    .line 113
    .line 114
    iget-object v3, v5, Lio/sentry/ProfilingTransactionData;->n:Ljava/lang/Long;

    .line 115
    .line 116
    if-nez v3, :cond_4

    .line 117
    .line 118
    sub-long v3, v17, v7

    .line 119
    .line 120
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    iput-object v3, v5, Lio/sentry/ProfilingTransactionData;->n:Ljava/lang/Long;

    .line 125
    .line 126
    iget-object v3, v5, Lio/sentry/ProfilingTransactionData;->m:Ljava/lang/Long;

    .line 127
    .line 128
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 129
    .line 130
    .line 131
    move-result-wide v3

    .line 132
    sub-long/2addr v3, v7

    .line 133
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    iput-object v3, v5, Lio/sentry/ProfilingTransactionData;->m:Ljava/lang/Long;

    .line 138
    .line 139
    sub-long v12, v12, v19

    .line 140
    .line 141
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    iput-object v3, v5, Lio/sentry/ProfilingTransactionData;->p:Ljava/lang/Long;

    .line 146
    .line 147
    iget-object v3, v5, Lio/sentry/ProfilingTransactionData;->o:Ljava/lang/Long;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 150
    .line 151
    .line 152
    move-result-wide v3

    .line 153
    sub-long v3, v3, v19

    .line 154
    .line 155
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    iput-object v3, v5, Lio/sentry/ProfilingTransactionData;->o:Ljava/lang/Long;

    .line 160
    .line 161
    :cond_4
    instance-of v3, v1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 162
    .line 163
    if-eqz v3, :cond_5

    .line 164
    .line 165
    iget-object v3, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->a:Landroid/content/Context;

    .line 166
    .line 167
    move-object v4, v1

    .line 168
    check-cast v4, Lio/sentry/android/core/SentryAndroidOptions;

    .line 169
    .line 170
    invoke-static {v3, v4}, Lio/sentry/android/core/DeviceInfoUtil;->c(Landroid/content/Context;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/DeviceInfoUtil;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    iget-object v3, v3, Lio/sentry/android/core/DeviceInfoUtil;->h:Ljava/lang/Long;

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_5
    move-object/from16 v3, p5

    .line 178
    .line 179
    :goto_1
    if-eqz v3, :cond_6

    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 182
    .line 183
    .line 184
    move-result-wide v3

    .line 185
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    goto :goto_2

    .line 190
    :cond_6
    const-string v3, "0"

    .line 191
    .line 192
    :goto_2
    sget-object v4, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 193
    .line 194
    new-instance v5, Lio/sentry/ProfilingTraceData;

    .line 195
    .line 196
    iget-object v1, v2, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->c:Ljava/io/File;

    .line 197
    .line 198
    iget-object v7, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->o:Ljava/util/Date;

    .line 199
    .line 200
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    iget-object v10, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->g:Lio/sentry/android/core/BuildInfoProvider;

    .line 205
    .line 206
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    if-eqz v4, :cond_7

    .line 210
    .line 211
    array-length v10, v4

    .line 212
    if-lez v10, :cond_7

    .line 213
    .line 214
    aget-object v4, v4, v16

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_7
    const-string v4, ""

    .line 218
    .line 219
    :goto_3
    new-instance v10, Lio/sentry/android/core/i;

    .line 220
    .line 221
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 222
    .line 223
    .line 224
    iget-object v11, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->g:Lio/sentry/android/core/BuildInfoProvider;

    .line 225
    .line 226
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 230
    .line 231
    iget-object v12, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->g:Lio/sentry/android/core/BuildInfoProvider;

    .line 232
    .line 233
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 234
    .line 235
    .line 236
    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 237
    .line 238
    iget-object v13, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->g:Lio/sentry/android/core/BuildInfoProvider;

    .line 239
    .line 240
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 244
    .line 245
    iget-object v0, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->g:Lio/sentry/android/core/BuildInfoProvider;

    .line 246
    .line 247
    invoke-virtual {v0}, Lio/sentry/android/core/BuildInfoProvider;->a()Ljava/lang/Boolean;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual/range {p6 .. p6}, Lio/sentry/SentryOptions;->getProguardUuid()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v16

    .line 255
    invoke-virtual/range {p6 .. p6}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v17

    .line 259
    invoke-virtual/range {p6 .. p6}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v18

    .line 263
    move-object/from16 p0, v0

    .line 264
    .line 265
    iget-boolean v0, v2, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->e:Z

    .line 266
    .line 267
    if-nez v0, :cond_9

    .line 268
    .line 269
    if-eqz p4, :cond_8

    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_8
    const-string v0, "normal"

    .line 273
    .line 274
    :goto_4
    move-object/from16 v19, v0

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_9
    :goto_5
    const-string v0, "timeout"

    .line 278
    .line 279
    goto :goto_4

    .line 280
    :goto_6
    iget-object v0, v2, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;->d:Ljava/util/Map;

    .line 281
    .line 282
    move-object/from16 v20, v0

    .line 283
    .line 284
    move-object v0, v5

    .line 285
    move-object v2, v7

    .line 286
    move-object v7, v8

    .line 287
    move-object v5, v9

    .line 288
    move v8, v15

    .line 289
    move-object v15, v3

    .line 290
    move-object v9, v4

    .line 291
    move-object v3, v14

    .line 292
    move-object/from16 v14, p0

    .line 293
    .line 294
    move-object/from16 v4, p1

    .line 295
    .line 296
    invoke-direct/range {v0 .. v20}, Lio/sentry/ProfilingTraceData;-><init>(Ljava/io/File;Ljava/util/Date;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 297
    .line 298
    .line 299
    return-object v0

    .line 300
    :catchall_0
    move-exception v0

    .line 301
    move-object v1, v0

    .line 302
    goto :goto_8

    .line 303
    :goto_7
    :try_start_1
    iget-object v0, v0, Lio/sentry/android/core/AndroidTransactionProfiler;->b:Lio/sentry/ILogger;

    .line 304
    .line 305
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 306
    .line 307
    const-string v3, "Transaction %s (%s) finished, but was not currently being profiled. Skipping"

    .line 308
    .line 309
    filled-new-array {v4, v6}, [Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    .line 315
    .line 316
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    .line 317
    .line 318
    .line 319
    return-object p5

    .line 320
    :goto_8
    :try_start_2
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    .line 322
    .line 323
    goto :goto_9

    .line 324
    :catchall_1
    move-exception v0

    .line 325
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 326
    .line 327
    .line 328
    :goto_9
    throw v1
.end method

.method public final close()V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->k:Lio/sentry/ProfilingTransactionData;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v2, v0, Lio/sentry/ProfilingTransactionData;->l:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lio/sentry/ProfilingTransactionData;->j:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lio/sentry/ProfilingTransactionData;->k:Ljava/lang/String;

    .line 10
    .line 11
    sget-object v0, Lio/sentry/ScopesAdapter;->a:Lio/sentry/ScopesAdapter;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/sentry/ScopesAdapter;->j()Lio/sentry/SentryOptions;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v1, p0

    .line 20
    invoke-virtual/range {v1 .. v7}, Lio/sentry/android/core/AndroidTransactionProfiler;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, p0

    .line 25
    :goto_0
    iget-object p0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    iget-object p0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->l:Lio/sentry/android/core/AndroidProfiler;

    .line 32
    .line 33
    if-eqz p0, :cond_3

    .line 34
    .line 35
    iget-object p0, v1, Lio/sentry/android/core/AndroidTransactionProfiler;->l:Lio/sentry/android/core/AndroidProfiler;

    .line 36
    .line 37
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 38
    .line 39
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->d:Ljava/util/concurrent/Future;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    const/4 v3, 0x1

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lio/sentry/android/core/AndroidProfiler;->d:Ljava/util/concurrent/Future;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    move-object p0, v0

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidProfiler;->n:Z

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0, v2, v3}, Lio/sentry/android/core/AndroidProfiler;->a(Ljava/util/List;Z)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_2
    :try_start_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :catchall_1
    move-exception v0

    .line 74
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_3
    throw p0

    .line 78
    :cond_3
    return-void
.end method

.method public final isRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final start()V
    .locals 11

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->g:Lio/sentry/android/core/BuildInfoProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_7

    .line 14
    .line 15
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->h:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput-boolean v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->h:Z

    .line 22
    .line 23
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->d:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->b:Lio/sentry/ILogger;

    .line 28
    .line 29
    sget-object v1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 30
    .line 31
    const-string v3, "Profiling is disabled in options."

    .line 32
    .line 33
    new-array v4, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v6, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->c:Ljava/lang/String;

    .line 40
    .line 41
    if-nez v6, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->b:Lio/sentry/ILogger;

    .line 44
    .line 45
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 46
    .line 47
    const-string v3, "Disabling profiling because no profiling traces dir path is defined in options."

    .line 48
    .line 49
    new-array v4, v2, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-interface {v0, v1, v3, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->e:I

    .line 56
    .line 57
    if-gtz v0, :cond_3

    .line 58
    .line 59
    iget-object v1, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->b:Lio/sentry/ILogger;

    .line 60
    .line 61
    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v4, "Disabling profiling because trace rate is set to %d"

    .line 72
    .line 73
    invoke-interface {v1, v3, v4, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    new-instance v5, Lio/sentry/android/core/AndroidProfiler;

    .line 78
    .line 79
    const v1, 0xf4240

    .line 80
    .line 81
    .line 82
    div-int v7, v1, v0

    .line 83
    .line 84
    iget-object v8, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->j:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 85
    .line 86
    iget-object v9, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->f:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 87
    .line 88
    iget-object v10, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->b:Lio/sentry/ILogger;

    .line 89
    .line 90
    invoke-direct/range {v5 .. v10}, Lio/sentry/android/core/AndroidProfiler;-><init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/util/LazyEvaluator$Evaluator;Lio/sentry/ILogger;)V

    .line 91
    .line 92
    .line 93
    iput-object v5, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->l:Lio/sentry/android/core/AndroidProfiler;

    .line 94
    .line 95
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->l:Lio/sentry/android/core/AndroidProfiler;

    .line 96
    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->l:Lio/sentry/android/core/AndroidProfiler;

    .line 101
    .line 102
    invoke-virtual {v0}, Lio/sentry/android/core/AndroidProfiler;->c()Lio/sentry/android/core/AndroidProfiler$ProfileStartData;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-nez v0, :cond_6

    .line 107
    .line 108
    :goto_1
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->l:Lio/sentry/android/core/AndroidProfiler;

    .line 109
    .line 110
    if-eqz v0, :cond_5

    .line 111
    .line 112
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->l:Lio/sentry/android/core/AndroidProfiler;

    .line 113
    .line 114
    iget-boolean v0, v0, Lio/sentry/android/core/AndroidProfiler;->n:Z

    .line 115
    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    iget-object p0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->b:Lio/sentry/ILogger;

    .line 119
    .line 120
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 121
    .line 122
    const-string v1, "A profile is already running. This profile will be ignored."

    .line 123
    .line 124
    new-array v2, v2, [Ljava/lang/Object;

    .line 125
    .line 126
    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_5
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->p:Lio/sentry/util/AutoClosableReentrantLock;

    .line 131
    .line 132
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const/4 v0, 0x0

    .line 137
    :try_start_0
    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->k:Lio/sentry/ProfilingTransactionData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 140
    .line 141
    .line 142
    iget-object p0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    .line 144
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    move-object p0, v0

    .line 150
    :try_start_1
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :catchall_1
    move-exception v0

    .line 155
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    :goto_2
    throw p0

    .line 159
    :cond_6
    iget-wide v3, v0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->a:J

    .line 160
    .line 161
    iput-wide v3, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->m:J

    .line 162
    .line 163
    iget-wide v3, v0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->b:J

    .line 164
    .line 165
    iput-wide v3, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->n:J

    .line 166
    .line 167
    iget-object v0, v0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->c:Ljava/util/Date;

    .line 168
    .line 169
    iput-object v0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->o:Ljava/util/Date;

    .line 170
    .line 171
    iget-object p0, p0, Lio/sentry/android/core/AndroidTransactionProfiler;->b:Lio/sentry/ILogger;

    .line 172
    .line 173
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 174
    .line 175
    const-string v1, "Profiler started."

    .line 176
    .line 177
    new-array v2, v2, [Ljava/lang/Object;

    .line 178
    .line 179
    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    :cond_7
    return-void
.end method
