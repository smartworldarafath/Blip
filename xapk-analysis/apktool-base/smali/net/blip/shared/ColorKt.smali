.class public abstract Lnet/blip/shared/ColorKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(JF)J
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-float/2addr v0, p2

    .line 6
    invoke-static {p0, p1, v0}, Landroidx/compose/ui/graphics/Color;->b(JF)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method
