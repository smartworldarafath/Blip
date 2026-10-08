.class final Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;
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
    c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$startReceivingEvents$1"
    f = "MouseWheelScrollingLogic.kt"
    l = {
        0x6d,
        0x70
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->p:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->p:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->o:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->n:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->p:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-ne v1, v3, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->o:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    move-object v10, p0

    .line 24
    :cond_0
    move-object p1, v1

    .line 25
    goto :goto_3

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    move-object p0, v0

    .line 28
    goto :goto_4

    .line 29
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->o:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 38
    .line 39
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->o:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 49
    .line 50
    :goto_0
    :try_start_2
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->f(Lkotlin/coroutines/CoroutineContext;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    iget-object v1, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->g:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 61
    .line 62
    iput-object p1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->o:Ljava/lang/Object;

    .line 63
    .line 64
    iput v4, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->n:I

    .line 65
    .line 66
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-ne v1, v0, :cond_4

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move-object v11, v1

    .line 74
    move-object v1, p1

    .line 75
    move-object p1, v11

    .line 76
    :goto_1
    move-object v7, p1

    .line 77
    check-cast v7, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    .line 78
    .line 79
    iget-object p1, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->c:Landroidx/compose/ui/unit/Density;

    .line 80
    .line 81
    const/high16 v6, 0x40c00000    # 6.0f

    .line 82
    .line 83
    invoke-interface {p1, v6}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    iget-object p1, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->c:Landroidx/compose/ui/unit/Density;

    .line 88
    .line 89
    const/high16 v6, 0x3f800000    # 1.0f

    .line 90
    .line 91
    invoke-interface {p1, v6}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    iget-object v6, v5, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 96
    .line 97
    iput-object v1, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->o:Ljava/lang/Object;

    .line 98
    .line 99
    iput v3, p0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;->n:I

    .line 100
    .line 101
    move-object v10, p0

    .line 102
    invoke-static/range {v5 .. v10}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->c(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    if-ne p0, v0, :cond_0

    .line 107
    .line 108
    :goto_2
    return-object v0

    .line 109
    :goto_3
    move-object p0, v10

    .line 110
    goto :goto_0

    .line 111
    :cond_5
    iput-object v2, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->h:Lkotlinx/coroutines/Job;

    .line 112
    .line 113
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p0

    .line 116
    :goto_4
    iput-object v2, v5, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->h:Lkotlinx/coroutines/Job;

    .line 117
    .line 118
    throw p0
.end method
