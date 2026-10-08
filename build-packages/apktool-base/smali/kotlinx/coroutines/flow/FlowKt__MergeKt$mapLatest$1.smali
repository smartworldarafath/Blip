.class final Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__MergeKt$mapLatest$1"
    f = "Merge.kt"
    l = {
        0xd5,
        0xd5
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlinx/coroutines/flow/FlowCollector;

.field public o:I

.field public synthetic p:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->r:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;

    .line 6
    .line 7
    iget-object p0, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->r:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->p:Lkotlinx/coroutines/flow/FlowCollector;

    .line 13
    .line 14
    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->q:Ljava/lang/Object;

    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->p:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->q:Ljava/lang/Object;

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v3, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->o:I

    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    const/4 v6, 0x0

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    if-eq v3, v5, :cond_1

    .line 15
    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v6

    .line 28
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->n:Lkotlinx/coroutines/flow/FlowCollector;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput-object v6, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->p:Lkotlinx/coroutines/flow/FlowCollector;

    .line 38
    .line 39
    iput-object v6, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->q:Ljava/lang/Object;

    .line 40
    .line 41
    iput-object v0, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->n:Lkotlinx/coroutines/flow/FlowCollector;

    .line 42
    .line 43
    iput v5, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->o:I

    .line 44
    .line 45
    iget-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->r:Lkotlin/jvm/functions/Function2;

    .line 46
    .line 47
    invoke-interface {p1, v1, p0}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v2, :cond_3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    :goto_0
    iput-object v6, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->p:Lkotlinx/coroutines/flow/FlowCollector;

    .line 55
    .line 56
    iput-object v6, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->q:Ljava/lang/Object;

    .line 57
    .line 58
    iput-object v6, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->n:Lkotlinx/coroutines/flow/FlowCollector;

    .line 59
    .line 60
    iput v4, p0, Lkotlinx/coroutines/flow/FlowKt__MergeKt$mapLatest$1;->o:I

    .line 61
    .line 62
    invoke-interface {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-ne p0, v2, :cond_4

    .line 67
    .line 68
    :goto_1
    return-object v2

    .line 69
    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p0
.end method
