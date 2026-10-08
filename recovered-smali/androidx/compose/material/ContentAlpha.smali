.class public abstract Landroidx/compose/material/ContentAlpha;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(FFLandroidx/compose/runtime/Composer;)F
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/material/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 10
    .line 11
    iget-wide v0, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 12
    .line 13
    invoke-static {p2}, Landroidx/compose/material/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material/Colors;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->g()Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->e(J)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    float-to-double v0, p2

    .line 30
    cmpl-double p2, v0, v2

    .line 31
    .line 32
    if-lez p2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->e(J)F

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    float-to-double v0, p2

    .line 40
    cmpg-double p2, v0, v2

    .line 41
    .line 42
    if-gez p2, :cond_1

    .line 43
    .line 44
    :goto_0
    return p0

    .line 45
    :cond_1
    return p1
.end method

.method public static b(Landroidx/compose/runtime/Composer;)F
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const v1, 0x3f5eb852    # 0.87f

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, p0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static c(Landroidx/compose/runtime/Composer;)F
    .locals 2

    .line 1
    const v0, 0x3f3d70a4    # 0.74f

    .line 2
    .line 3
    .line 4
    const v1, 0x3f19999a    # 0.6f

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1, p0}, Landroidx/compose/material/ContentAlpha;->a(FFLandroidx/compose/runtime/Composer;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
