.class final Landroidx/compose/animation/EnterExitTransitionModifierNode;
.super Landroidx/compose/animation/LayoutModifierNodeWithPassThroughIntrinsics;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;


# instance fields
.field public A:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public B:Landroidx/compose/animation/EnterTransition;

.field public C:Landroidx/compose/animation/ExitTransition;

.field public D:Landroidx/compose/animation/SharedMutableTransformState;

.field public E:Lkotlin/jvm/functions/Function0;

.field public F:Landroidx/compose/animation/GraphicsLayerBlockForEnterExit;

.field public G:J

.field public H:Landroidx/compose/ui/Alignment;

.field public final I:Lkotlin/jvm/functions/Function1;

.field public final J:Lkotlin/jvm/functions/Function1;

.field public x:Landroidx/compose/animation/core/TransitionInstance;

.field public y:Landroidx/compose/animation/core/Transition$DeferredAnimation;

.field public z:Landroidx/compose/animation/core/Transition$DeferredAnimation;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/TransitionInstance;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/core/Transition$DeferredAnimation;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/SharedMutableTransformState;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/GraphicsLayerBlockForEnterExit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->x:Landroidx/compose/animation/core/TransitionInstance;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->y:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->z:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->A:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->B:Landroidx/compose/animation/EnterTransition;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->C:Landroidx/compose/animation/ExitTransition;

    .line 15
    .line 16
    iput-object p7, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->D:Landroidx/compose/animation/SharedMutableTransformState;

    .line 17
    .line 18
    iput-object p8, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->E:Lkotlin/jvm/functions/Function0;

    .line 19
    .line 20
    iput-object p9, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->F:Landroidx/compose/animation/GraphicsLayerBlockForEnterExit;

    .line 21
    .line 22
    const-wide p1, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    iput-wide p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->G:J

    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    const/16 p2, 0xf

    .line 31
    .line 32
    invoke-static {p1, p1, p1, p1, p2}, Landroidx/compose/ui/unit/ConstraintsKt;->b(IIIII)J

    .line 33
    .line 34
    .line 35
    new-instance p1, Landroidx/compose/animation/EnterExitTransitionModifierNode$sizeTransitionSpec$1;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Landroidx/compose/animation/EnterExitTransitionModifierNode$sizeTransitionSpec$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->I:Lkotlin/jvm/functions/Function1;

    .line 41
    .line 42
    new-instance p1, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Landroidx/compose/animation/EnterExitTransitionModifierNode$slideSpec$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->J:Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final C(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final Q0()V
    .locals 2

    .line 1
    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->G:J

    .line 7
    .line 8
    return-void
.end method

.method public final Y0()Landroidx/compose/ui/Alignment;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->x:Landroidx/compose/animation/core/TransitionInstance;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroidx/compose/animation/EnterExitState;->j:Landroidx/compose/animation/EnterExitState;

    .line 8
    .line 9
    sget-object v2, Landroidx/compose/animation/EnterExitState;->k:Landroidx/compose/animation/EnterExitState;

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Landroidx/compose/animation/core/Transition$Segment;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->B:Landroidx/compose/animation/EnterTransition;

    .line 18
    .line 19
    check-cast v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->c:Landroidx/compose/animation/ChangeSize;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v0, Landroidx/compose/animation/ChangeSize;->a:Landroidx/compose/ui/Alignment;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-object v0

    .line 33
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->C:Landroidx/compose/animation/ExitTransition;

    .line 34
    .line 35
    check-cast p0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 36
    .line 37
    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 38
    .line 39
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->c:Landroidx/compose/animation/ChangeSize;

    .line 40
    .line 41
    if-eqz p0, :cond_5

    .line 42
    .line 43
    iget-object p0, p0, Landroidx/compose/animation/ChangeSize;->a:Landroidx/compose/ui/Alignment;

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_2
    iget-object v0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->C:Landroidx/compose/animation/ExitTransition;

    .line 47
    .line 48
    check-cast v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 49
    .line 50
    iget-object v0, v0, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 51
    .line 52
    iget-object v0, v0, Landroidx/compose/animation/TransitionData;->c:Landroidx/compose/animation/ChangeSize;

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, v0, Landroidx/compose/animation/ChangeSize;->a:Landroidx/compose/ui/Alignment;

    .line 57
    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    return-object v0

    .line 62
    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/compose/animation/EnterExitTransitionModifierNode;->B:Landroidx/compose/animation/EnterTransition;

    .line 63
    .line 64
    check-cast p0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 65
    .line 66
    iget-object p0, p0, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 67
    .line 68
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->c:Landroidx/compose/animation/ChangeSize;

    .line 69
    .line 70
    if-eqz p0, :cond_5

    .line 71
    .line 72
    iget-object p0, p0, Landroidx/compose/animation/ChangeSize;->a:Landroidx/compose/ui/Alignment;

    .line 73
    .line 74
    return-object p0

    .line 75
    :cond_5
    const/4 p0, 0x0

    .line 76
    return-object p0
.end method

.method public final j(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    iget-object v0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->x:Landroidx/compose/animation/core/TransitionInstance;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->x:Landroidx/compose/animation/core/TransitionInstance;

    .line 14
    .line 15
    iget-object v2, v2, Landroidx/compose/animation/core/Transition;->d:Landroidx/compose/runtime/MutableState;

    .line 16
    .line 17
    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-ne v0, v2, :cond_0

    .line 25
    .line 26
    iput-object v3, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->H:Landroidx/compose/ui/Alignment;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->H:Landroidx/compose/ui/Alignment;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v1}, Landroidx/compose/animation/EnterExitTransitionModifierNode;->Y0()Landroidx/compose/ui/Alignment;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    sget-object v0, Landroidx/compose/ui/Alignment$Companion;->a:Landroidx/compose/ui/BiasAlignment;

    .line 40
    .line 41
    :cond_1
    iput-object v0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->H:Landroidx/compose/ui/Alignment;

    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-interface {v13}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->f0()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const-wide v4, 0xffffffffL

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    const/16 v2, 0x20

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget v3, v0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 61
    .line 62
    iget v6, v0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 63
    .line 64
    int-to-long v7, v3

    .line 65
    shl-long/2addr v7, v2

    .line 66
    int-to-long v9, v6

    .line 67
    and-long/2addr v9, v4

    .line 68
    or-long v6, v7, v9

    .line 69
    .line 70
    iput-wide v6, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->G:J

    .line 71
    .line 72
    shr-long v1, v6, v2

    .line 73
    .line 74
    long-to-int v1, v1

    .line 75
    and-long v2, v6, v4

    .line 76
    .line 77
    long-to-int v2, v2

    .line 78
    new-instance v3, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$1;

    .line 79
    .line 80
    invoke-direct {v3, v0}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v13, v1, v2, v0, v3}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    :cond_3
    iget-object v0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->E:Lkotlin/jvm/functions/Function0;

    .line 93
    .line 94
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->a()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_1c

    .line 105
    .line 106
    iget-object v0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->F:Landroidx/compose/animation/GraphicsLayerBlockForEnterExit;

    .line 107
    .line 108
    check-cast v0, Ld8;

    .line 109
    .line 110
    iget-object v6, v0, Ld8;->a:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 111
    .line 112
    iget-object v7, v0, Ld8;->b:Landroidx/compose/animation/SharedMutableTransformState;

    .line 113
    .line 114
    iget-object v8, v0, Ld8;->c:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 115
    .line 116
    iget-object v9, v0, Ld8;->d:Landroidx/compose/animation/core/TransitionInstance;

    .line 117
    .line 118
    iget-object v10, v0, Ld8;->e:Landroidx/compose/animation/EnterTransition;

    .line 119
    .line 120
    iget-object v11, v0, Ld8;->f:Landroidx/compose/animation/ExitTransition;

    .line 121
    .line 122
    iget-object v0, v0, Ld8;->g:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 123
    .line 124
    sget-object v12, Landroidx/compose/animation/EnterExitTransitionKt;->a:Landroidx/compose/animation/core/TwoWayConverter;

    .line 125
    .line 126
    if-eqz v6, :cond_5

    .line 127
    .line 128
    new-instance v12, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;

    .line 129
    .line 130
    invoke-direct {v12, v10, v11}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7}, Landroidx/compose/animation/SharedMutableTransformState;->a()Z

    .line 134
    .line 135
    .line 136
    move-result v14

    .line 137
    if-eqz v14, :cond_4

    .line 138
    .line 139
    iget v14, v7, Landroidx/compose/animation/SharedMutableTransformState;->f:F

    .line 140
    .line 141
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 142
    .line 143
    .line 144
    move-result-object v14

    .line 145
    goto :goto_1

    .line 146
    :cond_4
    move-object v14, v3

    .line 147
    :goto_1
    new-instance v15, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;

    .line 148
    .line 149
    invoke-direct {v15, v10, v11, v7}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/SharedMutableTransformState;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v12, v14, v3, v15}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    goto :goto_2

    .line 157
    :cond_5
    move-object v6, v3

    .line 158
    :goto_2
    const/4 v12, 0x0

    .line 159
    if-eqz v8, :cond_a

    .line 160
    .line 161
    new-instance v14, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;

    .line 162
    .line 163
    invoke-direct {v14, v10, v11}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7}, Landroidx/compose/animation/SharedMutableTransformState;->a()Z

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    if-eqz v15, :cond_6

    .line 171
    .line 172
    iget v15, v7, Landroidx/compose/animation/SharedMutableTransformState;->g:F

    .line 173
    .line 174
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 175
    .line 176
    .line 177
    move-result-object v15

    .line 178
    goto :goto_3

    .line 179
    :cond_6
    move-object v15, v3

    .line 180
    :goto_3
    invoke-virtual {v7}, Landroidx/compose/animation/SharedMutableTransformState;->a()Z

    .line 181
    .line 182
    .line 183
    move-result v16

    .line 184
    if-eqz v16, :cond_9

    .line 185
    .line 186
    move/from16 v16, v2

    .line 187
    .line 188
    iget-object v2, v7, Landroidx/compose/animation/SharedMutableTransformState;->j:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    .line 189
    .line 190
    if-eqz v2, :cond_8

    .line 191
    .line 192
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->b()F

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 197
    .line 198
    .line 199
    move-result-object v17

    .line 200
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_7

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    move-object/from16 v17, v3

    .line 208
    .line 209
    :goto_4
    if-eqz v17, :cond_8

    .line 210
    .line 211
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    :goto_5
    move-wide/from16 v17, v4

    .line 216
    .line 217
    goto :goto_6

    .line 218
    :cond_8
    move v2, v12

    .line 219
    goto :goto_5

    .line 220
    :goto_6
    new-instance v4, Landroidx/compose/animation/core/AnimationVector1D;

    .line 221
    .line 222
    invoke-direct {v4, v2}, Landroidx/compose/animation/core/AnimationVector1D;-><init>(F)V

    .line 223
    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_9
    move/from16 v16, v2

    .line 227
    .line 228
    move-wide/from16 v17, v4

    .line 229
    .line 230
    move-object v4, v3

    .line 231
    :goto_7
    new-instance v2, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2;

    .line 232
    .line 233
    invoke-direct {v2, v10, v11, v7}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/SharedMutableTransformState;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v8, v14, v15, v4, v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    goto :goto_8

    .line 241
    :cond_a
    move/from16 v16, v2

    .line 242
    .line 243
    move-wide/from16 v17, v4

    .line 244
    .line 245
    move-object v2, v3

    .line 246
    :goto_8
    iget-object v4, v9, Landroidx/compose/animation/core/Transition;->a:Landroidx/compose/animation/core/TransitionState;

    .line 247
    .line 248
    invoke-virtual {v4}, Landroidx/compose/animation/core/TransitionState;->a()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v4

    .line 252
    sget-object v5, Landroidx/compose/animation/EnterExitState;->j:Landroidx/compose/animation/EnterExitState;

    .line 253
    .line 254
    if-ne v4, v5, :cond_d

    .line 255
    .line 256
    move-object v4, v10

    .line 257
    check-cast v4, Landroidx/compose/animation/EnterTransitionImpl;

    .line 258
    .line 259
    iget-object v4, v4, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 260
    .line 261
    iget-object v4, v4, Landroidx/compose/animation/TransitionData;->d:Landroidx/compose/animation/Scale;

    .line 262
    .line 263
    if-eqz v4, :cond_b

    .line 264
    .line 265
    iget-wide v4, v4, Landroidx/compose/animation/Scale;->b:J

    .line 266
    .line 267
    new-instance v8, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 268
    .line 269
    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 270
    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_b
    move-object v4, v11

    .line 274
    check-cast v4, Landroidx/compose/animation/ExitTransitionImpl;

    .line 275
    .line 276
    iget-object v4, v4, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 277
    .line 278
    iget-object v4, v4, Landroidx/compose/animation/TransitionData;->d:Landroidx/compose/animation/Scale;

    .line 279
    .line 280
    if-eqz v4, :cond_c

    .line 281
    .line 282
    iget-wide v4, v4, Landroidx/compose/animation/Scale;->b:J

    .line 283
    .line 284
    new-instance v8, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 285
    .line 286
    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 287
    .line 288
    .line 289
    goto :goto_9

    .line 290
    :cond_c
    move-object v8, v3

    .line 291
    goto :goto_9

    .line 292
    :cond_d
    move-object v4, v11

    .line 293
    check-cast v4, Landroidx/compose/animation/ExitTransitionImpl;

    .line 294
    .line 295
    iget-object v4, v4, Landroidx/compose/animation/ExitTransitionImpl;->c:Landroidx/compose/animation/TransitionData;

    .line 296
    .line 297
    iget-object v4, v4, Landroidx/compose/animation/TransitionData;->d:Landroidx/compose/animation/Scale;

    .line 298
    .line 299
    if-eqz v4, :cond_e

    .line 300
    .line 301
    iget-wide v4, v4, Landroidx/compose/animation/Scale;->b:J

    .line 302
    .line 303
    new-instance v8, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 304
    .line 305
    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 306
    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_e
    move-object v4, v10

    .line 310
    check-cast v4, Landroidx/compose/animation/EnterTransitionImpl;

    .line 311
    .line 312
    iget-object v4, v4, Landroidx/compose/animation/EnterTransitionImpl;->b:Landroidx/compose/animation/TransitionData;

    .line 313
    .line 314
    iget-object v4, v4, Landroidx/compose/animation/TransitionData;->d:Landroidx/compose/animation/Scale;

    .line 315
    .line 316
    if-eqz v4, :cond_c

    .line 317
    .line 318
    iget-wide v4, v4, Landroidx/compose/animation/Scale;->b:J

    .line 319
    .line 320
    new-instance v8, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 321
    .line 322
    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 323
    .line 324
    .line 325
    :goto_9
    if-eqz v0, :cond_10

    .line 326
    .line 327
    invoke-virtual {v7}, Landroidx/compose/animation/SharedMutableTransformState;->a()Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eqz v4, :cond_f

    .line 332
    .line 333
    iget-wide v4, v7, Landroidx/compose/animation/SharedMutableTransformState;->h:J

    .line 334
    .line 335
    new-instance v9, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 336
    .line 337
    invoke-direct {v9, v4, v5}, Landroidx/compose/ui/graphics/TransformOrigin;-><init>(J)V

    .line 338
    .line 339
    .line 340
    goto :goto_a

    .line 341
    :cond_f
    move-object v9, v3

    .line 342
    :goto_a
    new-instance v4, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;

    .line 343
    .line 344
    invoke-direct {v4, v8, v10, v11, v7}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2;-><init>(Landroidx/compose/ui/graphics/TransformOrigin;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/SharedMutableTransformState;)V

    .line 345
    .line 346
    .line 347
    sget-object v5, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1;->k:Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1;

    .line 348
    .line 349
    invoke-virtual {v0, v5, v9, v3, v4}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    :goto_b
    move v4, v12

    .line 354
    goto :goto_c

    .line 355
    :cond_10
    move-object v0, v3

    .line 356
    goto :goto_b

    .line 357
    :goto_c
    new-instance v12, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;

    .line 358
    .line 359
    invoke-direct {v12, v7, v6, v2, v0}, Landroidx/compose/animation/EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1;-><init>(Landroidx/compose/animation/SharedMutableTransformState;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;)V

    .line 360
    .line 361
    .line 362
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    iget v0, v9, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 367
    .line 368
    iget v2, v9, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 369
    .line 370
    int-to-long v5, v0

    .line 371
    shl-long v5, v5, v16

    .line 372
    .line 373
    int-to-long v7, v2

    .line 374
    and-long v7, v7, v17

    .line 375
    .line 376
    or-long/2addr v5, v7

    .line 377
    iget-wide v7, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->G:J

    .line 378
    .line 379
    const-wide v10, -0x7fffffff80000000L    # -1.0609978955E-314

    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    invoke-static {v7, v8, v10, v11}, Landroidx/compose/ui/unit/IntSize;->a(JJ)Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_11

    .line 389
    .line 390
    iget-wide v7, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->G:J

    .line 391
    .line 392
    goto :goto_d

    .line 393
    :cond_11
    move-wide v7, v5

    .line 394
    :goto_d
    iget-object v0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->y:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 395
    .line 396
    if-eqz v0, :cond_12

    .line 397
    .line 398
    new-instance v2, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;

    .line 399
    .line 400
    invoke-direct {v2, v1, v7, v8}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSize$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;J)V

    .line 401
    .line 402
    .line 403
    iget-object v10, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->I:Lkotlin/jvm/functions/Function1;

    .line 404
    .line 405
    invoke-virtual {v0, v10, v3, v3, v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    goto :goto_e

    .line 410
    :cond_12
    move-object v0, v3

    .line 411
    :goto_e
    if-eqz v0, :cond_13

    .line 412
    .line 413
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, Landroidx/compose/ui/unit/IntSize;

    .line 418
    .line 419
    iget-wide v10, v0, Landroidx/compose/ui/unit/IntSize;->a:J

    .line 420
    .line 421
    :goto_f
    move-wide/from16 v14, p3

    .line 422
    .line 423
    goto :goto_10

    .line 424
    :cond_13
    move-wide v10, v5

    .line 425
    goto :goto_f

    .line 426
    :goto_10
    invoke-static {v14, v15, v10, v11}, Landroidx/compose/ui/unit/ConstraintsKt;->d(JJ)J

    .line 427
    .line 428
    .line 429
    move-result-wide v10

    .line 430
    iget-object v0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->z:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 431
    .line 432
    if-eqz v0, :cond_14

    .line 433
    .line 434
    new-instance v2, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$2;

    .line 435
    .line 436
    invoke-direct {v2, v1, v7, v8}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$2;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;J)V

    .line 437
    .line 438
    .line 439
    sget-object v4, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$1;->k:Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$offsetDelta$1;

    .line 440
    .line 441
    invoke-virtual {v0, v4, v3, v3, v2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v0}, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->getValue()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    check-cast v0, Landroidx/compose/ui/unit/IntOffset;

    .line 450
    .line 451
    iget-wide v3, v0, Landroidx/compose/ui/unit/IntOffset;->a:J

    .line 452
    .line 453
    goto :goto_11

    .line 454
    :cond_14
    const-wide/16 v3, 0x0

    .line 455
    .line 456
    :goto_11
    iget-object v0, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->A:Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 457
    .line 458
    if-eqz v0, :cond_1b

    .line 459
    .line 460
    iget-object v2, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->D:Landroidx/compose/animation/SharedMutableTransformState;

    .line 461
    .line 462
    invoke-virtual {v2}, Landroidx/compose/animation/SharedMutableTransformState;->a()Z

    .line 463
    .line 464
    .line 465
    move-result v19

    .line 466
    const-wide/16 p3, 0x0

    .line 467
    .line 468
    if-eqz v19, :cond_15

    .line 469
    .line 470
    iget-wide v14, v2, Landroidx/compose/animation/SharedMutableTransformState;->i:J

    .line 471
    .line 472
    new-instance v2, Landroidx/compose/ui/unit/IntOffset;

    .line 473
    .line 474
    invoke-direct {v2, v14, v15}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    .line 475
    .line 476
    .line 477
    goto :goto_12

    .line 478
    :cond_15
    const/4 v2, 0x0

    .line 479
    :goto_12
    iget-object v14, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->D:Landroidx/compose/animation/SharedMutableTransformState;

    .line 480
    .line 481
    invoke-virtual {v14}, Landroidx/compose/animation/SharedMutableTransformState;->a()Z

    .line 482
    .line 483
    .line 484
    move-result v14

    .line 485
    if-eqz v14, :cond_1a

    .line 486
    .line 487
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Velocity;->b(J)F

    .line 488
    .line 489
    .line 490
    move-result v14

    .line 491
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 492
    .line 493
    .line 494
    move-result-object v15

    .line 495
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 496
    .line 497
    .line 498
    move-result v14

    .line 499
    if-nez v14, :cond_16

    .line 500
    .line 501
    goto :goto_13

    .line 502
    :cond_16
    const/4 v15, 0x0

    .line 503
    :goto_13
    if-eqz v15, :cond_17

    .line 504
    .line 505
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    .line 506
    .line 507
    .line 508
    move-result v14

    .line 509
    goto :goto_14

    .line 510
    :cond_17
    const/4 v14, 0x0

    .line 511
    :goto_14
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Velocity;->c(J)F

    .line 512
    .line 513
    .line 514
    move-result v15

    .line 515
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 516
    .line 517
    .line 518
    move-result-object v19

    .line 519
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    .line 520
    .line 521
    .line 522
    move-result v15

    .line 523
    if-nez v15, :cond_18

    .line 524
    .line 525
    goto :goto_15

    .line 526
    :cond_18
    const/16 v19, 0x0

    .line 527
    .line 528
    :goto_15
    if-eqz v19, :cond_19

    .line 529
    .line 530
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    .line 531
    .line 532
    .line 533
    move-result v15

    .line 534
    :goto_16
    move-wide/from16 p3, v3

    .line 535
    .line 536
    goto :goto_17

    .line 537
    :cond_19
    const/4 v15, 0x0

    .line 538
    goto :goto_16

    .line 539
    :goto_17
    new-instance v3, Landroidx/compose/animation/core/AnimationVector2D;

    .line 540
    .line 541
    invoke-direct {v3, v14, v15}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    .line 542
    .line 543
    .line 544
    goto :goto_18

    .line 545
    :cond_1a
    move-wide/from16 p3, v3

    .line 546
    .line 547
    const/4 v3, 0x0

    .line 548
    :goto_18
    new-instance v4, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSlideOffsetState$1;

    .line 549
    .line 550
    invoke-direct {v4, v1, v7, v8}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$animSlideOffsetState$1;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;J)V

    .line 551
    .line 552
    .line 553
    iget-object v14, v1, Landroidx/compose/animation/EnterExitTransitionModifierNode;->J:Lkotlin/jvm/functions/Function1;

    .line 554
    .line 555
    invoke-virtual {v0, v14, v2, v3, v4}, Landroidx/compose/animation/core/Transition$DeferredAnimation;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    move-object v2, v3

    .line 560
    goto :goto_19

    .line 561
    :cond_1b
    move-wide/from16 p3, v3

    .line 562
    .line 563
    const/4 v2, 0x0

    .line 564
    :goto_19
    shr-long v3, v10, v16

    .line 565
    .line 566
    long-to-int v14, v3

    .line 567
    and-long v3, v10, v17

    .line 568
    .line 569
    long-to-int v15, v3

    .line 570
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;

    .line 571
    .line 572
    move-wide v3, v5

    .line 573
    move-wide v5, v7

    .line 574
    move-wide v7, v10

    .line 575
    move-wide/from16 v10, p3

    .line 576
    .line 577
    invoke-direct/range {v0 .. v12}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$2;-><init>(Landroidx/compose/animation/EnterExitTransitionModifierNode;Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;JJJLandroidx/compose/ui/layout/Placeable;JLkotlin/jvm/functions/Function1;)V

    .line 578
    .line 579
    .line 580
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-interface {v13, v14, v15, v1, v0}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    return-object v0

    .line 589
    :cond_1c
    move-wide/from16 v14, p3

    .line 590
    .line 591
    invoke-interface/range {p2 .. p4}, Landroidx/compose/ui/layout/Measurable;->w(J)Landroidx/compose/ui/layout/Placeable;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    iget v1, v0, Landroidx/compose/ui/layout/Placeable;->j:I

    .line 596
    .line 597
    iget v2, v0, Landroidx/compose/ui/layout/Placeable;->k:I

    .line 598
    .line 599
    new-instance v3, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$3$1;

    .line 600
    .line 601
    invoke-direct {v3, v0}, Landroidx/compose/animation/EnterExitTransitionModifierNode$measure$3$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 602
    .line 603
    .line 604
    invoke-static {}, Lkotlin/collections/MapsKt;->b()Ljava/util/Map;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-interface {v13, v1, v2, v0, v3}, Landroidx/compose/ui/layout/MeasureScope;->B(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    return-object v0
.end method
