.class final Landroidx/compose/foundation/lazy/DefaultLazyListPrefetchStrategy;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListPrefetchStrategy;


# instance fields
.field public a:I

.field public b:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

.field public c:Z

.field public d:I

.field public e:F


# direct methods
.method public static a(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->z(Ljava/util/List;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 12
    .line 13
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 14
    .line 15
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 16
    .line 17
    add-int/lit8 p0, p0, 0x1

    .line 18
    .line 19
    return p0

    .line 20
    :cond_0
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 21
    .line 22
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->s(Ljava/util/List;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 29
    .line 30
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 31
    .line 32
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->a:I

    .line 33
    .line 34
    add-int/lit8 p0, p0, -0x1

    .line 35
    .line 36
    return p0
.end method
