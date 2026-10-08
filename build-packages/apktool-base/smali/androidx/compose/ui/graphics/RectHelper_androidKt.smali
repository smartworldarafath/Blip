.class public abstract Landroidx/compose/ui/graphics/RectHelper_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/unit/IntRect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/unit/IntRect;->a:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/ui/unit/IntRect;->b:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/ui/unit/IntRect;->c:I

    .line 8
    .line 9
    iget p0, p0, Landroidx/compose/ui/unit/IntRect;->d:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/RectF;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/ui/geometry/Rect;->a:F

    .line 4
    .line 5
    iget v2, p0, Landroidx/compose/ui/geometry/Rect;->b:F

    .line 6
    .line 7
    iget v3, p0, Landroidx/compose/ui/geometry/Rect;->c:F

    .line 8
    .line 9
    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->d:F

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static final c(Landroid/graphics/RectF;)Landroidx/compose/ui/geometry/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 2
    .line 3
    iget v1, p0, Landroid/graphics/RectF;->left:F

    .line 4
    .line 5
    iget v2, p0, Landroid/graphics/RectF;->top:F

    .line 6
    .line 7
    iget v3, p0, Landroid/graphics/RectF;->right:F

    .line 8
    .line 9
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
