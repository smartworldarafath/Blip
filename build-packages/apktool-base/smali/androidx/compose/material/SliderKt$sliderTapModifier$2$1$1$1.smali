.class final Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/foundation/gestures/PressGestureScope;",
        "Landroidx/compose/ui/geometry/Offset;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$1$1"
    f = "Slider.kt"
    l = {
        0x3f1
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Landroidx/compose/foundation/gestures/PressGestureScope;

.field public synthetic p:J

.field public final synthetic q:Z

.field public final synthetic r:F

.field public final synthetic s:Landroidx/compose/runtime/MutableState;

.field public final synthetic t:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->q:Z

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->r:F

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->s:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->t:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    const/4 p1, 0x3

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Landroidx/compose/foundation/gestures/PressGestureScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    .line 4
    .line 5
    iget-wide v0, p2, Landroidx/compose/ui/geometry/Offset;->a:J

    .line 6
    .line 7
    move-object v7, p3

    .line 8
    check-cast v7, Lkotlin/coroutines/Continuation;

    .line 9
    .line 10
    new-instance v2, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;

    .line 11
    .line 12
    iget-object v5, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->s:Landroidx/compose/runtime/MutableState;

    .line 13
    .line 14
    iget-object v6, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->t:Landroidx/compose/runtime/State;

    .line 15
    .line 16
    iget-boolean v3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->q:Z

    .line 17
    .line 18
    iget v4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->r:F

    .line 19
    .line 20
    invoke-direct/range {v2 .. v7}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;-><init>(ZFLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, v2, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->o:Landroidx/compose/foundation/gestures/PressGestureScope;

    .line 24
    .line 25
    iput-wide v0, v2, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->p:J

    .line 26
    .line 27
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    invoke-virtual {v2, p0}, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->n:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->s:Landroidx/compose/runtime/MutableState;

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
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/foundation/gestures/GestureCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

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
    iget-object p1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->o:Landroidx/compose/foundation/gestures/PressGestureScope;

    .line 27
    .line 28
    iget-wide v4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->p:J

    .line 29
    .line 30
    iget-boolean v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->q:Z

    .line 31
    .line 32
    const/16 v6, 0x20

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    shr-long/2addr v4, v6

    .line 37
    long-to-int v1, v4

    .line 38
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget v4, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->r:F

    .line 43
    .line 44
    sub-float/2addr v4, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    shr-long/2addr v4, v6

    .line 47
    long-to-int v1, v4

    .line 48
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    :goto_0
    iget-object v1, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->t:Landroidx/compose/runtime/State;

    .line 53
    .line 54
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Ljava/lang/Number;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    sub-float/2addr v4, v1

    .line 65
    new-instance v1, Ljava/lang/Float;

    .line 66
    .line 67
    invoke-direct {v1, v4}, Ljava/lang/Float;-><init>(F)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v2, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :try_start_1
    iput v3, p0, Landroidx/compose/material/SliderKt$sliderTapModifier$2$1$1$1;->n:I

    .line 74
    .line 75
    check-cast p1, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 76
    .line 77
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0
    :try_end_1
    .catch Landroidx/compose/foundation/gestures/GestureCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    if-ne p0, v0, :cond_3

    .line 82
    .line 83
    return-object v0

    .line 84
    :catch_0
    new-instance p0, Ljava/lang/Float;

    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 88
    .line 89
    .line 90
    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 94
    .line 95
    return-object p0
.end method
