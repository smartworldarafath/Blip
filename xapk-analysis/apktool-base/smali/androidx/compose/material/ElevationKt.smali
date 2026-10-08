.class public abstract Landroidx/compose/material/ElevationKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/animation/core/TweenSpec;

.field public static final b:Landroidx/compose/animation/core/TweenSpec;

.field public static final c:Landroidx/compose/animation/core/TweenSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/animation/core/EasingKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 4
    .line 5
    const/16 v2, 0x78

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    invoke-direct {v0, v2, v1, v3}, Landroidx/compose/animation/core/TweenSpec;-><init>(ILandroidx/compose/animation/core/Easing;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/compose/material/ElevationKt;->a:Landroidx/compose/animation/core/TweenSpec;

    .line 12
    .line 13
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 14
    .line 15
    new-instance v1, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 16
    .line 17
    const v4, 0x3ecccccd    # 0.4f

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    const v6, 0x3f19999a    # 0.6f

    .line 22
    .line 23
    .line 24
    const/high16 v7, 0x3f800000    # 1.0f

    .line 25
    .line 26
    invoke-direct {v1, v4, v5, v6, v7}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 27
    .line 28
    .line 29
    const/16 v8, 0x96

    .line 30
    .line 31
    invoke-direct {v0, v8, v1, v3}, Landroidx/compose/animation/core/TweenSpec;-><init>(ILandroidx/compose/animation/core/Easing;I)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroidx/compose/material/ElevationKt;->b:Landroidx/compose/animation/core/TweenSpec;

    .line 35
    .line 36
    new-instance v0, Landroidx/compose/animation/core/TweenSpec;

    .line 37
    .line 38
    new-instance v1, Landroidx/compose/animation/core/CubicBezierEasing;

    .line 39
    .line 40
    invoke-direct {v1, v4, v5, v6, v7}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v0, v2, v1, v3}, Landroidx/compose/animation/core/TweenSpec;-><init>(ILandroidx/compose/animation/core/Easing;I)V

    .line 44
    .line 45
    .line 46
    sput-object v0, Landroidx/compose/material/ElevationKt;->c:Landroidx/compose/animation/core/TweenSpec;

    .line 47
    .line 48
    return-void
.end method
