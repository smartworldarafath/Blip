.class final Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material.AnchoredDraggableState$anchoredDrag$2"
    f = "AnchoredDraggable.kt"
    l = {
        0x20c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/material/AnchoredDraggableState;

.field public final synthetic p:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Landroidx/compose/material/AnchoredDraggableState;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 2
    .line 3
    iput-object p3, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;->p:Lkotlin/jvm/functions/Function3;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 6
    .line 7
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;->p:Lkotlin/jvm/functions/Function3;

    .line 8
    .line 9
    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;-><init>(Landroidx/compose/material/AnchoredDraggableState;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function3;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v3, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 16
    .line 17
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v2

    .line 21
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lf0;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 27
    .line 28
    invoke-direct {p1, v1, v3}, Lf0;-><init>(Landroidx/compose/material/AnchoredDraggableState;I)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2$2;

    .line 32
    .line 33
    iget-object v5, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;->p:Lkotlin/jvm/functions/Function3;

    .line 34
    .line 35
    invoke-direct {v4, v1, v2, v5}, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2$2;-><init>(Landroidx/compose/material/AnchoredDraggableState;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function3;)V

    .line 36
    .line 37
    .line 38
    iput v3, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$2;->n:I

    .line 39
    .line 40
    invoke-static {p1, v4, p0}, Landroidx/compose/material/AnchoredDraggableKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    if-ne p0, v0, :cond_2

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p0
.end method
