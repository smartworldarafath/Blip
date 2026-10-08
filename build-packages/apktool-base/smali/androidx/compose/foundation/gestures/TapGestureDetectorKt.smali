.class public abstract Landroidx/compose/foundation/gestures/TapGestureDetectorKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lkotlin/jvm/functions/Function3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$NoPressGesture$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    invoke-direct {v0, v2, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->a:Lkotlin/jvm/functions/Function3;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p3, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->q:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->p:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->q:I

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
    iget-boolean p0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->o:Z

    .line 37
    .line 38
    iget-object p1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->n:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 39
    .line 40
    iget-object p2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 41
    .line 42
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    move-object v4, p1

    .line 46
    move p1, p0

    .line 47
    move-object p0, p2

    .line 48
    move-object p2, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x0

    .line 56
    return-object p0

    .line 57
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iput-object p0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 61
    .line 62
    iput-object p2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->n:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 63
    .line 64
    iput-boolean p1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->o:Z

    .line 65
    .line 66
    iput v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitFirstDown$2;->q:I

    .line 67
    .line 68
    invoke-interface {p0, p2, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    if-ne p3, v1, :cond_4

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_4
    :goto_1
    check-cast p3, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 76
    .line 77
    invoke-static {p3, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->f(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    iget-object p0, p3, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 84
    .line 85
    const/4 p1, 0x0

    .line 86
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p2, v0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    sget-object p2, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 8
    .line 9
    invoke-static {p0, v0, p2, p1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->o:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->o:I

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
    iget-object p0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    iput-object p0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 53
    .line 54
    iput v3, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$consumeUntilUp$1;->o:I

    .line 55
    .line 56
    invoke-static {p0, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->t0(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-ne p1, v1, :cond_3

    .line 61
    .line 62
    return-object v1

    .line 63
    :cond_3
    :goto_2
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 64
    .line 65
    iget-object v2, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    const/4 v5, 0x0

    .line 72
    move v6, v5

    .line 73
    :goto_3
    if-ge v6, v4, :cond_4

    .line 74
    .line 75
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 80
    .line 81
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    iget-object p1, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    :goto_4
    if-ge v5, v2, :cond_6

    .line 94
    .line 95
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 100
    .line 101
    iget-boolean v4, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    .line 102
    .line 103
    if-eqz v4, :cond_5

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method

.method public static final d(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function3;Li2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v4, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    .line 2
    .line 3
    invoke-direct {v4, p0}, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2;

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move-object v1, p0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapAndPress$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function3;Li2;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 20
    .line 21
    if-ne p0, p1, :cond_0

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object p0
.end method

.method public static e(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;
    .locals 1

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->a:Lkotlin/jvm/functions/Function3;

    .line 6
    .line 7
    :cond_0
    new-instance p4, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p4, p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$detectTapGestures$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p4, p3}, Lkotlinx/coroutines/CoroutineScopeKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 18
    .line 19
    if-ne p0, p1, :cond_1

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method public static f(Landroidx/compose/ui/input/pointer/PointerEvent;Z)Z
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->a(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->b(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    :goto_1
    if-nez v3, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public static g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;
    .locals 3

    .line 1
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->m:Lkotlinx/coroutines/CoroutineStart;

    .line 2
    .line 3
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$launchAwaitingReset$1;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, p2, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$launchAwaitingReset$1;-><init>(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-static {p0, v2, v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final h(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;

    iget v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    goto :goto_0

    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;

    .line 1
    invoke-direct {v2, v1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 2
    :goto_0
    iget-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->v:Ljava/lang/Object;

    .line 3
    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    sget-object v7, Landroidx/compose/foundation/gestures/LongPressResult$Success;->a:Landroidx/compose/foundation/gestures/LongPressResult$Success;

    sget-object v8, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->a:Lkotlin/jvm/functions/Function3;

    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    packed-switch v4, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    return-object v6

    :pswitch_0
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v2, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v9

    goto/16 :goto_c

    :pswitch_1
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->u:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/Job;

    iget-object v8, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iget-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    goto/16 :goto_a

    :pswitch_2
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/Job;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v2, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v9

    goto/16 :goto_9

    :pswitch_3
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->u:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function3;

    iget-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/CoroutineScope;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v14

    move-object v14, v10

    move-object v10, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v9

    move-object v9, v13

    move-object v13, v15

    goto/16 :goto_8

    :pswitch_4
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    iget-object v3, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v2, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v9

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->u:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function3;

    iget-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iget-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    check-cast v13, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/CoroutineScope;

    iget-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    check-cast v15, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v9

    move-object v9, v11

    move-object v11, v5

    move-object v5, v4

    move-object v4, v13

    move-object v13, v14

    goto/16 :goto_3

    :pswitch_6
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Job;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function3;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iget-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v9

    goto/16 :goto_2

    :pswitch_7
    iget-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function3;

    iget-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iget-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    check-cast v12, Landroidx/compose/foundation/gestures/PressGestureScopeImpl;

    iget-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/CoroutineScope;

    iget-object v14, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    check-cast v14, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v15, v11

    move-object v11, v0

    move-object v0, v10

    move-object v10, v4

    move-object v4, v12

    const/4 v12, 0x1

    goto :goto_1

    :pswitch_8
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 5
    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    move-object/from16 v1, p1

    iput-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    move-object/from16 v4, p2

    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    move-object/from16 v10, p3

    iput-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    move-object/from16 v11, p4

    iput-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    const/4 v12, 0x1

    iput v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    invoke-static {v0, v2, v5}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->b(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;I)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v3, :cond_1

    goto/16 :goto_b

    :cond_1
    move-object v14, v13

    move-object v13, v1

    move-object v1, v14

    move-object v14, v0

    move-object v0, v6

    move-object v15, v0

    .line 6
    :goto_1
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 8
    sget-object v5, Lkotlinx/coroutines/CoroutineStart;->m:Lkotlinx/coroutines/CoroutineStart;

    move-object/from16 v17, v9

    new-instance v9, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$resetJob$1;

    invoke-direct {v9, v4, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$resetJob$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v13, v6, v5, v9, v12}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v5

    if-eq v10, v8, :cond_2

    .line 9
    new-instance v9, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$2;

    invoke-direct {v9, v10, v4, v1, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$2;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V

    invoke-static {v13, v5, v9}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    :cond_2
    if-nez v0, :cond_4

    .line 10
    iput-object v14, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    iput-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    .line 11
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 12
    invoke-static {v14, v1, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    goto/16 :goto_b

    :cond_3
    move-object v12, v10

    move-object v10, v0

    move-object v0, v5

    move-object v5, v12

    move-object v12, v4

    move-object v4, v11

    move-object v11, v15

    .line 13
    :goto_2
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    goto/16 :goto_6

    .line 14
    :cond_4
    iput-object v14, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    iput-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    iput-object v15, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->u:Ljava/lang/Object;

    const/4 v9, 0x3

    iput v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    .line 15
    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 16
    invoke-static {v14, v9, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->i(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_5

    goto/16 :goto_b

    :cond_5
    move-object v12, v9

    move-object v9, v0

    move-object v0, v5

    move-object v5, v1

    move-object v1, v12

    move-object v12, v15

    move-object v15, v14

    .line 17
    :goto_3
    check-cast v1, Landroidx/compose/foundation/gestures/LongPressResult;

    .line 18
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 19
    iget-wide v7, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 20
    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v1, v7, v8}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 21
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->u:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    invoke-static {v15, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_b

    :cond_6
    move-object v3, v4

    move-object v2, v13

    .line 23
    :goto_4
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;

    invoke-direct {v1, v3, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$3;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-object v17

    .line 24
    :cond_7
    instance-of v5, v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    if-eqz v5, :cond_8

    check-cast v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    .line 25
    iget-object v1, v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    goto :goto_5

    .line 26
    :cond_8
    instance-of v1, v1, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    if-eqz v1, :cond_17

    move-object v1, v6

    :goto_5
    move-object v5, v12

    move-object v12, v4

    move-object v4, v11

    move-object v11, v5

    move-object v5, v10

    move-object v14, v15

    move-object v10, v9

    :goto_6
    if-nez v1, :cond_9

    .line 27
    new-instance v9, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$4;

    invoke-direct {v9, v12, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$4;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v13, v0, v9}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v0

    goto :goto_7

    .line 28
    :cond_9
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 29
    new-instance v9, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$5;

    invoke-direct {v9, v12, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$5;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v13, v0, v9}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    move-result-object v0

    :goto_7
    if-eqz v1, :cond_16

    if-nez v11, :cond_a

    if-eqz v4, :cond_16

    .line 30
    iget-wide v0, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 31
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 32
    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v17

    .line 33
    :cond_a
    iput-object v14, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    iput-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    iput-object v11, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->u:Ljava/lang/Object;

    const/4 v9, 0x5

    iput v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    .line 34
    invoke-interface {v14}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v9

    move-object/from16 p0, v4

    move-object v15, v5

    invoke-interface {v9}, Landroidx/compose/ui/platform/ViewConfiguration;->a()J

    move-result-wide v4

    new-instance v9, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitSecondDown$2;

    invoke-direct {v9, v1, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$awaitSecondDown$2;-><init>(Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v14, v4, v5, v9, v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->z0(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_b

    goto/16 :goto_b

    :cond_b
    move-object v5, v4

    move-object v4, v1

    move-object v1, v5

    move-object/from16 v5, p0

    move-object v9, v11

    move-object v11, v15

    .line 35
    :goto_8
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v1, :cond_c

    if-eqz v5, :cond_16

    .line 36
    iget-wide v0, v4, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 37
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 38
    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v17

    .line 39
    :cond_c
    sget-object v15, Lkotlinx/coroutines/CoroutineStart;->m:Lkotlinx/coroutines/CoroutineStart;

    move-object/from16 v16, v7

    new-instance v7, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$6;

    invoke-direct {v7, v0, v12, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$6;-><init>(Lkotlinx/coroutines/Job;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x1

    invoke-static {v13, v6, v15, v7, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    if-eq v11, v8, :cond_d

    .line 40
    new-instance v7, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$7;

    invoke-direct {v7, v11, v12, v1, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$7;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Landroidx/compose/ui/input/pointer/PointerInputChange;Lkotlin/coroutines/Continuation;)V

    invoke-static {v13, v0, v7}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    :cond_d
    if-nez v10, :cond_f

    .line 41
    iput-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->u:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    .line 42
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 43
    invoke-static {v14, v1, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->j(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_e

    goto :goto_b

    :cond_e
    move-object v3, v0

    move-object v0, v4

    move-object v4, v5

    move-object v5, v9

    move-object v7, v12

    move-object v2, v13

    .line 44
    :goto_9
    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    goto/16 :goto_e

    .line 45
    :cond_f
    iput-object v14, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    iput-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    iput-object v9, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iput-object v10, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    iput-object v4, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    iput-object v1, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->u:Ljava/lang/Object;

    const/4 v7, 0x7

    iput v7, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    .line 46
    sget-object v7, Landroidx/compose/ui/input/pointer/PointerEventPass;->k:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 47
    invoke-static {v14, v7, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->i(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_10

    goto :goto_b

    :cond_10
    move-object v8, v5

    move-object v11, v9

    move-object v5, v0

    move-object v0, v1

    move-object v1, v7

    .line 48
    :goto_a
    check-cast v1, Landroidx/compose/foundation/gestures/LongPressResult;

    move-object/from16 v7, v16

    .line 49
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 50
    iget-wide v0, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 51
    new-instance v4, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v4, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 52
    invoke-interface {v10, v4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iput-object v13, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->m:Ljava/lang/Object;

    iput-object v12, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->n:Ljava/lang/Object;

    iput-object v5, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->o:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->p:Lkotlin/jvm/functions/Function1;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->q:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->r:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->s:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->t:Ljava/lang/Object;

    iput-object v6, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->u:Ljava/lang/Object;

    const/16 v0, 0x8

    iput v0, v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$1;->w:I

    invoke-static {v14, v2}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_11

    :goto_b
    return-object v3

    :cond_11
    move-object v0, v5

    move-object v3, v12

    move-object v2, v13

    .line 54
    :goto_c
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$secondUp$1;

    invoke-direct {v1, v3, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$secondUp$1;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v0, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    return-object v17

    .line 55
    :cond_12
    instance-of v0, v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    if-eqz v0, :cond_13

    check-cast v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;

    .line 56
    iget-object v1, v1, Landroidx/compose/foundation/gestures/LongPressResult$Released;->a:Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object v0, v4

    move-object v3, v5

    :goto_d
    move-object v4, v8

    move-object v5, v11

    move-object v7, v12

    move-object v2, v13

    goto :goto_e

    .line 57
    :cond_13
    instance-of v0, v1, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    if-eqz v0, :cond_15

    move-object v0, v4

    move-object v3, v5

    move-object v1, v6

    goto :goto_d

    :goto_e
    if-eqz v1, :cond_14

    .line 58
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    .line 59
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$8;

    invoke-direct {v0, v7, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$8;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    .line 60
    iget-wide v0, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 61
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 62
    invoke-interface {v5, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v17

    .line 63
    :cond_14
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$9;

    invoke-direct {v1, v7, v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$processTapGesture$9;-><init>(Landroidx/compose/foundation/gestures/PressGestureScopeImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v3, v1}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->g(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    if-eqz v4, :cond_16

    .line 64
    iget-wide v0, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    .line 65
    new-instance v2, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    .line 66
    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v17

    .line 67
    :cond_15
    invoke-static {}, Lk8;->e()V

    return-object v6

    :cond_16
    return-object v17

    .line 68
    :cond_17
    invoke-static {}, Lk8;->e()V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final i(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->o:I

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
    iput v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->n:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    if-ne v2, v4, :cond_1

    .line 36
    .line 37
    iget-object p0, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 38
    .line 39
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 53
    .line 54
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    sget-object v2, Landroidx/compose/foundation/gestures/LongPressResult$Canceled;->a:Landroidx/compose/foundation/gestures/LongPressResult$Canceled;

    .line 58
    .line 59
    iput-object v2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 60
    .line 61
    :try_start_1
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v2}, Landroidx/compose/ui/platform/ViewConfiguration;->b()J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    new-instance v2, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;

    .line 70
    .line 71
    invoke-direct {v2, p1, p2, v3}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$2;-><init>(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 72
    .line 73
    .line 74
    iput-object p2, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 75
    .line 76
    iput v4, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForLongPress$1;->o:I

    .line 77
    .line 78
    invoke-interface {p0, v5, v6, v2, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->g0(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_1
    .catch Landroidx/compose/ui/input/pointer/PointerEventTimeoutCancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    if-ne p0, v1, :cond_3

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_3
    move-object p0, p2

    .line 86
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->j:Ljava/lang/Object;

    .line 87
    .line 88
    return-object p0

    .line 89
    :catch_0
    sget-object p0, Landroidx/compose/foundation/gestures/LongPressResult$Success;->a:Landroidx/compose/foundation/gestures/LongPressResult$Success;

    .line 90
    .line 91
    return-object p0
.end method

.method public static final j(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;

    .line 9
    .line 10
    iget v2, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->p:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->p:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->o:Ljava/lang/Object;

    .line 28
    .line 29
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 30
    .line 31
    iget v3, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->p:I

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x2

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x1

    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    if-eq v3, v7, :cond_3

    .line 40
    .line 41
    if-ne v3, v5, :cond_2

    .line 42
    .line 43
    iget-object v3, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->n:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 44
    .line 45
    iget-object v8, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 46
    .line 47
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    move-object/from16 v16, v3

    .line 51
    .line 52
    move-object v3, v1

    .line 53
    move-object/from16 v1, v16

    .line 54
    .line 55
    goto/16 :goto_6

    .line 56
    .line 57
    :cond_2
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-static {v0}, Lu2;->l(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v4

    .line 63
    :cond_3
    iget-object v3, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->n:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 64
    .line 65
    iget-object v8, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    move-object/from16 v0, p0

    .line 75
    .line 76
    move-object v3, v1

    .line 77
    move-object/from16 v1, p1

    .line 78
    .line 79
    :goto_1
    iput-object v0, v3, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 80
    .line 81
    iput-object v1, v3, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->n:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 82
    .line 83
    iput v7, v3, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->p:I

    .line 84
    .line 85
    invoke-interface {v0, v1, v3}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    if-ne v8, v2, :cond_5

    .line 90
    .line 91
    goto :goto_5

    .line 92
    :cond_5
    move-object/from16 v16, v8

    .line 93
    .line 94
    move-object v8, v0

    .line 95
    move-object/from16 v0, v16

    .line 96
    .line 97
    move-object/from16 v16, v3

    .line 98
    .line 99
    move-object v3, v1

    .line 100
    move-object/from16 v1, v16

    .line 101
    .line 102
    :goto_2
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 103
    .line 104
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    move v10, v6

    .line 111
    :goto_3
    if-ge v10, v9, :cond_c

    .line 112
    .line 113
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 118
    .line 119
    invoke-static {v11}, Landroidx/compose/ui/input/pointer/PointerEventKt;->c(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-nez v11, :cond_b

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    move v10, v6

    .line 130
    :goto_4
    if-ge v10, v9, :cond_7

    .line 131
    .line 132
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 137
    .line 138
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-nez v12, :cond_8

    .line 143
    .line 144
    invoke-interface {v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->f()J

    .line 145
    .line 146
    .line 147
    move-result-wide v12

    .line 148
    invoke-interface {v8}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->p0()J

    .line 149
    .line 150
    .line 151
    move-result-wide v14

    .line 152
    invoke-static {v11, v12, v13, v14, v15}, Landroidx/compose/ui/input/pointer/PointerEventKt;->e(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    .line 153
    .line 154
    .line 155
    move-result v11

    .line 156
    if-eqz v11, :cond_6

    .line 157
    .line 158
    goto :goto_8

    .line 159
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->l:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 163
    .line 164
    iput-object v8, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->m:Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 165
    .line 166
    iput-object v3, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->n:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 167
    .line 168
    iput v5, v1, Landroidx/compose/foundation/gestures/TapGestureDetectorKt$waitForUpOrCancellation$2;->p:I

    .line 169
    .line 170
    invoke-interface {v8, v0, v1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->q(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-ne v0, v2, :cond_1

    .line 175
    .line 176
    :goto_5
    return-object v2

    .line 177
    :goto_6
    check-cast v0, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 178
    .line 179
    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    move v10, v6

    .line 186
    :goto_7
    if-ge v10, v9, :cond_a

    .line 187
    .line 188
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 193
    .line 194
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->c()Z

    .line 195
    .line 196
    .line 197
    move-result v11

    .line 198
    if-eqz v11, :cond_9

    .line 199
    .line 200
    :cond_8
    :goto_8
    return-object v4

    .line 201
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_a
    move-object v0, v8

    .line 205
    goto :goto_1

    .line 206
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_c
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    return-object v0
.end method
