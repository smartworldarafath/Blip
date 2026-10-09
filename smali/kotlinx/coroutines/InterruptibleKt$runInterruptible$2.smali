.class final Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.InterruptibleKt$runInterruptible$2"
    f = "Interruptible.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lcoil3/decode/a;


# direct methods
.method public constructor <init>(Lcoil3/decode/a;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->o:Lcoil3/decode/a;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;

    .line 2
    .line 3
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->o:Lcoil3/decode/a;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;-><init>(Lcoil3/decode/a;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->n:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->n:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lkotlinx/coroutines/InterruptibleKt$runInterruptible$2;->o:Lcoil3/decode/a;

    .line 15
    .line 16
    :try_start_0
    new-instance v0, Lkotlinx/coroutines/ThreadState;

    .line 17
    .line 18
    invoke-direct {v0}, Lkotlinx/coroutines/ThreadState;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lkotlinx/coroutines/JobKt;->d(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Job;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {p1, v1, v0}, Lkotlinx/coroutines/JobKt;->e(Lkotlinx/coroutines/Job;ZLkotlinx/coroutines/JobNode;)Lkotlinx/coroutines/DisposableHandle;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, v0, Lkotlinx/coroutines/ThreadState;->o:Lkotlinx/coroutines/DisposableHandle;

    .line 31
    .line 32
    sget-object p1, Lkotlinx/coroutines/ThreadState;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/4 p1, 0x2

    .line 41
    if-eq v1, p1, :cond_3

    .line 42
    .line 43
    const/4 p1, 0x3

    .line 44
    if-ne v1, p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v1}, Lkotlinx/coroutines/ThreadState;->p(I)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    throw p0

    .line 52
    :cond_2
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 54
    .line 55
    .line 56
    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcoil3/decode/a;->a()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadState;->o()V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadState;->o()V

    .line 69
    .line 70
    .line 71
    throw p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 74
    .line 75
    const-string v0, "Blocking call was interrupted due to parent cancellation"

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    throw p0
.end method
