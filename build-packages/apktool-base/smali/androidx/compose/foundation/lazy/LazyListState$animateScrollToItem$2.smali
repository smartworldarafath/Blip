.class final Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/ScrollScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.lazy.LazyListState$animateScrollToItem$2"
    f = "LazyListState.kt"
    l = {
        0x252
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/compose/foundation/lazy/LazyListState;

.field public final synthetic q:I

.field public final synthetic r:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->p:Landroidx/compose/foundation/lazy/LazyListState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->q:I

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->r:I

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
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 2
    .line 3
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->q:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->r:I

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->p:Landroidx/compose/foundation/lazy/LazyListState;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1, v2, p2}, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->o:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->n:I

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
    iget-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->o:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p1, Landroidx/compose/foundation/gestures/ScrollScope;

    .line 27
    .line 28
    new-instance v3, Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;

    .line 29
    .line 30
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->p:Landroidx/compose/foundation/lazy/LazyListState;

    .line 31
    .line 32
    invoke-direct {v3, p1, v1}, Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;-><init>(Landroidx/compose/foundation/gestures/ScrollScope;Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, v1, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/MutableState;

    .line 36
    .line 37
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 44
    .line 45
    iget-object v7, p1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->i:Landroidx/compose/ui/unit/Density;

    .line 46
    .line 47
    iput v2, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->n:I

    .line 48
    .line 49
    iget v4, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->q:I

    .line 50
    .line 51
    iget v5, p0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;->r:I

    .line 52
    .line 53
    const/16 v6, 0x64

    .line 54
    .line 55
    move-object v8, p0

    .line 56
    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollScopeKt;->a(Landroidx/compose/foundation/lazy/LazyListScrollScopeKt$LazyLayoutScrollScope$1;IIILandroidx/compose/ui/unit/Density;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-ne p0, v0, :cond_2

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method
