.class public abstract Landroidx/compose/animation/core/AnimationStateKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a()Landroidx/compose/animation/core/AnimationState;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 3
    .line 4
    .line 5
    move-result-object v3

    .line 6
    new-instance v1, Landroidx/compose/animation/core/AnimationState;

    .line 7
    .line 8
    sget-object v2, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 9
    .line 10
    move-object v0, v2

    .line 11
    check-cast v0, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/compose/animation/core/TwoWayConverterImpl;->a:Lkotlin/jvm/functions/Function1;

    .line 14
    .line 15
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v4, v0

    .line 20
    check-cast v4, Landroidx/compose/animation/core/AnimationVector;

    .line 21
    .line 22
    const-wide/high16 v5, -0x8000000000000000L

    .line 23
    .line 24
    const-wide/high16 v7, -0x8000000000000000L

    .line 25
    .line 26
    const/4 v9, 0x0

    .line 27
    invoke-direct/range {v1 .. v9}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method

.method public static b(FFI)Landroidx/compose/animation/core/AnimationState;
    .locals 9

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    new-instance v0, Landroidx/compose/animation/core/AnimationState;

    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    new-instance v3, Landroidx/compose/animation/core/AnimationVector1D;

    .line 13
    .line 14
    invoke-direct {v3, p1}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 15
    .line 16
    .line 17
    sget-object v1, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 18
    .line 19
    const-wide/high16 v4, -0x8000000000000000L

    .line 20
    .line 21
    const-wide/high16 v6, -0x8000000000000000L

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static c(Landroidx/compose/animation/core/AnimationState;FFI)Landroidx/compose/animation/core/AnimationState;
    .locals 9

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/compose/animation/core/AnimationState;->k:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Number;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/compose/animation/core/AnimationState;->l:Landroidx/compose/animation/core/AnimationVector;

    .line 24
    .line 25
    check-cast p2, Landroidx/compose/animation/core/AnimationVector1D;

    .line 26
    .line 27
    iget p2, p2, Landroidx/compose/animation/core/AnimationVector1D;->a:F

    .line 28
    .line 29
    :cond_1
    iget-wide v4, p0, Landroidx/compose/animation/core/AnimationState;->m:J

    .line 30
    .line 31
    iget-wide v6, p0, Landroidx/compose/animation/core/AnimationState;->n:J

    .line 32
    .line 33
    iget-boolean v8, p0, Landroidx/compose/animation/core/AnimationState;->o:Z

    .line 34
    .line 35
    new-instance v0, Landroidx/compose/animation/core/AnimationState;

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/compose/animation/core/AnimationState;->j:Landroidx/compose/animation/core/TwoWayConverter;

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Landroidx/compose/animation/core/AnimationVector1D;

    .line 44
    .line 45
    invoke-direct {v3, p2}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 46
    .line 47
    .line 48
    invoke-direct/range {v0 .. v8}, Landroidx/compose/animation/core/AnimationState;-><init>(Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;JJZ)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method
