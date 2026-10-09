.class final Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridPrefetchStrategy;


# instance fields
.field public a:I

.field public final b:Landroidx/compose/runtime/collection/MutableVector;

.field public c:Z

.field public d:I

.field public e:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->a:I

    .line 6
    .line 7
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    .line 8
    .line 9
    const/16 v2, 0x10

    .line 10
    .line 11
    new-array v2, v2, [Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    .line 12
    .line 13
    invoke-direct {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->b:Landroidx/compose/runtime/collection/MutableVector;

    .line 17
    .line 18
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/DefaultLazyGridPrefetchStrategy;->d:I

    .line 19
    .line 20
    return-void
.end method

.method public static a(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 12
    .line 13
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 14
    .line 15
    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 16
    .line 17
    add-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 29
    .line 30
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 31
    .line 32
    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    .line 33
    .line 34
    add-int/lit8 p0, p0, -0x1

    .line 35
    .line 36
    return p0
.end method

.method public static b(Landroidx/compose/foundation/lazy/grid/LazyGridLayoutInfo;Z)I
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    move-object p1, p0

    .line 4
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 13
    .line 14
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 15
    .line 16
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->r:Landroidx/compose/foundation/gestures/Orientation;

    .line 17
    .line 18
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 19
    .line 20
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 21
    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    iget p0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->w:I

    .line 28
    .line 29
    :goto_0
    add-int/lit8 p0, p0, 0x1

    .line 30
    .line 31
    return p0

    .line 32
    :cond_1
    move-object p1, p0

    .line 33
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 34
    .line 35
    iget-object p1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->n:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;

    .line 42
    .line 43
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasureResult;->r:Landroidx/compose/foundation/gestures/Orientation;

    .line 46
    .line 47
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 48
    .line 49
    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 50
    .line 51
    if-ne p0, v0, :cond_2

    .line 52
    .line 53
    iget p0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:I

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget p0, p1, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->w:I

    .line 57
    .line 58
    :goto_1
    add-int/lit8 p0, p0, -0x1

    .line 59
    .line 60
    return p0
.end method
