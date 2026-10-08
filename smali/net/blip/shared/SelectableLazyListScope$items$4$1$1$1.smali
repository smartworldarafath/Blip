.class final Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;
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
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "net.blip.shared.SelectableLazyListScope$items$4$1$1$1"
    f = "SelectionList.kt"
    l = {
        0x158
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lnet/blip/shared/SelectableLazyItemScope;

.field public final synthetic p:Ljava/lang/Integer;

.field public final synthetic q:Lnet/blip/shared/SelectableLazyListScope;


# direct methods
.method public constructor <init>(Lnet/blip/shared/SelectableLazyItemScope;Ljava/lang/Integer;Lnet/blip/shared/SelectableLazyListScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->o:Lnet/blip/shared/SelectableLazyItemScope;

    .line 2
    .line 3
    iput-object p2, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->p:Ljava/lang/Integer;

    .line 4
    .line 5
    iput-object p3, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->q:Lnet/blip/shared/SelectableLazyListScope;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->p:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v1, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->q:Lnet/blip/shared/SelectableLazyListScope;

    .line 6
    .line 7
    iget-object p0, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->o:Lnet/blip/shared/SelectableLazyItemScope;

    .line 8
    .line 9
    invoke-direct {p1, p0, v0, v1, p2}, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;-><init>(Lnet/blip/shared/SelectableLazyItemScope;Ljava/lang/Integer;Lnet/blip/shared/SelectableLazyListScope;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-eq v1, v3, :cond_0

    .line 10
    .line 11
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 12
    .line 13
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->o:Lnet/blip/shared/SelectableLazyItemScope;

    .line 25
    .line 26
    iget-object v1, p1, Lnet/blip/shared/SelectableLazyItemScope;->b:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 27
    .line 28
    new-instance v4, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1$1;

    .line 29
    .line 30
    iget-object v5, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->p:Ljava/lang/Integer;

    .line 31
    .line 32
    iget-object v6, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->q:Lnet/blip/shared/SelectableLazyListScope;

    .line 33
    .line 34
    invoke-direct {v4, p1, v5, v6}, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1$1;-><init>(Lnet/blip/shared/SelectableLazyItemScope;Ljava/lang/Integer;Lnet/blip/shared/SelectableLazyListScope;)V

    .line 35
    .line 36
    .line 37
    iput v3, p0, Lnet/blip/shared/SelectableLazyListScope$items$4$1$1$1;->n:I

    .line 38
    .line 39
    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/flow/Flow;->a(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    if-ne p0, v0, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_0
    invoke-static {}, Lf7;->h()V

    .line 47
    .line 48
    .line 49
    return-object v2
.end method
