.class public final Landroidx/compose/foundation/lazy/LazyListState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# static fields
.field public static final y:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;


# instance fields
.field public final a:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

.field public b:Z

.field public c:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

.field public d:Z

.field public final e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

.field public final f:Landroidx/compose/runtime/MutableState;

.field public final g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public h:F

.field public i:Z

.field public final j:Landroidx/compose/foundation/gestures/ScrollableState;

.field public final k:Z

.field public l:Landroidx/compose/ui/layout/Remeasurement;

.field public final m:Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;

.field public final n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field public final o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field public final p:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

.field public final q:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final r:Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;

.field public final s:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field public final t:Landroidx/compose/runtime/MutableState;

.field public final u:Landroidx/compose/runtime/MutableState;

.field public final v:Landroidx/compose/runtime/MutableState;

.field public final w:Landroidx/compose/runtime/MutableState;

.field public final x:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lz6;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lz6;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, La7;

    .line 9
    .line 10
    const/16 v2, 0x1d

    .line 11
    .line 12
    invoke-direct {v1, v2}, La7;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->a(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/compose/foundation/lazy/LazyListState;->y:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->a:I

    .line 8
    .line 9
    iput v1, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->d:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    .line 15
    .line 16
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 17
    .line 18
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;-><init>(II)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 22
    .line 23
    sget-object p2, Landroidx/compose/foundation/lazy/LazyListStateKt;->a:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 24
    .line 25
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->h()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/MutableState;

    .line 34
    .line 35
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->g:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 40
    .line 41
    new-instance p2, Lc;

    .line 42
    .line 43
    const/16 v0, 0x1d

    .line 44
    .line 45
    invoke-direct {p2, v0, p0}, Lc;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p2}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->j:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->k:Z

    .line 56
    .line 57
    new-instance p2, Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 60
    .line 61
    .line 62
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->m:Landroidx/compose/foundation/lazy/LazyListState$remeasurementModifier$1;

    .line 63
    .line 64
    new-instance p2, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 70
    .line 71
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 72
    .line 73
    invoke-direct {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 77
    .line 78
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 79
    .line 80
    invoke-direct {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->p:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 84
    .line 85
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 86
    .line 87
    new-instance v0, Lr0;

    .line 88
    .line 89
    invoke-direct {v0, p0, p1}, Lr0;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p2, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 93
    .line 94
    .line 95
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->q:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 96
    .line 97
    new-instance p1, Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;

    .line 98
    .line 99
    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;)V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->r:Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;

    .line 103
    .line 104
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 105
    .line 106
    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->s:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 110
    .line 111
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->a()Landroidx/compose/runtime/MutableState;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->t:Landroidx/compose/runtime/MutableState;

    .line 116
    .line 117
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListState;->u:Landroidx/compose/runtime/MutableState;

    .line 124
    .line 125
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->v:Landroidx/compose/runtime/MutableState;

    .line 130
    .line 131
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->a()Landroidx/compose/runtime/MutableState;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->w:Landroidx/compose/runtime/MutableState;

    .line 136
    .line 137
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 138
    .line 139
    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 143
    .line 144
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->j:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 2
    .line 3
    invoke-interface {p0}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->v:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->q:I

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
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->q:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_2
    iget-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->n:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 51
    .line 52
    move-object p2, p1

    .line 53
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 54
    .line 55
    iget-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->m:Landroidx/compose/foundation/MutatePriority;

    .line 56
    .line 57
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/MutableState;

    .line 65
    .line 66
    check-cast p3, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 67
    .line 68
    invoke-virtual {p3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    sget-object v2, Landroidx/compose/foundation/lazy/LazyListStateKt;->a:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 73
    .line 74
    if-ne p3, v2, :cond_4

    .line 75
    .line 76
    iput-object p1, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->m:Landroidx/compose/foundation/MutatePriority;

    .line 77
    .line 78
    move-object p3, p2

    .line 79
    check-cast p3, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 80
    .line 81
    iput-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->n:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 82
    .line 83
    iput v5, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->q:I

    .line 84
    .line 85
    iget-object p3, p0, Landroidx/compose/foundation/lazy/LazyListState;->n:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 86
    .line 87
    invoke-virtual {p3, v0}, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->k(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    if-ne p3, v1, :cond_4

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    :goto_1
    iput-object v3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->m:Landroidx/compose/foundation/MutatePriority;

    .line 95
    .line 96
    iput-object v3, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->n:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 97
    .line 98
    iput v4, v0, Landroidx/compose/foundation/lazy/LazyListState$scroll$1;->q:I

    .line 99
    .line 100
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->j:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 101
    .line 102
    invoke-interface {p0, p1, p2, v0}, Landroidx/compose/foundation/gestures/ScrollableState;->c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    if-ne p0, v1, :cond_5

    .line 107
    .line 108
    :goto_2
    return-object v1

    .line 109
    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method

.method public final d()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->u:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public final e(F)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->j:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroidx/compose/foundation/gestures/ScrollableState;->e(F)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final f(IILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p3, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$1;->o:I

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
    iput v1, v0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$1;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$1;->o:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v5, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :try_start_1
    iput-boolean v5, p0, Landroidx/compose/foundation/lazy/LazyListState;->i:Z

    .line 54
    .line 55
    new-instance p3, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;

    .line 56
    .line 57
    invoke-direct {p3, p0, p1, p2, v3}, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;)V

    .line 58
    .line 59
    .line 60
    iput v5, v0, Landroidx/compose/foundation/lazy/LazyListState$animateScrollToItem$1;->o:I

    .line 61
    .line 62
    sget-object p1, Landroidx/compose/foundation/MutatePriority;->j:Landroidx/compose/foundation/MutatePriority;

    .line 63
    .line 64
    invoke-virtual {p0, p1, p3, v0}, Landroidx/compose/foundation/lazy/LazyListState;->c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    if-ne p1, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    iput-boolean v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->i:Z

    .line 72
    .line 73
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p0

    .line 76
    :goto_2
    iput-boolean v4, p0, Landroidx/compose/foundation/lazy/LazyListState;->i:Z

    .line 77
    .line 78
    throw p1
.end method

.method public final g(Landroidx/compose/foundation/lazy/LazyListMeasureResult;ZZ)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 6
    .line 7
    iget v3, v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->o:I

    .line 8
    .line 9
    iget v4, v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->b:I

    .line 10
    .line 11
    iget-object v5, v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->a:Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListState;->q:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 18
    .line 19
    iput v6, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->e:I

    .line 20
    .line 21
    const/4 v6, 0x0

    .line 22
    iget-object v7, v0, Landroidx/compose/foundation/lazy/LazyListState;->x:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    const/4 v9, 0x0

    .line 26
    iget-object v10, v0, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 27
    .line 28
    const/4 v11, 0x1

    .line 29
    if-nez p2, :cond_3

    .line 30
    .line 31
    iget-boolean v12, v0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    .line 32
    .line 33
    if-eqz v12, :cond_3

    .line 34
    .line 35
    iput-object v1, v0, Landroidx/compose/foundation/lazy/LazyListState;->c:Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 36
    .line 37
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    :cond_0
    invoke-static {v1}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :try_start_0
    iget-object v0, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->b:Landroidx/compose/animation/core/AnimationState;

    .line 52
    .line 53
    iget-object v0, v0, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 54
    .line 55
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Number;

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    cmpg-float v0, v0, v6

    .line 68
    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    move v9, v11

    .line 72
    :cond_1
    if-nez v9, :cond_2

    .line 73
    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    iget v0, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 77
    .line 78
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->a()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    if-ne v0, v3, :cond_2

    .line 83
    .line 84
    invoke-virtual {v10}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->b()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ne v4, v0, :cond_2

    .line 89
    .line 90
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    invoke-static {v1, v2, v8}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :goto_1
    invoke-static {v1, v2, v8}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_3
    if-eqz p2, :cond_4

    .line 105
    .line 106
    iput-boolean v11, v0, Landroidx/compose/foundation/lazy/LazyListState;->b:Z

    .line 107
    .line 108
    :cond_4
    if-eqz v5, :cond_5

    .line 109
    .line 110
    iget v12, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_5
    move v12, v9

    .line 114
    :goto_2
    if-nez v12, :cond_7

    .line 115
    .line 116
    if-eqz v4, :cond_6

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    move v12, v9

    .line 120
    goto :goto_4

    .line 121
    :cond_7
    :goto_3
    move v12, v11

    .line 122
    :goto_4
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    iget-object v13, v0, Landroidx/compose/foundation/lazy/LazyListState;->v:Landroidx/compose/runtime/MutableState;

    .line 127
    .line 128
    check-cast v13, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 129
    .line 130
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-boolean v12, v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->c:Z

    .line 134
    .line 135
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    iget-object v13, v0, Landroidx/compose/foundation/lazy/LazyListState;->u:Landroidx/compose/runtime/MutableState;

    .line 140
    .line 141
    check-cast v13, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 142
    .line 143
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget v12, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 147
    .line 148
    iget v13, v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->d:F

    .line 149
    .line 150
    sub-float/2addr v12, v13

    .line 151
    iput v12, v0, Landroidx/compose/foundation/lazy/LazyListState;->h:F

    .line 152
    .line 153
    iget-object v12, v0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/MutableState;

    .line 154
    .line 155
    check-cast v12, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 156
    .line 157
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    const-string v12, "scrollOffset should be non-negative"

    .line 161
    .line 162
    if-eqz p3, :cond_a

    .line 163
    .line 164
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    int-to-float v0, v4

    .line 168
    cmpl-float v0, v0, v6

    .line 169
    .line 170
    if-ltz v0, :cond_8

    .line 171
    .line 172
    move v9, v11

    .line 173
    :cond_8
    if-nez v9, :cond_9

    .line 174
    .line 175
    invoke-static {v12}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    iget-object v0, v10, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->b:Landroidx/compose/runtime/MutableIntState;

    .line 179
    .line 180
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 181
    .line 182
    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 183
    .line 184
    .line 185
    move-object/from16 v17, v7

    .line 186
    .line 187
    goto/16 :goto_b

    .line 188
    .line 189
    :cond_a
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v13

    .line 193
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 194
    .line 195
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v14

    .line 199
    check-cast v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 200
    .line 201
    const-wide/16 v15, -0x1

    .line 202
    .line 203
    if-eqz v13, :cond_b

    .line 204
    .line 205
    iget v13, v13, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 206
    .line 207
    move/from16 v18, v6

    .line 208
    .line 209
    move-object/from16 v17, v7

    .line 210
    .line 211
    int-to-long v6, v13

    .line 212
    goto :goto_5

    .line 213
    :cond_b
    move/from16 v18, v6

    .line 214
    .line 215
    move-object/from16 v17, v7

    .line 216
    .line 217
    move-wide v6, v15

    .line 218
    :goto_5
    const-string v13, "firstVisibleItem:index"

    .line 219
    .line 220
    invoke-static {v6, v7, v13}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 221
    .line 222
    .line 223
    if-eqz v14, :cond_c

    .line 224
    .line 225
    iget v6, v14, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 226
    .line 227
    int-to-long v6, v6

    .line 228
    goto :goto_6

    .line 229
    :cond_c
    move-wide v6, v15

    .line 230
    :goto_6
    const-string v13, "lastVisibleItem:index"

    .line 231
    .line 232
    invoke-static {v6, v7, v13}, Landroidx/compose/ui/util/AndroidTrace_androidKt;->a(JLjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    if-eqz v5, :cond_d

    .line 239
    .line 240
    iget-object v6, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->i:Ljava/lang/Object;

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :cond_d
    move-object v6, v8

    .line 244
    :goto_7
    iput-object v6, v10, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->d:Ljava/lang/Object;

    .line 245
    .line 246
    iget-boolean v6, v10, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->c:Z

    .line 247
    .line 248
    if-nez v6, :cond_e

    .line 249
    .line 250
    if-lez v3, :cond_12

    .line 251
    .line 252
    :cond_e
    iput-boolean v11, v10, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->c:Z

    .line 253
    .line 254
    int-to-float v6, v4

    .line 255
    cmpl-float v6, v6, v18

    .line 256
    .line 257
    if-ltz v6, :cond_f

    .line 258
    .line 259
    move v6, v11

    .line 260
    goto :goto_8

    .line 261
    :cond_f
    move v6, v9

    .line 262
    :goto_8
    if-nez v6, :cond_10

    .line 263
    .line 264
    invoke-static {v12}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    :cond_10
    if-eqz v5, :cond_11

    .line 268
    .line 269
    iget v5, v5, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_11
    move v5, v9

    .line 273
    :goto_9
    invoke-virtual {v10, v5, v4}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->c(II)V

    .line 274
    .line 275
    .line 276
    :cond_12
    iget-boolean v4, v0, Landroidx/compose/foundation/lazy/LazyListState;->k:Z

    .line 277
    .line 278
    if-eqz v4, :cond_18

    .line 279
    .line 280
    iget-object v4, v0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    .line 281
    .line 282
    check-cast v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;

    .line 283
    .line 284
    iget v5, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->a:I

    .line 285
    .line 286
    iget-boolean v6, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->c:Z

    .line 287
    .line 288
    const/4 v7, -0x1

    .line 289
    if-eq v5, v7, :cond_14

    .line 290
    .line 291
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 292
    .line 293
    .line 294
    move-result v10

    .line 295
    if-nez v10, :cond_14

    .line 296
    .line 297
    invoke-static {v1, v6}, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->a(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Z)I

    .line 298
    .line 299
    .line 300
    move-result v6

    .line 301
    if-eq v5, v6, :cond_14

    .line 302
    .line 303
    iput v7, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->a:I

    .line 304
    .line 305
    iget-object v5, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 306
    .line 307
    if-eqz v5, :cond_13

    .line 308
    .line 309
    invoke-interface {v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 310
    .line 311
    .line 312
    :cond_13
    iput-object v8, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 313
    .line 314
    :cond_14
    iget v5, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->d:I

    .line 315
    .line 316
    if-eq v5, v7, :cond_17

    .line 317
    .line 318
    iget v6, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->e:F

    .line 319
    .line 320
    cmpg-float v6, v6, v18

    .line 321
    .line 322
    if-nez v6, :cond_15

    .line 323
    .line 324
    goto :goto_a

    .line 325
    :cond_15
    if-eq v5, v3, :cond_17

    .line 326
    .line 327
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-nez v2, :cond_17

    .line 332
    .line 333
    iget v2, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->e:F

    .line 334
    .line 335
    cmpg-float v2, v2, v18

    .line 336
    .line 337
    if-gez v2, :cond_16

    .line 338
    .line 339
    move v9, v11

    .line 340
    :cond_16
    invoke-static {v1, v9}, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->a(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Z)I

    .line 341
    .line 342
    .line 343
    move-result v2

    .line 344
    if-ltz v2, :cond_17

    .line 345
    .line 346
    if-ge v2, v3, :cond_17

    .line 347
    .line 348
    iput v2, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->a:I

    .line 349
    .line 350
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListState;->r:Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;

    .line 351
    .line 352
    invoke-static {v0, v2}, Landroidx/compose/foundation/lazy/LazyListPrefetchScope;->a(Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iput-object v0, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 357
    .line 358
    :cond_17
    :goto_a
    iput v3, v4, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->d:I

    .line 359
    .line 360
    :cond_18
    :goto_b
    if-eqz p2, :cond_19

    .line 361
    .line 362
    iget v0, v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->f:F

    .line 363
    .line 364
    iget-object v2, v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->i:Landroidx/compose/ui/unit/Density;

    .line 365
    .line 366
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 367
    .line 368
    move-object/from16 v3, v17

    .line 369
    .line 370
    invoke-virtual {v3, v0, v2, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->b(FLandroidx/compose/ui/unit/Density;Lkotlinx/coroutines/CoroutineScope;)V

    .line 371
    .line 372
    .line 373
    :cond_19
    return-void
.end method

.method public final h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->f:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 10
    .line 11
    return-object p0
.end method

.method public final i(FLandroidx/compose/foundation/lazy/LazyListLayoutInfo;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;

    .line 8
    .line 9
    move-object v1, p2

    .line 10
    check-cast v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 11
    .line 12
    iget-object v1, v1, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_5

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    cmpg-float v1, p1, v1

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-static {p2, v1}, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->a(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Z)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ltz v2, :cond_5

    .line 33
    .line 34
    check-cast p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 35
    .line 36
    iget v3, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->o:I

    .line 37
    .line 38
    if-ge v2, v3, :cond_5

    .line 39
    .line 40
    iget v3, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->a:I

    .line 41
    .line 42
    if-eq v2, v3, :cond_3

    .line 43
    .line 44
    iget-boolean v3, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->c:Z

    .line 45
    .line 46
    if-eq v3, v1, :cond_2

    .line 47
    .line 48
    const/4 v3, -0x1

    .line 49
    iput v3, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->a:I

    .line 50
    .line 51
    iget-object v3, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 52
    .line 53
    if-eqz v3, :cond_1

    .line 54
    .line 55
    invoke-interface {v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 56
    .line 57
    .line 58
    :cond_1
    const/4 v3, 0x0

    .line 59
    iput-object v3, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 60
    .line 61
    :cond_2
    iput-boolean v1, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->c:Z

    .line 62
    .line 63
    iput v2, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->a:I

    .line 64
    .line 65
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->r:Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;

    .line 66
    .line 67
    invoke-static {p0, v2}, Landroidx/compose/foundation/lazy/LazyListPrefetchScope;->a(Landroidx/compose/foundation/lazy/LazyListState$prefetchScope$1;I)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    iput-object p0, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 72
    .line 73
    :cond_3
    iget-object p0, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 74
    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 82
    .line 83
    iget v1, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->r:I

    .line 84
    .line 85
    move-object v2, p0

    .line 86
    check-cast v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 87
    .line 88
    iget v2, v2, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 89
    .line 90
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 91
    .line 92
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->n:I

    .line 93
    .line 94
    add-int/2addr v2, p0

    .line 95
    add-int/2addr v2, v1

    .line 96
    iget p0, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->n:I

    .line 97
    .line 98
    sub-int/2addr v2, p0

    .line 99
    int-to-float p0, v2

    .line 100
    neg-float p2, p1

    .line 101
    cmpg-float p0, p0, p2

    .line 102
    .line 103
    if-gez p0, :cond_5

    .line 104
    .line 105
    iget-object p0, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 106
    .line 107
    if-eqz p0, :cond_5

    .line 108
    .line 109
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->a()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 118
    .line 119
    iget p2, p2, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->m:I

    .line 120
    .line 121
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 122
    .line 123
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->m:I

    .line 124
    .line 125
    sub-int/2addr p2, p0

    .line 126
    int-to-float p0, p2

    .line 127
    cmpg-float p0, p0, p1

    .line 128
    .line 129
    if-gez p0, :cond_5

    .line 130
    .line 131
    iget-object p0, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 132
    .line 133
    if-eqz p0, :cond_5

    .line 134
    .line 135
    invoke-interface {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->a()V

    .line 136
    .line 137
    .line 138
    :cond_5
    :goto_1
    iput p1, v0, Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;->e:F

    .line 139
    .line 140
    :cond_6
    return-void
.end method

.method public final j(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-ne v1, p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->b()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eq v1, p2, :cond_2

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->e()V

    .line 19
    .line 20
    .line 21
    iput-object v2, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->b:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 22
    .line 23
    const/4 v3, -0x1

    .line 24
    iput v3, v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->c:I

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->a:Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;

    .line 27
    .line 28
    instance-of v3, v1, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    check-cast v1, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v1, v2

    .line 36
    :goto_0
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/CacheWindowLogic;->f()V

    .line 39
    .line 40
    .line 41
    :cond_2
    invoke-virtual {v0, p1, p2}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->c(II)V

    .line 42
    .line 43
    .line 44
    iput-object v2, v0, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->d:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->l:Landroidx/compose/ui/layout/Remeasurement;

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    check-cast p0, Landroidx/compose/ui/node/LayoutNode;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->k()V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method
