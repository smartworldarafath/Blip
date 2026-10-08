.class Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Landroidx/work/impl/foreground/SystemForegroundDispatcher;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundDispatcher;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->k:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->j:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->k:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/WorkManagerImpl;

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->f:Landroidx/work/impl/Processor;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->j:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, v0, Landroidx/work/impl/Processor;->k:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/work/impl/Processor;->c(Ljava/lang/String;)Landroidx/work/impl/WorkerWrapper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Landroidx/work/impl/WorkerWrapper;->a:Landroidx/work/impl/model/WorkSpec;

    .line 19
    .line 20
    monitor-exit v2

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-eqz v0, :cond_1

    .line 27
    .line 28
    sget-object v1, Landroidx/work/Constraints;->j:Landroidx/work/Constraints;

    .line 29
    .line 30
    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->j:Landroidx/work/Constraints;

    .line 31
    .line 32
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->k:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 39
    .line 40
    iget-object v1, v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->l:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v1

    .line 43
    :try_start_1
    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->k:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 44
    .line 45
    iget-object v2, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->o:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->k:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 55
    .line 56
    iget-object v3, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->q:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 57
    .line 58
    iget-object v4, v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 59
    .line 60
    check-cast v4, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 61
    .line 62
    iget-object v4, v4, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 63
    .line 64
    invoke-static {v3, v0, v4, v2}, Landroidx/work/impl/constraints/WorkConstraintsTrackerKt;->a(Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;)Lkotlinx/coroutines/Job;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;->k:Landroidx/work/impl/foreground/SystemForegroundDispatcher;

    .line 69
    .line 70
    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->p:Ljava/util/HashMap;

    .line 71
    .line 72
    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecKt;->a(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    throw p0

    .line 84
    :cond_1
    return-void

    .line 85
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw p0
.end method
