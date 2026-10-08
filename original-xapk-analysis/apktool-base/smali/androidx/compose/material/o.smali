.class public final synthetic Landroidx/compose/material/o;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/compose/animation/core/Transition$Segment;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Integer;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 11
    .line 12
    const p0, 0x6e392619

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Landroidx/compose/material/InputPhase;->j:Landroidx/compose/material/InputPhase;

    .line 19
    .line 20
    sget-object p3, Landroidx/compose/material/InputPhase;->k:Landroidx/compose/material/InputPhase;

    .line 21
    .line 22
    invoke-interface {p1, p0, p3}, Landroidx/compose/animation/core/Transition$Segment;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    const/16 v2, 0x43

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    sget-object p0, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 32
    .line 33
    const/4 p1, 0x2

    .line 34
    invoke-static {v2, v1, p0, p1}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-interface {p1, p3, p0}, Landroidx/compose/animation/core/Transition$Segment;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    sget-object p0, Landroidx/compose/material/InputPhase;->l:Landroidx/compose/material/InputPhase;

    .line 46
    .line 47
    invoke-interface {p1, p0, p3}, Landroidx/compose/animation/core/Transition$Segment;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 p0, 0x7

    .line 55
    const/4 p1, 0x0

    .line 56
    const/4 p3, 0x0

    .line 57
    invoke-static {p1, p1, p3, p0}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    sget-object p0, Landroidx/compose/animation/core/EasingKt;->c:Lf7;

    .line 63
    .line 64
    new-instance p1, Landroidx/compose/animation/core/TweenSpec;

    .line 65
    .line 66
    const/16 p3, 0x53

    .line 67
    .line 68
    invoke-direct {p1, p3, v2, p0}, Landroidx/compose/animation/core/TweenSpec;-><init>(IILandroidx/compose/animation/core/Easing;)V

    .line 69
    .line 70
    .line 71
    move-object p0, p1

    .line 72
    :goto_1
    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 73
    .line 74
    .line 75
    return-object p0
.end method
