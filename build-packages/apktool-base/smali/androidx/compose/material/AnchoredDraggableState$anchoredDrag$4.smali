.class final Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;
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
    c = "androidx.compose.material.AnchoredDraggableState$anchoredDrag$4"
    f = "AnchoredDraggable.kt"
    l = {
        0x23c
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/material/AnchoredDraggableState;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lkotlin/jvm/functions/Function4;


# direct methods
.method public constructor <init>(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->q:Lkotlin/jvm/functions/Function4;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->q:Lkotlin/jvm/functions/Function4;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;-><init>(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->n:I

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
    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->p:Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroidx/compose/material/AnchoredDraggableState;->h(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lf0;

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    invoke-direct {p1, v1, v4}, Lf0;-><init>(Landroidx/compose/material/AnchoredDraggableState;I)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4$2;

    .line 38
    .line 39
    iget-object v5, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->q:Lkotlin/jvm/functions/Function4;

    .line 40
    .line 41
    invoke-direct {v4, v5, v1, v2}, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4$2;-><init>(Lkotlin/jvm/functions/Function4;Landroidx/compose/material/AnchoredDraggableState;Lkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    iput v3, p0, Landroidx/compose/material/AnchoredDraggableState$anchoredDrag$4;->n:I

    .line 45
    .line 46
    invoke-static {p1, v4, p0}, Landroidx/compose/material/AnchoredDraggableKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    if-ne p0, v0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p0
.end method
