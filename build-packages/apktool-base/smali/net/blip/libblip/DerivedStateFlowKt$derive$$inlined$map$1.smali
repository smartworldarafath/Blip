.class public final Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/Flow<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic j:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/StateFlow;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;->j:Lkotlinx/coroutines/flow/Flow;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;->k:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$1;->n:I

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
    iput v1, v0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$1;-><init>(Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$1;->n:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$2;

    .line 51
    .line 52
    iget-object v2, p0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;->k:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    invoke-direct {p2, p1, v2}, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/functions/Function1;)V

    .line 55
    .line 56
    .line 57
    iput v3, v0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1$1;->n:I

    .line 58
    .line 59
    iget-object p0, p0, Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;->j:Lkotlinx/coroutines/flow/Flow;

    .line 60
    .line 61
    invoke-interface {p0, p2, v0}, Lkotlinx/coroutines/flow/Flow;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-ne p0, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p0
.end method
