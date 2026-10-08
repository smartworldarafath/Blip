.class public abstract Landroidx/compose/foundation/pager/PagerStateKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

.field public static final b:Landroidx/compose/foundation/pager/PagerMeasureResult;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v10, Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 2
    .line 3
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v10, Landroidx/compose/foundation/pager/PagerStateKt;->a:Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;

    .line 7
    .line 8
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 9
    .line 10
    new-instance v8, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;

    .line 11
    .line 12
    invoke-direct {v8}, Landroidx/compose/foundation/pager/PagerStateKt$EmptyLayoutInfo$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->j:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    const/4 v0, 0x0

    .line 22
    const/16 v1, 0xf

    .line 23
    .line 24
    invoke-static {v0, v0, v0, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 25
    .line 26
    .line 27
    move-result-wide v11

    .line 28
    new-instance v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    sget-object v7, Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;->a:Landroidx/compose/foundation/gestures/snapping/SnapPosition$Start;

    .line 37
    .line 38
    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(IIIIIILandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;J)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/compose/foundation/pager/PagerStateKt;->b:Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 42
    .line 43
    return-void
.end method

.method public static final a(Landroidx/compose/foundation/pager/PagerLayoutInfo;I)J
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 3
    .line 4
    iget v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    .line 5
    .line 6
    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 7
    .line 8
    iget v1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    int-to-long v1, p1

    .line 12
    int-to-long v3, v0

    .line 13
    mul-long/2addr v1, v3

    .line 14
    iget p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->f:I

    .line 15
    .line 16
    neg-int p1, p1

    .line 17
    int-to-long v3, p1

    .line 18
    add-long/2addr v1, v3

    .line 19
    iget p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->d:I

    .line 20
    .line 21
    int-to-long v3, p1

    .line 22
    add-long/2addr v1, v3

    .line 23
    iget p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    .line 24
    .line 25
    int-to-long v3, p1

    .line 26
    sub-long/2addr v1, v3

    .line 27
    iget-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->k:Landroidx/compose/foundation/gestures/Orientation;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->i()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    const/16 p1, 0x20

    .line 38
    .line 39
    shr-long/2addr v3, p1

    .line 40
    :goto_0
    long-to-int p1, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-wide v5, 0xffffffffL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    and-long/2addr v3, v5

    .line 48
    goto :goto_0

    .line 49
    :goto_1
    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->n:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    invoke-static {p0, p0, p1}, Lkotlin/ranges/RangesKt;->d(III)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    sub-int/2addr p1, p0

    .line 60
    int-to-long p0, p1

    .line 61
    sub-long/2addr v1, p0

    .line 62
    const-wide/16 p0, 0x0

    .line 63
    .line 64
    cmp-long v0, v1, p0

    .line 65
    .line 66
    if-gez v0, :cond_1

    .line 67
    .line 68
    return-wide p0

    .line 69
    :cond_1
    return-wide v1
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/pager/PagerState;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v2, Landroidx/compose/foundation/pager/DefaultPagerState;->G:Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    .line 5
    .line 6
    move-object v3, p1

    .line 7
    check-cast v3, Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    move-object v4, p1

    .line 14
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    or-int/2addr v3, v4

    .line 22
    move-object v4, p1

    .line 23
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 24
    .line 25
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    or-int/2addr v3, v4

    .line 30
    check-cast p1, Landroidx/compose/runtime/GapComposer;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 39
    .line 40
    if-ne v4, v3, :cond_1

    .line 41
    .line 42
    :cond_0
    new-instance v4, Landroidx/compose/foundation/pager/c;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-direct {v4, v3, p0}, Landroidx/compose/foundation/pager/c;-><init>(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 52
    .line 53
    invoke-static {v1, v2, v4, p1, v0}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroidx/compose/foundation/pager/DefaultPagerState;

    .line 58
    .line 59
    iget-object v0, p1, Landroidx/compose/foundation/pager/DefaultPagerState;->F:Landroidx/compose/runtime/MutableState;

    .line 60
    .line 61
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-object p1
.end method
