.class final Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/LimitedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Worker"
.end annotation


# instance fields
.field public j:Ljava/lang/Runnable;

.field public final synthetic k:Lkotlinx/coroutines/internal/LimitedDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->k:Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->j:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->j:Ljava/lang/Runnable;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->a(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->k:Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 15
    .line 16
    sget-object v2, Lkotlinx/coroutines/internal/LimitedDispatcher;->q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 17
    .line 18
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LimitedDispatcher;->f1()Ljava/lang/Runnable;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    iput-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->j:Ljava/lang/Runnable;

    .line 26
    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    const/16 v1, 0x10

    .line 30
    .line 31
    if-lt v0, v1, :cond_0

    .line 32
    .line 33
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->k:Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 34
    .line 35
    iget-object v2, v1, Lkotlinx/coroutines/internal/LimitedDispatcher;->m:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 36
    .line 37
    invoke-static {v2, v1}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->c(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->k:Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 44
    .line 45
    iget-object v1, v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->m:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 46
    .line 47
    invoke-static {v1, v0, p0}, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->b(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;->k:Lkotlinx/coroutines/internal/LimitedDispatcher;

    .line 53
    .line 54
    iget-object v1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->p:Ljava/lang/Object;

    .line 55
    .line 56
    monitor-enter v1

    .line 57
    :try_start_2
    sget-object v2, Lkotlinx/coroutines/internal/LimitedDispatcher;->q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 58
    .line 59
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 60
    .line 61
    .line 62
    monitor-exit v1

    .line 63
    throw v0

    .line 64
    :catchall_2
    move-exception p0

    .line 65
    monitor-exit v1

    .line 66
    throw p0
.end method
