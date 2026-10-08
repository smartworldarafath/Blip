.class public final Lio/sentry/android/core/SentryPerformanceProvider;
.super Lio/sentry/android/core/EmptySecureContentProvider;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final n:J

.field public static final synthetic o:I


# instance fields
.field public k:Landroid/app/Application;

.field public final l:Lio/sentry/android/core/AndroidLogger;

.field public final m:Lio/sentry/android/core/BuildInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sput-wide v0, Lio/sentry/android/core/SentryPerformanceProvider;->n:J

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/sentry/android/core/EmptySecureContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lio/sentry/android/core/AndroidLogger;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider;->l:Lio/sentry/android/core/AndroidLogger;

    .line 15
    .line 16
    new-instance v1, Lio/sentry/android/core/BuildInfoProvider;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lio/sentry/android/core/BuildInfoProvider;-><init>(Lio/sentry/ILogger;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->m:Lio/sentry/android/core/BuildInfoProvider;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/sentry/SentryAppStartProfilingOptions;Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 9

    .line 1
    iget-boolean v0, p2, Lio/sentry/SentryAppStartProfilingOptions;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v5, p0, Lio/sentry/android/core/SentryPerformanceProvider;->l:Lio/sentry/android/core/AndroidLogger;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 9
    .line 10
    const-string p1, "App start profiling was not sampled. It will not start."

    .line 11
    .line 12
    new-array p2, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v5, p0, p1, p2}, Lio/sentry/android/core/AndroidLogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lio/sentry/SentryExecutorService;

    .line 19
    .line 20
    invoke-direct {v0}, Lio/sentry/SentryExecutorService;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, Lio/sentry/android/core/AndroidContinuousProfiler;

    .line 24
    .line 25
    new-instance v4, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v3, p0, Lio/sentry/android/core/SentryPerformanceProvider;->m:Lio/sentry/android/core/BuildInfoProvider;

    .line 32
    .line 33
    invoke-direct {v4, p1, v5, v3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/android/core/AndroidLogger;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 34
    .line 35
    .line 36
    iget-object v6, p2, Lio/sentry/SentryAppStartProfilingOptions;->n:Ljava/lang/String;

    .line 37
    .line 38
    iget v7, p2, Lio/sentry/SentryAppStartProfilingOptions;->q:I

    .line 39
    .line 40
    new-instance v8, Lio/sentry/android/core/l;

    .line 41
    .line 42
    const/4 p1, 0x5

    .line 43
    invoke-direct {v8, p1, v0}, Lio/sentry/android/core/l;-><init>(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lio/sentry/android/core/SentryPerformanceProvider;->m:Lio/sentry/android/core/BuildInfoProvider;

    .line 47
    .line 48
    invoke-direct/range {v2 .. v8}, Lio/sentry/android/core/AndroidContinuousProfiler;-><init>(Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ILio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x0

    .line 52
    iput-object p0, p3, Lio/sentry/android/core/performance/AppStartMetrics;->r:Lio/sentry/ITransactionProfiler;

    .line 53
    .line 54
    iput-object v2, p3, Lio/sentry/android/core/performance/AppStartMetrics;->s:Lio/sentry/android/core/AndroidContinuousProfiler;

    .line 55
    .line 56
    sget-object p0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 57
    .line 58
    const-string p1, "App start continuous profiling started."

    .line 59
    .line 60
    new-array p3, v1, [Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {v5, p0, p1, p3}, Lio/sentry/android/core/AndroidLogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    iget-boolean p1, p2, Lio/sentry/SentryAppStartProfilingOptions;->r:Z

    .line 70
    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const-wide/16 v0, 0x0

    .line 77
    .line 78
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lio/sentry/SentryOptions;->setProfileSessionSampleRate(Ljava/lang/Double;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p2, Lio/sentry/SentryAppStartProfilingOptions;->u:Lio/sentry/ProfileLifecycle;

    .line 86
    .line 87
    new-instance p2, Lio/sentry/TracesSampler;

    .line 88
    .line 89
    invoke-direct {p2, p0}, Lio/sentry/TracesSampler;-><init>(Lio/sentry/SentryOptions;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, p1, p2}, Lio/sentry/android/core/AndroidContinuousProfiler;->d(Lio/sentry/ProfileLifecycle;Lio/sentry/TracesSampler;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 1
    const-class v0, Lio/sentry/android/core/SentryPerformanceProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const-string p0, "An applicationId is required to fulfill the manifest placeholder."

    .line 20
    .line 21
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final b(Landroid/content/Context;Lio/sentry/SentryAppStartProfilingOptions;Lio/sentry/android/core/performance/AppStartMetrics;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Lio/sentry/TracesSamplingDecision;

    .line 8
    .line 9
    iget-boolean v9, v1, Lio/sentry/SentryAppStartProfilingOptions;->l:Z

    .line 10
    .line 11
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v5, v1, Lio/sentry/SentryAppStartProfilingOptions;->m:Ljava/lang/Double;

    .line 16
    .line 17
    iget-boolean v6, v1, Lio/sentry/SentryAppStartProfilingOptions;->j:Z

    .line 18
    .line 19
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    iget-object v8, v1, Lio/sentry/SentryAppStartProfilingOptions;->k:Ljava/lang/Double;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    invoke-direct/range {v3 .. v8}, Lio/sentry/TracesSamplingDecision;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Boolean;Ljava/lang/Double;)V

    .line 27
    .line 28
    .line 29
    iput-object v3, v2, Lio/sentry/android/core/performance/AppStartMetrics;->t:Lio/sentry/TracesSamplingDecision;

    .line 30
    .line 31
    iget-object v3, v3, Lio/sentry/TracesSamplingDecision;->d:Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x0

    .line 38
    iget-object v14, v0, Lio/sentry/android/core/SentryPerformanceProvider;->l:Lio/sentry/android/core/AndroidLogger;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    if-nez v9, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance v3, Lio/sentry/SentryExecutorService;

    .line 46
    .line 47
    invoke-direct {v3}, Lio/sentry/SentryExecutorService;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v10, Lio/sentry/android/core/AndroidTransactionProfiler;

    .line 51
    .line 52
    new-instance v13, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 53
    .line 54
    iget-object v12, v0, Lio/sentry/android/core/SentryPerformanceProvider;->m:Lio/sentry/android/core/BuildInfoProvider;

    .line 55
    .line 56
    move-object/from16 v11, p1

    .line 57
    .line 58
    invoke-direct {v13, v11, v14, v12}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;-><init>(Landroid/content/Context;Lio/sentry/android/core/AndroidLogger;Lio/sentry/android/core/BuildInfoProvider;)V

    .line 59
    .line 60
    .line 61
    iget-object v15, v1, Lio/sentry/SentryAppStartProfilingOptions;->n:Ljava/lang/String;

    .line 62
    .line 63
    iget-boolean v0, v1, Lio/sentry/SentryAppStartProfilingOptions;->o:Z

    .line 64
    .line 65
    iget v1, v1, Lio/sentry/SentryAppStartProfilingOptions;->q:I

    .line 66
    .line 67
    new-instance v5, Lio/sentry/android/core/l;

    .line 68
    .line 69
    const/4 v6, 0x5

    .line 70
    invoke-direct {v5, v6, v3}, Lio/sentry/android/core/l;-><init>(ILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    move/from16 v16, v0

    .line 74
    .line 75
    move/from16 v17, v1

    .line 76
    .line 77
    move-object/from16 v18, v5

    .line 78
    .line 79
    invoke-direct/range {v10 .. v18}, Lio/sentry/android/core/AndroidTransactionProfiler;-><init>(Landroid/content/Context;Lio/sentry/android/core/BuildInfoProvider;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;Ljava/lang/String;ZILio/sentry/util/LazyEvaluator$Evaluator;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    iput-object v0, v2, Lio/sentry/android/core/performance/AppStartMetrics;->s:Lio/sentry/android/core/AndroidContinuousProfiler;

    .line 84
    .line 85
    iput-object v10, v2, Lio/sentry/android/core/performance/AppStartMetrics;->r:Lio/sentry/ITransactionProfiler;

    .line 86
    .line 87
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 88
    .line 89
    const-string v1, "App start profiling started."

    .line 90
    .line 91
    new-array v2, v4, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-virtual {v14, v0, v1, v2}, Lio/sentry/android/core/AndroidLogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10}, Lio/sentry/android/core/AndroidTransactionProfiler;->start()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_1
    :goto_0
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 101
    .line 102
    const-string v1, "App start profiling was not sampled. It will not start."

    .line 103
    .line 104
    new-array v2, v4, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {v14, v0, v1, v2}, Lio/sentry/android/core/AndroidLogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onCreate()Z
    .locals 8

    .line 1
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v0, Lio/sentry/android/core/performance/AppStartMetrics;->n:Lio/sentry/android/core/performance/TimeSpan;

    .line 10
    .line 11
    sget-wide v3, Lio/sentry/android/core/SentryPerformanceProvider;->n:J

    .line 12
    .line 13
    invoke-virtual {v2, v3, v4}, Lio/sentry/android/core/performance/TimeSpan;->c(J)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lio/sentry/android/core/SentryPerformanceProvider;->m:Lio/sentry/android/core/BuildInfoProvider;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v2, v0, Lio/sentry/android/core/performance/AppStartMetrics;->m:Lio/sentry/android/core/performance/TimeSpan;

    .line 22
    .line 23
    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    invoke-virtual {v2, v3, v4}, Lio/sentry/android/core/performance/TimeSpan;->c(J)V

    .line 28
    .line 29
    .line 30
    instance-of v2, v1, Landroid/app/Application;

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    check-cast v1, Landroid/app/Application;

    .line 35
    .line 36
    iput-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->k:Landroid/app/Application;

    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/SentryPerformanceProvider;->k:Landroid/app/Application;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0, v1}, Lio/sentry/android/core/performance/AppStartMetrics;->e(Landroid/app/Application;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/4 v2, 0x0

    .line 51
    iget-object v3, p0, Lio/sentry/android/core/SentryPerformanceProvider;->l:Lio/sentry/android/core/AndroidLogger;

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    sget-object p0, Lio/sentry/SentryLevel;->FATAL:Lio/sentry/SentryLevel;

    .line 56
    .line 57
    const-string v0, "App. Context from ContentProvider is null"

    .line 58
    .line 59
    new-array v1, v2, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v3, p0, v0, v1}, Lio/sentry/android/core/AndroidLogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_6

    .line 65
    .line 66
    :cond_2
    new-instance v4, Ljava/io/File;

    .line 67
    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const-string v6, "sentry"

    .line 73
    .line 74
    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v5, Ljava/io/File;

    .line 78
    .line 79
    const-string v6, "app_start_profiling_config"

    .line 80
    .line 81
    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_8

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_3

    .line 95
    .line 96
    goto/16 :goto_6

    .line 97
    .line 98
    :cond_3
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    .line 99
    .line 100
    new-instance v6, Ljava/io/InputStreamReader;

    .line 101
    .line 102
    new-instance v7, Ljava/io/FileInputStream;

    .line 103
    .line 104
    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    :try_start_1
    new-instance v5, Lio/sentry/JsonSerializer;

    .line 114
    .line 115
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-direct {v5, v6}, Lio/sentry/JsonSerializer;-><init>(Lio/sentry/SentryOptions;)V

    .line 120
    .line 121
    .line 122
    const-class v6, Lio/sentry/SentryAppStartProfilingOptions;

    .line 123
    .line 124
    invoke-virtual {v5, v4, v6}, Lio/sentry/JsonSerializer;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Lio/sentry/SentryAppStartProfilingOptions;

    .line 129
    .line 130
    if-nez v5, :cond_5

    .line 131
    .line 132
    sget-object p0, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    .line 133
    .line 134
    const-string v0, "Unable to deserialize the SentryAppStartProfilingOptions. App start profiling will not start."

    .line 135
    .line 136
    new-array v1, v2, [Ljava/lang/Object;

    .line 137
    .line 138
    invoke-virtual {v3, p0, v0, v1}, Lio/sentry/android/core/AndroidLogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_6

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    goto :goto_4

    .line 147
    :catch_0
    move-exception p0

    .line 148
    goto :goto_5

    .line 149
    :catchall_1
    move-exception p0

    .line 150
    goto :goto_2

    .line 151
    :cond_5
    :try_start_3
    iget-boolean v6, v5, Lio/sentry/SentryAppStartProfilingOptions;->p:Z

    .line 152
    .line 153
    if-eqz v6, :cond_6

    .line 154
    .line 155
    iget-boolean v6, v5, Lio/sentry/SentryAppStartProfilingOptions;->t:Z

    .line 156
    .line 157
    if-eqz v6, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0, v1, v5, v0}, Lio/sentry/android/core/SentryPerformanceProvider;->a(Landroid/content/Context;Lio/sentry/SentryAppStartProfilingOptions;Lio/sentry/android/core/performance/AppStartMetrics;)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    iget-boolean v6, v5, Lio/sentry/SentryAppStartProfilingOptions;->o:Z

    .line 164
    .line 165
    if-nez v6, :cond_7

    .line 166
    .line 167
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 168
    .line 169
    const-string v0, "Profiling is not enabled. App start profiling will not start."

    .line 170
    .line 171
    new-array v1, v2, [Ljava/lang/Object;

    .line 172
    .line 173
    invoke-virtual {v3, p0, v0, v1}, Lio/sentry/android/core/AndroidLogger;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_7
    iget-boolean v2, v5, Lio/sentry/SentryAppStartProfilingOptions;->s:Z

    .line 178
    .line 179
    if-eqz v2, :cond_4

    .line 180
    .line 181
    invoke-virtual {p0, v1, v5, v0}, Lio/sentry/android/core/SentryPerformanceProvider;->b(Landroid/content/Context;Lio/sentry/SentryAppStartProfilingOptions;Lio/sentry/android/core/performance/AppStartMetrics;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :catchall_2
    move-exception v0

    .line 190
    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    :goto_3
    throw p0
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    :goto_4
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 195
    .line 196
    const-string v1, "Error reading app start profiling config file. "

    .line 197
    .line 198
    invoke-virtual {v3, v0, v1, p0}, Lio/sentry/android/core/AndroidLogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    .line 200
    .line 201
    goto :goto_6

    .line 202
    :goto_5
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 203
    .line 204
    const-string v1, "App start profiling config file not found. "

    .line 205
    .line 206
    invoke-virtual {v3, v0, v1, p0}, Lio/sentry/android/core/AndroidLogger;->b(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    :cond_8
    :goto_6
    const/4 p0, 0x1

    .line 210
    return p0
.end method

.method public final shutdown()V
    .locals 2

    .line 1
    sget-object p0, Lio/sentry/android/core/performance/AppStartMetrics;->A:Lio/sentry/util/AutoClosableReentrantLock;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/sentry/util/AutoClosableReentrantLock;->a()Lio/sentry/ISentryLifecycleToken;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lio/sentry/android/core/performance/AppStartMetrics;->r:Lio/sentry/ITransactionProfiler;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast v0, Lio/sentry/android/core/AndroidTransactionProfiler;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/sentry/android/core/AndroidTransactionProfiler;->close()V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lio/sentry/android/core/performance/AppStartMetrics;->c()Lio/sentry/android/core/performance/AppStartMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v0, v0, Lio/sentry/android/core/performance/AppStartMetrics;->s:Lio/sentry/android/core/AndroidContinuousProfiler;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lio/sentry/android/core/AndroidContinuousProfiler;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_2
    throw v0
.end method
