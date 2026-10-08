.class public Landroidx/work/impl/WorkManagerImpl;
.super Landroidx/work/WorkManager;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static k:Landroidx/work/impl/WorkManagerImpl;

.field public static l:Landroidx/work/impl/WorkManagerImpl;

.field public static final m:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/work/Configuration;

.field public final c:Landroidx/work/impl/WorkDatabase;

.field public final d:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field public final e:Ljava/util/List;

.field public final f:Landroidx/work/impl/Processor;

.field public final g:Landroidx/work/impl/utils/PreferenceUtils;

.field public h:Z

.field public i:Landroid/content/BroadcastReceiver$PendingResult;

.field public final j:Landroidx/work/impl/constraints/trackers/Trackers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkManagerImpl"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->k:Landroidx/work/impl/WorkManagerImpl;

    .line 8
    .line 9
    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->l:Landroidx/work/impl/WorkManagerImpl;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/work/impl/WorkManagerImpl;->m:Ljava/lang/Object;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Landroidx/work/impl/Processor;Landroidx/work/impl/constraints/trackers/Trackers;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/work/impl/WorkManagerImpl;->h:Z

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    new-instance v0, Landroidx/work/Logger$LogcatLogger;

    .line 19
    .line 20
    iget v2, p2, Landroidx/work/Configuration;->h:I

    .line 21
    .line 22
    invoke-direct {v0, v2}, Landroidx/work/Logger$LogcatLogger;-><init>(I)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Landroidx/work/Logger;->a:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    sget-object v3, Landroidx/work/Logger;->b:Landroidx/work/Logger$LogcatLogger;

    .line 29
    .line 30
    if-nez v3, :cond_0

    .line 31
    .line 32
    sput-object v0, Landroidx/work/Logger;->b:Landroidx/work/Logger$LogcatLogger;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    iput-object p1, p0, Landroidx/work/impl/WorkManagerImpl;->a:Landroid/content/Context;

    .line 40
    .line 41
    iput-object p3, p0, Landroidx/work/impl/WorkManagerImpl;->d:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 42
    .line 43
    iput-object p4, p0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/impl/WorkDatabase;

    .line 44
    .line 45
    iput-object p6, p0, Landroidx/work/impl/WorkManagerImpl;->f:Landroidx/work/impl/Processor;

    .line 46
    .line 47
    iput-object p7, p0, Landroidx/work/impl/WorkManagerImpl;->j:Landroidx/work/impl/constraints/trackers/Trackers;

    .line 48
    .line 49
    iput-object p2, p0, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 50
    .line 51
    iput-object p5, p0, Landroidx/work/impl/WorkManagerImpl;->e:Ljava/util/List;

    .line 52
    .line 53
    check-cast p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 54
    .line 55
    iget-object p7, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 56
    .line 57
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {p7}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 61
    .line 62
    .line 63
    move-result-object p7

    .line 64
    new-instance v0, Landroidx/work/impl/utils/PreferenceUtils;

    .line 65
    .line 66
    invoke-direct {v0, p4}, Landroidx/work/impl/utils/PreferenceUtils;-><init>(Landroidx/work/impl/WorkDatabase;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->g:Landroidx/work/impl/utils/PreferenceUtils;

    .line 70
    .line 71
    iget-object v0, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 72
    .line 73
    sget-object v2, Landroidx/work/impl/Schedulers;->a:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v2, Lre;

    .line 76
    .line 77
    invoke-direct {v2, v0, p5, p2, p4}, Lre;-><init>(Landroidx/work/impl/utils/SerialExecutorImpl;Ljava/util/List;Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p6, v2}, Landroidx/work/impl/Processor;->a(Landroidx/work/impl/ExecutionListener;)V

    .line 81
    .line 82
    .line 83
    new-instance p5, Landroidx/work/impl/utils/ForceStopRunnable;

    .line 84
    .line 85
    invoke-direct {p5, p1, p0}, Landroidx/work/impl/utils/ForceStopRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p3, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 89
    .line 90
    invoke-interface {p0, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    sget-object p0, Landroidx/work/impl/UnfinishedWorkListenerKt;->a:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p1, p2}, Landroidx/work/impl/utils/ProcessUtils;->a(Landroid/content/Context;Landroidx/work/Configuration;)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    if-eqz p0, :cond_1

    .line 100
    .line 101
    invoke-virtual {p4}, Landroidx/work/impl/WorkDatabase;->v()Landroidx/work/impl/model/WorkSpecDao;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 106
    .line 107
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpecDao_Impl;->a:Landroidx/room/RoomDatabase;

    .line 108
    .line 109
    const-string p2, "workspec"

    .line 110
    .line 111
    filled-new-array {p2}, [Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    new-instance p3, Lii;

    .line 116
    .line 117
    const/16 p4, 0x12

    .line 118
    .line 119
    invoke-direct {p3, p4}, Lii;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->f()Landroidx/room/InvalidationTracker;

    .line 123
    .line 124
    .line 125
    move-result-object p4

    .line 126
    const/4 p5, 0x1

    .line 127
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    check-cast p2, [Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p4, p2}, Landroidx/room/InvalidationTracker;->a([Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    const/4 p4, -0x1

    .line 138
    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->c(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    new-instance p5, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;

    .line 143
    .line 144
    invoke-direct {p5, p2, p0, p3}, Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Landroidx/room/RoomDatabase;Lii;)V

    .line 145
    .line 146
    .line 147
    new-instance p0, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1;

    .line 148
    .line 149
    const/4 p2, 0x4

    .line 150
    invoke-direct {p0, p2, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 151
    .line 152
    .line 153
    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;

    .line 154
    .line 155
    invoke-direct {p2, p5, p0}, Lkotlinx/coroutines/flow/FlowKt__ErrorsKt$retryWhen$$inlined$unsafeFlow$1;-><init>(Landroidx/room/coroutines/FlowUtil$createFlow$$inlined$map$1;Lkotlin/jvm/functions/Function4;)V

    .line 156
    .line 157
    .line 158
    invoke-static {p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->c(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->i(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    new-instance p2, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2;

    .line 167
    .line 168
    invoke-direct {p2, p1, v1}, Landroidx/work/impl/UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$2;-><init>(Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 169
    .line 170
    .line 171
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 172
    .line 173
    invoke-direct {p1, p2, p0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    .line 174
    .line 175
    .line 176
    invoke-static {p1, p7}, Lkotlinx/coroutines/flow/FlowKt;->r(Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;Lkotlinx/coroutines/internal/ContextScope;)V

    .line 177
    .line 178
    .line 179
    :cond_1
    return-void

    .line 180
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    throw p0

    .line 182
    :cond_2
    const-string p0, "Cannot initialize WorkManager in direct boot mode"

    .line 183
    .line 184
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v1
.end method

.method public static a(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/WorkManagerImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->k:Landroidx/work/impl/WorkManagerImpl;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-object v1, Landroidx/work/impl/WorkManagerImpl;->l:Landroidx/work/impl/WorkManagerImpl;

    .line 14
    .line 15
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :try_start_2
    monitor-exit v0

    .line 19
    return-object v1

    .line 20
    :catchall_1
    move-exception p0

    .line 21
    goto :goto_2

    .line 22
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    .line 28
    .line 29
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 34
    :try_start_4
    throw p0

    .line 35
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 36
    throw p0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/impl/WorkManagerImpl;->m:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Landroidx/work/impl/WorkManagerImpl;->h:Z

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->i:Landroid/content/BroadcastReceiver$PendingResult;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->b:Landroidx/work/Configuration;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/Configuration;->m:Landroidx/work/ConfigurationKt$createDefaultTracer$tracer$1;

    .line 4
    .line 5
    const-string v1, "ReschedulingWork"

    .line 6
    .line 7
    new-instance v2, Lkb;

    .line 8
    .line 9
    const/16 v3, 0x1a

    .line 10
    .line 11
    invoke-direct {v2, v3, p0}, Lkb;-><init>(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroidx/tracing/Trace;->d()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    :try_start_0
    invoke-static {v1}, Landroidx/tracing/Trace;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {v2}, Lkb;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 43
    .line 44
    .line 45
    :cond_2
    throw v0
.end method
