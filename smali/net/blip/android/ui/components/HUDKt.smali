.class public abstract Lnet/blip/android/ui/components/HUDKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;I)V
    .locals 8

    .line 1
    move-object v6, p2

    .line 2
    check-cast v6, Landroidx/compose/runtime/GapComposer;

    .line 3
    .line 4
    const p2, -0x302b7af1

    .line 5
    .line 6
    .line 7
    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->X(I)Landroidx/compose/runtime/GapComposer;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v6, p1}, Landroidx/compose/runtime/GapComposer;->g(Z)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/16 p2, 0x20

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/16 p2, 0x10

    .line 20
    .line 21
    :goto_0
    or-int/2addr p2, p3

    .line 22
    and-int/lit16 v0, p2, 0x493

    .line 23
    .line 24
    const/16 v1, 0x492

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_1
    and-int/2addr p2, v2

    .line 33
    invoke-virtual {v6, p2, v0}, Landroidx/compose/runtime/GapComposer;->N(IZ)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_8

    .line 38
    .line 39
    const/high16 p2, 0x3f400000    # 0.75f

    .line 40
    .line 41
    const/high16 v0, 0x43480000    # 200.0f

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    const/4 v2, 0x4

    .line 45
    invoke-static {p2, v0, v1, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFLjava/lang/Object;I)Landroidx/compose/animation/core/SpringSpec;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    .line 50
    .line 51
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->j(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroidx/compose/ui/unit/Density;

    .line 56
    .line 57
    const/high16 v2, 0x42f00000    # 120.0f

    .line 58
    .line 59
    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->i0(F)F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-static {v0}, Lkotlin/math/MathKt;->b(F)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    .line 72
    .line 73
    if-ne v2, v3, :cond_2

    .line 74
    .line 75
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    check-cast v2, Landroidx/compose/runtime/MutableState;

    .line 85
    .line 86
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-ne v4, v3, :cond_3

    .line 91
    .line 92
    new-instance v4, Lnet/blip/android/ui/components/HUDKt$HUD$1$1;

    .line 93
    .line 94
    invoke-direct {v4, v2, v1}, Lnet/blip/android/ui/components/HUDKt$HUD$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    check-cast v4, Lkotlin/jvm/functions/Function2;

    .line 101
    .line 102
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    invoke-static {v6, v1, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/lang/Boolean;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    and-int/2addr v1, p1

    .line 118
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    const/4 v5, 0x5

    .line 127
    if-nez v2, :cond_4

    .line 128
    .line 129
    if-ne v4, v3, :cond_5

    .line 130
    .line 131
    :cond_4
    new-instance v4, Lr0;

    .line 132
    .line 133
    invoke-direct {v4, v0, v5}, Lr0;-><init>(II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 140
    .line 141
    invoke-static {p2, v4}, Landroidx/compose/animation/EnterExitTransitionKt;->i(Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->K()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    if-nez v4, :cond_6

    .line 154
    .line 155
    if-ne v7, v3, :cond_7

    .line 156
    .line 157
    :cond_6
    new-instance v7, Lr0;

    .line 158
    .line 159
    invoke-direct {v7, v0, v5}, Lr0;-><init>(II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->g0(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    check-cast v7, Lkotlin/jvm/functions/Function1;

    .line 166
    .line 167
    invoke-static {p2, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->k(Landroidx/compose/animation/core/SpringSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    new-instance p2, Lb0;

    .line 172
    .line 173
    const/4 v0, 0x6

    .line 174
    invoke-direct {p2, v0, p0}, Lb0;-><init>(ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    const v0, -0x7e32cc19

    .line 178
    .line 179
    .line 180
    invoke-static {v0, p2, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const/high16 v7, 0x30000

    .line 185
    .line 186
    move v0, v1

    .line 187
    const/4 v1, 0x0

    .line 188
    const/4 v4, 0x0

    .line 189
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/AnimatedVisibilityKt;->b(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_8
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->Q()V

    .line 194
    .line 195
    .line 196
    :goto_2
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->r()Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    if-eqz p2, :cond_9

    .line 201
    .line 202
    new-instance v0, Lt;

    .line 203
    .line 204
    const/4 v1, 0x2

    .line 205
    invoke-direct {v0, p0, p1, p3, v1}, Lt;-><init>(Ljava/lang/Object;ZII)V

    .line 206
    .line 207
    .line 208
    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    .line 209
    .line 210
    :cond_9
    return-void
.end method
