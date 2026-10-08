.class public final Landroidx/compose/ui/graphics/ColorFilter$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/ColorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public static a(J)Landroidx/compose/ui/graphics/BlendModeColorFilter;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-direct {v0, v1, p0, p1}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(IJ)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
