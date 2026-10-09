.class public abstract Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;
.super Lkotlinx/coroutines/ExecutorCoroutineDispatcher;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;


# virtual methods
.method public final b1(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    .line 3
    const/4 p1, 0x6

    .line 4
    invoke-static {p0, p2, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final c1(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;->l:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-static {p0, p2, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
