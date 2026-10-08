.class final Lkotlinx/coroutines/ResumeUndispatchedRunnable;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final j:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

.field public final k:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->j:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->k:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 2
    .line 3
    iget-object p0, p0, Lkotlinx/coroutines/ResumeUndispatchedRunnable;->j:Lkotlinx/coroutines/ExecutorCoroutineDispatcherImpl;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->F(Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
