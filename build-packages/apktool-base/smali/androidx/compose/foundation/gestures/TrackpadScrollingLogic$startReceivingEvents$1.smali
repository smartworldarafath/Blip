.class final Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;
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
    c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic$startReceivingEvents$1"
    f = "TrackpadScrollingLogic.kt"
    l = {
        0x5f,
        0x5f
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

.field public o:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->r:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->r:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->q:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->p:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->r:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->q:Ljava/lang/Object;

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
    move-object p1, v1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v5

    .line 33
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->o:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 34
    .line 35
    iget-object v6, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->n:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 36
    .line 37
    iget-object v7, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->q:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v7, Lkotlinx/coroutines/CoroutineScope;

    .line 40
    .line 41
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->q:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 51
    .line 52
    :goto_0
    :try_start_2
    invoke-interface {p1}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Lkotlinx/coroutines/JobKt;->f(Lkotlin/coroutines/CoroutineContext;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    iget-object v1, v2, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 63
    .line 64
    iget-object v6, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 65
    .line 66
    iput-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->q:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object v2, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->n:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 69
    .line 70
    iput-object v1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->o:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 71
    .line 72
    iput v4, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->p:I

    .line 73
    .line 74
    invoke-virtual {v6, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->i(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    if-ne v6, v0, :cond_3

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    move-object v7, p1

    .line 82
    move-object p1, v6

    .line 83
    move-object v6, v2

    .line 84
    :goto_1
    check-cast p1, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    .line 85
    .line 86
    iput-object v7, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->q:Ljava/lang/Object;

    .line 87
    .line 88
    iput-object v5, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->n:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    .line 89
    .line 90
    iput-object v5, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->o:Landroidx/compose/foundation/gestures/ScrollingLogic;

    .line 91
    .line 92
    iput v3, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;->p:I

    .line 93
    .line 94
    invoke-static {v6, v1, p1, p0}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->c(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    if-ne p1, v0, :cond_4

    .line 99
    .line 100
    :goto_2
    return-object v0

    .line 101
    :cond_4
    move-object p1, v7

    .line 102
    goto :goto_0

    .line 103
    :cond_5
    iput-object v5, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->g:Lkotlinx/coroutines/Job;

    .line 104
    .line 105
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p0

    .line 108
    :goto_3
    iput-object v5, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->g:Lkotlinx/coroutines/Job;

    .line 109
    .line 110
    throw p0
.end method
