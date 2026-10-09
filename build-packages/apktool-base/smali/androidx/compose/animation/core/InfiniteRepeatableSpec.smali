.class public final Landroidx/compose/animation/core/InfiniteRepeatableSpec;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/animation/core/AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/AnimationSpec<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

.field public final b:Landroidx/compose/animation/core/RepeatMode;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/DurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->a:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->b:Landroidx/compose/animation/core/RepeatMode;

    .line 7
    .line 8
    instance-of p0, p1, Landroidx/compose/animation/core/TweenSpec;

    .line 9
    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    check-cast p1, Landroidx/compose/animation/core/TweenSpec;

    .line 13
    .line 14
    iget p0, p1, Landroidx/compose/animation/core/TweenSpec;->a:I

    .line 15
    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    iget p0, p1, Landroidx/compose/animation/core/TweenSpec;->b:I

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string p0, "Animation to be infinitely repeated cannot have a 0-duration"

    .line 24
    .line 25
    invoke-static {p0}, Lu2;->g(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    throw p0

    .line 30
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->a:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 4
    .line 5
    invoke-interface {v1, p1}, Landroidx/compose/animation/core/DurationBasedAnimationSpec;->a(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->b:Landroidx/compose/animation/core/RepeatMode;

    .line 10
    .line 11
    invoke-direct {v0, p1, p0}, Landroidx/compose/animation/core/VectorizedInfiniteRepeatableSpec;-><init>(Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;Landroidx/compose/animation/core/RepeatMode;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    .line 6
    .line 7
    iget-object v0, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->a:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->a:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->b:Landroidx/compose/animation/core/RepeatMode;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->b:Landroidx/compose/animation/core/RepeatMode;

    .line 20
    .line 21
    if-ne p1, p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->a:Landroidx/compose/animation/core/DurationBasedAnimationSpec;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Landroidx/compose/animation/core/InfiniteRepeatableSpec;->b:Landroidx/compose/animation/core/RepeatMode;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    mul-int/lit8 p0, p0, 0x1f

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, p0

    .line 25
    return v0
.end method
