.class public final Landroidx/work/impl/WorkLauncherImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/work/impl/Processor;

.field public final b:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method public constructor <init>(Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/work/impl/WorkLauncherImpl;->a:Landroidx/work/impl/Processor;

    .line 11
    .line 12
    iput-object p2, p0, Landroidx/work/impl/WorkLauncherImpl;->b:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/impl/StartStopToken;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/work/impl/utils/StopWorkRunnable;

    .line 5
    .line 6
    iget-object v1, p0, Landroidx/work/impl/WorkLauncherImpl;->a:Landroidx/work/impl/Processor;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, p1, v2, p2}, Landroidx/work/impl/utils/StopWorkRunnable;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Landroidx/work/impl/WorkLauncherImpl;->b:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 20
    .line 21
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
