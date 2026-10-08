.class final Lkotlinx/coroutines/ResumeAwaitOnCompletion;
.super Lkotlinx/coroutines/JobNode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/JobNode;"
    }
.end annotation


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
    iput-object p1, p0, Lkotlinx/coroutines/ResumeAwaitOnCompletion;->n:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final m()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobNode;->l()Lkotlinx/coroutines/JobSupport;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lkotlinx/coroutines/JobSupport;->j:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 12
    .line 13
    iget-object p0, p0, Lkotlinx/coroutines/ResumeAwaitOnCompletion;->n:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    .line 18
    .line 19
    iget-object p1, p1, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-static {p1}, Lkotlinx/coroutines/JobSupportKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
