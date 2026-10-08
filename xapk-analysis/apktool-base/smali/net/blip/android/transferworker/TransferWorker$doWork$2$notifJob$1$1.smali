.class final Lnet/blip/android/transferworker/TransferWorker$doWork$2$notifJob$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lnet/blip/android/transferworker/TransferWorker;


# direct methods
.method public constructor <init>(Lnet/blip/android/transferworker/TransferWorker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/android/transferworker/TransferWorker$doWork$2$notifJob$1$1;->j:Lnet/blip/android/transferworker/TransferWorker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lkotlin/Pair;

    .line 2
    .line 3
    iget-object v0, p1, Lkotlin/Pair;->j:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p1, p1, Lkotlin/Pair;->k:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Landroid/app/Notification;

    .line 14
    .line 15
    new-instance v1, Landroidx/work/ForegroundInfo;

    .line 16
    .line 17
    iget-object p0, p0, Lnet/blip/android/transferworker/TransferWorker$doWork$2$notifJob$1$1;->j:Lnet/blip/android/transferworker/TransferWorker;

    .line 18
    .line 19
    iget v2, p0, Lnet/blip/android/transferworker/TransferWorker;->i:I

    .line 20
    .line 21
    invoke-direct {v1, v0, p1, v2}, Landroidx/work/ForegroundInfo;-><init>(ILandroid/app/Notification;I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/work/ListenableWorker;->b:Landroidx/work/WorkerParameters;

    .line 25
    .line 26
    iget-object v0, p1, Landroidx/work/WorkerParameters;->e:Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 27
    .line 28
    iget-object p0, p0, Landroidx/work/ListenableWorker;->a:Landroid/content/Context;

    .line 29
    .line 30
    iget-object p1, p1, Landroidx/work/WorkerParameters;->a:Ljava/util/UUID;

    .line 31
    .line 32
    iget-object v2, v0, Landroidx/work/impl/utils/WorkForegroundUpdater;->a:Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 33
    .line 34
    iget-object v2, v2, Landroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->a:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 35
    .line 36
    new-instance v3, Lp1;

    .line 37
    .line 38
    invoke-direct {v3, v0, p1, v1, p0}, Lp1;-><init>(Landroidx/work/impl/utils/WorkForegroundUpdater;Ljava/util/UUID;Landroidx/work/ForegroundInfo;Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance p0, Ln5;

    .line 45
    .line 46
    const/4 p1, 0x5

    .line 47
    invoke-direct {p0, p1, v2, v3}, Ln5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {p0, p2}, Landroidx/concurrent/futures/ListenableFutureKt;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 59
    .line 60
    if-ne p0, p1, :cond_0

    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method
