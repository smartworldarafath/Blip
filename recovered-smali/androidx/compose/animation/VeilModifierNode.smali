.class final Landroidx/compose/animation/VeilModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;


# instance fields
.field public A:Landroidx/compose/animation/SharedMutableTransformState;

.field public x:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public y:Landroidx/compose/animation/EnterTransition;

.field public z:Landroidx/compose/animation/ExitTransition;


# virtual methods
.method public final h(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/animation/VeilModifierNode;->x:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 5
    .line 6
    new-instance v1, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$1;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$1;-><init>(Landroidx/compose/animation/VeilModifierNode;)V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Landroidx/compose/animation/VeilModifierNode;->A:Landroidx/compose/animation/SharedMutableTransformState;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/compose/animation/SharedMutableTransformState;->a()Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    iget-wide v2, v2, Landroidx/compose/animation/SharedMutableTransformState;->e:J

    .line 21
    .line 22
    new-instance v5, Landroidx/compose/ui/graphics/Color;

    .line 23
    .line 24
    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v5, v4

    .line 29
    :goto_0
    new-instance v2, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;

    .line 30
    .line 31
    invoke-direct {v2, p0}, Landroidx/compose/animation/VeilModifierNode$draw$veilColor$2;-><init>(Landroidx/compose/animation/VeilModifierNode;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1, v5, v4, v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Landroidx/compose/animation/VeilModifierNode;->A:Landroidx/compose/animation/SharedMutableTransformState;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 45
    .line 46
    iget-wide v2, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 47
    .line 48
    iget-object v0, v1, Landroidx/compose/animation/SharedMutableTransformState;->c:Landroidx/compose/animation/TransformScopeImpl;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    iget-object v4, v0, Landroidx/compose/animation/TransformScopeImpl;->g:Landroidx/compose/runtime/MutableState;

    .line 57
    .line 58
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    iget-object v0, v0, Landroidx/compose/animation/TransformScopeImpl;->h:Landroidx/compose/runtime/MutableState;

    .line 73
    .line 74
    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 81
    .line 82
    iget-wide v2, v0, Landroidx/compose/ui/graphics/Color;->a:J

    .line 83
    .line 84
    :cond_1
    move-wide v5, v2

    .line 85
    invoke-virtual {v1}, Landroidx/compose/animation/SharedMutableTransformState;->b()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    iput-wide v5, v1, Landroidx/compose/animation/SharedMutableTransformState;->e:J

    .line 92
    .line 93
    :cond_2
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/Color;->d(J)F

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    const/4 v1, 0x0

    .line 98
    cmpg-float v0, v0, v1

    .line 99
    .line 100
    if-nez v0, :cond_3

    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    iget-object v0, p0, Landroidx/compose/animation/VeilModifierNode;->y:Landroidx/compose/animation/EnterTransition;

    .line 104
    .line 105
    check-cast v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 106
    .line 107
    iget-object v0, v0, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 108
    .line 109
    iget-object p0, p0, Landroidx/compose/animation/VeilModifierNode;->z:Landroidx/compose/animation/ExitTransition;

    .line 110
    .line 111
    check-cast p0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 112
    .line 113
    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 114
    .line 115
    const/4 v10, 0x0

    .line 116
    const/16 v11, 0x7e

    .line 117
    .line 118
    const-wide/16 v7, 0x0

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    move-object v4, p1

    .line 122
    invoke-static/range {v4 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->r0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJFLandroidx/compose/ui/graphics/ColorFilter;I)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
