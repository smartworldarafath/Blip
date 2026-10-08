.class final Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;
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
    c = "androidx.compose.material.AnchoredDraggableKt$anchoredDraggable$1$1"
    f = "AnchoredDraggable.kt"
    l = {
        0xb4
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/material/AnchoredDraggableState;

.field public final synthetic p:F


# direct methods
.method public constructor <init>(Landroidx/compose/material/AnchoredDraggableState;FLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;->p:F

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 4
    .line 5
    iget p0, p0, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;->p:F

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;FLkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;->n:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v3, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v2

    .line 16
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    .line 18
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput v3, p0, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;->n:I

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 29
    .line 30
    iget-object v1, p1, Landroidx/compose/material/AnchoredDraggableState;->g:Landroidx/compose/runtime/MutableState;

    .line 31
    .line 32
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Landroidx/compose/material/AnchoredDraggableState;->f()F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget v4, p0, Landroidx/compose/material/AnchoredDraggableKt$anchoredDraggable$1$1;->p:F

    .line 43
    .line 44
    invoke-virtual {p1, v3, v4, v1}, Landroidx/compose/material/AnchoredDraggableState;->c(FFLjava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    iget-object v5, p1, Landroidx/compose/material/AnchoredDraggableState;->d:Lkotlin/jvm/functions/Function1;

    .line 49
    .line 50
    invoke-interface {v5, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    invoke-static {p1, v3, v4, p0}, Landroidx/compose/material/AnchoredDraggableKt;->b(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-ne p0, v0, :cond_2

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    move-object p0, v2

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-static {p1, v1, v4, p0}, Landroidx/compose/material/AnchoredDraggableKt;->b(Landroidx/compose/material/AnchoredDraggableState;Ljava/lang/Object;FLkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-ne p0, v0, :cond_2

    .line 76
    .line 77
    :goto_0
    if-ne p0, v0, :cond_4

    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_4
    return-object v2
.end method
