.class public abstract Landroidx/compose/foundation/pager/PagerLayoutInfoKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/foundation/pager/PagerLayoutInfo;)I
    .locals 4

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 3
    .line 4
    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    .line 5
    .line 6
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->j:Landroidx/compose/foundation/gestures/Orientation;

    .line 7
    .line 8
    check-cast p0, Landroidx/compose/foundation/pager/PagerMeasureResult;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->i()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    const-wide v2, 0xffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v0, v2

    .line 22
    :goto_0
    long-to-int p0, v0

    .line 23
    return p0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerMeasureResult;->i()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const/16 p0, 0x20

    .line 29
    .line 30
    shr-long/2addr v0, p0

    .line 31
    goto :goto_0
.end method
