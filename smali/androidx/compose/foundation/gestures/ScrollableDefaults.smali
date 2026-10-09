.class public abstract Landroidx/compose/foundation/gestures/ScrollableDefaults;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/gestures/DefaultFlingBehavior;
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec_androidKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/DecayAnimationSpec;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 18
    .line 19
    if-ne v2, v1, :cond_1

    .line 20
    .line 21
    :cond_0
    new-instance v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    check-cast v2, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    .line 30
    .line 31
    return-object v2
.end method
