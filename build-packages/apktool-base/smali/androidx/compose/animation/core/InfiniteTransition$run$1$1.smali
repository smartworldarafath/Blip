.class final Landroidx/compose/animation/core/InfiniteTransition$run$1$1;
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
    c = "androidx.compose.animation.core.InfiniteTransition$run$1$1"
    f = "InfiniteTransition.kt"
    l = {
        0xac,
        0xc1
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlin/jvm/internal/Ref$FloatRef;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Landroidx/compose/runtime/MutableState;

.field public final synthetic r:Landroidx/compose/animation/core/InfiniteTransition;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->q:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->r:Landroidx/compose/animation/core/InfiniteTransition;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->q:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->r:Landroidx/compose/animation/core/InfiniteTransition;

    .line 6
    .line 7
    invoke-direct {v0, v1, p0, p2}, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/animation/core/InfiniteTransition;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->p:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->o:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x2

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    if-eq v1, v3, :cond_1

    .line 11
    .line 12
    if-ne v1, v4, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 15
    .line 16
    iget-object v5, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->p:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v9, v1

    .line 24
    move-object v10, v5

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_1
    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 33
    .line 34
    iget-object v5, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->p:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    move-object v9, v1

    .line 42
    move-object v10, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->p:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 50
    .line 51
    new-instance v1, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    const/high16 v5, 0x3f800000    # 1.0f

    .line 57
    .line 58
    iput v5, v1, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 59
    .line 60
    move-object v10, p1

    .line 61
    move-object v9, v1

    .line 62
    :cond_3
    :goto_0
    new-instance v6, Ls2;

    .line 63
    .line 64
    const/4 v11, 0x4

    .line 65
    iget-object v7, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->q:Landroidx/compose/runtime/MutableState;

    .line 66
    .line 67
    iget-object v8, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->r:Landroidx/compose/animation/core/InfiniteTransition;

    .line 68
    .line 69
    invoke-direct/range {v6 .. v11}, Ls2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    iput-object v10, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->p:Ljava/lang/Object;

    .line 73
    .line 74
    iput-object v9, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 75
    .line 76
    iput v3, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->o:I

    .line 77
    .line 78
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object v1, Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;->j:Landroidx/compose/ui/platform/InfiniteAnimationPolicy$Key;

    .line 83
    .line 84
    invoke-interface {p1, v1}, Lkotlin/coroutines/CoroutineContext;->v(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-nez p1, :cond_5

    .line 89
    .line 90
    invoke-interface {p0}, Lkotlin/coroutines/Continuation;->o()Lkotlin/coroutines/CoroutineContext;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Landroidx/compose/runtime/MonotonicFrameClockKt;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/MonotonicFrameClock;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-interface {p1, p0, v6}, Landroidx/compose/runtime/MonotonicFrameClock;->w(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-ne p1, v0, :cond_4

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    :goto_1
    iget p1, v9, Lkotlin/jvm/internal/Ref$FloatRef;->j:F

    .line 106
    .line 107
    const/4 v1, 0x0

    .line 108
    cmpg-float p1, p1, v1

    .line 109
    .line 110
    if-nez p1, :cond_3

    .line 111
    .line 112
    new-instance p1, Lr1;

    .line 113
    .line 114
    const/16 v1, 0x15

    .line 115
    .line 116
    invoke-direct {p1, v1, v10}, Lr1;-><init>(ILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->l(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    new-instance v1, Landroidx/compose/animation/core/InfiniteTransition$run$1$1$3;

    .line 124
    .line 125
    invoke-direct {v1, v4, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 126
    .line 127
    .line 128
    iput-object v10, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->p:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object v9, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->n:Lkotlin/jvm/internal/Ref$FloatRef;

    .line 131
    .line 132
    iput v4, p0, Landroidx/compose/animation/core/InfiniteTransition$run$1$1;->o:I

    .line 133
    .line 134
    check-cast p1, Lkotlinx/coroutines/flow/CancellableFlow;

    .line 135
    .line 136
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->m(Lkotlinx/coroutines/flow/CancellableFlow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, v0, :cond_3

    .line 141
    .line 142
    :goto_2
    return-object v0

    .line 143
    :cond_5
    invoke-static {}, Lio/sentry/d;->i()V

    .line 144
    .line 145
    .line 146
    return-object v2
.end method
