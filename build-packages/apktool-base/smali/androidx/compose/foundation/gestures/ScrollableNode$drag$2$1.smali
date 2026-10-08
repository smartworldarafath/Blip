.class final Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/NestedScrollScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.ScrollableNode$drag$2$1"
    f = "Scrollable.kt"
    l = {
        0x166
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Lkotlin/jvm/functions/Function2;

.field public final synthetic q:Landroidx/compose/foundation/gestures/ScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->p:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->q:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->p:Lkotlin/jvm/functions/Function2;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->q:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2, v1}, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->o:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 15
    .line 16
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->o:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Landroidx/compose/foundation/gestures/NestedScrollScope;

    .line 27
    .line 28
    new-instance v1, Lec;

    .line 29
    .line 30
    const/16 v3, 0xb

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->q:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 33
    .line 34
    invoke-direct {v1, v3, p1, v4}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iput v2, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->n:I

    .line 38
    .line 39
    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;->p:Lkotlin/jvm/functions/Function2;

    .line 40
    .line 41
    check-cast p1, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1$1;

    .line 42
    .line 43
    invoke-virtual {p1, v1, p0}, Landroidx/compose/foundation/gestures/DragGestureNode$startListeningForEvents$1$1;->n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    if-ne p0, v0, :cond_2

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method
