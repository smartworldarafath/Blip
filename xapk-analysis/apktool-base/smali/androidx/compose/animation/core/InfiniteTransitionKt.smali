.class public abstract Landroidx/compose/animation/core/InfiniteTransitionKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/animation/core/InfiniteTransition;FFLandroidx/compose/animation/core/InfiniteRepeatableSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;
    .locals 9

    .line 1
    and-int/lit8 p6, p6, 0x8

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-string p6, "FloatAnimation"

    .line 6
    .line 7
    :goto_0
    move-object v5, p6

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    const-string p6, ""

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    shl-int/lit8 p1, p5, 0x3

    .line 21
    .line 22
    const/high16 p2, 0x70000

    .line 23
    .line 24
    and-int/2addr p1, p2

    .line 25
    const p2, 0x81b8

    .line 26
    .line 27
    .line 28
    or-int v7, p2, p1

    .line 29
    .line 30
    const/4 v8, 0x0

    .line 31
    sget-object v3, Landroidx/compose/animation/core/VectorConvertersKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 32
    .line 33
    move-object v0, p0

    .line 34
    move-object v4, p3

    .line 35
    move-object v6, p4

    .line 36
    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/core/InfiniteTransitionKt;->b(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Number;Ljava/lang/Number;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method public static final b(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Number;Ljava/lang/Number;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;
    .locals 6

    .line 1
    check-cast p6, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p5

    .line 7
    sget-object p8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    if-ne p5, p8, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move-object v4, p3

    .line 17
    move-object v5, p4

    .line 18
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;-><init>(Landroidx/compose/animation/core/InfiniteTransition;Ljava/lang/Number;Ljava/lang/Number;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/InfiniteRepeatableSpec;)V

    .line 19
    .line 20
    .line 21
    move-object p3, v3

    .line 22
    invoke-virtual {p6, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    move-object p5, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, p0

    .line 28
    move-object p3, p2

    .line 29
    :goto_0
    move-object p2, p5

    .line 30
    check-cast p2, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    .line 31
    .line 32
    const p0, 0xe000

    .line 33
    .line 34
    .line 35
    and-int/2addr p0, p7

    .line 36
    xor-int/lit16 p0, p0, 0x6000

    .line 37
    .line 38
    const/16 p5, 0x4000

    .line 39
    .line 40
    if-le p0, p5, :cond_1

    .line 41
    .line 42
    invoke-virtual {p6, p4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_2

    .line 47
    .line 48
    :cond_1
    and-int/lit16 p0, p7, 0x6000

    .line 49
    .line 50
    if-ne p0, p5, :cond_3

    .line 51
    .line 52
    :cond_2
    const/4 p0, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 p0, 0x0

    .line 55
    :goto_1
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    if-nez p0, :cond_4

    .line 60
    .line 61
    if-ne p5, p8, :cond_5

    .line 62
    .line 63
    :cond_4
    new-instance p0, Lp1;

    .line 64
    .line 65
    const/4 p5, 0x2

    .line 66
    invoke-direct/range {p0 .. p5}, Lp1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p6, p0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object p5, p0

    .line 73
    :cond_5
    check-cast p5, Lkotlin/jvm/functions/Function0;

    .line 74
    .line 75
    invoke-static {p5, p6}, Landroidx/compose/runtime/EffectsKt;->g(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p6, v1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-virtual {p6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-nez p0, :cond_6

    .line 87
    .line 88
    if-ne p1, p8, :cond_7

    .line 89
    .line 90
    :cond_6
    new-instance p1, Lb;

    .line 91
    .line 92
    const/16 p0, 0x13

    .line 93
    .line 94
    invoke-direct {p1, p0, v1, p2}, Lb;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p6, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_7
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 101
    .line 102
    invoke-static {p2, p1, p6}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 103
    .line 104
    .line 105
    return-object p2
.end method

.method public static final c(Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/InfiniteTransition;
    .locals 2

    .line 1
    check-cast p0, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/animation/core/InfiniteTransition;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/compose/animation/core/InfiniteTransition;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1, p0}, Landroidx/compose/animation/core/InfiniteTransition;->a(ILandroidx/compose/runtime/Composer;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
