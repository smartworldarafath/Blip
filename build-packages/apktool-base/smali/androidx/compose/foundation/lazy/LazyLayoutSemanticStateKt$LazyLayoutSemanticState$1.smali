.class public final Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;


# instance fields
.field public final a:Landroidx/compose/runtime/State;

.field public final synthetic b:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    .line 5
    .line 6
    new-instance v0, Lka;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lka;-><init>(Landroidx/compose/foundation/lazy/LazyListState;I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->a:Landroidx/compose/runtime/State;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->p:Landroidx/compose/foundation/gestures/Orientation;

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->i()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const-wide v2, 0xffffffffL

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr v0, v2

    .line 31
    :goto_0
    long-to-int p0, v0

    .line 32
    return p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->i()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const/16 p0, 0x20

    .line 44
    .line 45
    shr-long/2addr v0, p0

    .line 46
    goto :goto_0
.end method

.method public final b()F
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->b()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    mul-int/lit16 v0, v0, 0x1f4

    .line 16
    .line 17
    add-int/2addr v0, p0

    .line 18
    int-to-float p0, v0

    .line 19
    return p0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 8
    .line 9
    iget v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->m:I

    .line 10
    .line 11
    neg-int v0, v0

    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->h()Landroidx/compose/foundation/lazy/LazyListLayoutInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 17
    .line 18
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->q:I

    .line 19
    .line 20
    add-int/2addr v0, p0

    .line 21
    return v0
.end method

.method public final d()F
    .locals 2

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->a()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyListState;->e:Landroidx/compose/foundation/lazy/LazyListScrollPosition;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListScrollPosition;->b()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListState;->d()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    mul-int/lit16 v0, v0, 0x1f4

    .line 22
    .line 23
    add-int/2addr v0, v1

    .line 24
    int-to-float p0, v0

    .line 25
    const/high16 v0, 0x42c80000    # 100.0f

    .line 26
    .line 27
    add-float/2addr p0, v0

    .line 28
    return p0

    .line 29
    :cond_0
    mul-int/lit16 v0, v0, 0x1f4

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    int-to-float p0, v0

    .line 33
    return p0
.end method

.method public final e(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/foundation/lazy/LazyListState;->y:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->b:Landroidx/compose/foundation/lazy/LazyListState;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, p0, p1, v1}, Landroidx/compose/foundation/lazy/LazyListState$scrollToItem$2;-><init>(Landroidx/compose/foundation/lazy/LazyListState;ILkotlin/coroutines/Continuation;)V

    .line 12
    .line 13
    .line 14
    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    .line 15
    .line 16
    sget-object p1, Landroidx/compose/foundation/MutatePriority;->j:Landroidx/compose/foundation/MutatePriority;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/foundation/lazy/LazyListState;->c(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 23
    .line 24
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    if-ne p0, p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p0, p2

    .line 30
    :goto_0
    if-ne p0, p1, :cond_1

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    return-object p2
.end method

.method public final f()Landroidx/compose/ui/semantics/CollectionInfo;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/CollectionInfo;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1;->a:Landroidx/compose/runtime/State;

    .line 4
    .line 5
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
