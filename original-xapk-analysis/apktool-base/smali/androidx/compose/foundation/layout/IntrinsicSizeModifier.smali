.class abstract Landroidx/compose/foundation/layout/IntrinsicSizeModifier;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# virtual methods
.method public final c(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->V(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final e(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 0

    .line 1
    invoke-interface {p2, p3}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->b(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 3

    .line 1
    check-cast p0, Landroidx/compose/foundation/layout/IntrinsicWidthNode;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/foundation/layout/IntrinsicWidthNode;->x:Landroidx/compose/foundation/layout/IntrinsicSize;

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/foundation/layout/IntrinsicSize;->j:Landroidx/compose/foundation/layout/IntrinsicSize;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-interface {p2, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->m(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-interface {p2, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->p(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    :goto_0
    const/4 v1, 0x0

    .line 27
    if-gez v0, :cond_1

    .line 28
    .line 29
    move v0, v1

    .line 30
    :cond_1
    if-ltz v0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const-string v2, "width must be >= 0"

    .line 34
    .line 35
    invoke-static {v2}, Landroidx/compose/ui/unit/InlineClassHelperKt;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    const v2, 0x7fffffff

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v0, v1, v2}, Landroidx/compose/ui/unit/ConstraintsKt;->h(IIII)J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iget-boolean p0, p0, Landroidx/compose/foundation/layout/IntrinsicWidthNode;->y:Z

    .line 46
    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->e(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    :cond_3
    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 58
    .line 59
    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 60
    .line 61
    new-instance p4, Lf;

    .line 62
    .line 63
    const/4 v0, 0x6

    .line 64
    invoke-direct {p4, p0, v0}, Lf;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-interface {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0
.end method
