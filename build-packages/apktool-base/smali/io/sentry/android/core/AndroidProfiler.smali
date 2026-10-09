.class public Lio/sentry/android/core/AndroidProfiler;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/AndroidProfiler$ProfileStartData;,
        Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    }
.end annotation


# instance fields
.field public a:J

.field public final b:Ljava/io/File;

.field public final c:I

.field public d:Ljava/util/concurrent/Future;

.field public e:Ljava/io/File;

.field public f:Ljava/lang/String;

.field public final g:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field public final h:Ljava/util/ArrayDeque;

.field public final i:Ljava/util/ArrayDeque;

.field public final j:Ljava/util/ArrayDeque;

.field public final k:Ljava/util/HashMap;

.field public final l:Lio/sentry/util/LazyEvaluator$Evaluator;

.field public final m:Lio/sentry/ILogger;

.field public volatile n:Z

.field public final o:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/util/LazyEvaluator$Evaluator;Lio/sentry/ILogger;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lio/sentry/android/core/AndroidProfiler;->a:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->d:Ljava/util/concurrent/Future;

    .line 10
    .line 11
    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->e:Ljava/io/File;

    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayDeque;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->h:Ljava/util/ArrayDeque;

    .line 19
    .line 20
    new-instance v0, Ljava/util/ArrayDeque;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->i:Ljava/util/ArrayDeque;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->j:Ljava/util/ArrayDeque;

    .line 33
    .line 34
    new-instance v0, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->k:Ljava/util/HashMap;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidProfiler;->n:Z

    .line 43
    .line 44
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 50
    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    .line 53
    const-string v1, "TracesFilesDirPath is required"

    .line 54
    .line 55
    invoke-static {p1, v1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->b:Ljava/io/File;

    .line 62
    .line 63
    iput p2, p0, Lio/sentry/android/core/AndroidProfiler;->c:I

    .line 64
    .line 65
    const-string p1, "Logger is required"

    .line 66
    .line 67
    invoke-static {p5, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iput-object p5, p0, Lio/sentry/android/core/AndroidProfiler;->m:Lio/sentry/ILogger;

    .line 71
    .line 72
    iput-object p4, p0, Lio/sentry/android/core/AndroidProfiler;->l:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 73
    .line 74
    const-string p1, "SentryFrameMetricsCollector is required"

    .line 75
    .line 76
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-object p3, p0, Lio/sentry/android/core/AndroidProfiler;->g:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 80
    .line 81
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Z)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;
    .locals 13

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    :try_start_0
    iget-boolean v0, p0, Lio/sentry/android/core/AndroidProfiler;->n:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lio/sentry/android/core/AndroidProfiler;->m:Lio/sentry/ILogger;

    .line 14
    .line 15
    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 16
    .line 17
    const-string p2, "Profiler not running"

    .line 18
    .line 19
    new-array v0, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 25
    .line 26
    .line 27
    return-object v2

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    move-object p0, v0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    :goto_0
    :try_start_2
    iput-boolean v3, p0, Lio/sentry/android/core/AndroidProfiler;->n:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception v0

    .line 39
    :try_start_3
    iget-object v4, p0, Lio/sentry/android/core/AndroidProfiler;->m:Lio/sentry/ILogger;

    .line 40
    .line 41
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 42
    .line 43
    const-string v6, "Error while stopping profiling: "

    .line 44
    .line 45
    invoke-interface {v4, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :goto_1
    :try_start_4
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->g:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 50
    .line 51
    iget-object v4, p0, Lio/sentry/android/core/AndroidProfiler;->f:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->e:Ljava/io/File;

    .line 65
    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    iget-object p0, p0, Lio/sentry/android/core/AndroidProfiler;->m:Lio/sentry/ILogger;

    .line 69
    .line 70
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 71
    .line 72
    const-string p2, "Trace file does not exists"

    .line 73
    .line 74
    new-array v0, v3, [Ljava/lang/Object;

    .line 75
    .line 76
    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :cond_1
    :try_start_5
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->i:Ljava/util/ArrayDeque;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    const-string v3, "nanosecond"

    .line 90
    .line 91
    if-nez v0, :cond_2

    .line 92
    .line 93
    :try_start_6
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->k:Ljava/util/HashMap;

    .line 94
    .line 95
    const-string v4, "slow_frame_renders"

    .line 96
    .line 97
    new-instance v5, Lio/sentry/profilemeasurements/ProfileMeasurement;

    .line 98
    .line 99
    iget-object v10, p0, Lio/sentry/android/core/AndroidProfiler;->i:Ljava/util/ArrayDeque;

    .line 100
    .line 101
    invoke-direct {v5, v3, v10}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/AbstractCollection;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->j:Ljava/util/ArrayDeque;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_3

    .line 114
    .line 115
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->k:Ljava/util/HashMap;

    .line 116
    .line 117
    const-string v4, "frozen_frame_renders"

    .line 118
    .line 119
    new-instance v5, Lio/sentry/profilemeasurements/ProfileMeasurement;

    .line 120
    .line 121
    iget-object v10, p0, Lio/sentry/android/core/AndroidProfiler;->j:Ljava/util/ArrayDeque;

    .line 122
    .line 123
    invoke-direct {v5, v3, v10}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/AbstractCollection;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_3
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->h:Ljava/util/ArrayDeque;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_4

    .line 136
    .line 137
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->k:Ljava/util/HashMap;

    .line 138
    .line 139
    const-string v3, "screen_frame_rates"

    .line 140
    .line 141
    new-instance v4, Lio/sentry/profilemeasurements/ProfileMeasurement;

    .line 142
    .line 143
    const-string v5, "hz"

    .line 144
    .line 145
    iget-object v10, p0, Lio/sentry/android/core/AndroidProfiler;->h:Ljava/util/ArrayDeque;

    .line 146
    .line 147
    invoke-direct {v4, v5, v10}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/AbstractCollection;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    :cond_4
    invoke-virtual {p0, p1}, Lio/sentry/android/core/AndroidProfiler;->b(Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lio/sentry/android/core/AndroidProfiler;->d:Ljava/util/concurrent/Future;

    .line 157
    .line 158
    if-eqz p1, :cond_5

    .line 159
    .line 160
    const/4 v0, 0x1

    .line 161
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 162
    .line 163
    .line 164
    iput-object v2, p0, Lio/sentry/android/core/AndroidProfiler;->d:Ljava/util/concurrent/Future;

    .line 165
    .line 166
    :cond_5
    new-instance v5, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    .line 167
    .line 168
    iget-object v11, p0, Lio/sentry/android/core/AndroidProfiler;->e:Ljava/io/File;

    .line 169
    .line 170
    iget-object v12, p0, Lio/sentry/android/core/AndroidProfiler;->k:Ljava/util/HashMap;

    .line 171
    .line 172
    move v10, p2

    .line 173
    invoke-direct/range {v5 .. v12}, Lio/sentry/android/core/AndroidProfiler$ProfileEndData;-><init>(JJZLjava/io/File;Ljava/util/HashMap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 174
    .line 175
    .line 176
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 177
    .line 178
    .line 179
    return-object v5

    .line 180
    :catchall_2
    move-exception v0

    .line 181
    move-object p1, v0

    .line 182
    :try_start_7
    iput-boolean v3, p0, Lio/sentry/android/core/AndroidProfiler;->n:Z

    .line 183
    .line 184
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 185
    :goto_2
    :try_start_8
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :catchall_3
    move-exception v0

    .line 190
    move-object p1, v0

    .line 191
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    :goto_3
    throw p0
.end method

.method public final b(Ljava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    iget-wide v3, v0, Lio/sentry/android/core/AndroidProfiler;->a:J

    .line 8
    .line 9
    sub-long/2addr v1, v3

    .line 10
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    sub-long/2addr v1, v3

    .line 21
    if-eqz p1, :cond_6

    .line 22
    .line 23
    new-instance v3, Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-direct {v3, v4}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 30
    .line 31
    .line 32
    new-instance v4, Ljava/util/ArrayDeque;

    .line 33
    .line 34
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    invoke-direct {v4, v5}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 39
    .line 40
    .line 41
    new-instance v5, Ljava/util/ArrayDeque;

    .line 42
    .line 43
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-direct {v5, v6}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 48
    .line 49
    .line 50
    monitor-enter p1

    .line 51
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_3

    .line 60
    .line 61
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Lio/sentry/PerformanceCollectionData;

    .line 66
    .line 67
    iget-wide v8, v7, Lio/sentry/PerformanceCollectionData;->d:J

    .line 68
    .line 69
    add-long v10, v8, v1

    .line 70
    .line 71
    iget-object v12, v7, Lio/sentry/PerformanceCollectionData;->a:Ljava/lang/Double;

    .line 72
    .line 73
    iget-object v13, v7, Lio/sentry/PerformanceCollectionData;->b:Ljava/lang/Long;

    .line 74
    .line 75
    iget-object v7, v7, Lio/sentry/PerformanceCollectionData;->c:Ljava/lang/Long;

    .line 76
    .line 77
    if-eqz v12, :cond_1

    .line 78
    .line 79
    new-instance v14, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 80
    .line 81
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v15

    .line 85
    invoke-direct {v14, v15, v12, v8, v9}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    :goto_1
    if-eqz v13, :cond_2

    .line 95
    .line 96
    new-instance v12, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 97
    .line 98
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v14

    .line 102
    invoke-direct {v12, v14, v13, v8, v9}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v12}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    :cond_2
    if-eqz v7, :cond_0

    .line 109
    .line 110
    new-instance v12, Lio/sentry/profilemeasurements/ProfileMeasurementValue;

    .line 111
    .line 112
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    invoke-direct {v12, v10, v7, v8, v9}, Lio/sentry/profilemeasurements/ProfileMeasurementValue;-><init>(Ljava/lang/Long;Ljava/lang/Number;J)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v12}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_4

    .line 129
    .line 130
    iget-object v1, v0, Lio/sentry/android/core/AndroidProfiler;->k:Ljava/util/HashMap;

    .line 131
    .line 132
    const-string v2, "cpu_usage"

    .line 133
    .line 134
    new-instance v6, Lio/sentry/profilemeasurements/ProfileMeasurement;

    .line 135
    .line 136
    const-string v7, "percent"

    .line 137
    .line 138
    invoke-direct {v6, v7, v5}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/AbstractCollection;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_5

    .line 149
    .line 150
    iget-object v1, v0, Lio/sentry/android/core/AndroidProfiler;->k:Ljava/util/HashMap;

    .line 151
    .line 152
    const-string v2, "memory_footprint"

    .line 153
    .line 154
    new-instance v5, Lio/sentry/profilemeasurements/ProfileMeasurement;

    .line 155
    .line 156
    const-string v6, "byte"

    .line 157
    .line 158
    invoke-direct {v5, v6, v3}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/AbstractCollection;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_6

    .line 169
    .line 170
    iget-object v0, v0, Lio/sentry/android/core/AndroidProfiler;->k:Ljava/util/HashMap;

    .line 171
    .line 172
    const-string v1, "memory_native_footprint"

    .line 173
    .line 174
    new-instance v2, Lio/sentry/profilemeasurements/ProfileMeasurement;

    .line 175
    .line 176
    const-string v3, "byte"

    .line 177
    .line 178
    invoke-direct {v2, v3, v4}, Lio/sentry/profilemeasurements/ProfileMeasurement;-><init>(Ljava/lang/String;Ljava/util/AbstractCollection;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    return-void

    .line 185
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    throw v0

    .line 187
    :cond_6
    return-void
.end method

.method public final c()Lio/sentry/android/core/AndroidProfiler$ProfileStartData;
    .locals 13

    .line 1
    const-string v0, ".trace"

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/AndroidProfiler;->o:Lio/sentry/util/AutoClosableReentrantLock;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :try_start_0
    iget v2, p0, Lio/sentry/android/core/AndroidProfiler;->c:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lio/sentry/android/core/AndroidProfiler;->m:Lio/sentry/ILogger;

    .line 15
    .line 16
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 17
    .line 18
    const-string v4, "Disabling profiling because intervaUs is set to %d"

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {p0, v0, v4, v2}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 32
    .line 33
    .line 34
    return-object v3

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    move-object p0, v0

    .line 37
    goto/16 :goto_2

    .line 38
    .line 39
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lio/sentry/android/core/AndroidProfiler;->n:Z

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iget-object p0, p0, Lio/sentry/android/core/AndroidProfiler;->m:Lio/sentry/ILogger;

    .line 45
    .line 46
    sget-object v0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 47
    .line 48
    const-string v2, "Profiling has already started..."

    .line 49
    .line 50
    new-array v4, v4, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-interface {p0, v0, v2, v4}, Lio/sentry/ILogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 56
    .line 57
    .line 58
    return-object v3

    .line 59
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/File;

    .line 60
    .line 61
    iget-object v5, p0, Lio/sentry/android/core/AndroidProfiler;->b:Ljava/io/File;

    .line 62
    .line 63
    invoke-static {}, Lio/sentry/SentryUUID;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-direct {v2, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Lio/sentry/android/core/AndroidProfiler;->e:Ljava/io/File;

    .line 75
    .line 76
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->k:Ljava/util/HashMap;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->h:Ljava/util/ArrayDeque;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->i:Ljava/util/ArrayDeque;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->j:Ljava/util/ArrayDeque;

    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->g:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 97
    .line 98
    new-instance v2, Lio/sentry/android/core/AndroidProfiler$1;

    .line 99
    .line 100
    invoke-direct {v2, p0}, Lio/sentry/android/core/AndroidProfiler$1;-><init>(Lio/sentry/android/core/AndroidProfiler;)V

    .line 101
    .line 102
    .line 103
    iget-boolean v5, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->p:Z

    .line 104
    .line 105
    if-nez v5, :cond_2

    .line 106
    .line 107
    move-object v5, v3

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-static {}, Lio/sentry/SentryUUID;->a()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    iget-object v6, v0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 114
    .line 115
    invoke-virtual {v6, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->b()V

    .line 119
    .line 120
    .line 121
    :goto_0
    iput-object v5, p0, Lio/sentry/android/core/AndroidProfiler;->f:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    :try_start_3
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->l:Lio/sentry/util/LazyEvaluator$Evaluator;

    .line 124
    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    invoke-interface {v0}, Lio/sentry/util/LazyEvaluator$Evaluator;->c()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lio/sentry/ISentryExecutorService;

    .line 132
    .line 133
    new-instance v2, Lio/sentry/android/core/b;

    .line 134
    .line 135
    const/4 v5, 0x4

    .line 136
    invoke-direct {v2, v5, p0}, Lio/sentry/android/core/b;-><init>(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    const-wide/16 v5, 0x7530

    .line 140
    .line 141
    invoke-interface {v0, v5, v6, v2}, Lio/sentry/ISentryExecutorService;->c(JLjava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iput-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->d:Ljava/util/concurrent/Future;
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    :try_start_4
    iget-object v2, p0, Lio/sentry/android/core/AndroidProfiler;->m:Lio/sentry/ILogger;

    .line 150
    .line 151
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 152
    .line 153
    const-string v6, "Failed to call the executor. Profiling will not be automatically finished. Did you call Sentry.close()?"

    .line 154
    .line 155
    invoke-interface {v2, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .line 157
    .line 158
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 159
    .line 160
    .line 161
    move-result-wide v5

    .line 162
    iput-wide v5, p0, Lio/sentry/android/core/AndroidProfiler;->a:J

    .line 163
    .line 164
    invoke-static {}, Lio/sentry/DateUtils;->b()Ljava/util/Date;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 169
    .line 170
    .line 171
    move-result-wide v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    :try_start_5
    iget-object v0, p0, Lio/sentry/android/core/AndroidProfiler;->e:Ljava/io/File;

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget v2, p0, Lio/sentry/android/core/AndroidProfiler;->c:I

    .line 179
    .line 180
    const v5, 0x2dc6c0

    .line 181
    .line 182
    .line 183
    invoke-static {v0, v5, v2}, Landroid/os/Debug;->startMethodTracingSampling(Ljava/lang/String;II)V

    .line 184
    .line 185
    .line 186
    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lio/sentry/android/core/AndroidProfiler;->n:Z

    .line 188
    .line 189
    new-instance v7, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;

    .line 190
    .line 191
    iget-wide v8, p0, Lio/sentry/android/core/AndroidProfiler;->a:J

    .line 192
    .line 193
    invoke-direct/range {v7 .. v12}, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;-><init>(JJLjava/util/Date;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 194
    .line 195
    .line 196
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 197
    .line 198
    .line 199
    return-object v7

    .line 200
    :catchall_1
    move-exception v0

    .line 201
    :try_start_6
    invoke-virtual {p0, v3, v4}, Lio/sentry/android/core/AndroidProfiler;->a(Ljava/util/List;Z)Lio/sentry/android/core/AndroidProfiler$ProfileEndData;

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Lio/sentry/android/core/AndroidProfiler;->m:Lio/sentry/ILogger;

    .line 205
    .line 206
    sget-object v5, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 207
    .line 208
    const-string v6, "Unable to start a profile: "

    .line 209
    .line 210
    invoke-interface {v2, v5, v6, v0}, Lio/sentry/ILogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .line 212
    .line 213
    iput-boolean v4, p0, Lio/sentry/android/core/AndroidProfiler;->n:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 214
    .line 215
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    .line 216
    .line 217
    .line 218
    return-object v3

    .line 219
    :goto_2
    :try_start_7
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 220
    .line 221
    .line 222
    goto :goto_3

    .line 223
    :catchall_2
    move-exception v0

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 225
    .line 226
    .line 227
    :goto_3
    throw p0
.end method
