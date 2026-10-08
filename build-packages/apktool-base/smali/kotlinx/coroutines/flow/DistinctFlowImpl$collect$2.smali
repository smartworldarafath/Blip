.class final Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/flow/DistinctFlowImpl;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic l:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/DistinctFlowImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->j:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iput-object p3, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->l:Lkotlinx/coroutines/flow/FlowCollector;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;

    .line 7
    .line 8
    iget v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->o:I

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
    iput v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;-><init>(Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->o:I

    .line 30
    .line 31
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v4, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-object v3

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->j:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    .line 53
    .line 54
    iget-object v2, p2, Lkotlinx/coroutines/flow/DistinctFlowImpl;->k:Lkotlin/jvm/functions/Function1;

    .line 55
    .line 56
    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-object v5, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    iget-object v6, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 63
    .line 64
    sget-object v7, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 65
    .line 66
    if-eq v6, v7, :cond_3

    .line 67
    .line 68
    iget-object p2, p2, Lkotlinx/coroutines/flow/DistinctFlowImpl;->l:Lkotlin/jvm/functions/Function2;

    .line 69
    .line 70
    invoke-interface {p2, v6, v2}, Lkotlin/jvm/functions/Function2;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    check-cast p2, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-nez p2, :cond_4

    .line 81
    .line 82
    :cond_3
    iput-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 83
    .line 84
    iput v4, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2$emit$1;->o:I

    .line 85
    .line 86
    iget-object p0, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$2;->l:Lkotlinx/coroutines/flow/FlowCollector;

    .line 87
    .line 88
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->r(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    if-ne p0, v1, :cond_4

    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_4
    return-object v3
.end method
