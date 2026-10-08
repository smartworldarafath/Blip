.class public final Lnet/blip/libblip/DerivedStateFlow;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/coroutines/flow/StateFlow;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/StateFlow<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final j:Lp0;

.field public final k:Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;


# direct methods
.method public constructor <init>(Lp0;Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/blip/libblip/DerivedStateFlow;->j:Lp0;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/blip/libblip/DerivedStateFlow;->k:Lnet/blip/libblip/DerivedStateFlowKt$derive$$inlined$map$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lnet/blip/libblip/DerivedStateFlow$collect$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lnet/blip/libblip/DerivedStateFlow$collect$1;

    .line 7
    .line 8
    iget v1, v0, Lnet/blip/libblip/DerivedStateFlow$collect$1;->o:I

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
    iput v1, v0, Lnet/blip/libblip/DerivedStateFlow$collect$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lnet/blip/libblip/DerivedStateFlow$collect$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lnet/blip/libblip/DerivedStateFlow$collect$1;-><init>(Lnet/blip/libblip/DerivedStateFlow;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lnet/blip/libblip/DerivedStateFlow$collect$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Lnet/blip/libblip/DerivedStateFlow$collect$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-eq v2, v4, :cond_1

    .line 36
    .line 37
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 38
    .line 39
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v3

    .line 43
    :cond_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance p2, Lnet/blip/libblip/DerivedStateFlow$collect$2;

    .line 51
    .line 52
    invoke-direct {p2, p0, p1, v3}, Lnet/blip/libblip/DerivedStateFlow$collect$2;-><init>(Lnet/blip/libblip/DerivedStateFlow;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)V

    .line 53
    .line 54
    .line 55
    iput v4, v0, Lnet/blip/libblip/DerivedStateFlow$collect$1;->o:I

    .line 56
    .line 57
    invoke-static {p2, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    if-ne p0, v1, :cond_3

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    :goto_1
    invoke-static {}, Lf7;->h()V

    .line 65
    .line 66
    .line 67
    return-object v3
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/blip/libblip/DerivedStateFlow;->j:Lp0;

    .line 2
    .line 3
    invoke-virtual {p0}, Lp0;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
