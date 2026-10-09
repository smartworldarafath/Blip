.class public abstract Landroidx/compose/animation/core/DecayAnimationSpecKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/animation/core/DecayAnimationSpec;F)F
    .locals 2

    .line 1
    check-cast p0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 2
    .line 3
    new-instance v0, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;->a:Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;-><init>(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0, v1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v1}, Landroidx/compose/animation/core/VectorizedFloatDecaySpec;->a(Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationVector;)Landroidx/compose/animation/core/AnimationVector;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroidx/compose/animation/core/AnimationVector1D;

    .line 26
    .line 27
    iget p0, p0, Landroidx/compose/animation/core/AnimationVector1D;->a:F

    .line 28
    .line 29
    return p0
.end method

.method public static final b(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)Landroidx/compose/animation/core/DecayAnimationSpec;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/animation/core/DecayAnimationSpecImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/animation/core/DecayAnimationSpecImpl;-><init>(Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
