.class final Lnet/blip/libblip/DerivedStateFlow$collect$2;
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
        "*>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.libblip.DerivedStateFlow$collect$2"
    f = "DerivedStateFlow.kt"
    l = {
        0x19,
        0x19
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lnet/blip/libblip/DerivedStateFlow;

.field public final synthetic q:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lnet/blip/libblip/DerivedStateFlow;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->p:Lnet/blip/libblip/DerivedStateFlow;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->q:Lkotlinx/coroutines/flow/FlowCollector;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/libblip/DerivedStateFlow$collect$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/libblip/DerivedStateFlow$collect$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Lnet/blip/libblip/DerivedStateFlow$collect$2;

    .line 2
    .line 3
    iget-object v1, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->p:Lnet/blip/libblip/DerivedStateFlow;

    .line 4
    .line 5
    iget-object p0, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->q:Lkotlinx/coroutines/flow/FlowCollector;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Lnet/blip/libblip/DerivedStateFlow$collect$2;-><init>(Lnet/blip/libblip/DerivedStateFlow;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->o:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->o:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v2, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->n:I

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    if-eqz v2, :cond_2

    .line 13
    .line 14
    if-eq v2, v5, :cond_1

    .line 15
    .line 16
    if-eq v2, v4, :cond_0

    .line 17
    .line 18
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-object v3

    .line 24
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->p:Lnet/blip/libblip/DerivedStateFlow;

    .line 36
    .line 37
    iget-object p1, p1, Lnet/blip/libblip/DerivedStateFlow;->k:Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->i(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object v3, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->o:Ljava/lang/Object;

    .line 44
    .line 45
    iput v5, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->n:I

    .line 46
    .line 47
    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/flow/FlowKt;->u(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v1, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    check-cast p1, Lkotlinx/coroutines/flow/StateFlow;

    .line 55
    .line 56
    iput-object v3, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->o:Ljava/lang/Object;

    .line 57
    .line 58
    iput v4, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->n:I

    .line 59
    .line 60
    iget-object v0, p0, Lnet/blip/libblip/DerivedStateFlow$collect$2;->q:Lkotlinx/coroutines/flow/FlowCollector;

    .line 61
    .line 62
    invoke-interface {p1, v0, p0}, Lkotlinx/coroutines/flow/Flow;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-ne p0, v1, :cond_4

    .line 67
    .line 68
    :goto_1
    return-object v1

    .line 69
    :cond_4
    :goto_2
    invoke-static {}, Lf7;->h()V

    .line 70
    .line 71
    .line 72
    return-object v3
.end method
