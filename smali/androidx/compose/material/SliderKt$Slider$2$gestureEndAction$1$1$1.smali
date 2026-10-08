.class final Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;
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
    c = "androidx.compose.material.SliderKt$Slider$2$gestureEndAction$1$1$1"
    f = "Slider.kt"
    l = {
        0xea
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/material/SliderDraggableState;

.field public final synthetic p:F

.field public final synthetic q:F

.field public final synthetic r:F

.field public final synthetic s:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/material/SliderDraggableState;FFFLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->o:Landroidx/compose/material/SliderDraggableState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->p:F

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->q:F

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->r:F

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->s:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;

    .line 2
    .line 3
    iget v4, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->r:F

    .line 4
    .line 5
    iget-object v5, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->s:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->o:Landroidx/compose/material/SliderDraggableState;

    .line 8
    .line 9
    iget v2, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->p:F

    .line 10
    .line 11
    iget v3, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->q:F

    .line 12
    .line 13
    move-object v6, p2

    .line 14
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;-><init>(Landroidx/compose/material/SliderDraggableState;FFFLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v4, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    .line 19
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput v4, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->n:I

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/material/SliderKt;->a:Landroidx/compose/ui/Modifier;

    .line 29
    .line 30
    new-instance p1, Landroidx/compose/material/SliderKt$animateToTarget$2;

    .line 31
    .line 32
    iget v1, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->p:F

    .line 33
    .line 34
    iget v4, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->q:F

    .line 35
    .line 36
    iget v5, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->r:F

    .line 37
    .line 38
    invoke-direct {p1, v1, v4, v5, v2}, Landroidx/compose/material/SliderKt$animateToTarget$2;-><init>(FFFLkotlin/coroutines/Continuation;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Landroidx/compose/foundation/MutatePriority;->j:Landroidx/compose/foundation/MutatePriority;

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->o:Landroidx/compose/material/SliderDraggableState;

    .line 44
    .line 45
    invoke-virtual {v2, v1, p1, p0}, Landroidx/compose/material/SliderDraggableState;->a(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-object p1, v3

    .line 53
    :goto_0
    if-ne p1, v0, :cond_3

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_3
    :goto_1
    iget-object p0, p0, Landroidx/compose/material/SliderKt$Slider$2$gestureEndAction$1$1$1;->s:Lkotlin/jvm/functions/Function0;

    .line 57
    .line 58
    if-eqz p0, :cond_4

    .line 59
    .line 60
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_4
    return-object v3
.end method
