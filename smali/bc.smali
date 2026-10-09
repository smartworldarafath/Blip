.class public final synthetic Lbc;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic j:I

.field public final synthetic k:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/CubicBezierEasing;I)V
    .locals 0

    .line 1
    iput p2, p0, Lbc;->j:I

    .line 2
    .line 3
    iput-object p1, p0, Lbc;->k:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lbc;->j:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/16 v2, 0xc8

    .line 5
    .line 6
    const v3, 0x3f70a3d7    # 0.94f

    .line 7
    .line 8
    .line 9
    const/16 v4, 0x118

    .line 10
    .line 11
    iget-object p0, p0, Lbc;->k:Landroidx/compose/animation/core/CubicBezierEasing;

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/animation/AnimatedContentTransitionScope;

    .line 14
    .line 15
    packed-switch v0, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget-object v0, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance p1, Landroidx/compose/animation/core/TweenSpec;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-direct {p1, v4, v0, p0}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 27
    .line 28
    .line 29
    sget-wide v4, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 30
    .line 31
    invoke-static {v3, v4, v5, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->f(FJLandroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransition;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    sget-object p1, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 36
    .line 37
    new-instance v3, Landroidx/compose/animation/core/TweenSpec;

    .line 38
    .line 39
    invoke-direct {v3, v2, v0, p1}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Landroidx/compose/animation/ExitTransition;->a(Landroidx/compose/animation/ExitTransition;)Landroidx/compose/animation/ExitTransition;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_0
    sget-object v0, Lnet/blip/android/ui/navigation/NavigationRootKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance p1, Landroidx/compose/animation/core/TweenSpec;

    .line 57
    .line 58
    const/16 v0, 0x8c

    .line 59
    .line 60
    invoke-direct {p1, v4, v0, p0}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 61
    .line 62
    .line 63
    sget-wide v4, Landroidx/compose/ui/graphics/TransformOrigin;->b:J

    .line 64
    .line 65
    invoke-static {p1, v3, v4, v5}, Landroidx/compose/animation/EnterExitTransitionKt;->e(Landroidx/compose/animation/core/TweenSpec;FJ)Landroidx/compose/animation/EnterTransition;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    sget-object p1, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 70
    .line 71
    new-instance v3, Landroidx/compose/animation/core/TweenSpec;

    .line 72
    .line 73
    invoke-direct {v3, v2, v0, p1}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v3, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Landroidx/compose/animation/EnterTransition;->a(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
