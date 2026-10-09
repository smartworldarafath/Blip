.class public final Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final a:Landroidx/compose/animation/FlingCalculator;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/unit/Density;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/animation/FlingCalculator;

    .line 5
    .line 6
    sget v1, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->a:F

    .line 7
    .line 8
    invoke-direct {v0, v1, p1}, Landroidx/compose/animation/FlingCalculator;-><init>(FLandroidx/compose/ui/unit/Density;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;->a:Landroidx/compose/animation/FlingCalculator;

    .line 12
    .line 13
    return-void
.end method
