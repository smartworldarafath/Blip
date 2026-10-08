.class public abstract Landroidx/compose/foundation/text/TextFieldScrollKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/layout/Placeable$PlacementScope;ILandroidx/compose/ui/text/input/TransformedText;Landroidx/compose/ui/text/TextLayoutResult;ZI)Landroidx/compose/ui/geometry/Rect;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p2, p2, Landroidx/compose/ui/text/input/TransformedText;->b:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 4
    .line 5
    invoke-interface {p2, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p3, p1}, Landroidx/compose/ui/text/TextLayoutResult;->c(I)Landroidx/compose/ui/geometry/Rect;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect;

    .line 15
    .line 16
    :goto_0
    iget p2, p1, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 17
    .line 18
    const/high16 p3, 0x40000000    # 2.0f

    .line 19
    .line 20
    invoke-interface {p0, p3}, Landroidx/compose/ui/unit/Density;->y0(F)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-eqz p4, :cond_1

    .line 25
    .line 26
    int-to-float p3, p5

    .line 27
    sub-float/2addr p3, p2

    .line 28
    int-to-float v0, p0

    .line 29
    sub-float/2addr p3, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move p3, p2

    .line 32
    :goto_1
    if-eqz p4, :cond_2

    .line 33
    .line 34
    int-to-float p0, p5

    .line 35
    sub-float/2addr p0, p2

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    int-to-float p0, p0

    .line 38
    add-float/2addr p0, p2

    .line 39
    :goto_2
    iget p2, p1, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 40
    .line 41
    iget p1, p1, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 42
    .line 43
    new-instance p4, Landroidx/compose/ui/geometry/Rect;

    .line 44
    .line 45
    invoke-direct {p4, p3, p2, p0, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 46
    .line 47
    .line 48
    return-object p4
.end method
