.class public abstract Landroidx/work/impl/WorkerWrapperKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkerWrapper"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/WorkerWrapperKt;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/ListenableWorker;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    :goto_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 31
    .line 32
    .line 33
    :cond_1
    throw p0
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    .line 34
    :catch_0
    move p1, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 46
    .line 47
    .line 48
    new-instance p2, Landroidx/work/impl/ToContinuation;

    .line 49
    .line 50
    invoke-direct {p2, p0, v0}, Landroidx/work/impl/ToContinuation;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 51
    .line 52
    .line 53
    sget-object v1, Landroidx/work/DirectExecutor;->j:Landroidx/work/DirectExecutor;

    .line 54
    .line 55
    invoke-interface {p0, p2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 56
    .line 57
    .line 58
    new-instance p2, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;

    .line 59
    .line 60
    invoke-direct {p2, p1, p0}, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;-><init>(Landroidx/work/ListenableWorker;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->x(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 71
    .line 72
    return-object p0

    .line 73
    :catch_1
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    throw p0
.end method
