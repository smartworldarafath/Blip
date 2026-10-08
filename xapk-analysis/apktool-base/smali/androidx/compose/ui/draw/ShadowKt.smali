.class public abstract Landroidx/compose/ui/draw/ShadowKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JI)Landroidx/compose/ui/Modifier;
    .locals 9

    .line 1
    and-int/lit8 v1, p5, 0x4

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {p1, v4}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    :cond_0
    sget-wide v5, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->a:J

    .line 15
    .line 16
    and-int/lit8 v1, p5, 0x10

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move-wide v7, v5

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-wide v7, p3

    .line 23
    :goto_0
    invoke-static {p1, v4}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-gtz v1, :cond_3

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    return-object p0

    .line 33
    :cond_3
    :goto_1
    new-instance v1, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;

    .line 34
    .line 35
    move v2, p1

    .line 36
    move v4, v3

    .line 37
    move-object v3, p2

    .line 38
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;-><init>(FLandroidx/compose/ui/graphics/Shape;ZJJ)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p0, v1}, Landroidx/compose/ui/Modifier;->l(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
