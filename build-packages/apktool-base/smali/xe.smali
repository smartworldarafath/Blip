.class public final synthetic Lxe;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic j:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lxe;->j:Z

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    and-int/lit8 v0, p2, 0x3

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_0

    .line 15
    .line 16
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v0, v1

    .line 19
    :goto_0
    and-int/2addr p2, v2

    .line 20
    move-object v10, p1

    .line 21
    check-cast v10, Landroidx/compose/runtime/GapComposer;

    .line 22
    .line 23
    invoke-virtual {v10, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    sget-object p1, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 30
    .line 31
    new-instance p2, Landroidx/compose/animation/core/TweenSpec;

    .line 32
    .line 33
    const/16 v0, 0x12c

    .line 34
    .line 35
    invoke-direct {p2, v0, v0, p1}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->c(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/EnterTransition;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-static {v0, v1, p1, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    sget-object v9, Lnet/blip/android/ui/components/ComposableSingletons$SearchFieldKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 51
    .line 52
    const/high16 v11, 0x30000

    .line 53
    .line 54
    iget-boolean v4, p0, Lxe;->j:Z

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    invoke-static/range {v4 .. v11}, Landroidx/compose/animation/AnimatedVisibilityKt;->b(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 63
    .line 64
    .line 65
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p0
.end method
