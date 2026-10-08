.class public abstract Landroidx/compose/foundation/gestures/snapping/LazyGridSnapLayoutInfoProviderKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;Landroidx/compose/foundation/gestures/Orientation;)I
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 6
    .line 7
    iget-wide p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->u:J

    .line 8
    .line 9
    const-wide v0, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr p0, v0

    .line 15
    :goto_0
    long-to-int p0, p0

    .line 16
    return p0

    .line 17
    :cond_0
    check-cast p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;

    .line 18
    .line 19
    iget-wide p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->u:J

    .line 20
    .line 21
    const/16 v0, 0x20

    .line 22
    .line 23
    shr-long/2addr p0, v0

    .line 24
    goto :goto_0
.end method
