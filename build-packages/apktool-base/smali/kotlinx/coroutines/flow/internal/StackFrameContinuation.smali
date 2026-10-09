.class final Lkotlinx/coroutines/flow/internal/StackFrameContinuation;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation


# instance fields
.field public final j:Lkotlin/coroutines/Continuation;

.field public final k:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/StackFrameContinuation;->j:Lkotlin/coroutines/Continuation;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/StackFrameContinuation;->k:Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/StackFrameContinuation;->j:Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    check-cast p0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 4
    .line 5
    return-object p0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/StackFrameContinuation;->j:Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    check-cast p0, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/StackFrameContinuation;->k:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object p0
.end method
