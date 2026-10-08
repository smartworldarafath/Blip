.class final Landroidx/compose/material/SwitchKt$Switch$1$1;
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
    c = "androidx.compose.material.SwitchKt$Switch$1$1"
    f = "Switch.kt"
    l = {
        0x81
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/material/AnchoredDraggableState;

.field public final synthetic p:Landroidx/compose/runtime/MutableState;

.field public final synthetic q:Landroidx/compose/runtime/MutableState;

.field public final synthetic r:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->p:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->q:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->r:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SwitchKt$Switch$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/material/SwitchKt$Switch$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/material/SwitchKt$Switch$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/material/SwitchKt$Switch$1$1;

    .line 2
    .line 3
    iget-object v3, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->q:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iget-object v4, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->r:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->p:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    move-object v5, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/SwitchKt$Switch$1$1;-><init>(Landroidx/compose/material/AnchoredDraggableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->n:I

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
    const/4 v1, 0x4

    .line 27
    iget-object v4, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->o:Landroidx/compose/material/AnchoredDraggableState;

    .line 28
    .line 29
    invoke-direct {p1, v4, v1}, Lf0;-><init>(Landroidx/compose/material/AnchoredDraggableState;I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->l(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v1, Landroidx/compose/material/SwitchKt$Switch$1$1$2;

    .line 37
    .line 38
    iget-object v4, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->q:Landroidx/compose/runtime/MutableState;

    .line 39
    .line 40
    iget-object v5, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->r:Landroidx/compose/runtime/MutableState;

    .line 41
    .line 42
    iget-object v6, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->p:Landroidx/compose/runtime/MutableState;

    .line 43
    .line 44
    invoke-direct {v1, v6, v4, v5, v2}, Landroidx/compose/material/SwitchKt$Switch$1$1$2;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    iput v3, p0, Landroidx/compose/material/SwitchKt$Switch$1$1;->n:I

    .line 48
    .line 49
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->h(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    if-ne p0, v0, :cond_2

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p0
.end method
