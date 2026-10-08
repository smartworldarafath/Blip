.class public abstract Landroidx/compose/foundation/lazy/LazyListLayoutInfoKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/LazyListLayoutInfo;)I
    .locals 5

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->l:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListItemInfo;

    .line 26
    .line 27
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;

    .line 28
    .line 29
    iget v4, v4, Landroidx/compose/foundation/lazy/LazyListMeasuredItem;->n:I

    .line 30
    .line 31
    add-int/2addr v3, v4

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    div-int/2addr v3, v0

    .line 40
    check-cast p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;

    .line 41
    .line 42
    iget p0, p0, Landroidx/compose/foundation/lazy/LazyListMeasureResult;->r:I

    .line 43
    .line 44
    add-int/2addr v3, p0

    .line 45
    return v3
.end method
