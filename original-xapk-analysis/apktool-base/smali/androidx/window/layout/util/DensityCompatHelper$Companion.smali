.class public final Landroidx/window/layout/util/DensityCompatHelper$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/util/DensityCompatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()Landroidx/window/layout/util/DensityCompatHelper;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x22

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Landroidx/window/layout/util/DensityCompatHelperApi34Impl;->a:Landroidx/window/layout/util/DensityCompatHelperApi34Impl;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Landroidx/window/layout/util/DensityCompatHelperBaseImpl;->a:Landroidx/window/layout/util/DensityCompatHelperBaseImpl;

    .line 11
    .line 12
    return-object v0
.end method
