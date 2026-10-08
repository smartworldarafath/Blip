.class public final Landroidx/compose/ui/node/LayoutNodeAlignmentLines;
.super Landroidx/compose/ui/node/AlignmentLines;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# virtual methods
.method public final b(Landroidx/compose/ui/node/NodeCoordinator;J)J
    .locals 1

    .line 1
    iget-object p0, p1, Landroidx/compose/ui/node/NodeCoordinator;->c0:Landroidx/compose/ui/node/OwnedLayer;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    check-cast p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->b()[F

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->B:Z

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p2, p3, v0}, Landroidx/compose/ui/graphics/Matrix;->b(J[F)J

    .line 17
    .line 18
    .line 19
    move-result-wide p2

    .line 20
    :cond_1
    :goto_0
    iget-wide p0, p1, Landroidx/compose/ui/node/NodeCoordinator;->O:J

    .line 21
    .line 22
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->a(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0
.end method

.method public final c(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->K0()Landroidx/compose/ui/layout/MeasureResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->c()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final d(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->K(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
