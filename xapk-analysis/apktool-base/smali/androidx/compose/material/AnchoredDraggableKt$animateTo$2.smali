.class final Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/material/AnchoredDragScope;",
        "Landroidx/compose/material/DraggableAnchors<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material.AnchoredDraggableKt$animateTo$2"
    f = "AnchoredDraggable.kt"
    l = {
        0x2b3
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Landroidx/compose/material/AnchoredDragScope;

.field public synthetic p:Landroidx/compose/material/DraggableAnchors;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Landroidx/compose/material/AnchoredDraggableState;

.field public final synthetic s:F


# direct methods
.method public constructor <init>(Landroidx/compose/material/AnchoredDraggableState;FLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->r:Landroidx/compose/material/AnchoredDraggableState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->s:F

    .line 4
    .line 5
    const/4 p1, 0x4

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/material/AnchoredDragScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/material/DraggableAnchors;

    .line 4
    .line 5
    check-cast p4, Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    new-instance v0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->r:Landroidx/compose/material/AnchoredDraggableState;

    .line 10
    .line 11
    iget p0, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->s:F

    .line 12
    .line 13
    invoke-direct {v0, v1, p0, p4}, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;-><init>(Landroidx/compose/material/AnchoredDraggableState;FLkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->o:Landroidx/compose/material/AnchoredDragScope;

    .line 17
    .line 18
    iput-object p2, v0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->p:Landroidx/compose/material/DraggableAnchors;

    .line 19
    .line 20
    iput-object p3, v0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->q:Ljava/lang/Object;

    .line 21
    .line 22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->n:I

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
    goto :goto_1

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
    iget-object p1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->o:Landroidx/compose/material/AnchoredDragScope;

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->p:Landroidx/compose/material/DraggableAnchors;

    .line 27
    .line 28
    iget-object v4, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->q:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Landroidx/compose/material/MapDraggableAnchors;

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Landroidx/compose/material/MapDraggableAnchors;->c(Ljava/lang/Object;)F

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->r:Landroidx/compose/material/AnchoredDraggableState;

    .line 48
    .line 49
    invoke-virtual {v4}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v4}, Landroidx/compose/material/AnchoredDraggableState;->e()F

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    :goto_0
    iput v5, v1, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 66
    .line 67
    iget-object v8, v4, Landroidx/compose/material/AnchoredDraggableState;->c:Landroidx/compose/animation/core/AnimationSpec;

    .line 68
    .line 69
    new-instance v9, La0;

    .line 70
    .line 71
    invoke-direct {v9, v3, p1, v1}, La0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iput-object v2, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->o:Landroidx/compose/material/AnchoredDragScope;

    .line 75
    .line 76
    iput-object v2, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->p:Landroidx/compose/material/DraggableAnchors;

    .line 77
    .line 78
    iput v3, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->n:I

    .line 79
    .line 80
    iget v7, p0, Landroidx/compose/material/AnchoredDraggableKt$animateTo$2;->s:F

    .line 81
    .line 82
    move-object v10, p0

    .line 83
    invoke-static/range {v5 .. v10}, Landroidx/compose/animation/core/SuspendAnimationKt;->a(FFFLandroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v0, :cond_3

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 91
    .line 92
    return-object p0
.end method
