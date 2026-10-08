.class final Landroidx/compose/runtime/ProduceStateScopeImpl;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/runtime/ProduceStateScope;
.implements Landroidx/compose/runtime/MutableState;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/runtime/ProduceStateScope<",
        "TT;>;",
        "Landroidx/compose/runtime/MutableState<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic j:Landroidx/compose/runtime/MutableState;

.field public final k:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/ProduceStateScopeImpl;->j:Landroidx/compose/runtime/MutableState;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/ProduceStateScopeImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final f(Lp0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;-><init>(Landroidx/compose/runtime/ProduceStateScopeImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->p:I

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    if-eq v1, v2, :cond_1

    .line 35
    .line 36
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 37
    .line 38
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    iget-object p1, v0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->m:Lp0;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :try_start_1
    iput-object p1, v0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->m:Lp0;

    .line 54
    .line 55
    iput v2, v0, Landroidx/compose/runtime/ProduceStateScopeImpl$awaitDispose$1;->p:I

    .line 56
    .line 57
    new-instance p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->b(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, v2, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->v()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->u()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    if-ne p0, p2, :cond_3

    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    :goto_1
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 77
    .line 78
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 79
    .line 80
    .line 81
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_2
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    throw p0
.end method

.method public final getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/ProduceStateScopeImpl;->k:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/ProduceStateScopeImpl;->j:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/ProduceStateScopeImpl;->j:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
