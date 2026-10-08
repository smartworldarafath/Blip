.class public final Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/TargetedFlingBehavior;


# instance fields
.field public final a:Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

.field public final b:Landroidx/compose/animation/core/DecayAnimationSpec;

.field public final c:Landroidx/compose/animation/core/SpringSpec;

.field public final d:Landroidx/compose/foundation/gestures/ScrollableKt$DefaultScrollMotionDurationScale$1;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/SpringSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->a:Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->b:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->c:Landroidx/compose/animation/core/SpringSpec;

    .line 9
    .line 10
    sget-object p1, Landroidx/compose/foundation/gestures/ScrollableKt;->b:Landroidx/compose/foundation/gestures/ScrollableKt$DefaultScrollMotionDurationScale$1;

    .line 11
    .line 12
    iput-object p1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->d:Landroidx/compose/foundation/gestures/ScrollableKt$DefaultScrollMotionDurationScale$1;

    .line 13
    .line 14
    return-void
.end method

.method public static final b(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLxf;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->o:I

    .line 18
    .line 19
    :goto_0
    move-object p5, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p5}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object v0, p5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->m:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v2, p5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->o:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_5

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v2, 0x0

    .line 57
    cmpg-float v0, v0, v2

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    cmpg-float v0, v0, v2

    .line 67
    .line 68
    if-nez v0, :cond_4

    .line 69
    .line 70
    :goto_2
    const/16 p0, 0x1c

    .line 71
    .line 72
    invoke-static {p2, p3, p0}, Landroidx/compose/animation/core/AnimationStateKt;->b(FFI)Landroidx/compose/animation/core/AnimationState;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0

    .line 77
    :cond_4
    iput v3, p5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$tryApproach$1;->o:I

    .line 78
    .line 79
    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->b:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 80
    .line 81
    invoke-static {v0, p3}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->a(Landroidx/compose/animation/core/DecayAnimationSpec;F)F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    cmpl-float v2, v2, v3

    .line 94
    .line 95
    if-ltz v2, :cond_5

    .line 96
    .line 97
    new-instance p0, Landroidx/compose/foundation/gestures/snapping/DecayApproachAnimation;

    .line 98
    .line 99
    invoke-direct {p0, v0}, Landroidx/compose/foundation/gestures/snapping/DecayApproachAnimation;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;)V

    .line 100
    .line 101
    .line 102
    :goto_3
    move v0, p2

    .line 103
    goto :goto_4

    .line 104
    :cond_5
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/TargetApproachAnimation;

    .line 105
    .line 106
    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->c:Landroidx/compose/animation/core/SpringSpec;

    .line 107
    .line 108
    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/snapping/TargetApproachAnimation;-><init>(Landroidx/compose/animation/core/SpringSpec;)V

    .line 109
    .line 110
    .line 111
    move-object p0, v0

    .line 112
    goto :goto_3

    .line 113
    :goto_4
    new-instance p2, Ljava/lang/Float;

    .line 114
    .line 115
    invoke-direct {p2, v0}, Ljava/lang/Float;-><init>(F)V

    .line 116
    .line 117
    .line 118
    move v0, p3

    .line 119
    new-instance p3, Ljava/lang/Float;

    .line 120
    .line 121
    invoke-direct {p3, v0}, Ljava/lang/Float;-><init>(F)V

    .line 122
    .line 123
    .line 124
    invoke-interface/range {p0 .. p5}, Landroidx/compose/foundation/gestures/snapping/ApproachAnimation;->a(Landroidx/compose/foundation/gestures/ScrollScope;Ljava/lang/Float;Ljava/lang/Float;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-ne v0, v1, :cond_6

    .line 129
    .line 130
    return-object v1

    .line 131
    :cond_6
    :goto_5
    check-cast v0, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    .line 132
    .line 133
    iget-object p0, v0, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->b:Landroidx/compose/animation/core/AnimationState;

    .line 134
    .line 135
    return-object p0
.end method


# virtual methods
.method public final c(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->p:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->p:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    iget-object p3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->m:Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 43
    .line 44
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0

    .line 49
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance v4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;

    .line 53
    .line 54
    const/4 v9, 0x0

    .line 55
    move-object v5, p0

    .line 56
    move-object v8, p1

    .line 57
    move v6, p2

    .line 58
    move-object v7, p3

    .line 59
    invoke-direct/range {v4 .. v9}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$result$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;FLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/ScrollScope;Lkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    iput-object v7, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->m:Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    iput v3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$fling$1;->p:I

    .line 65
    .line 66
    iget-object p0, v5, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->d:Landroidx/compose/foundation/gestures/ScrollableKt$DefaultScrollMotionDurationScale$1;

    .line 67
    .line 68
    invoke-static {p0, v4, v0}, Lkotlinx/coroutines/BuildersKt;->e(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    if-ne p4, v1, :cond_3

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_3
    move-object p3, v7

    .line 76
    :goto_1
    check-cast p4, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    .line 77
    .line 78
    new-instance p0, Ljava/lang/Float;

    .line 79
    .line 80
    const/4 p1, 0x0

    .line 81
    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    return-object p4
.end method

.method public final d(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p4, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;-><init>(Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 41
    .line 42
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return-object p0

    .line 47
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput v3, v0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior$performFling$1;->o:I

    .line 51
    .line 52
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->c(Landroidx/compose/foundation/gestures/ScrollScope;FLkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    if-ne p4, v1, :cond_3

    .line 57
    .line 58
    return-object v1

    .line 59
    :cond_3
    :goto_1
    check-cast p4, Landroidx/compose/foundation/gestures/snapping/AnimationResult;

    .line 60
    .line 61
    iget-object p0, p4, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->a:Ljava/lang/Float;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    iget-object p1, p4, Landroidx/compose/foundation/gestures/snapping/AnimationResult;->b:Landroidx/compose/animation/core/AnimationState;

    .line 68
    .line 69
    const/4 p2, 0x0

    .line 70
    cmpg-float p0, p0, p2

    .line 71
    .line 72
    if-nez p0, :cond_4

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationState;->b()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/lang/Number;

    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    :goto_2
    new-instance p0, Ljava/lang/Float;

    .line 86
    .line 87
    invoke-direct {p0, p2}, Ljava/lang/Float;-><init>(F)V

    .line 88
    .line 89
    .line 90
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    .line 7
    .line 8
    iget-object v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->c:Landroidx/compose/animation/core/SpringSpec;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->c:Landroidx/compose/animation/core/SpringSpec;

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/SpringSpec;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->b:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 19
    .line 20
    iget-object v2, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->b:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 21
    .line 22
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p1, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->a:Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    .line 29
    .line 30
    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->a:Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    .line 31
    .line 32
    if-eq p1, p0, :cond_0

    .line 33
    .line 34
    return v1

    .line 35
    :cond_0
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->c:Landroidx/compose/animation/core/SpringSpec;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/animation/core/SpringSpec;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->b:Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object p0, p0, Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;->a:Landroidx/compose/foundation/gestures/snapping/PagerSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    add-int/2addr p0, v1

    .line 25
    return p0
.end method
