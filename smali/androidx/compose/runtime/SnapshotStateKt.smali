.class public abstract Landroidx/compose/runtime/SnapshotStateKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;
    .locals 3

    .line 1
    and-int/lit8 p4, p5, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p2, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 6
    .line 7
    :cond_0
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    or-int/2addr p4, p5

    .line 18
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p5

    .line 22
    const/4 v0, 0x0

    .line 23
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 24
    .line 25
    if-nez p4, :cond_1

    .line 26
    .line 27
    if-ne p5, v1, :cond_2

    .line 28
    .line 29
    :cond_1
    new-instance p5, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;

    .line 30
    .line 31
    invoke-direct {p5, p2, p0, v0}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    check-cast p5, Lkotlin/jvm/functions/Function2;

    .line 38
    .line 39
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p4

    .line 43
    if-ne p4, v1, :cond_3

    .line 44
    .line 45
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    invoke-virtual {p3, p4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    check-cast p4, Landroidx/compose/runtime/MutableState;

    .line 53
    .line 54
    invoke-virtual {p3, p5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez p1, :cond_4

    .line 63
    .line 64
    if-ne v2, v1, :cond_5

    .line 65
    .line 66
    :cond_4
    new-instance v2, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$3$1;

    .line 67
    .line 68
    invoke-direct {v2, p5, p4, v0}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$3$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 75
    .line 76
    invoke-static {p0, p2, v2, p3}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 77
    .line 78
    .line 79
    return-object p4
.end method

.method public static final b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;
    .locals 6

    .line 1
    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v1

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v3, p1

    .line 11
    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static final c()Landroidx/compose/runtime/collection/MutableVector;
    .locals 3

    .line 1
    sget-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->b:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    new-array v2, v2, [Landroidx/compose/runtime/DerivedStateObserver;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-object v1
.end method

.method public static final d(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->a:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->a:Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/runtime/DerivedSnapshotState;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/DerivedSnapshotState;-><init>(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static final f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->a:Landroidx/compose/runtime/StructuralEqualityPolicy;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static final h()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/NeverEqualPolicy;->a:Landroidx/compose/runtime/NeverEqualPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final i(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/MutableState;
    .locals 3

    .line 1
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    if-ne v2, v1, :cond_2

    .line 31
    .line 32
    :cond_1
    new-instance v2, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-direct {v2, p2, v0, p1}, Landroidx/compose/runtime/SnapshotStateKt__ProduceStateKt$produceState$1$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 42
    .line 43
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    invoke-static {p0, p1, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public static final j()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/ReferentialEqualityPolicy;->a:Landroidx/compose/runtime/ReferentialEqualityPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final k(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    check-cast v0, Landroidx/compose/runtime/MutableState;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static final l(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final m()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/StructuralEqualityPolicy;->a:Landroidx/compose/runtime/StructuralEqualityPolicy;

    .line 2
    .line 3
    return-object v0
.end method
