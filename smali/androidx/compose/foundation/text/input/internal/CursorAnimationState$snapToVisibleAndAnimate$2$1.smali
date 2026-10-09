.class final Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;
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
    c = "androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2$1"
    f = "CursorAnimationState.kt"
    l = {
        0x48,
        0x4d,
        0x4f,
        0x51
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:I

.field public final synthetic o:Lkotlinx/coroutines/Job;

.field public final synthetic p:Landroidx/compose/foundation/text/input/internal/CursorAnimationState;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->o:Lkotlinx/coroutines/Job;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->p:Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    .line 18
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->o:Lkotlinx/coroutines/Job;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->p:Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;-><init>(Lkotlinx/coroutines/Job;Landroidx/compose/foundation/text/input/internal/CursorAnimationState;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->p:Landroidx/compose/foundation/text/input/internal/CursorAnimationState;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->c:Landroidx/compose/runtime/MutableFloatState;

    .line 4
    .line 5
    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->n:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    const-wide/16 v6, 0x1f4

    .line 12
    .line 13
    const/high16 v8, 0x3f800000    # 1.0f

    .line 14
    .line 15
    const/4 v9, 0x4

    .line 16
    const/4 v10, 0x3

    .line 17
    const/4 v11, 0x2

    .line 18
    const/4 v12, 0x1

    .line 19
    if-eqz v3, :cond_4

    .line 20
    .line 21
    if-eq v3, v12, :cond_3

    .line 22
    .line 23
    if-eq v3, v11, :cond_2

    .line 24
    .line 25
    if-eq v3, v10, :cond_1

    .line 26
    .line 27
    if-ne v3, v9, :cond_0

    .line 28
    .line 29
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_5

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_6

    .line 35
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v4

    .line 41
    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lkotlin/KotlinNothingValueException;

    .line 49
    .line 50
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->o:Lkotlinx/coroutines/Job;

    .line 62
    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    iput v12, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->n:I

    .line 66
    .line 67
    invoke-interface {p1, v4}, Lkotlinx/coroutines/Job;->n(Ljava/util/concurrent/CancellationException;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->O(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v2, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 78
    .line 79
    :goto_0
    if-ne p1, v2, :cond_6

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_6
    :goto_1
    :try_start_2
    move-object p1, v1

    .line 83
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 84
    .line 85
    invoke-virtual {p1, v8}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 86
    .line 87
    .line 88
    iget-boolean p1, v0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState;->a:Z

    .line 89
    .line 90
    if-nez p1, :cond_7

    .line 91
    .line 92
    iput v11, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->n:I

    .line 93
    .line 94
    invoke-static {p0}, Lkotlinx/coroutines/DelayKt;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 95
    .line 96
    .line 97
    return-object v2

    .line 98
    :cond_7
    :goto_2
    iput v10, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->n:I

    .line 99
    .line 100
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    if-ne p1, v2, :cond_8

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_8
    :goto_3
    move-object p1, v1

    .line 108
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 109
    .line 110
    invoke-virtual {p1, v5}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 111
    .line 112
    .line 113
    iput v9, p0, Landroidx/compose/foundation/text/input/internal/CursorAnimationState$snapToVisibleAndAnimate$2$1;->n:I

    .line 114
    .line 115
    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne p1, v2, :cond_9

    .line 120
    .line 121
    :goto_4
    return-object v2

    .line 122
    :cond_9
    :goto_5
    move-object p1, v1

    .line 123
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 124
    .line 125
    invoke-virtual {p1, v8}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :goto_6
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;

    .line 130
    .line 131
    invoke-virtual {v1, v5}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->k(F)V

    .line 132
    .line 133
    .line 134
    throw p0
.end method
