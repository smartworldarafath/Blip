.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;
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
    c = "androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animatePlacementDelta$1"
    f = "LazyLayoutItemAnimation.kt"
    l = {
        0x8c,
        0x93
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public o:I

.field public final synthetic p:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

.field public final synthetic q:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic r:J


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;JLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->p:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->q:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 4
    .line 5
    iput-wide p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->r:J

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;

    .line 2
    .line 3
    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->q:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 4
    .line 5
    iget-wide v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->r:J

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->p:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 8
    .line 9
    move-object v5, p2

    .line 10
    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;JLkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->p:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->n:Landroidx/compose/animation/core/Animatable;

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->o:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-wide v5, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->r:J

    .line 11
    .line 12
    const/4 v7, 0x2

    .line 13
    const/4 v8, 0x1

    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    if-eq v3, v8, :cond_1

    .line 17
    .line 18
    if-ne v3, v7, :cond_0

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v4

    .line 30
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->n:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 31
    .line 32
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :try_start_2
    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->g()Z

    .line 40
    .line 41
    .line 42
    move-result p1
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->q:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 44
    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    :try_start_3
    instance-of p1, v3, Landroidx/compose/animation/core/SpringSpec;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    check-cast v3, Landroidx/compose/animation/core/SpringSpec;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    sget-object v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimationKt;->a:Landroidx/compose/animation/core/SpringSpec;

    .line 55
    .line 56
    :cond_4
    :goto_0
    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->g()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_6

    .line 61
    .line 62
    new-instance p1, Landroidx/compose/ui/unit/IntOffset;

    .line 63
    .line 64
    invoke-direct {p1, v5, v6}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 65
    .line 66
    .line 67
    iput-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->n:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 68
    .line 69
    iput v8, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->o:I

    .line 70
    .line 71
    invoke-virtual {v1, p1, p0}, Landroidx/compose/animation/core/Animatable;->h(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v2, :cond_5

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    :goto_1
    iget-object p1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->c:Lr1;

    .line 79
    .line 80
    invoke-virtual {p1}, Lr1;->a()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_6
    move-object v10, v3

    .line 84
    invoke-virtual {v1}, Landroidx/compose/animation/core/Animatable;->f()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroidx/compose/ui/unit/IntOffset;

    .line 89
    .line 90
    iget-wide v8, p1, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 91
    .line 92
    invoke-static {v8, v9, v5, v6}, Landroidx/compose/ui/unit/IntOffset;->b(JJ)J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    iget-object v8, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->n:Landroidx/compose/animation/core/Animatable;

    .line 97
    .line 98
    new-instance v9, Landroidx/compose/ui/unit/IntOffset;

    .line 99
    .line 100
    invoke-direct {v9, v5, v6}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 101
    .line 102
    .line 103
    new-instance v11, Lti;

    .line 104
    .line 105
    invoke-direct {v11, v0, v5, v6}, Lti;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;J)V

    .line 106
    .line 107
    .line 108
    iput-object v4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->n:Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 109
    .line 110
    iput v7, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animatePlacementDelta$1;->o:I

    .line 111
    .line 112
    const/4 v13, 0x4

    .line 113
    move-object v12, p0

    .line 114
    invoke-static/range {v8 .. v13}, Landroidx/compose/animation/core/Animatable;->d(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-ne p0, v2, :cond_7

    .line 119
    .line 120
    :goto_2
    return-object v2

    .line 121
    :cond_7
    :goto_3
    const/4 p0, 0x0

    .line 122
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->e(Z)V

    .line 123
    .line 124
    .line 125
    iput-boolean p0, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->e:Z
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 126
    .line 127
    :catch_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p0
.end method
