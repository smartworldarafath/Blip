.class public abstract Landroidx/compose/animation/core/EasingKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final b:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final c:Lf7;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 2
    .line 3
    const v1, 0x3ecccccd    # 0.4f

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const v3, 0x3e4ccccd    # 0.2f

    .line 8
    .line 9
    .line 10
    const/high16 v4, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 16
    .line 17
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 18
    .line 19
    invoke-direct {v0, v2, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->b:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 23
    .line 24
    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 25
    .line 26
    invoke-direct {v0, v1, v2, v4, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lf7;

    .line 30
    .line 31
    const/16 v1, 0x11

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lf7;-><init>(I)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 37
    .line 38
    return-void
.end method
