.class final Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;
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
    c = "androidx.compose.animation.core.TransitionKt$rememberTransition$2$1"
    f = "Transition.kt"
    l = {
        0x976
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public n:Lkotlinx/coroutines/sync/MutexImpl;

.field public o:Landroidx/compose/animation/core/TransitionState;

.field public p:I

.field public final synthetic q:Landroidx/compose/animation/core/TransitionState;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/TransitionState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->q:Landroidx/compose/animation/core/TransitionState;

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
    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;

    .line 10
    .line 11
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->v(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public final s(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->q:Landroidx/compose/animation/core/TransitionState;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;-><init>(Landroidx/compose/animation/core/TransitionState;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final v(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->p:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->o:Landroidx/compose/animation/core/TransitionState;

    .line 12
    .line 13
    iget-object p0, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v3

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->q:Landroidx/compose/animation/core/TransitionState;

    .line 29
    .line 30
    move-object v1, p1

    .line 31
    check-cast v1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 32
    .line 33
    iget-object v4, v1, Landroidx/compose/animation/core/SeekableTransitionState;->h:Landroidx/compose/runtime/snapshots/SnapshotStateObserver;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    sget-object v5, Landroidx/compose/animation/core/TransitionKt;->a:Lqg;

    .line 38
    .line 39
    iget-object v6, v1, Landroidx/compose/animation/core/SeekableTransitionState;->g:Lkb;

    .line 40
    .line 41
    invoke-virtual {v4, v1, v5, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v1, v1, Landroidx/compose/animation/core/SeekableTransitionState;->k:Lkotlinx/coroutines/sync/MutexImpl;

    .line 45
    .line 46
    iput-object v1, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->n:Lkotlinx/coroutines/sync/MutexImpl;

    .line 47
    .line 48
    iput-object p1, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->o:Landroidx/compose/animation/core/TransitionState;

    .line 49
    .line 50
    iput v2, p0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;->p:I

    .line 51
    .line 52
    invoke-virtual {v1, p0}, Lkotlinx/coroutines/sync/MutexImpl;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-ne p0, v0, :cond_3

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_3
    move-object v0, p1

    .line 60
    move-object p0, v1

    .line 61
    :goto_0
    :try_start_0
    move-object p1, v0

    .line 62
    check-cast p1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 63
    .line 64
    move-object v1, v0

    .line 65
    check-cast v1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 66
    .line 67
    iget-object v1, v1, Landroidx/compose/animation/core/SeekableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    .line 68
    .line 69
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 70
    .line 71
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iput-object v1, p1, Landroidx/compose/animation/core/SeekableTransitionState;->d:Ljava/lang/Object;

    .line 76
    .line 77
    move-object p1, v0

    .line 78
    check-cast p1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 79
    .line 80
    iget-object p1, p1, Landroidx/compose/animation/core/SeekableTransitionState;->j:Lkotlinx/coroutines/CancellableContinuationImpl;

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    move-object v1, v0

    .line 85
    check-cast v1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 86
    .line 87
    iget-object v1, v1, Landroidx/compose/animation/core/SeekableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    .line 88
    .line 89
    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 90
    .line 91
    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p1, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->g(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception p1

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    :goto_1
    check-cast v0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 102
    .line 103
    iput-object v3, v0, Landroidx/compose/animation/core/SeekableTransitionState;->j:Lkotlinx/coroutines/CancellableContinuationImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .line 105
    invoke-interface {p0, v3}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p0

    .line 111
    :goto_2
    invoke-interface {p0, v3}, Lkotlinx/coroutines/sync/Mutex;->h(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    throw p1
.end method
