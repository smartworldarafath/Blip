.class public final Lnet/blip/android/transferworker/TransferWorkerLauncher;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lkotlinx/coroutines/flow/StateFlow;

.field public final c:Landroid/app/job/JobScheduler;

.field public final d:Landroidx/work/impl/WorkManagerImpl;

.field public final e:Lnet/blip/libblip/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/flow/StateFlow;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferWorkerLauncher;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lnet/blip/android/transferworker/TransferWorkerLauncher;->b:Lkotlinx/coroutines/flow/StateFlow;

    .line 10
    .line 11
    const-string p2, "jobscheduler"

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    check-cast p2, Landroid/app/job/JobScheduler;

    .line 21
    .line 22
    iput-object p2, p0, Lnet/blip/android/transferworker/TransferWorkerLauncher;->c:Landroid/app/job/JobScheduler;

    .line 23
    .line 24
    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->a(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferWorkerLauncher;->d:Landroidx/work/impl/WorkManagerImpl;

    .line 29
    .line 30
    sget-object p1, Lnet/blip/libblip/LoggerKt;->a:Lnet/blip/libblip/Logger;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    new-array p2, p2, [Lkotlin/Pair;

    .line 34
    .line 35
    const-string v0, "TransferWorkerLauncher"

    .line 36
    .line 37
    invoke-virtual {p1, v0, p2}, Lnet/blip/libblip/Logger;->m(Ljava/lang/String;[Lkotlin/Pair;)Lnet/blip/libblip/Logger;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferWorkerLauncher;->e:Lnet/blip/libblip/Logger;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lnet/blip/android/transferworker/TransferWorkerLauncher$launchTransferWorkersWhenNeeded$$inlined$map$1;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/android/transferworker/TransferWorkerLauncher;->b:Lkotlinx/coroutines/flow/StateFlow;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnet/blip/android/transferworker/TransferWorkerLauncher$launchTransferWorkersWhenNeeded$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lqg;

    .line 9
    .line 10
    const/16 v2, 0x11

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lqg;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->k(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lnet/blip/android/transferworker/TransferWorkerLauncher$launchTransferWorkersWhenNeeded$4;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lnet/blip/android/transferworker/TransferWorkerLauncher$launchTransferWorkersWhenNeeded$4;-><init>(Lnet/blip/android/transferworker/TransferWorkerLauncher;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1, p1}, Lkotlinx/coroutines/flow/Flow;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
