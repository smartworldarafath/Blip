.class public abstract Landroidx/concurrent/futures/ListenableFutureKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->k:Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->isDone()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Landroidx/concurrent/futures/AbstractResolvableFuture;->g(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-object p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/concurrent/futures/ToContinuation;

    .line 30
    .line 31
    invoke-direct {p1, p0, v0}, Landroidx/concurrent/futures/ToContinuation;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    .line 32
    .line 33
    .line 34
    move-object v1, p0

    .line 35
    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;

    .line 36
    .line 37
    iget-object v1, v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$SafeFuture;->k:Landroidx/concurrent/futures/AbstractResolvableFuture;

    .line 38
    .line 39
    sget-object v2, Landroidx/concurrent/futures/DirectExecutor;->j:Landroidx/concurrent/futures/DirectExecutor;

    .line 40
    .line 41
    invoke-virtual {v1, p1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Landroidx/concurrent/futures/ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Landroidx/concurrent/futures/ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->x(Lkotlin/jvm/functions/Function1;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 57
    .line 58
    return-object p0

    .line 59
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    new-instance p0, Lkotlin/KotlinNullPointerException;

    .line 67
    .line 68
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 69
    .line 70
    .line 71
    const-class p1, Lkotlin/jvm/internal/Intrinsics;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method
