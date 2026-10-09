.class final Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.animation.core.SeekableTransitionState$snapTo$2"
    f = "Transition.kt"
    l = {
        0x243
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Landroidx/compose/animation/core/SeekableTransitionState;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Landroidx/compose/animation/core/Transition;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/SeekableTransitionState;Ljava/lang/Object;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->o:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->p:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->q:Landroidx/compose/animation/core/Transition;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->q:Landroidx/compose/animation/core/Transition;

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->o:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1, v2, p1}, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;-><init>(Landroidx/compose/animation/core/SeekableTransitionState;Ljava/lang/Object;Landroidx/compose/animation/core/Transition;Lkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->o:Landroidx/compose/animation/core/SeekableTransitionState;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/animation/core/SeekableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->n:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->q:Landroidx/compose/animation/core/Transition;

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    if-ne v3, v4, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return-object p0

    .line 27
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroidx/compose/animation/core/SeekableTransitionState;->l()V

    .line 31
    .line 32
    .line 33
    const-wide/high16 v6, -0x8000000000000000L

    .line 34
    .line 35
    iput-wide v6, v0, Landroidx/compose/animation/core/SeekableTransitionState;->m:J

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-virtual {v0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->q(F)V

    .line 39
    .line 40
    .line 41
    iget-object v3, v0, Landroidx/compose/animation/core/SeekableTransitionState;->c:Landroidx/compose/runtime/MutableState;

    .line 42
    .line 43
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 44
    .line 45
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    iget-object v6, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->p:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/high16 v7, -0x3fc00000    # -3.0f

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    const/high16 v3, -0x3f800000    # -4.0f

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object v3, v1

    .line 63
    check-cast v3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 64
    .line 65
    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    const/high16 v3, -0x3f600000    # -5.0f

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    move v3, v7

    .line 79
    :goto_0
    invoke-virtual {v5, v6}, Landroidx/compose/animation/core/Transition;->s(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const-wide/16 v8, 0x0

    .line 83
    .line 84
    invoke-virtual {v5, v8, v9}, Landroidx/compose/animation/core/Transition;->o(J)V

    .line 85
    .line 86
    .line 87
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 88
    .line 89
    invoke-virtual {v1, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p1}, Landroidx/compose/animation/core/SeekableTransitionState;->q(F)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v6}, Landroidx/compose/animation/core/SeekableTransitionState;->c(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v3}, Landroidx/compose/animation/core/Transition;->k(F)V

    .line 99
    .line 100
    .line 101
    cmpg-float p1, v3, v7

    .line 102
    .line 103
    if-nez p1, :cond_4

    .line 104
    .line 105
    iput v4, p0, Landroidx/compose/animation/core/SeekableTransitionState$snapTo$2;->n:I

    .line 106
    .line 107
    invoke-static {v0, p0}, Landroidx/compose/animation/core/SeekableTransitionState;->i(Landroidx/compose/animation/core/SeekableTransitionState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    if-ne p0, v2, :cond_4

    .line 112
    .line 113
    return-object v2

    .line 114
    :cond_4
    :goto_1
    invoke-virtual {v5}, Landroidx/compose/animation/core/Transition;->j()V

    .line 115
    .line 116
    .line 117
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p0
.end method
