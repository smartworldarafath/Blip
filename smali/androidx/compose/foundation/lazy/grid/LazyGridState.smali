.class public final Landroidx/compose/foundation/lazy/grid/LazyGridState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/gestures/ScrollableState;


# static fields
.field public static final w:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;


# instance fields
.field public final a:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

.field public b:Z

.field public c:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

.field public final d:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

.field public final e:Landroidx/compose/runtime/MutableState;

.field public final f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public g:F

.field public final h:Landroidx/compose/foundation/gestures/ScrollableState;

.field public final i:Z

.field public j:Landroidx/compose/ui/layout/Remeasurement;

.field public final k:Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;

.field public final l:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

.field public final m:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field public final n:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

.field public final o:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field public final p:Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;

.field public final q:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

.field public final r:Landroidx/compose/runtime/MutableState;

.field public final s:Landroidx/compose/runtime/MutableState;

.field public final t:Landroidx/compose/runtime/MutableState;

.field public final u:Landroidx/compose/runtime/MutableState;

.field public final v:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lz6;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lz6;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, La7;

    .line 9
    .line 10
    const/16 v2, 0x19

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
    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->w:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->a:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;-><init>(II)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->d:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 17
    .line 18
    sget-object p2, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 19
    .line 20
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->h()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->f(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->e:Landroidx/compose/runtime/MutableState;

    .line 29
    .line 30
    invoke-static {}, Landroidx/compose/foundation/interaction/InteractionSourceKt;->a()Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->f:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 35
    .line 36
    new-instance p2, Lc;

    .line 37
    .line 38
    const/16 v0, 0x1b

    .line 39
    .line 40
    invoke-direct {p2, v0, p0}, Lc;-><init>(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Landroidx/compose/foundation/gestures/ScrollableStateKt;->a(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/gestures/ScrollableState;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->h:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->i:Z

    .line 51
    .line 52
    new-instance p2, Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;

    .line 53
    .line 54
    invoke-direct {p2, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->k:Landroidx/compose/foundation/lazy/grid/LazyGridState$remeasurementModifier$1;

    .line 58
    .line 59
    new-instance p2, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 60
    .line 61
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->l:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    .line 65
    .line 66
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 67
    .line 68
    invoke-direct {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->m:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    .line 72
    .line 73
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 74
    .line 75
    invoke-direct {p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->n:Landroidx/compose/foundation/lazy/layout/LazyLayoutBeyondBoundsInfo;

    .line 79
    .line 80
    new-instance p2, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 81
    .line 82
    new-instance v0, Landroidx/compose/foundation/lazy/grid/e;

    .line 83
    .line 84
    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/grid/e;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;I)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 88
    .line 89
    .line 90
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 91
    .line 92
    new-instance p1, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;

    .line 93
    .line 94
    invoke-direct {p1, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->p:Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;

    .line 98
    .line 99
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 100
    .line 101
    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->q:Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    .line 105
    .line 106
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->a()Landroidx/compose/runtime/MutableState;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->r:Landroidx/compose/runtime/MutableState;

    .line 111
    .line 112
    invoke-static {}, Landroidx/compose/foundation/lazy/layout/ObservableScopeInvalidator;->a()Landroidx/compose/runtime/MutableState;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->s:Landroidx/compose/runtime/MutableState;

    .line 117
    .line 118
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->t:Landroidx/compose/runtime/MutableState;

    .line 125
    .line 126
    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->u:Landroidx/compose/runtime/MutableState;

    .line 131
    .line 132
    new-instance p1, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 133
    .line 134
    invoke-direct {p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->v:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 138
    .line 139
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->h:Landroidx/compose/foundation/gestures/ScrollableState;

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
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->u:Landroidx/compose/runtime/MutableState;

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
    instance-of v0, p3, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->q:I

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
    iput v1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->q:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->o:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->q:I

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
    iget-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->n:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 51
    .line 52
    move-object p2, p1

    .line 53
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 54
    .line 55
    iget-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->m:Landroidx/compose/foundation/MutatePriority;

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
    iget-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->e:Landroidx/compose/runtime/MutableState;

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
    sget-object v2, Landroidx/compose/foundation/lazy/grid/LazyGridStateKt;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 73
    .line 74
    if-ne p3, v2, :cond_4

    .line 75
    .line 76
    iput-object p1, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->m:Landroidx/compose/foundation/MutatePriority;

    .line 77
    .line 78
    move-object p3, p2

    .line 79
    check-cast p3, Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 80
    .line 81
    iput-object p3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->n:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 82
    .line 83
    iput v5, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->q:I

    .line 84
    .line 85
    iget-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->l:Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

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
    iput-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->m:Landroidx/compose/foundation/MutatePriority;

    .line 95
    .line 96
    iput-object v3, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->n:Lkotlin/coroutines/jvm/internal/SuspendLambda;

    .line 97
    .line 98
    iput v4, v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$scroll$1;->q:I

    .line 99
    .line 100
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->h:Landroidx/compose/foundation/gestures/ScrollableState;

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
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->t:Landroidx/compose/runtime/MutableState;

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
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->h:Landroidx/compose/foundation/gestures/ScrollableState;

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

.method public final f(Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;ZZ)V
    .locals 12

    .line 1
    iget-object v0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 2
    .line 3
    iget v1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->q:I

    .line 4
    .line 5
    iget-object v2, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->a:Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;

    .line 6
    .line 7
    iget v3, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->b:I

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->o:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 14
    .line 15
    iput v4, v5, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->e:I

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->d:Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;

    .line 20
    .line 21
    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->v:Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v9, 0x1

    .line 25
    if-nez p2, :cond_3

    .line 26
    .line 27
    iget-boolean v10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b:Z

    .line 28
    .line 29
    if-eqz v10, :cond_3

    .line 30
    .line 31
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->c:Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 32
    .line 33
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :cond_0
    invoke-static {p0}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :try_start_0
    iget-object p2, v7, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->b:Landroidx/compose/animation/core/AnimationState;

    .line 48
    .line 49
    iget-object p2, p2, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 50
    .line 51
    check-cast p2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 52
    .line 53
    invoke-virtual {p2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Ljava/lang/Number;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    cmpg-float p2, p2, v5

    .line 64
    .line 65
    if-nez p2, :cond_1

    .line 66
    .line 67
    move v8, v9

    .line 68
    :cond_1
    if-nez v8, :cond_2

    .line 69
    .line 70
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->b()I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    if-ne v3, p2, :cond_2

    .line 75
    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    iget-object p2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 79
    .line 80
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->q([Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    check-cast p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 85
    .line 86
    if-eqz p2, :cond_2

    .line 87
    .line 88
    iget p2, p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 89
    .line 90
    invoke-virtual {v6}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->a()I

    .line 91
    .line 92
    .line 93
    move-result p3

    .line 94
    if-ne p2, p3, :cond_2

    .line 95
    .line 96
    invoke-virtual {v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catchall_0
    move-exception p2

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    :goto_0
    invoke-static {p0, p1, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :goto_1
    invoke-static {p0, p1, v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 107
    .line 108
    .line 109
    throw p2

    .line 110
    :cond_3
    if-eqz p2, :cond_4

    .line 111
    .line 112
    iput-boolean v9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->b:Z

    .line 113
    .line 114
    :cond_4
    iget v10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 115
    .line 116
    iget v11, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->d:F

    .line 117
    .line 118
    sub-float/2addr v10, v11

    .line 119
    iput v10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->g:F

    .line 120
    .line 121
    iget-object v10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->e:Landroidx/compose/runtime/MutableState;

    .line 122
    .line 123
    check-cast v10, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 124
    .line 125
    invoke-virtual {v10, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    if-eqz v2, :cond_5

    .line 129
    .line 130
    iget v10, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->a:I

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    move v10, v8

    .line 134
    :goto_2
    if-nez v10, :cond_7

    .line 135
    .line 136
    if-eqz v3, :cond_6

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_6
    move v10, v8

    .line 140
    goto :goto_4

    .line 141
    :cond_7
    :goto_3
    move v10, v9

    .line 142
    :goto_4
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v10

    .line 146
    iget-object v11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->u:Landroidx/compose/runtime/MutableState;

    .line 147
    .line 148
    check-cast v11, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 149
    .line 150
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-boolean v10, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->c:Z

    .line 154
    .line 155
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    iget-object v11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->t:Landroidx/compose/runtime/MutableState;

    .line 160
    .line 161
    check-cast v11, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 162
    .line 163
    invoke-virtual {v11, v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    if-eqz p3, :cond_a

    .line 167
    .line 168
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    int-to-float p0, v3

    .line 172
    cmpl-float p0, p0, v5

    .line 173
    .line 174
    if-ltz p0, :cond_8

    .line 175
    .line 176
    move v8, v9

    .line 177
    :cond_8
    if-nez v8, :cond_9

    .line 178
    .line 179
    const-string p0, "scrollOffset should be non-negative"

    .line 180
    .line 181
    invoke-static {p0}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_9
    iget-object p0, v6, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->b:Landroidx/compose/runtime/MutableIntState;

    .line 185
    .line 186
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;

    .line 187
    .line 188
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->k(I)V

    .line 189
    .line 190
    .line 191
    goto/16 :goto_a

    .line 192
    .line 193
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    if-eqz v2, :cond_b

    .line 197
    .line 198
    iget-object p3, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 199
    .line 200
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->q([Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p3

    .line 204
    check-cast p3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 205
    .line 206
    if-eqz p3, :cond_b

    .line 207
    .line 208
    iget-object v4, p3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->b:Ljava/lang/Object;

    .line 209
    .line 210
    :cond_b
    iput-object v4, v6, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->d:Ljava/lang/Object;

    .line 211
    .line 212
    iget-boolean p3, v6, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->c:Z

    .line 213
    .line 214
    if-nez p3, :cond_c

    .line 215
    .line 216
    if-lez v1, :cond_10

    .line 217
    .line 218
    :cond_c
    iput-boolean v9, v6, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->c:Z

    .line 219
    .line 220
    int-to-float p3, v3

    .line 221
    cmpl-float p3, p3, v5

    .line 222
    .line 223
    if-ltz p3, :cond_d

    .line 224
    .line 225
    move p3, v9

    .line 226
    goto :goto_5

    .line 227
    :cond_d
    move p3, v8

    .line 228
    :goto_5
    if-nez p3, :cond_e

    .line 229
    .line 230
    new-instance p3, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v4, "scrollOffset should be non-negative ("

    .line 233
    .line 234
    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v4, ")"

    .line 241
    .line 242
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p3

    .line 249
    invoke-static {p3}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    :cond_e
    if-eqz v2, :cond_f

    .line 253
    .line 254
    iget-object p3, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredLine;->b:[Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 255
    .line 256
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->q([Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p3

    .line 260
    check-cast p3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 261
    .line 262
    if-eqz p3, :cond_f

    .line 263
    .line 264
    iget p3, p3, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 265
    .line 266
    goto :goto_6

    .line 267
    :cond_f
    move p3, v8

    .line 268
    :goto_6
    invoke-virtual {v6, p3, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridScrollPosition;->c(II)V

    .line 269
    .line 270
    .line 271
    :cond_10
    iget-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->i:Z

    .line 272
    .line 273
    if-eqz p3, :cond_17

    .line 274
    .line 275
    iget-object p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->a:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    .line 276
    .line 277
    check-cast p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;

    .line 278
    .line 279
    iget-object v2, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->b:Landroidx/compose/runtime/collection/MutableVector;

    .line 280
    .line 281
    iget v3, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->a:I

    .line 282
    .line 283
    iget-boolean v4, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->c:Z

    .line 284
    .line 285
    const/4 v6, -0x1

    .line 286
    if-eq v3, v6, :cond_12

    .line 287
    .line 288
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 289
    .line 290
    .line 291
    move-result v10

    .line 292
    if-nez v10, :cond_12

    .line 293
    .line 294
    invoke-static {p1, v4}, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->b(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Z)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eq v3, v4, :cond_12

    .line 299
    .line 300
    iput v6, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->a:I

    .line 301
    .line 302
    iget-object v3, v2, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 303
    .line 304
    iget v4, v2, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 305
    .line 306
    move v10, v8

    .line 307
    :goto_7
    if-ge v10, v4, :cond_11

    .line 308
    .line 309
    aget-object v11, v3, v10

    .line 310
    .line 311
    check-cast v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 312
    .line 313
    invoke-interface {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 314
    .line 315
    .line 316
    add-int/lit8 v10, v10, 0x1

    .line 317
    .line 318
    goto :goto_7

    .line 319
    :cond_11
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 320
    .line 321
    .line 322
    :cond_12
    iget v3, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->d:I

    .line 323
    .line 324
    if-eq v3, v6, :cond_16

    .line 325
    .line 326
    iget v4, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->e:F

    .line 327
    .line 328
    cmpg-float v4, v4, v5

    .line 329
    .line 330
    if-nez v4, :cond_13

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :cond_13
    if-eq v3, v1, :cond_16

    .line 334
    .line 335
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 336
    .line 337
    .line 338
    move-result v0

    .line 339
    if-nez v0, :cond_16

    .line 340
    .line 341
    iget v0, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->e:F

    .line 342
    .line 343
    cmpg-float v0, v0, v5

    .line 344
    .line 345
    if-gez v0, :cond_14

    .line 346
    .line 347
    move v0, v9

    .line 348
    goto :goto_8

    .line 349
    :cond_14
    move v0, v8

    .line 350
    :goto_8
    invoke-static {p1, v0}, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->b(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Z)I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    iget v3, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->e:F

    .line 355
    .line 356
    cmpg-float v3, v3, v5

    .line 357
    .line 358
    if-gez v3, :cond_15

    .line 359
    .line 360
    move v8, v9

    .line 361
    :cond_15
    invoke-static {p1, v8}, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->a(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Z)I

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-ltz v3, :cond_16

    .line 366
    .line 367
    if-ge v3, v1, :cond_16

    .line 368
    .line 369
    iget v3, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->a:I

    .line 370
    .line 371
    if-eq v0, v3, :cond_16

    .line 372
    .line 373
    if-ltz v0, :cond_16

    .line 374
    .line 375
    iput v0, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->a:I

    .line 376
    .line 377
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 378
    .line 379
    .line 380
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->p:Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;

    .line 381
    .line 382
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;->a(I)Ljava/util/ArrayList;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    iget v0, v2, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 387
    .line 388
    invoke-virtual {v2, v0, p0}, Landroidx/compose/runtime/collection/MutableVector;->d(ILjava/util/List;)V

    .line 389
    .line 390
    .line 391
    :cond_16
    :goto_9
    iput v1, p3, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->d:I

    .line 392
    .line 393
    :cond_17
    :goto_a
    if-eqz p2, :cond_18

    .line 394
    .line 395
    iget p0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->f:F

    .line 396
    .line 397
    iget-object p2, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->i:Landroidx/compose/ui/unit/Density;

    .line 398
    .line 399
    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 400
    .line 401
    invoke-virtual {v7, p0, p2, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutScrollDeltaBetweenPasses;->b(FLandroidx/compose/ui/unit/Density;Lkotlinx/coroutines/CoroutineScope;)V

    .line 402
    .line 403
    .line 404
    :cond_18
    return-void
.end method

.method public final g()Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->e:Landroidx/compose/runtime/MutableState;

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
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;

    .line 10
    .line 11
    return-object p0
.end method

.method public final h(FLandroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->a:Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;

    .line 6
    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->b:Landroidx/compose/runtime/collection/MutableVector;

    .line 10
    .line 11
    move-object v2, p2

    .line 12
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 13
    .line 14
    iget-object v2, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_5

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    cmpg-float v2, p1, v2

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-gez v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v2, v3

    .line 31
    :goto_0
    invoke-static {p2, v2}, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->b(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Z)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-static {p2, v2}, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->a(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Z)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-ltz v5, :cond_5

    .line 40
    .line 41
    check-cast p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 42
    .line 43
    iget-object v6, p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->r:Landroidx/compose/foundation/gestures/Orientation;

    .line 44
    .line 45
    iget v7, p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->q:I

    .line 46
    .line 47
    if-ge v5, v7, :cond_5

    .line 48
    .line 49
    iget v5, v0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->a:I

    .line 50
    .line 51
    if-eq v4, v5, :cond_2

    .line 52
    .line 53
    if-ltz v4, :cond_2

    .line 54
    .line 55
    iget-boolean v5, v0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->c:Z

    .line 56
    .line 57
    if-eq v5, v2, :cond_1

    .line 58
    .line 59
    iget-object v5, v1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 60
    .line 61
    iget v7, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 62
    .line 63
    move v8, v3

    .line 64
    :goto_1
    if-ge v8, v7, :cond_1

    .line 65
    .line 66
    aget-object v9, v5, v8

    .line 67
    .line 68
    check-cast v9, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 69
    .line 70
    invoke-interface {v9}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->cancel()V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_1
    iput-boolean v2, v0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->c:Z

    .line 77
    .line 78
    iput v4, v0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->a:I

    .line 79
    .line 80
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->g()V

    .line 81
    .line 82
    .line 83
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;->p:Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;

    .line 84
    .line 85
    invoke-virtual {p0, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridState$prefetchScope$1;->a(I)Ljava/util/ArrayList;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    iget v4, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 90
    .line 91
    invoke-virtual {v1, v4, p0}, Landroidx/compose/runtime/collection/MutableVector;->d(ILjava/util/List;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object p0, p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 103
    .line 104
    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 105
    .line 106
    if-ne v6, v2, :cond_3

    .line 107
    .line 108
    move-object v2, p0

    .line 109
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 110
    .line 111
    iget-wide v4, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->t:J

    .line 112
    .line 113
    const-wide v7, 0xffffffffL

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    and-long/2addr v4, v7

    .line 119
    :goto_2
    long-to-int v2, v4

    .line 120
    goto :goto_3

    .line 121
    :cond_3
    move-object v2, p0

    .line 122
    check-cast v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 123
    .line 124
    iget-wide v4, v2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->t:J

    .line 125
    .line 126
    const/16 v2, 0x20

    .line 127
    .line 128
    shr-long/2addr v4, v2

    .line 129
    goto :goto_2

    .line 130
    :goto_3
    iget v4, p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->t:I

    .line 131
    .line 132
    invoke-static {p0, v6}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->a(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    .line 133
    .line 134
    .line 135
    move-result p0

    .line 136
    add-int/2addr p0, v2

    .line 137
    add-int/2addr p0, v4

    .line 138
    iget p2, p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->p:I

    .line 139
    .line 140
    sub-int/2addr p0, p2

    .line 141
    int-to-float p0, p0

    .line 142
    neg-float p2, p1

    .line 143
    cmpg-float p0, p0, p2

    .line 144
    .line 145
    if-gez p0, :cond_5

    .line 146
    .line 147
    iget-object p0, v1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 148
    .line 149
    iget p2, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 150
    .line 151
    :goto_4
    if-ge v3, p2, :cond_5

    .line 152
    .line 153
    aget-object v1, p0, v3

    .line 154
    .line 155
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 156
    .line 157
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->a()V

    .line 158
    .line 159
    .line 160
    add-int/lit8 v3, v3, 0x1

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_4
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 168
    .line 169
    iget p2, p2, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->o:I

    .line 170
    .line 171
    invoke-static {p0, v6}, Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;->a(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    sub-int/2addr p2, p0

    .line 176
    int-to-float p0, p2

    .line 177
    cmpg-float p0, p0, p1

    .line 178
    .line 179
    if-gez p0, :cond_5

    .line 180
    .line 181
    iget-object p0, v1, Landroidx/compose/runtime/collection/MutableVector;->j:[Ljava/lang/Object;

    .line 182
    .line 183
    iget p2, v1, Landroidx/compose/runtime/collection/MutableVector;->l:I

    .line 184
    .line 185
    :goto_5
    if-ge v3, p2, :cond_5

    .line 186
    .line 187
    aget-object v1, p0, v3

    .line 188
    .line 189
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 190
    .line 191
    invoke-interface {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;->a()V

    .line 192
    .line 193
    .line 194
    add-int/lit8 v3, v3, 0x1

    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_5
    iput p1, v0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->e:F

    .line 198
    .line 199
    :cond_6
    return-void
.end method
