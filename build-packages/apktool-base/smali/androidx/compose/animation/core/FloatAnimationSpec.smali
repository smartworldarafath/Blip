.class public interface abstract Landroidx/compose/animation/core/FloatAnimationSpec;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/animation/core/AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/AnimationSpec<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# virtual methods
.method public a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 1
    new-instance p1, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;-><init>(Landroidx/compose/animation/core/FloatAnimationSpec;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public abstract b(JFFF)F
.end method

.method public abstract c(FFF)J
.end method

.method public d(FFF)F
    .locals 6

    .line 1
    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/animation/core/FloatAnimationSpec;->c(FFF)J

    .line 2
    .line 3
    .line 4
    move-result-wide v1

    .line 5
    move-object v0, p0

    .line 6
    move v3, p1

    .line 7
    move v4, p2

    .line 8
    move v5, p3

    .line 9
    invoke-interface/range {v0 .. v5}, Landroidx/compose/animation/core/FloatAnimationSpec;->b(JFFF)F

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public abstract e(JFFF)F
.end method
