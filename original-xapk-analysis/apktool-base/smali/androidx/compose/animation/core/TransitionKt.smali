.class public abstract Landroidx/compose/animation/core/TransitionKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lqg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lqg;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lqg;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/animation/core/TransitionKt;->a:Lqg;

    .line 9
    .line 10
    return-void
.end method

.method public static final a(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    check-cast p5, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    const v0, 0x33ae021d

    .line 4
    .line 5
    .line 6
    invoke-virtual {p5, v0}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 7
    .line 8
    .line 9
    and-int/lit8 v0, p6, 0x6

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p5, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x2

    .line 22
    :goto_0
    or-int/2addr v0, p6

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p6

    .line 25
    :goto_1
    and-int/lit8 v1, p6, 0x30

    .line 26
    .line 27
    if-nez v1, :cond_3

    .line 28
    .line 29
    invoke-virtual {p5, p1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    const/16 v1, 0x20

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_2
    const/16 v1, 0x10

    .line 39
    .line 40
    :goto_2
    or-int/2addr v0, v1

    .line 41
    :cond_3
    and-int/lit16 v1, p6, 0x180

    .line 42
    .line 43
    if-nez v1, :cond_6

    .line 44
    .line 45
    and-int/lit16 v1, p6, 0x200

    .line 46
    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p5, p2}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    invoke-virtual {p5, p2}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    :goto_3
    if-eqz v1, :cond_5

    .line 59
    .line 60
    const/16 v1, 0x100

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_5
    const/16 v1, 0x80

    .line 64
    .line 65
    :goto_4
    or-int/2addr v0, v1

    .line 66
    :cond_6
    and-int/lit16 v1, p6, 0xc00

    .line 67
    .line 68
    if-nez v1, :cond_9

    .line 69
    .line 70
    and-int/lit16 v1, p6, 0x1000

    .line 71
    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    invoke-virtual {p5, p3}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    goto :goto_5

    .line 79
    :cond_7
    invoke-virtual {p5, p3}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    :goto_5
    if-eqz v1, :cond_8

    .line 84
    .line 85
    const/16 v1, 0x800

    .line 86
    .line 87
    goto :goto_6

    .line 88
    :cond_8
    const/16 v1, 0x400

    .line 89
    .line 90
    :goto_6
    or-int/2addr v0, v1

    .line 91
    :cond_9
    and-int/lit16 v1, p6, 0x6000

    .line 92
    .line 93
    if-nez v1, :cond_c

    .line 94
    .line 95
    const v1, 0x8000

    .line 96
    .line 97
    .line 98
    and-int/2addr v1, p6

    .line 99
    if-nez v1, :cond_a

    .line 100
    .line 101
    invoke-virtual {p5, p4}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    goto :goto_7

    .line 106
    :cond_a
    invoke-virtual {p5, p4}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    :goto_7
    if-eqz v1, :cond_b

    .line 111
    .line 112
    const/16 v1, 0x4000

    .line 113
    .line 114
    goto :goto_8

    .line 115
    :cond_b
    const/16 v1, 0x2000

    .line 116
    .line 117
    :goto_8
    or-int/2addr v0, v1

    .line 118
    :cond_c
    and-int/lit16 v1, v0, 0x2493

    .line 119
    .line 120
    const/16 v2, 0x2492

    .line 121
    .line 122
    const/4 v3, 0x1

    .line 123
    if-eq v1, v2, :cond_d

    .line 124
    .line 125
    move v1, v3

    .line 126
    goto :goto_9

    .line 127
    :cond_d
    const/4 v1, 0x0

    .line 128
    :goto_9
    and-int/2addr v0, v3

    .line 129
    invoke-virtual {p5, v0, v1}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_f

    .line 134
    .line 135
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->h()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    if-eqz v0, :cond_e

    .line 140
    .line 141
    invoke-virtual {p1, p2, p3, p4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->j(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 142
    .line 143
    .line 144
    goto :goto_a

    .line 145
    :cond_e
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, p3, p4, v0, v0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->k(Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;)V

    .line 147
    .line 148
    .line 149
    goto :goto_a

    .line 150
    :cond_f
    invoke-virtual {p5}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 151
    .line 152
    .line 153
    :goto_a
    invoke-virtual {p5}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 154
    .line 155
    .line 156
    move-result-object p5

    .line 157
    if-eqz p5, :cond_10

    .line 158
    .line 159
    new-instance v0, Lx3;

    .line 160
    .line 161
    const/4 v7, 0x2

    .line 162
    move-object v1, p0

    .line 163
    move-object v2, p1

    .line 164
    move-object v3, p2

    .line 165
    move-object v4, p3

    .line 166
    move-object v5, p4

    .line 167
    move v6, p6

    .line 168
    invoke-direct/range {v0 .. v7}, Lx3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 169
    .line 170
    .line 171
    iput-object v0, p5, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 172
    .line 173
    :cond_10
    return-void
.end method

.method public static final b(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition$DeferredAnimation;
    .locals 1

    .line 1
    and-int/lit8 p4, p5, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const-string p2, "DeferredAnimation"

    .line 6
    .line 7
    :cond_0
    move-object p4, p3

    .line 8
    check-cast p4, Landroidx/compose/runtime/GapComposer;

    .line 9
    .line 10
    invoke-virtual {p4, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    check-cast p3, Landroidx/compose/runtime/GapComposer;

    .line 15
    .line 16
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p5

    .line 20
    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 21
    .line 22
    if-nez p4, :cond_1

    .line 23
    .line 24
    if-ne p5, v0, :cond_2

    .line 25
    .line 26
    :cond_1
    new-instance p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 27
    .line 28
    invoke-direct {p5, p0, p1, p2}, Landroidx/compose/animation/core/Transition$DeferredAnimation;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3, p5}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    check-cast p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;

    .line 35
    .line 36
    invoke-virtual {p3, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {p3, p5}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    or-int/2addr p1, p2

    .line 45
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    if-ne p2, v0, :cond_4

    .line 52
    .line 53
    :cond_3
    new-instance p2, Lec;

    .line 54
    .line 55
    const/16 p1, 0x15

    .line 56
    .line 57
    invoke-direct {p2, p1, p0, p5}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 64
    .line 65
    invoke-static {p5, p2, p3}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/compose/animation/core/Transition;->h()Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_5

    .line 73
    .line 74
    iget-object p0, p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;->b:Landroidx/compose/runtime/MutableState;

    .line 75
    .line 76
    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    check-cast p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;

    .line 83
    .line 84
    if-eqz p0, :cond_5

    .line 85
    .line 86
    iget-object p1, p5, Landroidx/compose/animation/core/Transition$DeferredAnimation;->c:Landroidx/compose/animation/core/Transition;

    .line 87
    .line 88
    iget-object p2, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->j:Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 89
    .line 90
    iget-object p3, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->l:Lkotlin/jvm/functions/Function1;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    invoke-interface {p4}, Landroidx/compose/animation/core/Transition$Segment;->a()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    iget-object p4, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->l:Lkotlin/jvm/functions/Function1;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroidx/compose/animation/core/Transition$Segment;->c()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    iget-object p0, p0, Landroidx/compose/animation/core/Transition$DeferredAnimation$DeferredAnimationData;->k:Lkotlin/jvm/functions/Function1;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroidx/compose/animation/core/Transition;->f()Landroidx/compose/animation/core/Transition$Segment;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 129
    .line 130
    invoke-virtual {p2, p3, p4, p0}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;->j(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    return-object p5
.end method

.method public static final c(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition$TransitionAnimationState;
    .locals 8

    .line 1
    move-object p6, p5

    .line 2
    check-cast p6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    invoke-virtual {p6, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p6

    .line 8
    move-object v5, p5

    .line 9
    check-cast v5, Landroidx/compose/runtime/GapComposer;

    .line 10
    .line 11
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p5

    .line 15
    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 16
    .line 17
    if-nez p6, :cond_0

    .line 18
    .line 19
    if-ne p5, v7, :cond_2

    .line 20
    .line 21
    :cond_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 22
    .line 23
    .line 24
    move-result-object p5

    .line 25
    if-eqz p5, :cond_1

    .line 26
    .line 27
    invoke-virtual {p5}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 28
    .line 29
    .line 30
    move-result-object p6

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p6, 0x0

    .line 33
    :goto_0
    invoke-static {p5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :try_start_0
    new-instance v0, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 38
    .line 39
    move-object v2, p4

    .line 40
    check-cast v2, Landroidx/compose/animation/core/TwoWayConverterImpl;

    .line 41
    .line 42
    iget-object v2, v2, Landroidx/compose/animation/core/TwoWayConverterImpl;->a:Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    invoke-interface {v2, p2}, Lkotlin/jvm/functions/Function1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroidx/compose/animation/core/AnimationVector;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroidx/compose/animation/core/AnimationVector;->d()V

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, p0, p1, v2, p4}, Landroidx/compose/animation/core/Transition$TransitionAnimationState;-><init>(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/TwoWayConverter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-static {p5, v1, p6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object p5, v0

    .line 63
    :cond_2
    move-object v1, p5

    .line 64
    check-cast v1, Landroidx/compose/animation/core/Transition$TransitionAnimationState;

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    move-object v0, p0

    .line 68
    move-object v2, p1

    .line 69
    move-object v3, p2

    .line 70
    move-object v4, p3

    .line 71
    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/TransitionKt;->a(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/core/Transition$TransitionAnimationState;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/runtime/Composer;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    invoke-virtual {v5, v1}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    or-int/2addr p0, p1

    .line 83
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-nez p0, :cond_3

    .line 88
    .line 89
    if-ne p1, v7, :cond_4

    .line 90
    .line 91
    :cond_3
    new-instance p1, Lec;

    .line 92
    .line 93
    const/16 p0, 0x16

    .line 94
    .line 95
    invoke-direct {p1, p0, v0, v1}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 102
    .line 103
    invoke-static {v1, p1, v5}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    move-object p0, v0

    .line 109
    invoke-static {p5, v1, p6}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 110
    .line 111
    .line 112
    throw p0
.end method

.method public static final d(Landroidx/compose/animation/core/TransitionState;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/Transition;
    .locals 10

    .line 1
    and-int/lit8 v0, p3, 0xe

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x4

    .line 7
    const/4 v3, 0x0

    .line 8
    if-le v0, v2, :cond_0

    .line 9
    .line 10
    move-object v4, p2

    .line 11
    check-cast v4, Landroidx/compose/runtime/GapComposer;

    .line 12
    .line 13
    invoke-virtual {v4, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_1

    .line 18
    .line 19
    :cond_0
    and-int/lit8 v4, p3, 0x6

    .line 20
    .line 21
    if-ne v4, v2, :cond_2

    .line 22
    .line 23
    :cond_1
    move v4, v1

    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move v4, v3

    .line 26
    :goto_0
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 27
    .line 28
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    if-nez v4, :cond_3

    .line 36
    .line 37
    if-ne v5, v6, :cond_5

    .line 38
    .line 39
    :cond_3
    invoke-static {}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->a()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/Snapshot;->e()Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    goto :goto_1

    .line 50
    :cond_4
    move-object v5, v7

    .line 51
    :goto_1
    invoke-static {v4}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->b(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    :try_start_0
    new-instance v9, Landroidx/compose/animation/core/TransitionInstance;

    .line 56
    .line 57
    invoke-direct {v9, p0, v7, p1}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/TransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    invoke-static {v4, v8, v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v9}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v5, v9

    .line 67
    :cond_5
    check-cast v5, Landroidx/compose/animation/core/Transition;

    .line 68
    .line 69
    instance-of p1, p0, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 70
    .line 71
    if-eqz p1, :cond_11

    .line 72
    .line 73
    const p1, -0x50e84059

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v6, :cond_6

    .line 84
    .line 85
    invoke-static {p2}, Landroidx/compose/runtime/EffectsKt;->h(Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 93
    .line 94
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->h(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-le v0, v2, :cond_7

    .line 99
    .line 100
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    if-nez v8, :cond_8

    .line 105
    .line 106
    :cond_7
    and-int/lit8 v8, p3, 0x6

    .line 107
    .line 108
    if-ne v8, v2, :cond_9

    .line 109
    .line 110
    :cond_8
    move v8, v1

    .line 111
    goto :goto_2

    .line 112
    :cond_9
    move v8, v3

    .line 113
    :goto_2
    or-int/2addr v4, v8

    .line 114
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    if-nez v4, :cond_a

    .line 119
    .line 120
    if-ne v8, v6, :cond_b

    .line 121
    .line 122
    :cond_a
    new-instance v8, Lec;

    .line 123
    .line 124
    const/16 v4, 0x13

    .line 125
    .line 126
    invoke-direct {v8, v4, p0, p1}, Lec;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_b
    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 133
    .line 134
    invoke-static {p1, v8, p2}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 135
    .line 136
    .line 137
    move-object p1, p0

    .line 138
    check-cast p1, Landroidx/compose/animation/core/SeekableTransitionState;

    .line 139
    .line 140
    iget-object v4, p1, Landroidx/compose/animation/core/SeekableTransitionState;->c:Landroidx/compose/runtime/MutableState;

    .line 141
    .line 142
    check-cast v4, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 143
    .line 144
    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    iget-object p1, p1, Landroidx/compose/animation/core/SeekableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    .line 149
    .line 150
    check-cast p1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-le v0, v2, :cond_c

    .line 157
    .line 158
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_d

    .line 163
    .line 164
    :cond_c
    and-int/lit8 p3, p3, 0x6

    .line 165
    .line 166
    if-ne p3, v2, :cond_e

    .line 167
    .line 168
    :cond_d
    move p3, v1

    .line 169
    goto :goto_3

    .line 170
    :cond_e
    move p3, v3

    .line 171
    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    if-nez p3, :cond_f

    .line 176
    .line 177
    if-ne v0, v6, :cond_10

    .line 178
    .line 179
    :cond_f
    new-instance v0, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;

    .line 180
    .line 181
    invoke-direct {v0, p0, v7}, Landroidx/compose/animation/core/TransitionKt$rememberTransition$2$1;-><init>(Landroidx/compose/animation/core/TransitionState;Lkotlin/coroutines/Continuation;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    :cond_10
    check-cast v0, Lkotlin/jvm/functions/Function2;

    .line 188
    .line 189
    invoke-static {v4, p1, v0, p2}, Landroidx/compose/runtime/EffectsKt;->f(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_11
    const p1, -0x50d921f3

    .line 197
    .line 198
    .line 199
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->W(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0}, Landroidx/compose/animation/core/TransitionState;->b()Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {v5, p0, p2, v3}, Landroidx/compose/animation/core/Transition;->a(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, v3}, Landroidx/compose/runtime/GapComposer;->p(Z)V

    .line 210
    .line 211
    .line 212
    :goto_4
    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->f(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result p0

    .line 216
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    if-nez p0, :cond_12

    .line 221
    .line 222
    if-ne p1, v6, :cond_13

    .line 223
    .line 224
    :cond_12
    new-instance p1, Llh;

    .line 225
    .line 226
    invoke-direct {p1, v1, v5}, Llh;-><init>(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    :cond_13
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 233
    .line 234
    invoke-static {v5, p1, p2}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 235
    .line 236
    .line 237
    return-object v5

    .line 238
    :catchall_0
    move-exception p0

    .line 239
    invoke-static {v4, v8, v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->e(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 240
    .line 241
    .line 242
    throw p0
.end method

.method public static final e(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/core/TransitionInstance;
    .locals 4

    .line 1
    check-cast p2, Landroidx/compose/runtime/GapComposer;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

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
    new-instance v0, Landroidx/compose/animation/core/TransitionInstance;

    .line 12
    .line 13
    new-instance v2, Landroidx/compose/animation/core/MutableTransitionState;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v0, v2, v3, p1}, Landroidx/compose/animation/core/Transition;-><init>(Landroidx/compose/animation/core/TransitionState;Landroidx/compose/animation/core/Transition;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    check-cast v0, Landroidx/compose/animation/core/TransitionInstance;

    .line 26
    .line 27
    and-int/lit8 p1, p3, 0x8

    .line 28
    .line 29
    or-int/lit8 p1, p1, 0x30

    .line 30
    .line 31
    and-int/lit8 p3, p3, 0xe

    .line 32
    .line 33
    or-int/2addr p1, p3

    .line 34
    invoke-virtual {v0, p0, p2, p1}, Landroidx/compose/animation/core/Transition;->a(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-ne p0, v1, :cond_1

    .line 42
    .line 43
    new-instance p0, Llh;

    .line 44
    .line 45
    const/4 p1, 0x2

    .line 46
    invoke-direct {p0, p1, v0}, Llh;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    invoke-static {v0, p0, p2}, Landroidx/compose/runtime/EffectsKt;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;)V

    .line 55
    .line 56
    .line 57
    return-object v0
.end method
