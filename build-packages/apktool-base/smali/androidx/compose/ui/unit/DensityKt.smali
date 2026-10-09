.class public abstract Landroidx/compose/ui/unit/DensityKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(FF)Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/DensityImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b(F)Landroidx/compose/ui/unit/Density;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/DensityImpl;

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/unit/DensityImpl;-><init>(FF)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
