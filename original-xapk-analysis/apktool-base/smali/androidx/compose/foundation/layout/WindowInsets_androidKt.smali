.class public abstract Landroidx/compose/foundation/layout/WindowInsets_androidKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/core/graphics/Insets;)Landroidx/compose/foundation/layout/InsetsValues;
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/InsetsValues;

    .line 2
    .line 3
    iget v1, p0, Landroidx/core/graphics/Insets;->a:I

    .line 4
    .line 5
    iget v2, p0, Landroidx/core/graphics/Insets;->b:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/core/graphics/Insets;->c:I

    .line 8
    .line 9
    iget p0, p0, Landroidx/core/graphics/Insets;->d:I

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/foundation/layout/InsetsValues;-><init>(IIII)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
