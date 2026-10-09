.class final Lkotlinx/coroutines/ChildContinuation;
.super Lkotlinx/coroutines/JobNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final n:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/ChildContinuation;->n:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final m()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobNode;->l()Lkotlinx/coroutines/JobSupport;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lkotlinx/coroutines/ChildContinuation;->n:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->s(Lkotlinx/coroutines/JobSupport;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->A()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->m:Lkotlin/coroutines/Continuation;

    .line 19
    .line 20
    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    .line 21
    .line 22
    sget-object v1, Lkotlinx/coroutines/internal/DispatchedContinuation;->q:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 23
    .line 24
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    sget-object v3, Lkotlinx/coroutines/internal/DispatchedContinuationKt;->b:Lkotlinx/coroutines/internal/Symbol;

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    :cond_1
    invoke-virtual {v1, v0, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eq v2, v3, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    instance-of v3, v2, Ljava/lang/Throwable;

    .line 51
    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_4
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_6

    .line 61
    .line 62
    :goto_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->p(Ljava/lang/Throwable;)Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->A()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->q()V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_2
    return-void

    .line 75
    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eq v3, v2, :cond_4

    .line 80
    .line 81
    goto :goto_0
.end method
