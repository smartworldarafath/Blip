.class public final Landroidx/compose/material/MinimumInteractiveModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# virtual methods
.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->w:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Landroidx/compose/material/InteractiveComponentSizeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    sget-wide v0, Landroidx/compose/material/InteractiveComponentSizeKt;->b:J

    .line 23
    .line 24
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->b(J)F

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    invoke-interface {p1, p4}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 37
    .line 38
    .line 39
    move-result p4

    .line 40
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    :cond_1
    iget p4, p2, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 45
    .line 46
    if-eqz p0, :cond_2

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/DpSize;->a(J)F

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p4, p0}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    :cond_2
    new-instance p0, Lw9;

    .line 61
    .line 62
    invoke-direct {p0, p3, p2, p4}, Lw9;-><init>(ILandroidx/compose/ui/layout/Placeable;I)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-interface {p1, p3, p4, p2, p0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method
